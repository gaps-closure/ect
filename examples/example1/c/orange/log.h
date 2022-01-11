/**
 * Copyright (c) 2017 rxi
 *
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the MIT license. See `log.c` for details.
 */

#ifndef LOG_H
#define LOG_H

#include <stdio.h>
#include <stdarg.h>

#define LOG_VERSION "0.1.0"

typedef void (*log_LockFn)(void *udata, int lock);

enum { LOG_TRACE, LOG_DEBUG, LOG_INFO, LOG_WARN, LOG_ERROR, LOG_FATAL };

#define LOG_LEVEL_MIN   0      /* Use this, HAL daemon can use -l NUM to control logging level, and HAL API has its own hardcoded set_level() */
// #define LOG_LEVEL_MIN   2   /* Undefine log_* functions above this level for slight performance boost, avoids entering function, but requires recompilation for debug!  */

#if LOG_TRACE >= LOG_LEVEL_MIN
  #define log_trace(...) log_log(LOG_TRACE, __FILE__, __LINE__, __VA_ARGS__)
  #define log_buf_trace(str, data, data_len) log_log_buf(LOG_TRACE, str, data, data_len)
#else
  #define log_trace(...)
  #define log_buf_trace(str, data, data_len)
#endif

#if LOG_DEBUG >= LOG_LEVEL_MIN
  #define log_debug(...) log_log(LOG_DEBUG, __FILE__, __LINE__, __VA_ARGS__)
#else
  #define log_debug(...)
#endif

#if LOG_INFO >= LOG_LEVEL_MIN
  #define log_info(...) log_log(LOG_INFO,  __FILE__, __LINE__, __VA_ARGS__)
#else
  #define log_info(...)
#endif

#if LOG_WARN >= LOG_LEVEL_MIN
  #define log_warn(...)  log_log(LOG_WARN,  __FILE__, __LINE__, __VA_ARGS__)
#else
  #define log_warn(...)
#endif

#define log_error(...) log_log(LOG_ERROR, __FILE__, __LINE__, __VA_ARGS__)
#define log_fatal(...) log_log(LOG_FATAL, __FILE__, __LINE__, __VA_ARGS__)

void log_set_udata(void *udata);
void log_set_lock(log_LockFn fn);
void log_set_fp(FILE *fp);
void log_set_level(int level);
void log_set_quiet(int enable);

void log_log(int level, const char *file, int line, const char *fmt, ...);

void log_get_fds(int level, FILE **fd_std, FILE **fd_file);
void log_log_buf(int level, char *str, void *data, size_t data_len);

#endif
