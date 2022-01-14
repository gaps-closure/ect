#!/usr/bin/env python3
import json
import dash
import plotly.express       as px
import dash_core_components as dcc
import dash_html_components as html
import dash_cytoscape       as cyto
from   dash.dependencies    import Input, Output
from   argparse             import ArgumentParser

def load_design(infile, suppmsg):
  with open(infile, 'r') as inf: j = json.load(inf)
  m   = {f['flowId']:f['message'] for f in j['flows']}
  l   = {f['flowId']:f['label'] for f in j['flows']}
  s   = {x:c['component'] for c in j['topology'] for x in c['outFlows']}
  d   = {x:c['component'] for c in j['topology'] for x in c['inFlows']}
  lvl = {x['cle-label']:x['cle-json']['level'] for x in j['cles']}

  elts = []
  for c in j['topology']: 
    elts.append({'data': {'id': c['component'], 'label': c['component'], 'level':lvl[c['label']]}})
  for x in m:             
    if not m[x] in suppmsg:
      elts.append({'data': {'source': s[x], 'target':d[x], 'label': m[x]+':'+l[x]}})
  return elts

# Parse command line argumets
def get_args():
  p = ArgumentParser(description='CLOSURE Mess Flow Design Spec Quick and Dirty Visualization')
  p.add_argument('-f', '--file', required=False, type=str, default='design_spec.json', help='Input file (design_spec.json)')
  p.add_argument('-s', '--suppress_messages', required=False, type=str, default='component_heartbeats', help='Comma-separated messages to suppress (component_heartbeats)')
  p.add_argument('-p', '--port', required=False, type=int, default=11358, help='Port for web application (11358)')
  return p.parse_args()

if __name__ == '__main__':
  args = get_args()

  elts = load_design(args.file, args.suppress_messages.split(','))

  app = dash.Dash(__name__)
  app.layout = html.Div([
    html.P("CLOSURE Cross-Domain Message Flow Design:"),
    cyto.Cytoscape( 
      id='cytoscape', 
      elements=elts, 
      layout={'name': 'breadthfirst'},  # breadthfirst, circle, cose, grid, ...
      stylesheet=[
        {'selector': 'node', 'style': { 'label': 'data(label)', 'background-color': 'data(level)'}},
        {'selector': 'edge', 'style': { 'width':5, 'label': 'data(label)', 'curve-style': 'bezier', 'control-point-weight': 0.9, 'target-arrow-shape': 'triangle'}}
      ],
      style={'width': '1400px', 'height': '800px'}
    )
  ])
  app.run_server(debug=True,port=args.port,host='0.0.0.0')