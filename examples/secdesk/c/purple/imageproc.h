#ifndef _IMAGEPROC_H_
#define _IMAGEPROC_H_

#include <string.h>

#define __STUBBED 1

#ifdef INC_FACE_RECOGNITION
#undef __STUBBED
#endif

#ifndef __STUBBED
#define RECOGNIZER_MODULE "recognize_local"
#include <stdio.h>
#include <python3.7/Python.h>
#endif 

int start_recognizer(void);
int stop_recognizer(void);

int recognize(double embedding[static 128]);


#endif /* _IMAGEPROC_H_ */
