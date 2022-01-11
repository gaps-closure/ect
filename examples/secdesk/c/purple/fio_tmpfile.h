/*
Copyright: Boaz Segev, 2018-2019
License: MIT
*/
#ifndef H_FIO_TMPFILE_H
/** a simple helper to create temporary files and file names */
#define H_FIO_TMPFILE_H

#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#include <stdio.h>
#include <stdlib.h>

#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

#endif