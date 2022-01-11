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

int start_imageprocessor(void);
int stop_imageprocessor(void);

int get_features(char *imagefile, double embedding[static 128]);

int overlay(char *imageFile, char *outFile, int id);

#endif /* _IMAGEPROC_H_ */
