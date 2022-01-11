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
#pragma cle begin PURPLE 
PyObject *data = NULL;
#pragma cle end PURPLE 
#endif
// #pragma cle begin ORANGE 
long savedBox[4] = { 0 };
// #pragma cle end ORANGE

// #pragma cle begin ORANGE
char savedName[32];
// #pragma cle end ORANGE 


int start_imageprocessor() {
#ifndef __STUBBED
    if (!Py_IsInitialized()) {
        setenv("PYTHONPATH", ".", 1);
        Py_Initialize();
        PyEval_InitThreads();
    }
#endif
    return 0;
}

int stop_imageprocessor() {
   return 0;
}

#pragma cle begin XDLINKAGE_START_RECOGNIZER
int start_recognizer(void) { 
#pragma cle end XDLINKAGE_START_RECOGNIZER
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

#pragma cle begin XDLINKAGE_STOP_RECOGNIZER
int stop_recognizer(void) { 
#pragma cle end XDLINKAGE_STOP_RECOGNIZER
   /* XXX: ought to free model resources */
   return 0;
}


#ifndef __STUBBED
#pragma cle begin PURPLE 
int init_recognizer(PyObject *pModule) {
#pragma cle end PURPLE 
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
#pragma cle begin ORANGE 
static int getBox(PyObject *boxes) {
#pragma cle end ORANGE 
    if (!PyList_Check(boxes))
        error2("boxes is not a list");

    int count = (int) PyList_Size(boxes);
    if (count <= 0)
        error2("number of boxes < 0");

    PyObject *box = PyList_GetItem(boxes, 0);
    if (!PyList_Check(box))
        error2("box is not a list");

    int countIn = (int) PyList_Size(box);
    if (countIn != 4)
        error2("number of entries in an box is not 4");

    for (int j = 0; j < countIn; j++) {
        PyObject *pObj = PyList_GetItem(box, j);

        PyObject *objRepIn = PyObject_Repr(pObj);
        PyObject* str = PyUnicode_AsEncodedString(objRepIn, "utf-8", "~E~");
        const char *bytes = PyBytes_AS_STRING(str);

        savedBox[j] = (float) strtol(bytes, NULL, 10);
    }

    return 1;
}
#endif

int overlay(char *imageFile, char *outFile, int id) {
#ifndef __STUBBED
    Py_BEGIN_ALLOW_THREADS
    PyGILState_STATE state = PyGILState_Ensure();

    PyObject *pModule = PyImport_ImportModule(RECOGNIZER_MODULE);
    if (pModule == NULL)
        error("Can't load module");

    PyObject *pFunc = PyObject_GetAttrString(pModule, "overlay");
    Py_DECREF(pModule);
    if (pFunc == NULL)
        error("Can't fetch method overlay");

    if (!PyCallable_Check(pFunc))
        error("overlay not callable");

    PyObject *pArgs = PyTuple_New(4);

    // arg 1: list of boxes
    PyObject *box = PyList_New(0);
    for (int i = 0; i < 4; i++) {
        PyList_Append(box, PyLong_FromLong(savedBox[i]));
    }
    PyObject *boxes = PyList_New(0);
    PyList_Append(boxes, box);
    PyTuple_SetItem(pArgs, 0, boxes);

    // arg 2: list of names
    char savedName[32];
    sprintf(savedName, "%03d", id);
    PyObject *name = Py_BuildValue("s#", savedName, strlen(savedName));
    PyObject *names = PyList_New(0);
    PyList_Append(names, name);
    PyTuple_SetItem(pArgs, 1, names);

    // arg 3: image
    PyObject *image = Py_BuildValue("s#", imageFile, strlen(imageFile));
    PyTuple_SetItem(pArgs, 2, image);

    // arg 4: overlayed image
    PyObject *oImage = Py_BuildValue("s#", outFile, strlen(outFile));
    PyTuple_SetItem(pArgs, 3, oImage);

    PyObject* pName = PyObject_CallObject(pFunc, pArgs);
    Py_DECREF(pFunc);
    Py_DECREF(pArgs);
    Py_DECREF(pName);

    PyGILState_Release(state);
    Py_END_ALLOW_THREADS
#endif
    return 1;
}

#pragma cle begin GET_FEATURES 
int get_features(char *imagefile, double embedding[static 128]) {
#pragma cle end GET_FEATURES 
    memset(embedding, 0, 128 * sizeof(double)); /* Cue for GEDL */
#ifndef __STUBBED
    Py_BEGIN_ALLOW_THREADS
    PyGILState_STATE state = PyGILState_Ensure();

    PyObject *pModule = PyImport_ImportModule(RECOGNIZER_MODULE);
    if (pModule == NULL)
        error("Can't load module");

    PyObject *pFunc = PyObject_GetAttrString(pModule, "calcEncodings");
    Py_DECREF(pModule);
    if (pFunc == NULL)
        error("Can't fetch method calcEncodings");

    if (!PyCallable_Check(pFunc))
        error("calcEncodings not callable");

    PyObject *pArgs = PyTuple_New(2);
    PyObject *arg1 = Py_BuildValue("s#", imagefile, strlen(imagefile));
    PyTuple_SetItem(pArgs, 0, arg1);

    char t[32] = "cnn";
    PyObject *arg2 = Py_BuildValue("s#", t, strlen(t));
    PyTuple_SetItem(pArgs, 1, arg2);

    PyObject *pValue = PyObject_CallObject(pFunc, pArgs);
    Py_DECREF(pFunc);
    Py_DECREF(pArgs);
    if (!PyList_Check(pValue))
        error("return value not a list!");

    int countArgs = (int) PyList_Size(pValue);
    if (countArgs != 3)
        error("number of return values != 3");

    PyObject *encodings = PyList_GetItem(pValue, 0);
    if (!PyList_Check(encodings))
        error("encodings is not a list");

    int count = (int) PyList_Size(encodings);
    if (count <= 0)
        error("number of encodings < 0");

    PyObject *enc = PyList_GetItem(encodings, 0);
    if (!PyList_Check(enc))
        error("enc is not a list");

    int countIn = (int) PyList_Size(enc);
    if (countIn != 128)
        error("number of entries in an encoding is not 128");

    for (int j = 0; j < countIn; j++) {
        PyObject *pObj = PyList_GetItem(enc, j);

        PyObject *objRepIn = PyObject_Repr(pObj);
        PyObject* str = PyUnicode_AsEncodedString(objRepIn, "utf-8", "~E~");
        const char *bytes = PyBytes_AS_STRING(str);
        embedding[j] = (float) strtod(bytes, NULL);
    }

    getBox(PyList_GetItem(pValue, 1));

    Py_DECREF(pValue);

    PyGILState_Release(state);
    Py_END_ALLOW_THREADS
#endif /* __STUBBED */
    return 0;
}

#pragma cle begin XDLINKAGE_RECOGNIZE
int recognize(double embedding[static 128]) {
#pragma cle end XDLINKAGE_RECOGNIZE
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


