#include "imageproc.h"
#include <sys/types.h>

#pragma cle def PURPLE {"level":"purple"}

#pragma cle def XDLINKAGE_RECOGNIZE {"level":"purple",\
  "cdf": [\
    {"remotelevel":"orange", \
     "direction": "bidirectional", \
     "guarddirective": {"operation": "allow"}, \
     "argtaints": [], \
     "codtaints": [], \
     "rettaints": [] \
    }, \
    {"remotelevel":"purple", \
     "direction": "bidirectional", \
     "guarddirective": {"operation": "allow"}, \
     "argtaints": [["TAG_REQUEST_RECOGNIZE"]], \
     "codtaints": ["PURPLE"], \
     "rettaints": ["TAG_RESPONSE_RECOGNIZE"] \
    } \
  ] }

#pragma cle def XDLINKAGE_START_RECOGNIZER {"level":"purple",\
  "cdf": [\
    {"remotelevel":"orange", \
     "direction": "bidirectional", \
     "guarddirective": {"operation": "allow"}, \
     "argtaints": [], \
     "codtaints": [], \
     "rettaints": [] \
    }, \
    {"remotelevel":"purple", \
     "direction": "bidirectional", \
     "guarddirective": {"operation": "allow"}, \
     "argtaints": [], \
     "codtaints": ["PURPLE"], \
     "rettaints": ["TAG_RESPONSE_START_RECOGNIZER"] \
    } \
  ] }
  
#pragma cle def XDLINKAGE_STOP_RECOGNIZER {"level":"purple",\
  "cdf": [\
    {"remotelevel":"orange", \
     "direction": "bidirectional", \
     "guarddirective": {"operation": "allow"}, \
     "argtaints": [], \
     "codtaints": [], \
     "rettaints": [] \
    }, \
    {"remotelevel":"purple", \
     "direction": "bidirectional", \
     "guarddirective": {"operation": "allow"}, \
     "argtaints": [], \
     "codtaints": ["PURPLE"], \
     "rettaints": ["TAG_RESPONSE_STOP_RECOGNIZER"] \
    } \
  ] }

#pragma cle def GET_FEATURES {"level":"orange",\
  "cdf": [\
    {"remotelevel":"orange", \
     "direction": "bidirectional", \
     "guarddirective": {"operation": "allow"}, \
     "argtaints": [["ORANGE"], ["EMBEDDING_SHAREABLE"]], \
     "codtaints": ["ORANGE", "EMBEDDING_SHAREABLE"], \
     "rettaints": ["ORANGE", "EMBEDDING_SHAREABLE"] \
    } \
  ] }

#ifndef __STUBBED
#define error(msg) do { printf("%s\n", msg); PyErr_Print(); PyGILState_Release(state); return(0); } while (1)
#define error2(msg) do { printf("%s\n", msg); PyErr_Print(); return(0); } while (1)

// XXX: why are these global? just so we could use error2 macro?
#pragma clang attribute push (__attribute__((annotate("PURPLE"))), apply_to = any(function,type_alias,record,enum,variable(unless(is_parameter)),field))
#pragma cle begin PURPLE 
PyObject *data = NULL;
#pragma cle end PURPLE 
#pragma clang attribute pop
#endif
// #pragma cle begin ORANGE 
// #pragma cle end ORANGE

// #pragma cle begin ORANGE
// #pragma cle end ORANGE 




#pragma clang attribute push (__attribute__((annotate("XDLINKAGE_START_RECOGNIZER"))), apply_to = any(function,type_alias,record,enum,variable(unless(is_parameter)),field))
#pragma cle begin XDLINKAGE_START_RECOGNIZER
int start_recognizer(void) { 
#pragma cle end XDLINKAGE_START_RECOGNIZER
#pragma clang attribute pop
   /* XXX: ought to call model load here and save to global var */
#ifndef __STUBBED
    if (!Py_IsInitialized()) {
        setenv("PYTHONPATH", ".", 1);
        Py_Initialize();
        PyEval_InitThreads();
    }
#endif
   return 0;
}

#pragma clang attribute push (__attribute__((annotate("XDLINKAGE_STOP_RECOGNIZER"))), apply_to = any(function,type_alias,record,enum,variable(unless(is_parameter)),field))
#pragma cle begin XDLINKAGE_STOP_RECOGNIZER
int stop_recognizer(void) { 
#pragma cle end XDLINKAGE_STOP_RECOGNIZER
#pragma clang attribute pop
   /* XXX: ought to free model resources */
   return 0;
}


#ifndef __STUBBED
#pragma clang attribute push (__attribute__((annotate("PURPLE"))), apply_to = any(function,type_alias,record,enum,variable(unless(is_parameter)),field))
#pragma cle begin PURPLE 
int init_recognizer(PyObject *pModule) {
#pragma cle end PURPLE 
#pragma clang attribute pop
    PyObject *pFunc = PyObject_GetAttrString(pModule, "init_recognizer");
    if (pFunc == NULL)
        error2("Can't fetch method init_recognizer");

    if (!PyCallable_Check(pFunc))
        error2("init_recognizer not callable");

    PyObject *pArgs = PyTuple_New(0);
    data = PyObject_CallObject(pFunc, pArgs);
    Py_DECREF(pFunc);
    Py_DECREF(pArgs);
    if (data == NULL)
        error2("data null");

    return 1;
}
#endif

// TODO: handle only one box for now
#ifndef __STUBBED
#endif



#pragma clang attribute push (__attribute__((annotate("XDLINKAGE_RECOGNIZE"))), apply_to = any(function,type_alias,record,enum,variable(unless(is_parameter)),field))
#pragma cle begin XDLINKAGE_RECOGNIZE
int recognize(double embedding[static 128]) {
#pragma cle end XDLINKAGE_RECOGNIZE
#pragma clang attribute pop
    int id = 666; /* When stubbed, always return 666 */
    if (memcmp(embedding,embedding, sizeof(double)*128) == 0) {} /* Cue for GEDL */

#ifndef __STUBBED
    id = -1; 
    Py_BEGIN_ALLOW_THREADS
    PyGILState_STATE state = PyGILState_Ensure();

    PyObject *pModule = PyImport_ImportModule(RECOGNIZER_MODULE);
    if (pModule == NULL)
        error("Can't load module");

    int dataReady = init_recognizer(pModule);
    if (!dataReady)
        error("data not ready");

    PyObject *pFunc = PyObject_GetAttrString(pModule, "recognize_one");
    Py_DECREF(pModule);
    if (pFunc == NULL)
        error("Can't fetch method recognize_one");

    if (!PyCallable_Check(pFunc))
        error("recognize_one not callable");

    PyObject *listEnc = PyList_New(0);
    for (int i = 0; i < 128; i++) {
        PyObject *element = PyFloat_FromDouble(embedding[i]);
        if (PyList_Append(listEnc, element) == -1) {
            PyErr_Print();
        }
    }
    
    PyObject *pArgs = PyTuple_New(2);
    PyTuple_SetItem(pArgs, 0, listEnc);
    PyTuple_SetItem(pArgs, 1, data);    

    PyObject* pName = PyObject_CallObject(pFunc, pArgs);
    Py_DECREF(pFunc);
    Py_DECREF(pArgs);

    char *cstr;
    PyArg_Parse(pName, "s", &cstr);  /* convert to C */
    id = strtol(cstr, NULL, 10);
    printf("recognized ID=%d\n", id);
    Py_DECREF(pName);

    PyGILState_Release(state);
    Py_END_ALLOW_THREADS
#endif

  return id;
}

