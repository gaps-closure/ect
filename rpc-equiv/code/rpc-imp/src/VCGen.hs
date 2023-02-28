module VCGen (genVerificationCondition) where

import RpcImp

data LogicVal =
    LInt Int
  | LBool Bool
  | LFloat Float
  deriving (Eq, Show)

data LogicExpr =
    LVar Name
  | LVal LogicVal
  | LEq LogicExpr LogicExpr
  | LImplies LogicExpr LogicExpr
  | LAnd LogicExpr LogicExpr
  | LOr LogicExpr LogicExpr
  | LNot LogicExpr
  deriving (Eq, Show)

data GuardedCommand =
    Assume LogicExpr
  | Assert LogicExpr
  | Assign LogicVar LogicExpr
  | Havoc LogicVar
  | Box [GuardedCommand] [GuardedCommand]
  deriving (Eq, Show)

-- TODO
mkGC :: Program -> [GuardedCommand]
mkGC p = error "not implemented"
-- def convert_to_gc(tree):
-- gc_list = []
-- type = tree[0]
-- if type == 'Root':
--     pre = preprocess(tree[2])
--     post = preprocess(tree[3])
--     program = tree[4]
--     gc_list = convert_to_gc(program)
--     gc_list.append(['assert', post])
--     gc_list.insert(0, ['assume', pre])
-- elif type == 'List':
--     for i in range(1, len(tree)):
--         gc_list += convert_to_gc(tree[i])
-- elif type == 'Assign':
--     var = tree[1][0]
--     var_dict[var] = 1
--     tmp = get_var()
--     exp = preprocess(tree[2])
--     exp_new = replace_var(var, tmp, exp)
--     gc_list.append(['assume', ['=', [tmp], [var]]])
--     gc_list.append(['havoc', var])
--     gc_list.append(['assume', ['=', [var], exp_new]])
--     pass
-- elif type == 'ParAssign':
--     tmp = get_var()
--     return convert_to_gc(['List',
--                             ['Assign', [tmp], ['Var', tree[1]]],
--                             ['Assign', tree[1], tree[3]],
--                             ['Assign', tree[2], replace_var(tree[1][0], tmp, tree[4])]])
-- elif type == 'Write':
--     arr = tree[1][0]
--     arr_dict[arr] = 1
--     index = preprocess(tree[2])
--     value = preprocess(tree[3])
--     tmp = get_arr()
--     ind_new = replace_var(arr, tmp, index)
--     val_new = replace_var(arr, tmp, value)
--     gc_list.append(['assume', ['=', [tmp], [arr]]])
--     gc_list.append(['havoc', arr])
--     gc_list.append(['assume', ['=', [arr], ['store', [tmp], ind_new, val_new]]])
-- elif type == 'If':
--     condition = preprocess(tree[1])
--     branch1 = convert_to_gc(tree[2])
--     branch2 = convert_to_gc(tree[3])
--     gc_list.append(['box',[['assume',condition]] + branch1,
--                             [['assume',['not',condition]]] + branch2])
-- elif type == 'While':
--     condition = preprocess(tree[1])
--     invariant = preprocess(tree[2])
--     havoc_list = find_vars(tree[3])
--     loop_body = convert_to_gc(tree[3])
--     gc_list.append(['assert', invariant])
--     for i in range(len(havoc_list)):
--         gc_list.append(['havoc', havoc_list[i]])
--     gc_list.append(['assume', invariant])
--     gc_list.append(['box',
--                     [['assume',condition]]+loop_body+[['assert',invariant]]+[['assume',['false']]],
--                     [['assume',['not',condition]]]])
-- return gc_list

-- TODO
mkWP :: [GuardedCommand] -> LogicExpr
mkWP gcs = error "not implemented"
-- def compute_wp(gc_list, B=['true']):
-- if len(gc_list) > 1:
--     B = compute_wp(gc_list[:-1], compute_wp([gc_list[-1]],B))
-- else:
--     command = gc_list[0]
--     if command[0] == 'box':
--         B = ['and', compute_wp(command[1], B), compute_wp(command[2], B)]
--     elif command[0] == 'assume':
--         B = ['=>', command[1], B]
--     elif command[0] == 'assert':
--         B = ['and', command[1], B]
--     elif command[0] == 'havoc':
--         tmp = None
--         if command[1] in var_dict:
--             tmp = get_var()
--         else:
--             tmp = get_arr()
--         B = replace_var(command[1], tmp, B)
-- return B

-- TODO
toSMT :: LogicExpr -> String
toSMT wp = error "not implemented"
-- arr_string = ''
-- for arr_name in arr_dict:
--     arr_string += "(declare-const " + arr_name + " (Array Int Int))"
-- var_string = ''
-- for var_name in var_dict:
--     var_string += "(declare-const " + var_name + " Int)"
-- z3_input = "(define-fun program () Bool) (assert(not program)) (check-sat)"

genVerificationCondition :: Program -> String
genVerificationCondition p =
  -- TODO: generate pre and post-conditions as well
  toSMT . mkWP . mkGC $ p