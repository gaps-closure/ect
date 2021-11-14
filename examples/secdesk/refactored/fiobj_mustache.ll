; ModuleID = 'fiobj_mustache.c'
source_filename = "fiobj_mustache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.mustache_s = type { %union.anon }
%union.anon = type { i8* }
%struct.mustache_load_args_s = type { i8*, i64, i8*, i64, i32* }
%struct.mustache__loader_stack_s = type { %struct.mustache_s*, %struct.mustache__instruction_s*, i32*, i8*, i8*, i32, i32, i32, i16, i16, i16, [82 x %struct.anon.1] }
%struct.mustache__instruction_s = type { i32, %struct.anon.0 }
%struct.anon.0 = type { i32, i32, i32, i16, i16 }
%struct.anon.1 = type { i32, i32, i32, i16, [5 x i8], [5 x i8], i8, i8 }
%struct.mustache__data_segment_s = type { i8*, i32, i32, i16, i16 }
%struct.anon = type { i32, i32 }
%struct.mustache_build_args_s = type { %struct.mustache_s*, i8*, i8*, i32* }
%struct.mustache__builder_stack_s = type { %struct.mustache_s*, i32, i32, i16, [82 x %struct.mustache__section_stack_frame_s] }
%struct.mustache__section_stack_frame_s = type { %struct.mustache_section_s, i32, i32, i32, i32, i16 }
%struct.mustache_section_s = type { i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4, !dbg !0
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1, !dbg !139
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1, !dbg !142
@.str.2 = private unnamed_addr constant [57 x i8] c"FATAL ERROR: failed to allocate memory for mustache data\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"FATAL ERROR: failed to allocate memory for consolidated mustache data\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"FATAL ERROR: failed to allocate memory for mustache template data\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c".mustache\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"FATAL ERROR: Mustache memory allocation failed\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"ERROR: invalid mustache instruction set detected (wrong `mustache_s`?)\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@__const.fiobj_obj2cstr.ret = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0) }, align 8
@__const.fiobj_obj2cstr.ret.9 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0) }, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const.fiobj_obj2cstr.ret.11 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0) }, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@__const.fiobj_obj2cstr.ret.13 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0) }, align 8
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_ARRAY = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_HASH = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_DATA = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@mustache__write_escaped.html_escape_strs = internal global [256 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.269, i32 0, i32 0)], align 16, !dbg !144
@.str.14 = private unnamed_addr constant [5 x i8] c"&#0;\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"&#1;\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"&#2;\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"&#3;\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"&#4;\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"&#5;\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"&#6;\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"&#7;\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"&#8;\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"&#9;\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"&#10;\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"&#11;\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"&#12;\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"&#13;\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"&#14;\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"&#15;\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"&#16;\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"&#17;\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"&#18;\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"&#19;\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"&#20;\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"&#21;\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"&#22;\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"&#23;\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"&#24;\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"&#25;\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"&#26;\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"&#27;\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"&#28;\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"&#29;\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"&#30;\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"&#31;\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"&#32;\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"&#33;\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"&#35;\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"&#36;\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"&#37;\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"&#40;\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"&#41;\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"&#42;\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"&#43;\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"&#44;\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"&#45;\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"&#46;\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"&#47;\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"&#58;\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"&#59;\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"&#61;\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"&#63;\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"&#64;\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"&#91;\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"&#92;\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"&#93;\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"&#94;\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"&#95;\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"&#96;\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.113 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.123 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"&#124;\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.140 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.141 = private unnamed_addr constant [2 x i8] c"\7F\00", align 1
@.str.142 = private unnamed_addr constant [2 x i8] c"\80\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c"\81\00", align 1
@.str.144 = private unnamed_addr constant [2 x i8] c"\82\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c"\83\00", align 1
@.str.146 = private unnamed_addr constant [2 x i8] c"\84\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c"\85\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"\86\00", align 1
@.str.149 = private unnamed_addr constant [2 x i8] c"\87\00", align 1
@.str.150 = private unnamed_addr constant [2 x i8] c"\88\00", align 1
@.str.151 = private unnamed_addr constant [2 x i8] c"\89\00", align 1
@.str.152 = private unnamed_addr constant [2 x i8] c"\8A\00", align 1
@.str.153 = private unnamed_addr constant [2 x i8] c"\8B\00", align 1
@.str.154 = private unnamed_addr constant [2 x i8] c"\8C\00", align 1
@.str.155 = private unnamed_addr constant [2 x i8] c"\8D\00", align 1
@.str.156 = private unnamed_addr constant [2 x i8] c"\8E\00", align 1
@.str.157 = private unnamed_addr constant [2 x i8] c"\8F\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"\90\00", align 1
@.str.159 = private unnamed_addr constant [2 x i8] c"\91\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"\92\00", align 1
@.str.161 = private unnamed_addr constant [2 x i8] c"\93\00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c"\94\00", align 1
@.str.163 = private unnamed_addr constant [2 x i8] c"\95\00", align 1
@.str.164 = private unnamed_addr constant [2 x i8] c"\96\00", align 1
@.str.165 = private unnamed_addr constant [2 x i8] c"\97\00", align 1
@.str.166 = private unnamed_addr constant [2 x i8] c"\98\00", align 1
@.str.167 = private unnamed_addr constant [2 x i8] c"\99\00", align 1
@.str.168 = private unnamed_addr constant [2 x i8] c"\9A\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"\9B\00", align 1
@.str.170 = private unnamed_addr constant [2 x i8] c"\9C\00", align 1
@.str.171 = private unnamed_addr constant [2 x i8] c"\9D\00", align 1
@.str.172 = private unnamed_addr constant [2 x i8] c"\9E\00", align 1
@.str.173 = private unnamed_addr constant [2 x i8] c"\9F\00", align 1
@.str.174 = private unnamed_addr constant [2 x i8] c"\A0\00", align 1
@.str.175 = private unnamed_addr constant [2 x i8] c"\A1\00", align 1
@.str.176 = private unnamed_addr constant [2 x i8] c"\A2\00", align 1
@.str.177 = private unnamed_addr constant [2 x i8] c"\A3\00", align 1
@.str.178 = private unnamed_addr constant [2 x i8] c"\A4\00", align 1
@.str.179 = private unnamed_addr constant [2 x i8] c"\A5\00", align 1
@.str.180 = private unnamed_addr constant [2 x i8] c"\A6\00", align 1
@.str.181 = private unnamed_addr constant [2 x i8] c"\A7\00", align 1
@.str.182 = private unnamed_addr constant [2 x i8] c"\A8\00", align 1
@.str.183 = private unnamed_addr constant [2 x i8] c"\A9\00", align 1
@.str.184 = private unnamed_addr constant [2 x i8] c"\AA\00", align 1
@.str.185 = private unnamed_addr constant [2 x i8] c"\AB\00", align 1
@.str.186 = private unnamed_addr constant [2 x i8] c"\AC\00", align 1
@.str.187 = private unnamed_addr constant [2 x i8] c"\AD\00", align 1
@.str.188 = private unnamed_addr constant [2 x i8] c"\AE\00", align 1
@.str.189 = private unnamed_addr constant [2 x i8] c"\AF\00", align 1
@.str.190 = private unnamed_addr constant [2 x i8] c"\B0\00", align 1
@.str.191 = private unnamed_addr constant [2 x i8] c"\B1\00", align 1
@.str.192 = private unnamed_addr constant [2 x i8] c"\B2\00", align 1
@.str.193 = private unnamed_addr constant [2 x i8] c"\B3\00", align 1
@.str.194 = private unnamed_addr constant [2 x i8] c"\B4\00", align 1
@.str.195 = private unnamed_addr constant [2 x i8] c"\B5\00", align 1
@.str.196 = private unnamed_addr constant [2 x i8] c"\B6\00", align 1
@.str.197 = private unnamed_addr constant [2 x i8] c"\B7\00", align 1
@.str.198 = private unnamed_addr constant [2 x i8] c"\B8\00", align 1
@.str.199 = private unnamed_addr constant [2 x i8] c"\B9\00", align 1
@.str.200 = private unnamed_addr constant [2 x i8] c"\BA\00", align 1
@.str.201 = private unnamed_addr constant [2 x i8] c"\BB\00", align 1
@.str.202 = private unnamed_addr constant [2 x i8] c"\BC\00", align 1
@.str.203 = private unnamed_addr constant [2 x i8] c"\BD\00", align 1
@.str.204 = private unnamed_addr constant [2 x i8] c"\BE\00", align 1
@.str.205 = private unnamed_addr constant [2 x i8] c"\BF\00", align 1
@.str.206 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@.str.207 = private unnamed_addr constant [2 x i8] c"\C1\00", align 1
@.str.208 = private unnamed_addr constant [2 x i8] c"\C2\00", align 1
@.str.209 = private unnamed_addr constant [2 x i8] c"\C3\00", align 1
@.str.210 = private unnamed_addr constant [2 x i8] c"\C4\00", align 1
@.str.211 = private unnamed_addr constant [2 x i8] c"\C5\00", align 1
@.str.212 = private unnamed_addr constant [2 x i8] c"\C6\00", align 1
@.str.213 = private unnamed_addr constant [2 x i8] c"\C7\00", align 1
@.str.214 = private unnamed_addr constant [2 x i8] c"\C8\00", align 1
@.str.215 = private unnamed_addr constant [2 x i8] c"\C9\00", align 1
@.str.216 = private unnamed_addr constant [2 x i8] c"\CA\00", align 1
@.str.217 = private unnamed_addr constant [2 x i8] c"\CB\00", align 1
@.str.218 = private unnamed_addr constant [2 x i8] c"\CC\00", align 1
@.str.219 = private unnamed_addr constant [2 x i8] c"\CD\00", align 1
@.str.220 = private unnamed_addr constant [2 x i8] c"\CE\00", align 1
@.str.221 = private unnamed_addr constant [2 x i8] c"\CF\00", align 1
@.str.222 = private unnamed_addr constant [2 x i8] c"\D0\00", align 1
@.str.223 = private unnamed_addr constant [2 x i8] c"\D1\00", align 1
@.str.224 = private unnamed_addr constant [2 x i8] c"\D2\00", align 1
@.str.225 = private unnamed_addr constant [2 x i8] c"\D3\00", align 1
@.str.226 = private unnamed_addr constant [2 x i8] c"\D4\00", align 1
@.str.227 = private unnamed_addr constant [2 x i8] c"\D5\00", align 1
@.str.228 = private unnamed_addr constant [2 x i8] c"\D6\00", align 1
@.str.229 = private unnamed_addr constant [2 x i8] c"\D7\00", align 1
@.str.230 = private unnamed_addr constant [2 x i8] c"\D8\00", align 1
@.str.231 = private unnamed_addr constant [2 x i8] c"\D9\00", align 1
@.str.232 = private unnamed_addr constant [2 x i8] c"\DA\00", align 1
@.str.233 = private unnamed_addr constant [2 x i8] c"\DB\00", align 1
@.str.234 = private unnamed_addr constant [2 x i8] c"\DC\00", align 1
@.str.235 = private unnamed_addr constant [2 x i8] c"\DD\00", align 1
@.str.236 = private unnamed_addr constant [2 x i8] c"\DE\00", align 1
@.str.237 = private unnamed_addr constant [2 x i8] c"\DF\00", align 1
@.str.238 = private unnamed_addr constant [2 x i8] c"\E0\00", align 1
@.str.239 = private unnamed_addr constant [2 x i8] c"\E1\00", align 1
@.str.240 = private unnamed_addr constant [2 x i8] c"\E2\00", align 1
@.str.241 = private unnamed_addr constant [2 x i8] c"\E3\00", align 1
@.str.242 = private unnamed_addr constant [2 x i8] c"\E4\00", align 1
@.str.243 = private unnamed_addr constant [2 x i8] c"\E5\00", align 1
@.str.244 = private unnamed_addr constant [2 x i8] c"\E6\00", align 1
@.str.245 = private unnamed_addr constant [2 x i8] c"\E7\00", align 1
@.str.246 = private unnamed_addr constant [2 x i8] c"\E8\00", align 1
@.str.247 = private unnamed_addr constant [2 x i8] c"\E9\00", align 1
@.str.248 = private unnamed_addr constant [2 x i8] c"\EA\00", align 1
@.str.249 = private unnamed_addr constant [2 x i8] c"\EB\00", align 1
@.str.250 = private unnamed_addr constant [2 x i8] c"\EC\00", align 1
@.str.251 = private unnamed_addr constant [2 x i8] c"\ED\00", align 1
@.str.252 = private unnamed_addr constant [2 x i8] c"\EE\00", align 1
@.str.253 = private unnamed_addr constant [2 x i8] c"\EF\00", align 1
@.str.254 = private unnamed_addr constant [2 x i8] c"\F0\00", align 1
@.str.255 = private unnamed_addr constant [2 x i8] c"\F1\00", align 1
@.str.256 = private unnamed_addr constant [2 x i8] c"\F2\00", align 1
@.str.257 = private unnamed_addr constant [2 x i8] c"\F3\00", align 1
@.str.258 = private unnamed_addr constant [2 x i8] c"\F4\00", align 1
@.str.259 = private unnamed_addr constant [2 x i8] c"\F5\00", align 1
@.str.260 = private unnamed_addr constant [2 x i8] c"\F6\00", align 1
@.str.261 = private unnamed_addr constant [2 x i8] c"\F7\00", align 1
@.str.262 = private unnamed_addr constant [2 x i8] c"\F8\00", align 1
@.str.263 = private unnamed_addr constant [2 x i8] c"\F9\00", align 1
@.str.264 = private unnamed_addr constant [2 x i8] c"\FA\00", align 1
@.str.265 = private unnamed_addr constant [2 x i8] c"\FB\00", align 1
@.str.266 = private unnamed_addr constant [2 x i8] c"\FC\00", align 1
@.str.267 = private unnamed_addr constant [2 x i8] c"\FD\00", align 1
@.str.268 = private unnamed_addr constant [2 x i8] c"\FE\00", align 1
@.str.269 = private unnamed_addr constant [2 x i8] c"\FF\00", align 1
@mustache__write_escaped.html_escape_len = internal constant [256 x i8] c"\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\05\05\05\05\06\05\05\05\05\05\05\05\05\01\01\01\01\01\01\01\01\01\01\05\05\04\05\04\05\05\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\05\05\05\05\05\05\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\06\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16, !dbg !155

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @FIO_LOG2STDERR(i8* %0, ...) #0 !dbg !163 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !168, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !173, metadata !DIExpression()), !dbg !188
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !189
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !189
  call void @llvm.va_start(i8* %7), !dbg !189
  call void @llvm.dbg.declare(metadata i32* %5, metadata !190, metadata !DIExpression()), !dbg !191
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !192
  %9 = load i8*, i8** %2, align 8, !dbg !193
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !194
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #2, !dbg !195
  store i32 %11, i32* %5, align 4, !dbg !191
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !196
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !196
  call void @llvm.va_end(i8* %13), !dbg !196
  %14 = load i32, i32* %5, align 4, !dbg !197
  %15 = icmp sle i32 %14, 0, !dbg !199
  br i1 %15, label %19, label %16, !dbg !200

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4, !dbg !201
  %18 = icmp sge i32 %17, 2046, !dbg !202
  br i1 %18, label %19, label %29, !dbg !203

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4, !dbg !204
  %21 = icmp sge i32 %20, 2046, !dbg !207
  br i1 %21, label %22, label %25, !dbg !208

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !209
  %24 = getelementptr inbounds i8, i8* %23, i64 2016, !dbg !211
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false), !dbg !212
  store i32 2041, i32* %5, align 4, !dbg !213
  br label %28, !dbg !214

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !215
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26), !dbg !217
  br label %42, !dbg !218

28:                                               ; preds = %22
  br label %29, !dbg !219

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4, !dbg !220
  %31 = add nsw i32 %30, 1, !dbg !220
  store i32 %31, i32* %5, align 4, !dbg !220
  %32 = sext i32 %30 to i64, !dbg !221
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32, !dbg !221
  store i8 10, i8* %33, align 1, !dbg !222
  %34 = load i32, i32* %5, align 4, !dbg !223
  %35 = sext i32 %34 to i64, !dbg !224
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35, !dbg !224
  store i8 48, i8* %36, align 1, !dbg !225
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !226
  %38 = load i32, i32* %5, align 4, !dbg !227
  %39 = sext i32 %38 to i64, !dbg !227
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !228
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40), !dbg !229
  br label %42, !dbg !230

42:                                               ; preds = %29, %25
  ret void, !dbg !230
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mustache_s* @fiobj_mustache_load(%struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %0) #0 !dbg !231 {
  %2 = alloca %struct.mustache_load_args_s, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !242, metadata !DIExpression()), !dbg !243
  %3 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %2, i32 0, i32 0, !dbg !244
  %4 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !244
  %5 = load i8*, i8** %4, align 8, !dbg !244
  store i8* %5, i8** %3, align 8, !dbg !244
  %6 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %2, i32 0, i32 1, !dbg !244
  %7 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !244
  %8 = load i64, i64* %7, align 8, !dbg !244
  store i64 %8, i64* %6, align 8, !dbg !244
  %9 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %2, i32 0, i32 2, !dbg !244
  store i8* null, i8** %9, align 8, !dbg !244
  %10 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %2, i32 0, i32 3, !dbg !244
  store i64 0, i64* %10, align 8, !dbg !244
  %11 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %2, i32 0, i32 4, !dbg !244
  store i32* null, i32** %11, align 8, !dbg !244
  %12 = call %struct.mustache_s* @mustache_load(%struct.mustache_load_args_s* byval(%struct.mustache_load_args_s) align 8 %2), !dbg !244
  ret %struct.mustache_s* %12, !dbg !245
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mustache_s* @mustache_load(%struct.mustache_load_args_s* byval(%struct.mustache_load_args_s) align 8 %0) #0 !dbg !246 {
  %2 = alloca %struct.mustache_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mustache__loader_stack_s, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.mustache__instruction_s, align 8
  %17 = alloca %struct.mustache__instruction_s, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.mustache__instruction_s, align 8
  %20 = alloca %struct.mustache__instruction_s, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.mustache__instruction_s, align 8
  %24 = alloca %struct.mustache__instruction_s, align 8
  %25 = alloca %struct.mustache__data_segment_s, align 8
  %26 = alloca %struct.mustache__instruction_s, align 8
  %27 = alloca %struct.mustache__instruction_s, align 8
  %28 = alloca %struct.mustache__instruction_s, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache_load_args_s* %0, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %3, metadata !261, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata %struct.mustache__loader_stack_s* %4, metadata !263, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata i8* %5, metadata !294, metadata !DIExpression()), !dbg !295
  store i8 0, i8* %5, align 1, !dbg !295
  %29 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !296
  %30 = load i32*, i32** %29, align 8, !dbg !296
  %31 = icmp ne i32* %30, null, !dbg !298
  br i1 %31, label %34, label %32, !dbg !299

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !300
  store i32* %3, i32** %33, align 8, !dbg !301
  br label %34, !dbg !302

34:                                               ; preds = %32, %1
  %35 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 9, !dbg !303
  store i16 0, i16* %35, align 2, !dbg !304
  %36 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 4, !dbg !305
  store i8* null, i8** %36, align 8, !dbg !306
  %37 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !307
  store i8* null, i8** %37, align 8, !dbg !308
  %38 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 6, !dbg !309
  store i32 0, i32* %38, align 4, !dbg !310
  %39 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !311
  store %struct.mustache__instruction_s* null, %struct.mustache__instruction_s** %39, align 8, !dbg !312
  %40 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 5, !dbg !313
  store i32 32, i32* %40, align 8, !dbg !314
  %41 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !315
  store i16 0, i16* %41, align 8, !dbg !316
  %42 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 7, !dbg !317
  store i32 0, i32* %42, align 8, !dbg !318
  %43 = call noalias i8* @malloc(i64 648) #2, !dbg !319
  %44 = bitcast i8* %43 to %struct.mustache_s*, !dbg !319
  %45 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !320
  store %struct.mustache_s* %44, %struct.mustache_s** %45, align 8, !dbg !321
  %46 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !322
  %47 = load %struct.mustache_s*, %struct.mustache_s** %46, align 8, !dbg !322
  %48 = icmp ne %struct.mustache_s* %47, null, !dbg !322
  br i1 %48, label %52, label %49, !dbg !324

49:                                               ; preds = %34
  call void @perror(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0)), !dbg !325
  %50 = call i32* @__errno_location() #9, !dbg !325
  %51 = load i32, i32* %50, align 4, !dbg !325
  call void @exit(i32 %51) #10, !dbg !325
  unreachable, !dbg !325

52:                                               ; preds = %34
  %53 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !327
  %54 = load %struct.mustache_s*, %struct.mustache_s** %53, align 8, !dbg !327
  %55 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %54, i32 0, i32 0, !dbg !328
  %56 = bitcast %union.anon* %55 to i8**, !dbg !329
  store i8* null, i8** %56, align 8, !dbg !330
  %57 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !331
  %58 = load %struct.mustache_s*, %struct.mustache_s** %57, align 8, !dbg !331
  %59 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %58, i32 0, i32 0, !dbg !332
  %60 = bitcast %union.anon* %59 to %struct.anon*, !dbg !333
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 1, !dbg !334
  store i32 0, i32* %61, align 4, !dbg !335
  %62 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !336
  %63 = load %struct.mustache_s*, %struct.mustache_s** %62, align 8, !dbg !336
  %64 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %63, i32 0, i32 0, !dbg !337
  %65 = bitcast %union.anon* %64 to %struct.anon*, !dbg !338
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 0, !dbg !339
  store i32 0, i32* %66, align 8, !dbg !340
  %67 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !341
  %68 = load %struct.mustache_s*, %struct.mustache_s** %67, align 8, !dbg !341
  %69 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %68, i64 1, !dbg !341
  %70 = bitcast %struct.mustache_s* %69 to %struct.mustache__instruction_s*, !dbg !341
  %71 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !342
  store %struct.mustache__instruction_s* %70, %struct.mustache__instruction_s** %71, align 8, !dbg !343
  %72 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !344
  %73 = load i32*, i32** %72, align 8, !dbg !344
  %74 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 2, !dbg !345
  store i32* %73, i32** %74, align 8, !dbg !346
  %75 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 1, !dbg !347
  %76 = load i64, i64* %75, align 8, !dbg !347
  %77 = icmp ne i64 %76, 0, !dbg !349
  br i1 %77, label %87, label %78, !dbg !350

78:                                               ; preds = %52
  %79 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 0, !dbg !351
  %80 = load i8*, i8** %79, align 8, !dbg !351
  %81 = icmp ne i8* %80, null, !dbg !352
  br i1 %81, label %82, label %87, !dbg !353

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 0, !dbg !354
  %84 = load i8*, i8** %83, align 8, !dbg !354
  %85 = call i64 @strlen(i8* %84) #11, !dbg !355
  %86 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 1, !dbg !356
  store i64 %85, i64* %86, align 8, !dbg !357
  br label %87, !dbg !358

87:                                               ; preds = %82, %78, %52
  %88 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 2, !dbg !359
  %89 = load i8*, i8** %88, align 8, !dbg !359
  %90 = icmp ne i8* %89, null, !dbg !361
  br i1 %90, label %91, label %104, !dbg !362

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 0, !dbg !363
  %93 = load i8*, i8** %92, align 8, !dbg !363
  %94 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 1, !dbg !366
  %95 = load i64, i64* %94, align 8, !dbg !366
  %96 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 2, !dbg !367
  %97 = load i8*, i8** %96, align 8, !dbg !367
  %98 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 3, !dbg !368
  %99 = load i64, i64* %98, align 8, !dbg !368
  %100 = call i64 @mustache__load_data(%struct.mustache__loader_stack_s* %4, i8* %93, i64 %95, i8* %97, i64 %99), !dbg !369
  %101 = icmp eq i64 %100, -1, !dbg !370
  br i1 %101, label %102, label %103, !dbg !371

102:                                              ; preds = %91
  br label %1408, !dbg !372

103:                                              ; preds = %91
  br label %113, !dbg !374

104:                                              ; preds = %87
  %105 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 0, !dbg !375
  %106 = load i8*, i8** %105, align 8, !dbg !375
  %107 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 1, !dbg !378
  %108 = load i64, i64* %107, align 8, !dbg !378
  %109 = call i64 @mustache__load_file(%struct.mustache__loader_stack_s* %4, i8* %106, i64 %108), !dbg !379
  %110 = icmp eq i64 %109, -1, !dbg !380
  br i1 %110, label %111, label %112, !dbg !381

111:                                              ; preds = %104
  br label %1408, !dbg !382

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %103
  br label %114, !dbg !384

114:                                              ; preds = %1351, %113
  %115 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !385
  %116 = load i16, i16* %115, align 8, !dbg !385
  %117 = icmp ne i16 %116, 0, !dbg !384
  br i1 %117, label %118, label %1355, !dbg !384

118:                                              ; preds = %114
  br label %119, !dbg !386

119:                                              ; preds = %1247, %173, %118
  %120 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !388
  %121 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !389
  %122 = load i16, i16* %121, align 8, !dbg !389
  %123 = zext i16 %122 to i64, !dbg !390
  %124 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %120, i64 0, i64 %123, !dbg !390
  %125 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %124, i32 0, i32 1, !dbg !391
  %126 = load i32, i32* %125, align 4, !dbg !391
  %127 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !392
  %128 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !393
  %129 = load i16, i16* %128, align 8, !dbg !393
  %130 = zext i16 %129 to i64, !dbg !394
  %131 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %127, i64 0, i64 %130, !dbg !394
  %132 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %131, i32 0, i32 2, !dbg !395
  %133 = load i32, i32* %132, align 4, !dbg !395
  %134 = icmp ult i32 %126, %133, !dbg !396
  br i1 %134, label %135, label %1248, !dbg !386

135:                                              ; preds = %119
  call void @llvm.dbg.declare(metadata i32* %6, metadata !397, metadata !DIExpression()), !dbg !399
  store i32 0, i32* %6, align 4, !dbg !399
  call void @llvm.dbg.declare(metadata i32* %7, metadata !400, metadata !DIExpression()), !dbg !401
  store i32 0, i32* %7, align 4, !dbg !401
  call void @llvm.dbg.declare(metadata i8** %8, metadata !402, metadata !DIExpression()), !dbg !403
  %136 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !404
  %137 = load i8*, i8** %136, align 8, !dbg !404
  %138 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !405
  %139 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !406
  %140 = load i16, i16* %139, align 8, !dbg !406
  %141 = zext i16 %140 to i64, !dbg !407
  %142 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %138, i64 0, i64 %141, !dbg !407
  %143 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %142, i32 0, i32 1, !dbg !408
  %144 = load i32, i32* %143, align 4, !dbg !408
  %145 = zext i32 %144 to i64, !dbg !409
  %146 = getelementptr inbounds i8, i8* %137, i64 %145, !dbg !409
  store i8* %146, i8** %8, align 8, !dbg !403
  call void @llvm.dbg.declare(metadata i8** %9, metadata !410, metadata !DIExpression()), !dbg !411
  %147 = load i8*, i8** %8, align 8, !dbg !412
  %148 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !413
  %149 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !414
  %150 = load i16, i16* %149, align 8, !dbg !414
  %151 = zext i16 %150 to i64, !dbg !415
  %152 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %148, i64 0, i64 %151, !dbg !415
  %153 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %152, i32 0, i32 4, !dbg !416
  %154 = getelementptr inbounds [5 x i8], [5 x i8]* %153, i64 0, i64 0, !dbg !415
  %155 = call i8* @strstr(i8* %147, i8* %154) #11, !dbg !417
  store i8* %155, i8** %9, align 8, !dbg !411
  call void @llvm.dbg.declare(metadata i8** %10, metadata !418, metadata !DIExpression()), !dbg !419
  %156 = load i8*, i8** %9, align 8, !dbg !420
  store i8* %156, i8** %10, align 8, !dbg !419
  %157 = load i8*, i8** %9, align 8, !dbg !421
  %158 = icmp ne i8* %157, null, !dbg !421
  br i1 %158, label %159, label %173, !dbg !423

159:                                              ; preds = %135
  %160 = load i8*, i8** %9, align 8, !dbg !424
  %161 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !425
  %162 = load i8*, i8** %161, align 8, !dbg !425
  %163 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !426
  %164 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !427
  %165 = load i16, i16* %164, align 8, !dbg !427
  %166 = zext i16 %165 to i64, !dbg !428
  %167 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %163, i64 0, i64 %166, !dbg !428
  %168 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %167, i32 0, i32 2, !dbg !429
  %169 = load i32, i32* %168, align 4, !dbg !429
  %170 = zext i32 %169 to i64, !dbg !430
  %171 = getelementptr inbounds i8, i8* %162, i64 %170, !dbg !430
  %172 = icmp uge i8* %160, %171, !dbg !431
  br i1 %172, label %173, label %210, !dbg !432

173:                                              ; preds = %159, %135
  %174 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !433
  %175 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !435
  %176 = load i16, i16* %175, align 8, !dbg !435
  %177 = zext i16 %176 to i64, !dbg !436
  %178 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %174, i64 0, i64 %177, !dbg !436
  %179 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %178, i32 0, i32 1, !dbg !437
  %180 = load i32, i32* %179, align 4, !dbg !437
  %181 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !438
  %182 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !439
  %183 = load i16, i16* %182, align 8, !dbg !439
  %184 = zext i16 %183 to i64, !dbg !440
  %185 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %181, i64 0, i64 %184, !dbg !440
  %186 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %185, i32 0, i32 2, !dbg !441
  %187 = load i32, i32* %186, align 4, !dbg !441
  %188 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !442
  %189 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !443
  %190 = load i16, i16* %189, align 8, !dbg !443
  %191 = zext i16 %190 to i64, !dbg !444
  %192 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %188, i64 0, i64 %191, !dbg !444
  %193 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %192, i32 0, i32 1, !dbg !445
  %194 = load i32, i32* %193, align 4, !dbg !445
  %195 = sub i32 %187, %194, !dbg !446
  %196 = call i32 @mustache__push_text_instruction(%struct.mustache__loader_stack_s* %4, i32 %180, i32 %195), !dbg !447
  %197 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !448
  %198 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !449
  %199 = load i16, i16* %198, align 8, !dbg !449
  %200 = zext i16 %199 to i64, !dbg !450
  %201 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %197, i64 0, i64 %200, !dbg !450
  %202 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %201, i32 0, i32 2, !dbg !451
  %203 = load i32, i32* %202, align 4, !dbg !451
  %204 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !452
  %205 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !453
  %206 = load i16, i16* %205, align 8, !dbg !453
  %207 = zext i16 %206 to i64, !dbg !454
  %208 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %204, i64 0, i64 %207, !dbg !454
  %209 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %208, i32 0, i32 1, !dbg !455
  store i32 %203, i32* %209, align 4, !dbg !456
  br label %119, !dbg !457, !llvm.loop !458

210:                                              ; preds = %159
  %211 = load i8*, i8** %9, align 8, !dbg !460
  %212 = load i8*, i8** %8, align 8, !dbg !462
  %213 = icmp ne i8* %211, %212, !dbg !463
  br i1 %213, label %214, label %229, !dbg !464

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !465
  %216 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !467
  %217 = load i16, i16* %216, align 8, !dbg !467
  %218 = zext i16 %217 to i64, !dbg !468
  %219 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %215, i64 0, i64 %218, !dbg !468
  %220 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %219, i32 0, i32 1, !dbg !469
  %221 = load i32, i32* %220, align 4, !dbg !469
  %222 = load i8*, i8** %9, align 8, !dbg !470
  %223 = load i8*, i8** %8, align 8, !dbg !471
  %224 = ptrtoint i8* %222 to i64, !dbg !472
  %225 = ptrtoint i8* %223 to i64, !dbg !472
  %226 = sub i64 %224, %225, !dbg !472
  %227 = trunc i64 %226 to i32, !dbg !473
  %228 = call i32 @mustache__push_text_instruction(%struct.mustache__loader_stack_s* %4, i32 %221, i32 %227), !dbg !474
  br label %229, !dbg !475

229:                                              ; preds = %214, %210
  %230 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !476
  %231 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !477
  %232 = load i16, i16* %231, align 8, !dbg !477
  %233 = zext i16 %232 to i64, !dbg !478
  %234 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %230, i64 0, i64 %233, !dbg !478
  %235 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %234, i32 0, i32 6, !dbg !479
  %236 = load i8, i8* %235, align 4, !dbg !479
  %237 = zext i8 %236 to i32, !dbg !478
  %238 = load i8*, i8** %9, align 8, !dbg !480
  %239 = sext i32 %237 to i64, !dbg !480
  %240 = getelementptr inbounds i8, i8* %238, i64 %239, !dbg !480
  store i8* %240, i8** %9, align 8, !dbg !480
  call void @llvm.dbg.declare(metadata i8** %11, metadata !481, metadata !DIExpression()), !dbg !482
  %241 = load i8*, i8** %9, align 8, !dbg !483
  %242 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !484
  %243 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !485
  %244 = load i16, i16* %243, align 8, !dbg !485
  %245 = zext i16 %244 to i64, !dbg !486
  %246 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %242, i64 0, i64 %245, !dbg !486
  %247 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %246, i32 0, i32 5, !dbg !487
  %248 = getelementptr inbounds [5 x i8], [5 x i8]* %247, i64 0, i64 0, !dbg !486
  %249 = call i8* @strstr(i8* %241, i8* %248) #11, !dbg !488
  store i8* %249, i8** %11, align 8, !dbg !482
  %250 = load i8*, i8** %11, align 8, !dbg !489
  %251 = icmp ne i8* %250, null, !dbg !489
  br i1 %251, label %252, label %266, !dbg !491

252:                                              ; preds = %229
  %253 = load i8*, i8** %11, align 8, !dbg !492
  %254 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !493
  %255 = load i8*, i8** %254, align 8, !dbg !493
  %256 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !494
  %257 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !495
  %258 = load i16, i16* %257, align 8, !dbg !495
  %259 = zext i16 %258 to i64, !dbg !496
  %260 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %256, i64 0, i64 %259, !dbg !496
  %261 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %260, i32 0, i32 2, !dbg !497
  %262 = load i32, i32* %261, align 4, !dbg !497
  %263 = zext i32 %262 to i64, !dbg !498
  %264 = getelementptr inbounds i8, i8* %255, i64 %263, !dbg !498
  %265 = icmp uge i8* %253, %264, !dbg !499
  br i1 %265, label %266, label %269, !dbg !500

266:                                              ; preds = %252, %229
  %267 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !501
  %268 = load i32*, i32** %267, align 8, !dbg !501
  store i32 2, i32* %268, align 4, !dbg !503
  br label %1408, !dbg !504

269:                                              ; preds = %252
  %270 = load i8*, i8** %11, align 8, !dbg !505
  %271 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !506
  %272 = load i8*, i8** %271, align 8, !dbg !506
  %273 = ptrtoint i8* %270 to i64, !dbg !507
  %274 = ptrtoint i8* %272 to i64, !dbg !507
  %275 = sub i64 %273, %274, !dbg !507
  %276 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !508
  %277 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !509
  %278 = load i16, i16* %277, align 8, !dbg !509
  %279 = zext i16 %278 to i64, !dbg !510
  %280 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %276, i64 0, i64 %279, !dbg !510
  %281 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %280, i32 0, i32 7, !dbg !511
  %282 = load i8, i8* %281, align 1, !dbg !511
  %283 = zext i8 %282 to i64, !dbg !510
  %284 = add nsw i64 %275, %283, !dbg !512
  %285 = trunc i64 %284 to i32, !dbg !513
  %286 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !514
  %287 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !515
  %288 = load i16, i16* %287, align 8, !dbg !515
  %289 = zext i16 %288 to i64, !dbg !516
  %290 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %286, i64 0, i64 %289, !dbg !516
  %291 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %290, i32 0, i32 1, !dbg !517
  store i32 %285, i32* %291, align 4, !dbg !518
  %292 = load i8*, i8** %11, align 8, !dbg !519
  %293 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !521
  %294 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !522
  %295 = load i16, i16* %294, align 8, !dbg !522
  %296 = zext i16 %295 to i64, !dbg !523
  %297 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %293, i64 0, i64 %296, !dbg !523
  %298 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %297, i32 0, i32 7, !dbg !524
  %299 = load i8, i8* %298, align 1, !dbg !524
  %300 = zext i8 %299 to i64, !dbg !519
  %301 = getelementptr inbounds i8, i8* %292, i64 %300, !dbg !519
  %302 = load i8, i8* %301, align 1, !dbg !519
  %303 = icmp ne i8 %302, 0, !dbg !519
  br i1 %303, label %304, label %348, !dbg !525

304:                                              ; preds = %269
  %305 = load i8*, i8** %11, align 8, !dbg !526
  %306 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !527
  %307 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !528
  %308 = load i16, i16* %307, align 8, !dbg !528
  %309 = zext i16 %308 to i64, !dbg !529
  %310 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %306, i64 0, i64 %309, !dbg !529
  %311 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %310, i32 0, i32 7, !dbg !530
  %312 = load i8, i8* %311, align 1, !dbg !530
  %313 = zext i8 %312 to i64, !dbg !526
  %314 = getelementptr inbounds i8, i8* %305, i64 %313, !dbg !526
  %315 = load i8, i8* %314, align 1, !dbg !526
  %316 = sext i8 %315 to i32, !dbg !526
  %317 = icmp eq i32 %316, 10, !dbg !531
  br i1 %317, label %348, label %318, !dbg !532

318:                                              ; preds = %304
  %319 = load i8*, i8** %11, align 8, !dbg !533
  %320 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !534
  %321 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !535
  %322 = load i16, i16* %321, align 8, !dbg !535
  %323 = zext i16 %322 to i64, !dbg !536
  %324 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %320, i64 0, i64 %323, !dbg !536
  %325 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %324, i32 0, i32 7, !dbg !537
  %326 = load i8, i8* %325, align 1, !dbg !537
  %327 = zext i8 %326 to i64, !dbg !533
  %328 = getelementptr inbounds i8, i8* %319, i64 %327, !dbg !533
  %329 = load i8, i8* %328, align 1, !dbg !533
  %330 = sext i8 %329 to i32, !dbg !533
  %331 = icmp eq i32 %330, 13, !dbg !538
  br i1 %331, label %332, label %426, !dbg !539

332:                                              ; preds = %318
  %333 = load i8*, i8** %11, align 8, !dbg !540
  %334 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !541
  %335 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !542
  %336 = load i16, i16* %335, align 8, !dbg !542
  %337 = zext i16 %336 to i64, !dbg !543
  %338 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %334, i64 0, i64 %337, !dbg !543
  %339 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %338, i32 0, i32 7, !dbg !544
  %340 = load i8, i8* %339, align 1, !dbg !544
  %341 = zext i8 %340 to i32, !dbg !543
  %342 = add nsw i32 1, %341, !dbg !545
  %343 = sext i32 %342 to i64, !dbg !540
  %344 = getelementptr inbounds i8, i8* %333, i64 %343, !dbg !540
  %345 = load i8, i8* %344, align 1, !dbg !540
  %346 = sext i8 %345 to i32, !dbg !540
  %347 = icmp eq i32 %346, 10, !dbg !546
  br i1 %347, label %348, label %426, !dbg !547

348:                                              ; preds = %332, %304, %269
  call void @llvm.dbg.declare(metadata i8** %12, metadata !548, metadata !DIExpression()), !dbg !550
  %349 = load i8*, i8** %9, align 8, !dbg !551
  %350 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !552
  %351 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !553
  %352 = load i16, i16* %351, align 8, !dbg !553
  %353 = zext i16 %352 to i64, !dbg !554
  %354 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %350, i64 0, i64 %353, !dbg !554
  %355 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %354, i32 0, i32 6, !dbg !555
  %356 = load i8, i8* %355, align 4, !dbg !555
  %357 = zext i8 %356 to i32, !dbg !554
  %358 = add nsw i32 %357, 1, !dbg !556
  %359 = sext i32 %358 to i64, !dbg !557
  %360 = sub i64 0, %359, !dbg !557
  %361 = getelementptr inbounds i8, i8* %349, i64 %360, !dbg !557
  store i8* %361, i8** %12, align 8, !dbg !550
  br label %362, !dbg !558

362:                                              ; preds = %382, %348
  %363 = load i8*, i8** %12, align 8, !dbg !559
  %364 = load i8*, i8** %8, align 8, !dbg !560
  %365 = icmp uge i8* %363, %364, !dbg !561
  br i1 %365, label %366, label %380, !dbg !562

366:                                              ; preds = %362
  %367 = load i8*, i8** %12, align 8, !dbg !563
  %368 = getelementptr inbounds i8, i8* %367, i64 0, !dbg !563
  %369 = load i8, i8* %368, align 1, !dbg !563
  %370 = sext i8 %369 to i32, !dbg !563
  %371 = icmp eq i32 %370, 32, !dbg !564
  br i1 %371, label %378, label %372, !dbg !565

372:                                              ; preds = %366
  %373 = load i8*, i8** %12, align 8, !dbg !566
  %374 = getelementptr inbounds i8, i8* %373, i64 0, !dbg !566
  %375 = load i8, i8* %374, align 1, !dbg !566
  %376 = sext i8 %375 to i32, !dbg !566
  %377 = icmp eq i32 %376, 9, !dbg !567
  br label %378, !dbg !565

378:                                              ; preds = %372, %366
  %379 = phi i1 [ true, %366 ], [ %377, %372 ]
  br label %380

380:                                              ; preds = %378, %362
  %381 = phi i1 [ false, %362 ], [ %379, %378 ], !dbg !568
  br i1 %381, label %382, label %385, !dbg !558

382:                                              ; preds = %380
  %383 = load i8*, i8** %12, align 8, !dbg !569
  %384 = getelementptr inbounds i8, i8* %383, i32 -1, !dbg !569
  store i8* %384, i8** %12, align 8, !dbg !569
  br label %362, !dbg !558, !llvm.loop !570

385:                                              ; preds = %380
  %386 = load i8*, i8** %12, align 8, !dbg !572
  %387 = getelementptr inbounds i8, i8* %386, i64 0, !dbg !572
  %388 = load i8, i8* %387, align 1, !dbg !572
  %389 = sext i8 %388 to i32, !dbg !572
  %390 = icmp eq i32 %389, 10, !dbg !574
  br i1 %390, label %397, label %391, !dbg !575

391:                                              ; preds = %385
  %392 = load i8*, i8** %12, align 8, !dbg !576
  %393 = getelementptr inbounds i8, i8* %392, i64 0, !dbg !576
  %394 = load i8, i8* %393, align 1, !dbg !576
  %395 = sext i8 %394 to i32, !dbg !576
  %396 = icmp eq i32 %395, 0, !dbg !577
  br i1 %396, label %397, label %425, !dbg !578

397:                                              ; preds = %391, %385
  %398 = load i8*, i8** %12, align 8, !dbg !579
  %399 = getelementptr inbounds i8, i8* %398, i32 1, !dbg !579
  store i8* %399, i8** %12, align 8, !dbg !579
  %400 = load i8*, i8** %12, align 8, !dbg !581
  %401 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !582
  %402 = load i8*, i8** %401, align 8, !dbg !582
  %403 = ptrtoint i8* %400 to i64, !dbg !583
  %404 = ptrtoint i8* %402 to i64, !dbg !583
  %405 = sub i64 %403, %404, !dbg !583
  %406 = trunc i64 %405 to i32, !dbg !581
  store i32 %406, i32* %7, align 4, !dbg !584
  %407 = load i8*, i8** %9, align 8, !dbg !585
  %408 = load i8*, i8** %12, align 8, !dbg !586
  %409 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !587
  %410 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !588
  %411 = load i16, i16* %410, align 8, !dbg !588
  %412 = zext i16 %411 to i64, !dbg !589
  %413 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %409, i64 0, i64 %412, !dbg !589
  %414 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %413, i32 0, i32 6, !dbg !590
  %415 = load i8, i8* %414, align 4, !dbg !590
  %416 = zext i8 %415 to i32, !dbg !589
  %417 = sext i32 %416 to i64, !dbg !591
  %418 = getelementptr inbounds i8, i8* %408, i64 %417, !dbg !591
  %419 = ptrtoint i8* %407 to i64, !dbg !592
  %420 = ptrtoint i8* %418 to i64, !dbg !592
  %421 = sub i64 %419, %420, !dbg !592
  %422 = shl i64 %421, 1, !dbg !593
  %423 = or i64 %422, 1, !dbg !594
  %424 = trunc i64 %423 to i32, !dbg !595
  store i32 %424, i32* %6, align 4, !dbg !596
  br label %425, !dbg !597

425:                                              ; preds = %397, %391
  br label %426, !dbg !598

426:                                              ; preds = %425, %332, %318
  store i8 1, i8* %5, align 1, !dbg !599
  %427 = load i8*, i8** %9, align 8, !dbg !600
  %428 = getelementptr inbounds i8, i8* %427, i64 0, !dbg !600
  %429 = load i8, i8* %428, align 1, !dbg !600
  %430 = sext i8 %429 to i32, !dbg !600
  switch i32 %430, label %1184 [
    i32 33, label %431
    i32 61, label %433
    i32 94, label %674
    i32 35, label %675
    i32 62, label %792
    i32 47, label %901
    i32 123, label %1123
    i32 38, label %1180
    i32 58, label %1181
    i32 60, label %1181
  ], !dbg !601

431:                                              ; preds = %426
  %432 = load i32, i32* %6, align 4, !dbg !602
  call void @mustache__stand_alone_adjust(%struct.mustache__loader_stack_s* %4, i32 %432), !dbg !604
  br label %1247, !dbg !605

433:                                              ; preds = %426
  %434 = load i32, i32* %6, align 4, !dbg !606
  call void @mustache__stand_alone_adjust(%struct.mustache__loader_stack_s* %4, i32 %434), !dbg !607
  %435 = load i8*, i8** %9, align 8, !dbg !608
  %436 = getelementptr inbounds i8, i8* %435, i32 1, !dbg !608
  store i8* %436, i8** %9, align 8, !dbg !608
  %437 = load i8*, i8** %11, align 8, !dbg !609
  %438 = getelementptr inbounds i8, i8* %437, i32 -1, !dbg !609
  store i8* %438, i8** %11, align 8, !dbg !609
  %439 = load i8*, i8** %11, align 8, !dbg !610
  %440 = getelementptr inbounds i8, i8* %439, i64 0, !dbg !610
  %441 = load i8, i8* %440, align 1, !dbg !610
  %442 = sext i8 %441 to i32, !dbg !610
  %443 = icmp ne i32 %442, 61, !dbg !612
  br i1 %443, label %444, label %447, !dbg !613

444:                                              ; preds = %433
  %445 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !614
  %446 = load i32*, i32** %445, align 8, !dbg !614
  store i32 2, i32* %446, align 4, !dbg !616
  br label %1408, !dbg !617

447:                                              ; preds = %433
  %448 = load i8*, i8** %11, align 8, !dbg !618
  %449 = getelementptr inbounds i8, i8* %448, i32 -1, !dbg !618
  store i8* %449, i8** %11, align 8, !dbg !618
  br label %450, !dbg !619

450:                                              ; preds = %462, %447
  %451 = call i16** @__ctype_b_loc() #9, !dbg !619
  %452 = load i16*, i16** %451, align 8, !dbg !619
  %453 = load i8*, i8** %9, align 8, !dbg !619
  %454 = load i8, i8* %453, align 1, !dbg !619
  %455 = sext i8 %454 to i32, !dbg !619
  %456 = sext i32 %455 to i64, !dbg !619
  %457 = getelementptr inbounds i16, i16* %452, i64 %456, !dbg !619
  %458 = load i16, i16* %457, align 2, !dbg !619
  %459 = zext i16 %458 to i32, !dbg !619
  %460 = and i32 %459, 8192, !dbg !619
  %461 = icmp ne i32 %460, 0, !dbg !619
  br i1 %461, label %462, label %465, !dbg !619

462:                                              ; preds = %450
  %463 = load i8*, i8** %9, align 8, !dbg !620
  %464 = getelementptr inbounds i8, i8* %463, i64 1, !dbg !620
  store i8* %464, i8** %9, align 8, !dbg !620
  br label %450, !dbg !619, !llvm.loop !622

465:                                              ; preds = %450
  br label %466, !dbg !623

466:                                              ; preds = %478, %465
  %467 = call i16** @__ctype_b_loc() #9, !dbg !623
  %468 = load i16*, i16** %467, align 8, !dbg !623
  %469 = load i8*, i8** %11, align 8, !dbg !623
  %470 = load i8, i8* %469, align 1, !dbg !623
  %471 = sext i8 %470 to i32, !dbg !623
  %472 = sext i32 %471 to i64, !dbg !623
  %473 = getelementptr inbounds i16, i16* %468, i64 %472, !dbg !623
  %474 = load i16, i16* %473, align 2, !dbg !623
  %475 = zext i16 %474 to i32, !dbg !623
  %476 = and i32 %475, 8192, !dbg !623
  %477 = icmp ne i32 %476, 0, !dbg !623
  br i1 %477, label %478, label %481, !dbg !623

478:                                              ; preds = %466
  %479 = load i8*, i8** %11, align 8, !dbg !624
  %480 = getelementptr inbounds i8, i8* %479, i64 -1, !dbg !624
  store i8* %480, i8** %11, align 8, !dbg !624
  br label %466, !dbg !623, !llvm.loop !626

481:                                              ; preds = %466
  %482 = load i8*, i8** %11, align 8, !dbg !627
  %483 = getelementptr inbounds i8, i8* %482, i32 1, !dbg !627
  store i8* %483, i8** %11, align 8, !dbg !627
  call void @llvm.dbg.declare(metadata i8** %13, metadata !628, metadata !DIExpression()), !dbg !630
  %484 = load i8*, i8** %9, align 8, !dbg !631
  store i8* %484, i8** %13, align 8, !dbg !630
  br label %485, !dbg !632

485:                                              ; preds = %504, %481
  %486 = load i8*, i8** %13, align 8, !dbg !633
  %487 = load i8*, i8** %11, align 8, !dbg !634
  %488 = icmp ult i8* %486, %487, !dbg !635
  br i1 %488, label %489, label %502, !dbg !636

489:                                              ; preds = %485
  %490 = call i16** @__ctype_b_loc() #9, !dbg !637
  %491 = load i16*, i16** %490, align 8, !dbg !637
  %492 = load i8*, i8** %13, align 8, !dbg !637
  %493 = load i8, i8* %492, align 1, !dbg !637
  %494 = sext i8 %493 to i32, !dbg !637
  %495 = sext i32 %494 to i64, !dbg !637
  %496 = getelementptr inbounds i16, i16* %491, i64 %495, !dbg !637
  %497 = load i16, i16* %496, align 2, !dbg !637
  %498 = zext i16 %497 to i32, !dbg !637
  %499 = and i32 %498, 8192, !dbg !637
  %500 = icmp ne i32 %499, 0, !dbg !638
  %501 = xor i1 %500, true, !dbg !638
  br label %502

502:                                              ; preds = %489, %485
  %503 = phi i1 [ false, %485 ], [ %501, %489 ], !dbg !639
  br i1 %503, label %504, label %507, !dbg !632

504:                                              ; preds = %502
  %505 = load i8*, i8** %13, align 8, !dbg !640
  %506 = getelementptr inbounds i8, i8* %505, i32 1, !dbg !640
  store i8* %506, i8** %13, align 8, !dbg !640
  br label %485, !dbg !632, !llvm.loop !642

507:                                              ; preds = %502
  %508 = load i8*, i8** %13, align 8, !dbg !644
  %509 = load i8*, i8** %11, align 8, !dbg !646
  %510 = icmp eq i8* %508, %509, !dbg !647
  br i1 %510, label %515, label %511, !dbg !648

511:                                              ; preds = %507
  %512 = load i8*, i8** %13, align 8, !dbg !649
  %513 = load i8*, i8** %9, align 8, !dbg !650
  %514 = icmp eq i8* %512, %513, !dbg !651
  br i1 %514, label %515, label %518, !dbg !652

515:                                              ; preds = %511, %507
  %516 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !653
  %517 = load i32*, i32** %516, align 8, !dbg !653
  store i32 2, i32* %517, align 4, !dbg !655
  br label %1408, !dbg !656

518:                                              ; preds = %511
  %519 = load i8*, i8** %13, align 8, !dbg !657
  %520 = load i8*, i8** %9, align 8, !dbg !659
  %521 = ptrtoint i8* %519 to i64, !dbg !660
  %522 = ptrtoint i8* %520 to i64, !dbg !660
  %523 = sub i64 %521, %522, !dbg !660
  %524 = icmp sge i64 %523, 5, !dbg !661
  br i1 %524, label %525, label %528, !dbg !662

525:                                              ; preds = %518
  %526 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !663
  %527 = load i32*, i32** %526, align 8, !dbg !663
  store i32 8, i32* %527, align 4, !dbg !665
  br label %1408, !dbg !666

528:                                              ; preds = %518
  %529 = load i8*, i8** %13, align 8, !dbg !667
  %530 = load i8*, i8** %9, align 8, !dbg !668
  %531 = ptrtoint i8* %529 to i64, !dbg !669
  %532 = ptrtoint i8* %530 to i64, !dbg !669
  %533 = sub i64 %531, %532, !dbg !669
  %534 = trunc i64 %533 to i8, !dbg !667
  %535 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !670
  %536 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !671
  %537 = load i16, i16* %536, align 8, !dbg !671
  %538 = zext i16 %537 to i64, !dbg !672
  %539 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %535, i64 0, i64 %538, !dbg !672
  %540 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %539, i32 0, i32 6, !dbg !673
  store i8 %534, i8* %540, align 4, !dbg !674
  call void @llvm.dbg.declare(metadata i64* %14, metadata !675, metadata !DIExpression()), !dbg !677
  store i64 0, i64* %14, align 8, !dbg !677
  br label %541, !dbg !678

541:                                              ; preds = %565, %528
  %542 = load i64, i64* %14, align 8, !dbg !679
  %543 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !681
  %544 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !682
  %545 = load i16, i16* %544, align 8, !dbg !682
  %546 = zext i16 %545 to i64, !dbg !683
  %547 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %543, i64 0, i64 %546, !dbg !683
  %548 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %547, i32 0, i32 6, !dbg !684
  %549 = load i8, i8* %548, align 4, !dbg !684
  %550 = zext i8 %549 to i64, !dbg !683
  %551 = icmp ult i64 %542, %550, !dbg !685
  br i1 %551, label %552, label %568, !dbg !686

552:                                              ; preds = %541
  %553 = load i8*, i8** %9, align 8, !dbg !687
  %554 = load i64, i64* %14, align 8, !dbg !689
  %555 = getelementptr inbounds i8, i8* %553, i64 %554, !dbg !687
  %556 = load i8, i8* %555, align 1, !dbg !687
  %557 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !690
  %558 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !691
  %559 = load i16, i16* %558, align 8, !dbg !691
  %560 = zext i16 %559 to i64, !dbg !692
  %561 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %557, i64 0, i64 %560, !dbg !692
  %562 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %561, i32 0, i32 4, !dbg !693
  %563 = load i64, i64* %14, align 8, !dbg !694
  %564 = getelementptr inbounds [5 x i8], [5 x i8]* %562, i64 0, i64 %563, !dbg !692
  store i8 %556, i8* %564, align 1, !dbg !695
  br label %565, !dbg !696

565:                                              ; preds = %552
  %566 = load i64, i64* %14, align 8, !dbg !697
  %567 = add i64 %566, 1, !dbg !697
  store i64 %567, i64* %14, align 8, !dbg !697
  br label %541, !dbg !698, !llvm.loop !699

568:                                              ; preds = %541
  %569 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !701
  %570 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !702
  %571 = load i16, i16* %570, align 8, !dbg !702
  %572 = zext i16 %571 to i64, !dbg !703
  %573 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %569, i64 0, i64 %572, !dbg !703
  %574 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %573, i32 0, i32 4, !dbg !704
  %575 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !705
  %576 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !706
  %577 = load i16, i16* %576, align 8, !dbg !706
  %578 = zext i16 %577 to i64, !dbg !707
  %579 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %575, i64 0, i64 %578, !dbg !707
  %580 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %579, i32 0, i32 6, !dbg !708
  %581 = load i8, i8* %580, align 4, !dbg !708
  %582 = zext i8 %581 to i64, !dbg !703
  %583 = getelementptr inbounds [5 x i8], [5 x i8]* %574, i64 0, i64 %582, !dbg !703
  store i8 0, i8* %583, align 1, !dbg !709
  %584 = load i8*, i8** %13, align 8, !dbg !710
  %585 = getelementptr inbounds i8, i8* %584, i32 1, !dbg !710
  store i8* %585, i8** %13, align 8, !dbg !710
  br label %586, !dbg !711

586:                                              ; preds = %598, %568
  %587 = call i16** @__ctype_b_loc() #9, !dbg !711
  %588 = load i16*, i16** %587, align 8, !dbg !711
  %589 = load i8*, i8** %13, align 8, !dbg !711
  %590 = load i8, i8* %589, align 1, !dbg !711
  %591 = sext i8 %590 to i32, !dbg !711
  %592 = sext i32 %591 to i64, !dbg !711
  %593 = getelementptr inbounds i16, i16* %588, i64 %592, !dbg !711
  %594 = load i16, i16* %593, align 2, !dbg !711
  %595 = zext i16 %594 to i32, !dbg !711
  %596 = and i32 %595, 8192, !dbg !711
  %597 = icmp ne i32 %596, 0, !dbg !711
  br i1 %597, label %598, label %601, !dbg !711

598:                                              ; preds = %586
  %599 = load i8*, i8** %13, align 8, !dbg !712
  %600 = getelementptr inbounds i8, i8* %599, i64 1, !dbg !712
  store i8* %600, i8** %13, align 8, !dbg !712
  br label %586, !dbg !711, !llvm.loop !714

601:                                              ; preds = %586
  %602 = load i8*, i8** %13, align 8, !dbg !715
  %603 = load i8*, i8** %11, align 8, !dbg !717
  %604 = icmp eq i8* %602, %603, !dbg !718
  br i1 %604, label %605, label %608, !dbg !719

605:                                              ; preds = %601
  %606 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !720
  %607 = load i32*, i32** %606, align 8, !dbg !720
  store i32 2, i32* %607, align 4, !dbg !722
  br label %1408, !dbg !723

608:                                              ; preds = %601
  %609 = load i8*, i8** %11, align 8, !dbg !724
  %610 = load i8*, i8** %13, align 8, !dbg !726
  %611 = ptrtoint i8* %609 to i64, !dbg !727
  %612 = ptrtoint i8* %610 to i64, !dbg !727
  %613 = sub i64 %611, %612, !dbg !727
  %614 = icmp sge i64 %613, 5, !dbg !728
  br i1 %614, label %615, label %618, !dbg !729

615:                                              ; preds = %608
  %616 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !730
  %617 = load i32*, i32** %616, align 8, !dbg !730
  store i32 8, i32* %617, align 4, !dbg !732
  br label %1408, !dbg !733

618:                                              ; preds = %608
  %619 = load i8*, i8** %11, align 8, !dbg !734
  %620 = load i8*, i8** %13, align 8, !dbg !735
  %621 = ptrtoint i8* %619 to i64, !dbg !736
  %622 = ptrtoint i8* %620 to i64, !dbg !736
  %623 = sub i64 %621, %622, !dbg !736
  %624 = trunc i64 %623 to i8, !dbg !734
  %625 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !737
  %626 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !738
  %627 = load i16, i16* %626, align 8, !dbg !738
  %628 = zext i16 %627 to i64, !dbg !739
  %629 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %625, i64 0, i64 %628, !dbg !739
  %630 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %629, i32 0, i32 7, !dbg !740
  store i8 %624, i8* %630, align 1, !dbg !741
  call void @llvm.dbg.declare(metadata i64* %15, metadata !742, metadata !DIExpression()), !dbg !744
  store i64 0, i64* %15, align 8, !dbg !744
  br label %631, !dbg !745

631:                                              ; preds = %655, %618
  %632 = load i64, i64* %15, align 8, !dbg !746
  %633 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !748
  %634 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !749
  %635 = load i16, i16* %634, align 8, !dbg !749
  %636 = zext i16 %635 to i64, !dbg !750
  %637 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %633, i64 0, i64 %636, !dbg !750
  %638 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %637, i32 0, i32 7, !dbg !751
  %639 = load i8, i8* %638, align 1, !dbg !751
  %640 = zext i8 %639 to i64, !dbg !750
  %641 = icmp ult i64 %632, %640, !dbg !752
  br i1 %641, label %642, label %658, !dbg !753

642:                                              ; preds = %631
  %643 = load i8*, i8** %13, align 8, !dbg !754
  %644 = load i64, i64* %15, align 8, !dbg !756
  %645 = getelementptr inbounds i8, i8* %643, i64 %644, !dbg !754
  %646 = load i8, i8* %645, align 1, !dbg !754
  %647 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !757
  %648 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !758
  %649 = load i16, i16* %648, align 8, !dbg !758
  %650 = zext i16 %649 to i64, !dbg !759
  %651 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %647, i64 0, i64 %650, !dbg !759
  %652 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %651, i32 0, i32 5, !dbg !760
  %653 = load i64, i64* %15, align 8, !dbg !761
  %654 = getelementptr inbounds [5 x i8], [5 x i8]* %652, i64 0, i64 %653, !dbg !759
  store i8 %646, i8* %654, align 1, !dbg !762
  br label %655, !dbg !763

655:                                              ; preds = %642
  %656 = load i64, i64* %15, align 8, !dbg !764
  %657 = add i64 %656, 1, !dbg !764
  store i64 %657, i64* %15, align 8, !dbg !764
  br label %631, !dbg !765, !llvm.loop !766

658:                                              ; preds = %631
  %659 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !768
  %660 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !769
  %661 = load i16, i16* %660, align 8, !dbg !769
  %662 = zext i16 %661 to i64, !dbg !770
  %663 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %659, i64 0, i64 %662, !dbg !770
  %664 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %663, i32 0, i32 5, !dbg !771
  %665 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !772
  %666 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !773
  %667 = load i16, i16* %666, align 8, !dbg !773
  %668 = zext i16 %667 to i64, !dbg !774
  %669 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %665, i64 0, i64 %668, !dbg !774
  %670 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %669, i32 0, i32 7, !dbg !775
  %671 = load i8, i8* %670, align 1, !dbg !775
  %672 = zext i8 %671 to i64, !dbg !770
  %673 = getelementptr inbounds [5 x i8], [5 x i8]* %664, i64 0, i64 %672, !dbg !770
  store i8 0, i8* %673, align 1, !dbg !776
  br label %1247, !dbg !777

674:                                              ; preds = %426
  store i8 0, i8* %5, align 1, !dbg !778
  br label %675, !dbg !779

675:                                              ; preds = %426, %674
  %676 = load i32, i32* %6, align 4, !dbg !780
  call void @mustache__stand_alone_adjust(%struct.mustache__loader_stack_s* %4, i32 %676), !dbg !781
  %677 = load i8*, i8** %9, align 8, !dbg !782
  %678 = getelementptr inbounds i8, i8* %677, i32 1, !dbg !782
  store i8* %678, i8** %9, align 8, !dbg !782
  %679 = load i8*, i8** %11, align 8, !dbg !783
  %680 = getelementptr inbounds i8, i8* %679, i32 -1, !dbg !783
  store i8* %680, i8** %11, align 8, !dbg !783
  br label %681, !dbg !784

681:                                              ; preds = %693, %675
  %682 = call i16** @__ctype_b_loc() #9, !dbg !784
  %683 = load i16*, i16** %682, align 8, !dbg !784
  %684 = load i8*, i8** %9, align 8, !dbg !784
  %685 = load i8, i8* %684, align 1, !dbg !784
  %686 = sext i8 %685 to i32, !dbg !784
  %687 = sext i32 %686 to i64, !dbg !784
  %688 = getelementptr inbounds i16, i16* %683, i64 %687, !dbg !784
  %689 = load i16, i16* %688, align 2, !dbg !784
  %690 = zext i16 %689 to i32, !dbg !784
  %691 = and i32 %690, 8192, !dbg !784
  %692 = icmp ne i32 %691, 0, !dbg !784
  br i1 %692, label %693, label %696, !dbg !784

693:                                              ; preds = %681
  %694 = load i8*, i8** %9, align 8, !dbg !785
  %695 = getelementptr inbounds i8, i8* %694, i64 1, !dbg !785
  store i8* %695, i8** %9, align 8, !dbg !785
  br label %681, !dbg !784, !llvm.loop !787

696:                                              ; preds = %681
  br label %697, !dbg !788

697:                                              ; preds = %709, %696
  %698 = call i16** @__ctype_b_loc() #9, !dbg !788
  %699 = load i16*, i16** %698, align 8, !dbg !788
  %700 = load i8*, i8** %11, align 8, !dbg !788
  %701 = load i8, i8* %700, align 1, !dbg !788
  %702 = sext i8 %701 to i32, !dbg !788
  %703 = sext i32 %702 to i64, !dbg !788
  %704 = getelementptr inbounds i16, i16* %699, i64 %703, !dbg !788
  %705 = load i16, i16* %704, align 2, !dbg !788
  %706 = zext i16 %705 to i32, !dbg !788
  %707 = and i32 %706, 8192, !dbg !788
  %708 = icmp ne i32 %707, 0, !dbg !788
  br i1 %708, label %709, label %712, !dbg !788

709:                                              ; preds = %697
  %710 = load i8*, i8** %11, align 8, !dbg !789
  %711 = getelementptr inbounds i8, i8* %710, i64 -1, !dbg !789
  store i8* %711, i8** %11, align 8, !dbg !789
  br label %697, !dbg !788, !llvm.loop !791

712:                                              ; preds = %697
  %713 = load i8*, i8** %11, align 8, !dbg !792
  %714 = getelementptr inbounds i8, i8* %713, i32 1, !dbg !792
  store i8* %714, i8** %11, align 8, !dbg !792
  %715 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !793
  %716 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !794
  %717 = load i16, i16* %716, align 8, !dbg !794
  %718 = zext i16 %717 to i64, !dbg !795
  %719 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %715, i64 0, i64 %718, !dbg !795
  %720 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %719, i32 0, i32 3, !dbg !796
  %721 = load i16, i16* %720, align 4, !dbg !797
  %722 = add i16 %721, 1, !dbg !797
  store i16 %722, i16* %720, align 4, !dbg !797
  %723 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !798
  %724 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !800
  %725 = load i16, i16* %724, align 8, !dbg !800
  %726 = zext i16 %725 to i64, !dbg !801
  %727 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %723, i64 0, i64 %726, !dbg !801
  %728 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %727, i32 0, i32 3, !dbg !802
  %729 = load i16, i16* %728, align 4, !dbg !802
  %730 = zext i16 %729 to i32, !dbg !801
  %731 = icmp sge i32 %730, 82, !dbg !803
  br i1 %731, label %732, label %735, !dbg !804

732:                                              ; preds = %712
  %733 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !805
  %734 = load i32*, i32** %733, align 8, !dbg !805
  store i32 1, i32* %734, align 4, !dbg !807
  br label %1408, !dbg !808

735:                                              ; preds = %712
  %736 = load i8*, i8** %9, align 8, !dbg !809
  %737 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !811
  %738 = load i8*, i8** %737, align 8, !dbg !811
  %739 = ptrtoint i8* %736 to i64, !dbg !812
  %740 = ptrtoint i8* %738 to i64, !dbg !812
  %741 = sub i64 %739, %740, !dbg !812
  %742 = icmp sge i64 %741, 65535, !dbg !813
  br i1 %742, label %743, label %746, !dbg !814

743:                                              ; preds = %735
  %744 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !815
  %745 = load i32*, i32** %744, align 8, !dbg !815
  store i32 9, i32* %745, align 4, !dbg !817
  br label %746, !dbg !818

746:                                              ; preds = %743, %735
  %747 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %16, i32 0, i32 0, !dbg !819
  %748 = load i8, i8* %5, align 1, !dbg !821
  %749 = zext i8 %748 to i32, !dbg !821
  %750 = icmp ne i32 %749, 0, !dbg !821
  %751 = zext i1 %750 to i64, !dbg !821
  %752 = select i1 %750, i32 3, i32 4, !dbg !821
  store i32 %752, i32* %747, align 4, !dbg !819
  %753 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %16, i32 0, i32 1, !dbg !819
  %754 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %753, i32 0, i32 0, !dbg !822
  store i32 0, i32* %754, align 4, !dbg !822
  %755 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %753, i32 0, i32 1, !dbg !822
  store i32 0, i32* %755, align 4, !dbg !822
  %756 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %753, i32 0, i32 2, !dbg !822
  %757 = load i8*, i8** %9, align 8, !dbg !823
  %758 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !824
  %759 = load i8*, i8** %758, align 8, !dbg !824
  %760 = ptrtoint i8* %757 to i64, !dbg !825
  %761 = ptrtoint i8* %759 to i64, !dbg !825
  %762 = sub i64 %760, %761, !dbg !825
  %763 = trunc i64 %762 to i32, !dbg !823
  store i32 %763, i32* %756, align 4, !dbg !822
  %764 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %753, i32 0, i32 3, !dbg !822
  %765 = load i8*, i8** %11, align 8, !dbg !826
  %766 = load i8*, i8** %9, align 8, !dbg !827
  %767 = ptrtoint i8* %765 to i64, !dbg !828
  %768 = ptrtoint i8* %766 to i64, !dbg !828
  %769 = sub i64 %767, %768, !dbg !828
  %770 = trunc i64 %769 to i16, !dbg !826
  store i16 %770, i16* %764, align 4, !dbg !822
  %771 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %753, i32 0, i32 4, !dbg !822
  %772 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !829
  %773 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !830
  %774 = load i16, i16* %773, align 8, !dbg !830
  %775 = zext i16 %774 to i64, !dbg !831
  %776 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %772, i64 0, i64 %775, !dbg !831
  %777 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %776, i32 0, i32 1, !dbg !832
  %778 = load i32, i32* %777, align 4, !dbg !832
  %779 = zext i32 %778 to i64, !dbg !831
  %780 = load i8*, i8** %9, align 8, !dbg !833
  %781 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !834
  %782 = load i8*, i8** %781, align 8, !dbg !834
  %783 = ptrtoint i8* %780 to i64, !dbg !835
  %784 = ptrtoint i8* %782 to i64, !dbg !835
  %785 = sub i64 %783, %784, !dbg !835
  %786 = sub nsw i64 %779, %785, !dbg !836
  %787 = trunc i64 %786 to i16, !dbg !831
  store i16 %787, i16* %771, align 2, !dbg !822
  %788 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %16), !dbg !837
  %789 = icmp ne i32 %788, 0, !dbg !837
  br i1 %789, label %790, label %791, !dbg !838

790:                                              ; preds = %746
  br label %1408, !dbg !839

791:                                              ; preds = %746
  br label %1247, !dbg !841

792:                                              ; preds = %426
  %793 = load i32, i32* %6, align 4, !dbg !842
  call void @mustache__stand_alone_adjust(%struct.mustache__loader_stack_s* %4, i32 %793), !dbg !843
  %794 = load i32, i32* %6, align 4, !dbg !844
  %795 = lshr i32 %794, 1, !dbg !846
  %796 = icmp ne i32 %795, 0, !dbg !846
  br i1 %796, label %797, label %823, !dbg !847

797:                                              ; preds = %792
  %798 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %17, i32 0, i32 0, !dbg !848
  store i32 7, i32* %798, align 4, !dbg !848
  %799 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %17, i32 0, i32 1, !dbg !848
  %800 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %799, i32 0, i32 0, !dbg !851
  %801 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 7, !dbg !852
  %802 = load i32, i32* %801, align 8, !dbg !852
  store i32 %802, i32* %800, align 4, !dbg !851
  %803 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %799, i32 0, i32 1, !dbg !851
  store i32 0, i32* %803, align 4, !dbg !851
  %804 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %799, i32 0, i32 2, !dbg !851
  %805 = load i32, i32* %7, align 4, !dbg !853
  store i32 %805, i32* %804, align 4, !dbg !851
  %806 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %799, i32 0, i32 3, !dbg !851
  %807 = load i32, i32* %6, align 4, !dbg !854
  %808 = lshr i32 %807, 1, !dbg !855
  %809 = trunc i32 %808 to i16, !dbg !856
  store i16 %809, i16* %806, align 4, !dbg !851
  %810 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %799, i32 0, i32 4, !dbg !851
  store i16 0, i16* %810, align 2, !dbg !851
  %811 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %17), !dbg !857
  %812 = icmp ne i32 %811, 0, !dbg !857
  br i1 %812, label %813, label %814, !dbg !858

813:                                              ; preds = %797
  br label %1408, !dbg !859

814:                                              ; preds = %797
  %815 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !861
  %816 = load %struct.mustache_s*, %struct.mustache_s** %815, align 8, !dbg !861
  %817 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %816, i32 0, i32 0, !dbg !862
  %818 = bitcast %union.anon* %817 to %struct.anon*, !dbg !863
  %819 = getelementptr inbounds %struct.anon, %struct.anon* %818, i32 0, i32 0, !dbg !864
  %820 = load i32, i32* %819, align 8, !dbg !864
  %821 = sub i32 %820, 1, !dbg !865
  %822 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 7, !dbg !866
  store i32 %821, i32* %822, align 8, !dbg !867
  br label %823, !dbg !868

823:                                              ; preds = %814, %792
  %824 = load i8*, i8** %9, align 8, !dbg !869
  %825 = getelementptr inbounds i8, i8* %824, i32 1, !dbg !869
  store i8* %825, i8** %9, align 8, !dbg !869
  %826 = load i8*, i8** %11, align 8, !dbg !870
  %827 = getelementptr inbounds i8, i8* %826, i32 -1, !dbg !870
  store i8* %827, i8** %11, align 8, !dbg !870
  br label %828, !dbg !871

828:                                              ; preds = %840, %823
  %829 = call i16** @__ctype_b_loc() #9, !dbg !871
  %830 = load i16*, i16** %829, align 8, !dbg !871
  %831 = load i8*, i8** %9, align 8, !dbg !871
  %832 = load i8, i8* %831, align 1, !dbg !871
  %833 = sext i8 %832 to i32, !dbg !871
  %834 = sext i32 %833 to i64, !dbg !871
  %835 = getelementptr inbounds i16, i16* %830, i64 %834, !dbg !871
  %836 = load i16, i16* %835, align 2, !dbg !871
  %837 = zext i16 %836 to i32, !dbg !871
  %838 = and i32 %837, 8192, !dbg !871
  %839 = icmp ne i32 %838, 0, !dbg !871
  br i1 %839, label %840, label %843, !dbg !871

840:                                              ; preds = %828
  %841 = load i8*, i8** %9, align 8, !dbg !872
  %842 = getelementptr inbounds i8, i8* %841, i64 1, !dbg !872
  store i8* %842, i8** %9, align 8, !dbg !872
  br label %828, !dbg !871, !llvm.loop !874

843:                                              ; preds = %828
  br label %844, !dbg !875

844:                                              ; preds = %856, %843
  %845 = call i16** @__ctype_b_loc() #9, !dbg !875
  %846 = load i16*, i16** %845, align 8, !dbg !875
  %847 = load i8*, i8** %11, align 8, !dbg !875
  %848 = load i8, i8* %847, align 1, !dbg !875
  %849 = sext i8 %848 to i32, !dbg !875
  %850 = sext i32 %849 to i64, !dbg !875
  %851 = getelementptr inbounds i16, i16* %846, i64 %850, !dbg !875
  %852 = load i16, i16* %851, align 2, !dbg !875
  %853 = zext i16 %852 to i32, !dbg !875
  %854 = and i32 %853, 8192, !dbg !875
  %855 = icmp ne i32 %854, 0, !dbg !875
  br i1 %855, label %856, label %859, !dbg !875

856:                                              ; preds = %844
  %857 = load i8*, i8** %11, align 8, !dbg !876
  %858 = getelementptr inbounds i8, i8* %857, i64 -1, !dbg !876
  store i8* %858, i8** %11, align 8, !dbg !876
  br label %844, !dbg !875, !llvm.loop !878

859:                                              ; preds = %844
  %860 = load i8*, i8** %11, align 8, !dbg !879
  %861 = getelementptr inbounds i8, i8* %860, i32 1, !dbg !879
  store i8* %861, i8** %11, align 8, !dbg !879
  call void @llvm.dbg.declare(metadata i64* %18, metadata !880, metadata !DIExpression()), !dbg !883
  %862 = load i8*, i8** %9, align 8, !dbg !884
  %863 = load i8*, i8** %11, align 8, !dbg !885
  %864 = load i8*, i8** %9, align 8, !dbg !886
  %865 = ptrtoint i8* %863 to i64, !dbg !887
  %866 = ptrtoint i8* %864 to i64, !dbg !887
  %867 = sub i64 %865, %866, !dbg !887
  %868 = call i64 @mustache__load_file(%struct.mustache__loader_stack_s* %4, i8* %862, i64 %867), !dbg !888
  store i64 %868, i64* %18, align 8, !dbg !883
  %869 = load i64, i64* %18, align 8, !dbg !889
  %870 = icmp eq i64 %869, -1, !dbg !891
  br i1 %870, label %871, label %872, !dbg !892

871:                                              ; preds = %859
  br label %1408, !dbg !893

872:                                              ; preds = %859
  %873 = load i32, i32* %6, align 4, !dbg !894
  %874 = lshr i32 %873, 1, !dbg !896
  %875 = icmp ne i32 %874, 0, !dbg !896
  br i1 %875, label %876, label %900, !dbg !897

876:                                              ; preds = %872
  %877 = load i64, i64* %18, align 8, !dbg !898
  %878 = icmp ne i64 %877, 0, !dbg !898
  br i1 %878, label %879, label %892, !dbg !901

879:                                              ; preds = %876
  %880 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %19, i32 0, i32 0, !dbg !902
  store i32 0, i32* %880, align 4, !dbg !902
  %881 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %19, i32 0, i32 1, !dbg !902
  %882 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %881, i32 0, i32 0, !dbg !903
  store i32 0, i32* %882, align 4, !dbg !903
  %883 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %881, i32 0, i32 1, !dbg !903
  store i32 0, i32* %883, align 4, !dbg !903
  %884 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %881, i32 0, i32 2, !dbg !903
  %885 = load i32, i32* %7, align 4, !dbg !904
  store i32 %885, i32* %884, align 4, !dbg !903
  %886 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %881, i32 0, i32 3, !dbg !903
  %887 = load i32, i32* %6, align 4, !dbg !905
  %888 = lshr i32 %887, 1, !dbg !906
  %889 = trunc i32 %888 to i16, !dbg !907
  store i16 %889, i16* %886, align 4, !dbg !903
  %890 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %881, i32 0, i32 4, !dbg !903
  store i16 0, i16* %890, align 2, !dbg !903
  %891 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %19), !dbg !908
  br label %899, !dbg !908

892:                                              ; preds = %876
  %893 = bitcast %struct.mustache__instruction_s* %20 to i8*, !dbg !909
  call void @llvm.memset.p0i8.i64(i8* align 4 %893, i8 0, i64 20, i1 false), !dbg !909
  %894 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %20, i32 0, i32 0, !dbg !911
  store i32 8, i32* %894, align 4, !dbg !911
  %895 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %20), !dbg !912
  %896 = icmp ne i32 %895, 0, !dbg !912
  br i1 %896, label %897, label %898, !dbg !913

897:                                              ; preds = %892
  br label %1408, !dbg !914

898:                                              ; preds = %892
  br label %899

899:                                              ; preds = %898, %879
  br label %900, !dbg !915

900:                                              ; preds = %899, %872
  br label %1247, !dbg !916

901:                                              ; preds = %426
  %902 = load i32, i32* %6, align 4, !dbg !917
  call void @mustache__stand_alone_adjust(%struct.mustache__loader_stack_s* %4, i32 %902), !dbg !918
  %903 = load i8*, i8** %9, align 8, !dbg !919
  %904 = getelementptr inbounds i8, i8* %903, i32 1, !dbg !919
  store i8* %904, i8** %9, align 8, !dbg !919
  %905 = load i8*, i8** %11, align 8, !dbg !920
  %906 = getelementptr inbounds i8, i8* %905, i32 -1, !dbg !920
  store i8* %906, i8** %11, align 8, !dbg !920
  br label %907, !dbg !921

907:                                              ; preds = %919, %901
  %908 = call i16** @__ctype_b_loc() #9, !dbg !921
  %909 = load i16*, i16** %908, align 8, !dbg !921
  %910 = load i8*, i8** %9, align 8, !dbg !921
  %911 = load i8, i8* %910, align 1, !dbg !921
  %912 = sext i8 %911 to i32, !dbg !921
  %913 = sext i32 %912 to i64, !dbg !921
  %914 = getelementptr inbounds i16, i16* %909, i64 %913, !dbg !921
  %915 = load i16, i16* %914, align 2, !dbg !921
  %916 = zext i16 %915 to i32, !dbg !921
  %917 = and i32 %916, 8192, !dbg !921
  %918 = icmp ne i32 %917, 0, !dbg !921
  br i1 %918, label %919, label %922, !dbg !921

919:                                              ; preds = %907
  %920 = load i8*, i8** %9, align 8, !dbg !922
  %921 = getelementptr inbounds i8, i8* %920, i64 1, !dbg !922
  store i8* %921, i8** %9, align 8, !dbg !922
  br label %907, !dbg !921, !llvm.loop !924

922:                                              ; preds = %907
  br label %923, !dbg !925

923:                                              ; preds = %935, %922
  %924 = call i16** @__ctype_b_loc() #9, !dbg !925
  %925 = load i16*, i16** %924, align 8, !dbg !925
  %926 = load i8*, i8** %11, align 8, !dbg !925
  %927 = load i8, i8* %926, align 1, !dbg !925
  %928 = sext i8 %927 to i32, !dbg !925
  %929 = sext i32 %928 to i64, !dbg !925
  %930 = getelementptr inbounds i16, i16* %925, i64 %929, !dbg !925
  %931 = load i16, i16* %930, align 2, !dbg !925
  %932 = zext i16 %931 to i32, !dbg !925
  %933 = and i32 %932, 8192, !dbg !925
  %934 = icmp ne i32 %933, 0, !dbg !925
  br i1 %934, label %935, label %938, !dbg !925

935:                                              ; preds = %923
  %936 = load i8*, i8** %11, align 8, !dbg !926
  %937 = getelementptr inbounds i8, i8* %936, i64 -1, !dbg !926
  store i8* %937, i8** %11, align 8, !dbg !926
  br label %923, !dbg !925, !llvm.loop !928

938:                                              ; preds = %923
  %939 = load i8*, i8** %11, align 8, !dbg !929
  %940 = getelementptr inbounds i8, i8* %939, i32 1, !dbg !929
  store i8* %940, i8** %11, align 8, !dbg !929
  %941 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !930
  %942 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !932
  %943 = load i16, i16* %942, align 8, !dbg !932
  %944 = zext i16 %943 to i64, !dbg !933
  %945 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %941, i64 0, i64 %944, !dbg !933
  %946 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %945, i32 0, i32 3, !dbg !934
  %947 = load i16, i16* %946, align 4, !dbg !934
  %948 = icmp ne i16 %947, 0, !dbg !933
  br i1 %948, label %952, label %949, !dbg !935

949:                                              ; preds = %938
  %950 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !936
  %951 = load i32*, i32** %950, align 8, !dbg !936
  store i32 2, i32* %951, align 4, !dbg !938
  br label %1408, !dbg !939

952:                                              ; preds = %938
  call void @llvm.dbg.declare(metadata i32* %21, metadata !940, metadata !DIExpression()), !dbg !942
  %953 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !943
  %954 = load %struct.mustache_s*, %struct.mustache_s** %953, align 8, !dbg !943
  %955 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %954, i32 0, i32 0, !dbg !944
  %956 = bitcast %union.anon* %955 to %struct.anon*, !dbg !945
  %957 = getelementptr inbounds %struct.anon, %struct.anon* %956, i32 0, i32 0, !dbg !946
  %958 = load i32, i32* %957, align 8, !dbg !946
  store i32 %958, i32* %21, align 4, !dbg !942
  call void @llvm.dbg.declare(metadata i32* %22, metadata !947, metadata !DIExpression()), !dbg !948
  store i32 0, i32* %22, align 4, !dbg !948
  br label %959, !dbg !949

959:                                              ; preds = %1112, %952
  %960 = load i32, i32* %21, align 4, !dbg !950
  %961 = add i32 %960, -1, !dbg !950
  store i32 %961, i32* %21, align 4, !dbg !950
  %962 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !952
  %963 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %962, align 8, !dbg !952
  %964 = load i32, i32* %21, align 4, !dbg !954
  %965 = zext i32 %964 to i64, !dbg !955
  %966 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %963, i64 %965, !dbg !955
  %967 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %966, i32 0, i32 0, !dbg !956
  %968 = load i32, i32* %967, align 4, !dbg !956
  %969 = icmp eq i32 %968, 5, !dbg !957
  br i1 %969, label %970, label %973, !dbg !958

970:                                              ; preds = %959
  %971 = load i32, i32* %22, align 4, !dbg !959
  %972 = add i32 %971, 1, !dbg !959
  store i32 %972, i32* %22, align 4, !dbg !959
  br label %1111, !dbg !959

973:                                              ; preds = %959
  %974 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !960
  %975 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %974, align 8, !dbg !960
  %976 = load i32, i32* %21, align 4, !dbg !962
  %977 = zext i32 %976 to i64, !dbg !963
  %978 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %975, i64 %977, !dbg !963
  %979 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %978, i32 0, i32 0, !dbg !964
  %980 = load i32, i32* %979, align 4, !dbg !964
  %981 = icmp eq i32 %980, 3, !dbg !965
  br i1 %981, label %991, label %982, !dbg !966

982:                                              ; preds = %973
  %983 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !967
  %984 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %983, align 8, !dbg !967
  %985 = load i32, i32* %21, align 4, !dbg !968
  %986 = zext i32 %985 to i64, !dbg !969
  %987 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %984, i64 %986, !dbg !969
  %988 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %987, i32 0, i32 0, !dbg !970
  %989 = load i32, i32* %988, align 4, !dbg !970
  %990 = icmp eq i32 %989, 4, !dbg !971
  br i1 %990, label %991, label %1110, !dbg !972

991:                                              ; preds = %982, %973
  %992 = load i32, i32* %22, align 4, !dbg !973
  %993 = icmp ne i32 %992, 0, !dbg !973
  br i1 %993, label %994, label %997, !dbg !976

994:                                              ; preds = %991
  %995 = load i32, i32* %22, align 4, !dbg !977
  %996 = add i32 %995, -1, !dbg !977
  store i32 %996, i32* %22, align 4, !dbg !977
  br label %1109, !dbg !979

997:                                              ; preds = %991
  %998 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !980
  %999 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %998, align 8, !dbg !980
  %1000 = load i32, i32* %21, align 4, !dbg !983
  %1001 = zext i32 %1000 to i64, !dbg !984
  %1002 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %999, i64 %1001, !dbg !984
  %1003 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1002, i32 0, i32 1, !dbg !985
  %1004 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1003, i32 0, i32 3, !dbg !986
  %1005 = load i16, i16* %1004, align 4, !dbg !986
  %1006 = zext i16 %1005 to i64, !dbg !984
  %1007 = load i8*, i8** %11, align 8, !dbg !987
  %1008 = load i8*, i8** %9, align 8, !dbg !988
  %1009 = ptrtoint i8* %1007 to i64, !dbg !989
  %1010 = ptrtoint i8* %1008 to i64, !dbg !989
  %1011 = sub i64 %1009, %1010, !dbg !989
  %1012 = icmp ne i64 %1006, %1011, !dbg !990
  br i1 %1012, label %1038, label %1013, !dbg !991

1013:                                             ; preds = %997
  %1014 = load i8*, i8** %9, align 8, !dbg !992
  %1015 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !993
  %1016 = load i8*, i8** %1015, align 8, !dbg !993
  %1017 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !994
  %1018 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1017, align 8, !dbg !994
  %1019 = load i32, i32* %21, align 4, !dbg !995
  %1020 = zext i32 %1019 to i64, !dbg !996
  %1021 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1018, i64 %1020, !dbg !996
  %1022 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1021, i32 0, i32 1, !dbg !997
  %1023 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1022, i32 0, i32 2, !dbg !998
  %1024 = load i32, i32* %1023, align 4, !dbg !998
  %1025 = zext i32 %1024 to i64, !dbg !999
  %1026 = getelementptr inbounds i8, i8* %1016, i64 %1025, !dbg !999
  %1027 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !1000
  %1028 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1027, align 8, !dbg !1000
  %1029 = load i32, i32* %21, align 4, !dbg !1001
  %1030 = zext i32 %1029 to i64, !dbg !1002
  %1031 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1028, i64 %1030, !dbg !1002
  %1032 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1031, i32 0, i32 1, !dbg !1003
  %1033 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1032, i32 0, i32 3, !dbg !1004
  %1034 = load i16, i16* %1033, align 4, !dbg !1004
  %1035 = zext i16 %1034 to i64, !dbg !1002
  %1036 = call i32 @memcmp(i8* %1014, i8* %1026, i64 %1035) #11, !dbg !1005
  %1037 = icmp ne i32 %1036, 0, !dbg !1005
  br i1 %1037, label %1038, label %1041, !dbg !1006

1038:                                             ; preds = %1013, %997
  %1039 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !1007
  %1040 = load i32*, i32** %1039, align 8, !dbg !1007
  store i32 2, i32* %1040, align 4, !dbg !1009
  br label %1408, !dbg !1010

1041:                                             ; preds = %1013
  %1042 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !1011
  %1043 = load %struct.mustache_s*, %struct.mustache_s** %1042, align 8, !dbg !1011
  %1044 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1043, i32 0, i32 0, !dbg !1012
  %1045 = bitcast %union.anon* %1044 to %struct.anon*, !dbg !1013
  %1046 = getelementptr inbounds %struct.anon, %struct.anon* %1045, i32 0, i32 0, !dbg !1014
  %1047 = load i32, i32* %1046, align 8, !dbg !1014
  %1048 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !1015
  %1049 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1048, align 8, !dbg !1015
  %1050 = load i32, i32* %21, align 4, !dbg !1016
  %1051 = zext i32 %1050 to i64, !dbg !1017
  %1052 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1049, i64 %1051, !dbg !1017
  %1053 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1052, i32 0, i32 1, !dbg !1018
  %1054 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1053, i32 0, i32 0, !dbg !1019
  store i32 %1047, i32* %1054, align 4, !dbg !1020
  %1055 = load i8*, i8** %10, align 8, !dbg !1021
  %1056 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !1022
  %1057 = load i8*, i8** %1056, align 8, !dbg !1022
  %1058 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !1023
  %1059 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1058, align 8, !dbg !1023
  %1060 = load i32, i32* %21, align 4, !dbg !1024
  %1061 = zext i32 %1060 to i64, !dbg !1025
  %1062 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1059, i64 %1061, !dbg !1025
  %1063 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1062, i32 0, i32 1, !dbg !1026
  %1064 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1063, i32 0, i32 2, !dbg !1027
  %1065 = load i32, i32* %1064, align 4, !dbg !1027
  %1066 = zext i32 %1065 to i64, !dbg !1028
  %1067 = getelementptr inbounds i8, i8* %1057, i64 %1066, !dbg !1028
  %1068 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !1029
  %1069 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1068, align 8, !dbg !1029
  %1070 = load i32, i32* %21, align 4, !dbg !1030
  %1071 = zext i32 %1070 to i64, !dbg !1031
  %1072 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1069, i64 %1071, !dbg !1031
  %1073 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1072, i32 0, i32 1, !dbg !1032
  %1074 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1073, i32 0, i32 4, !dbg !1033
  %1075 = load i16, i16* %1074, align 2, !dbg !1033
  %1076 = zext i16 %1075 to i32, !dbg !1031
  %1077 = sext i32 %1076 to i64, !dbg !1034
  %1078 = getelementptr inbounds i8, i8* %1067, i64 %1077, !dbg !1034
  %1079 = ptrtoint i8* %1055 to i64, !dbg !1035
  %1080 = ptrtoint i8* %1078 to i64, !dbg !1035
  %1081 = sub i64 %1079, %1080, !dbg !1035
  %1082 = trunc i64 %1081 to i32, !dbg !1021
  %1083 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !1036
  %1084 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1083, align 8, !dbg !1036
  %1085 = load i32, i32* %21, align 4, !dbg !1037
  %1086 = zext i32 %1085 to i64, !dbg !1038
  %1087 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1084, i64 %1086, !dbg !1038
  %1088 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1087, i32 0, i32 1, !dbg !1039
  %1089 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1088, i32 0, i32 1, !dbg !1040
  store i32 %1082, i32* %1089, align 4, !dbg !1041
  %1090 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %23, i32 0, i32 0, !dbg !1042
  store i32 5, i32* %1090, align 4, !dbg !1042
  %1091 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %23, i32 0, i32 1, !dbg !1042
  %1092 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !1043
  %1093 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1092, align 8, !dbg !1043
  %1094 = load i32, i32* %21, align 4, !dbg !1044
  %1095 = zext i32 %1094 to i64, !dbg !1045
  %1096 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1093, i64 %1095, !dbg !1045
  %1097 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1096, i32 0, i32 1, !dbg !1046
  %1098 = bitcast %struct.anon.0* %1091 to i8*, !dbg !1046
  %1099 = bitcast %struct.anon.0* %1097 to i8*, !dbg !1046
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1098, i8* align 4 %1099, i64 16, i1 false), !dbg !1046
  %1100 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %23), !dbg !1047
  %1101 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !1048
  %1102 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !1049
  %1103 = load i16, i16* %1102, align 8, !dbg !1049
  %1104 = zext i16 %1103 to i64, !dbg !1050
  %1105 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1101, i64 0, i64 %1104, !dbg !1050
  %1106 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1105, i32 0, i32 3, !dbg !1051
  %1107 = load i16, i16* %1106, align 4, !dbg !1052
  %1108 = add i16 %1107, -1, !dbg !1052
  store i16 %1108, i16* %1106, align 4, !dbg !1052
  store i32 0, i32* %21, align 4, !dbg !1053
  store i8* null, i8** %9, align 8, !dbg !1054
  br label %1109

1109:                                             ; preds = %1041, %994
  br label %1110, !dbg !1055

1110:                                             ; preds = %1109, %982
  br label %1111

1111:                                             ; preds = %1110, %970
  br label %1112, !dbg !1056

1112:                                             ; preds = %1111
  %1113 = load i32, i32* %21, align 4, !dbg !1057
  %1114 = icmp ne i32 %1113, 0, !dbg !1056
  br i1 %1114, label %959, label %1115, !dbg !1056, !llvm.loop !1058

1115:                                             ; preds = %1112
  %1116 = load i8*, i8** %9, align 8, !dbg !1060
  %1117 = icmp ne i8* %1116, null, !dbg !1060
  br i1 %1117, label %1118, label %1121, !dbg !1062

1118:                                             ; preds = %1115
  %1119 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !1063
  %1120 = load i32*, i32** %1119, align 8, !dbg !1063
  store i32 2, i32* %1120, align 4, !dbg !1065
  br label %1408, !dbg !1066

1121:                                             ; preds = %1115
  br label %1122

1122:                                             ; preds = %1121
  br label %1247, !dbg !1067

1123:                                             ; preds = %426
  %1124 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !1068
  %1125 = load i8*, i8** %1124, align 8, !dbg !1068
  %1126 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !1070
  %1127 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !1071
  %1128 = load i16, i16* %1127, align 8, !dbg !1071
  %1129 = zext i16 %1128 to i64, !dbg !1072
  %1130 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1126, i64 0, i64 %1129, !dbg !1072
  %1131 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1130, i32 0, i32 1, !dbg !1073
  %1132 = load i32, i32* %1131, align 4, !dbg !1073
  %1133 = zext i32 %1132 to i64, !dbg !1074
  %1134 = getelementptr inbounds i8, i8* %1125, i64 %1133, !dbg !1074
  %1135 = load i8, i8* %1134, align 1, !dbg !1074
  %1136 = sext i8 %1135 to i32, !dbg !1074
  %1137 = icmp eq i32 %1136, 125, !dbg !1075
  br i1 %1137, label %1138, label %1179, !dbg !1076

1138:                                             ; preds = %1123
  %1139 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !1077
  %1140 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !1078
  %1141 = load i16, i16* %1140, align 8, !dbg !1078
  %1142 = zext i16 %1141 to i64, !dbg !1079
  %1143 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1139, i64 0, i64 %1142, !dbg !1079
  %1144 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1143, i32 0, i32 5, !dbg !1080
  %1145 = getelementptr inbounds [5 x i8], [5 x i8]* %1144, i64 0, i64 0, !dbg !1079
  %1146 = load i8, i8* %1145, align 1, !dbg !1079
  %1147 = sext i8 %1146 to i32, !dbg !1079
  %1148 = icmp eq i32 %1147, 125, !dbg !1081
  br i1 %1148, label %1149, label %1179, !dbg !1082

1149:                                             ; preds = %1138
  %1150 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !1083
  %1151 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !1084
  %1152 = load i16, i16* %1151, align 8, !dbg !1084
  %1153 = zext i16 %1152 to i64, !dbg !1085
  %1154 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1150, i64 0, i64 %1153, !dbg !1085
  %1155 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1154, i32 0, i32 5, !dbg !1086
  %1156 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !1087
  %1157 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !1088
  %1158 = load i16, i16* %1157, align 8, !dbg !1088
  %1159 = zext i16 %1158 to i64, !dbg !1089
  %1160 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1156, i64 0, i64 %1159, !dbg !1089
  %1161 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1160, i32 0, i32 7, !dbg !1090
  %1162 = load i8, i8* %1161, align 1, !dbg !1090
  %1163 = zext i8 %1162 to i32, !dbg !1089
  %1164 = sub nsw i32 %1163, 1, !dbg !1091
  %1165 = sext i32 %1164 to i64, !dbg !1085
  %1166 = getelementptr inbounds [5 x i8], [5 x i8]* %1155, i64 0, i64 %1165, !dbg !1085
  %1167 = load i8, i8* %1166, align 1, !dbg !1085
  %1168 = sext i8 %1167 to i32, !dbg !1085
  %1169 = icmp eq i32 %1168, 125, !dbg !1092
  br i1 %1169, label %1170, label %1179, !dbg !1093

1170:                                             ; preds = %1149
  %1171 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !1094
  %1172 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !1096
  %1173 = load i16, i16* %1172, align 8, !dbg !1096
  %1174 = zext i16 %1173 to i64, !dbg !1097
  %1175 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1171, i64 0, i64 %1174, !dbg !1097
  %1176 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1175, i32 0, i32 1, !dbg !1098
  %1177 = load i32, i32* %1176, align 4, !dbg !1099
  %1178 = add i32 %1177, 1, !dbg !1099
  store i32 %1178, i32* %1176, align 4, !dbg !1099
  br label %1179, !dbg !1100

1179:                                             ; preds = %1170, %1149, %1138, %1123
  br label %1180, !dbg !1101

1180:                                             ; preds = %426, %1179
  store i8 0, i8* %5, align 1, !dbg !1102
  br label %1181, !dbg !1103

1181:                                             ; preds = %426, %426, %1180
  %1182 = load i8*, i8** %9, align 8, !dbg !1104
  %1183 = getelementptr inbounds i8, i8* %1182, i32 1, !dbg !1104
  store i8* %1183, i8** %9, align 8, !dbg !1104
  br label %1184, !dbg !1104

1184:                                             ; preds = %426, %1181
  %1185 = load i8*, i8** %11, align 8, !dbg !1105
  %1186 = getelementptr inbounds i8, i8* %1185, i32 -1, !dbg !1105
  store i8* %1186, i8** %11, align 8, !dbg !1105
  br label %1187, !dbg !1106

1187:                                             ; preds = %1199, %1184
  %1188 = call i16** @__ctype_b_loc() #9, !dbg !1106
  %1189 = load i16*, i16** %1188, align 8, !dbg !1106
  %1190 = load i8*, i8** %9, align 8, !dbg !1106
  %1191 = load i8, i8* %1190, align 1, !dbg !1106
  %1192 = sext i8 %1191 to i32, !dbg !1106
  %1193 = sext i32 %1192 to i64, !dbg !1106
  %1194 = getelementptr inbounds i16, i16* %1189, i64 %1193, !dbg !1106
  %1195 = load i16, i16* %1194, align 2, !dbg !1106
  %1196 = zext i16 %1195 to i32, !dbg !1106
  %1197 = and i32 %1196, 8192, !dbg !1106
  %1198 = icmp ne i32 %1197, 0, !dbg !1106
  br i1 %1198, label %1199, label %1202, !dbg !1106

1199:                                             ; preds = %1187
  %1200 = load i8*, i8** %9, align 8, !dbg !1107
  %1201 = getelementptr inbounds i8, i8* %1200, i64 1, !dbg !1107
  store i8* %1201, i8** %9, align 8, !dbg !1107
  br label %1187, !dbg !1106, !llvm.loop !1109

1202:                                             ; preds = %1187
  br label %1203, !dbg !1110

1203:                                             ; preds = %1215, %1202
  %1204 = call i16** @__ctype_b_loc() #9, !dbg !1110
  %1205 = load i16*, i16** %1204, align 8, !dbg !1110
  %1206 = load i8*, i8** %11, align 8, !dbg !1110
  %1207 = load i8, i8* %1206, align 1, !dbg !1110
  %1208 = sext i8 %1207 to i32, !dbg !1110
  %1209 = sext i32 %1208 to i64, !dbg !1110
  %1210 = getelementptr inbounds i16, i16* %1205, i64 %1209, !dbg !1110
  %1211 = load i16, i16* %1210, align 2, !dbg !1110
  %1212 = zext i16 %1211 to i32, !dbg !1110
  %1213 = and i32 %1212, 8192, !dbg !1110
  %1214 = icmp ne i32 %1213, 0, !dbg !1110
  br i1 %1214, label %1215, label %1218, !dbg !1110

1215:                                             ; preds = %1203
  %1216 = load i8*, i8** %11, align 8, !dbg !1111
  %1217 = getelementptr inbounds i8, i8* %1216, i64 -1, !dbg !1111
  store i8* %1217, i8** %11, align 8, !dbg !1111
  br label %1203, !dbg !1110, !llvm.loop !1113

1218:                                             ; preds = %1203
  %1219 = load i8*, i8** %11, align 8, !dbg !1114
  %1220 = getelementptr inbounds i8, i8* %1219, i32 1, !dbg !1114
  store i8* %1220, i8** %11, align 8, !dbg !1114
  %1221 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %24, i32 0, i32 0, !dbg !1115
  %1222 = load i8, i8* %5, align 1, !dbg !1116
  %1223 = zext i8 %1222 to i32, !dbg !1116
  %1224 = icmp ne i32 %1223, 0, !dbg !1116
  %1225 = zext i1 %1224 to i64, !dbg !1116
  %1226 = select i1 %1224, i32 1, i32 2, !dbg !1116
  store i32 %1226, i32* %1221, align 4, !dbg !1115
  %1227 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %24, i32 0, i32 1, !dbg !1115
  %1228 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1227, i32 0, i32 0, !dbg !1117
  store i32 0, i32* %1228, align 4, !dbg !1117
  %1229 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1227, i32 0, i32 1, !dbg !1117
  store i32 0, i32* %1229, align 4, !dbg !1117
  %1230 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1227, i32 0, i32 2, !dbg !1117
  %1231 = load i8*, i8** %9, align 8, !dbg !1118
  %1232 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !1119
  %1233 = load i8*, i8** %1232, align 8, !dbg !1119
  %1234 = ptrtoint i8* %1231 to i64, !dbg !1120
  %1235 = ptrtoint i8* %1233 to i64, !dbg !1120
  %1236 = sub i64 %1234, %1235, !dbg !1120
  %1237 = trunc i64 %1236 to i32, !dbg !1118
  store i32 %1237, i32* %1230, align 4, !dbg !1117
  %1238 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1227, i32 0, i32 3, !dbg !1117
  %1239 = load i8*, i8** %11, align 8, !dbg !1121
  %1240 = load i8*, i8** %9, align 8, !dbg !1122
  %1241 = ptrtoint i8* %1239 to i64, !dbg !1123
  %1242 = ptrtoint i8* %1240 to i64, !dbg !1123
  %1243 = sub i64 %1241, %1242, !dbg !1123
  %1244 = trunc i64 %1243 to i16, !dbg !1121
  store i16 %1244, i16* %1238, align 4, !dbg !1117
  %1245 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1227, i32 0, i32 4, !dbg !1117
  store i16 0, i16* %1245, align 2, !dbg !1117
  %1246 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %24), !dbg !1124
  br label %1247, !dbg !1125

1247:                                             ; preds = %1218, %1122, %900, %791, %658, %431
  br label %119, !dbg !386, !llvm.loop !458

1248:                                             ; preds = %119
  %1249 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !1126
  %1250 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !1128
  %1251 = load i16, i16* %1250, align 8, !dbg !1128
  %1252 = zext i16 %1251 to i64, !dbg !1129
  %1253 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1249, i64 0, i64 %1252, !dbg !1129
  %1254 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1253, i32 0, i32 3, !dbg !1130
  %1255 = load i16, i16* %1254, align 4, !dbg !1130
  %1256 = icmp ne i16 %1255, 0, !dbg !1129
  br i1 %1256, label %1257, label %1260, !dbg !1131

1257:                                             ; preds = %1248
  %1258 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !1132
  %1259 = load i32*, i32** %1258, align 8, !dbg !1132
  store i32 2, i32* %1259, align 4, !dbg !1134
  br label %1408, !dbg !1135

1260:                                             ; preds = %1248
  store i8 0, i8* %5, align 1, !dbg !1136
  %1261 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !1137
  %1262 = load %struct.mustache_s*, %struct.mustache_s** %1261, align 8, !dbg !1137
  %1263 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1262, i32 0, i32 0, !dbg !1139
  %1264 = bitcast %union.anon* %1263 to %struct.anon*, !dbg !1140
  %1265 = getelementptr inbounds %struct.anon, %struct.anon* %1264, i32 0, i32 0, !dbg !1141
  %1266 = load i32, i32* %1265, align 8, !dbg !1141
  %1267 = icmp ne i32 %1266, 0, !dbg !1142
  br i1 %1267, label %1268, label %1291, !dbg !1143

1268:                                             ; preds = %1260
  %1269 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !1144
  %1270 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1269, align 8, !dbg !1144
  %1271 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !1145
  %1272 = load %struct.mustache_s*, %struct.mustache_s** %1271, align 8, !dbg !1145
  %1273 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1272, i32 0, i32 0, !dbg !1146
  %1274 = bitcast %union.anon* %1273 to %struct.anon*, !dbg !1147
  %1275 = getelementptr inbounds %struct.anon, %struct.anon* %1274, i32 0, i32 0, !dbg !1148
  %1276 = load i32, i32* %1275, align 8, !dbg !1148
  %1277 = sub i32 %1276, 1, !dbg !1149
  %1278 = zext i32 %1277 to i64, !dbg !1150
  %1279 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1270, i64 %1278, !dbg !1150
  %1280 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1279, i32 0, i32 0, !dbg !1151
  %1281 = load i32, i32* %1280, align 4, !dbg !1151
  %1282 = icmp eq i32 %1281, 9, !dbg !1152
  br i1 %1282, label %1283, label %1291, !dbg !1153

1283:                                             ; preds = %1268
  %1284 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !1154
  %1285 = load %struct.mustache_s*, %struct.mustache_s** %1284, align 8, !dbg !1154
  %1286 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1285, i32 0, i32 0, !dbg !1156
  %1287 = bitcast %union.anon* %1286 to %struct.anon*, !dbg !1157
  %1288 = getelementptr inbounds %struct.anon, %struct.anon* %1287, i32 0, i32 0, !dbg !1158
  %1289 = load i32, i32* %1288, align 8, !dbg !1159
  %1290 = add i32 %1289, -1, !dbg !1159
  store i32 %1290, i32* %1288, align 8, !dbg !1159
  store i8 1, i8* %5, align 1, !dbg !1160
  br label %1291, !dbg !1161

1291:                                             ; preds = %1283, %1268, %1260
  call void @llvm.dbg.declare(metadata %struct.mustache__data_segment_s* %25, metadata !1162, metadata !DIExpression()), !dbg !1171
  %1292 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !1172
  %1293 = load i8*, i8** %1292, align 8, !dbg !1172
  %1294 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11, !dbg !1173
  %1295 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !1174
  %1296 = load i16, i16* %1295, align 8, !dbg !1174
  %1297 = zext i16 %1296 to i64, !dbg !1175
  %1298 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1294, i64 0, i64 %1297, !dbg !1175
  %1299 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1298, i32 0, i32 0, !dbg !1176
  %1300 = load i32, i32* %1299, align 4, !dbg !1176
  %1301 = zext i32 %1300 to i64, !dbg !1177
  %1302 = getelementptr inbounds i8, i8* %1293, i64 %1301, !dbg !1177
  call void @mustache__data_segment_read(%struct.mustache__data_segment_s* sret %25, i8* %1302), !dbg !1178
  %1303 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !1179
  %1304 = load %struct.mustache_s*, %struct.mustache_s** %1303, align 8, !dbg !1179
  %1305 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1304, i32 0, i32 0, !dbg !1180
  %1306 = bitcast %union.anon* %1305 to %struct.anon*, !dbg !1181
  %1307 = getelementptr inbounds %struct.anon, %struct.anon* %1306, i32 0, i32 0, !dbg !1182
  %1308 = load i32, i32* %1307, align 8, !dbg !1182
  %1309 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !1183
  %1310 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1309, align 8, !dbg !1183
  %1311 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %25, i32 0, i32 1, !dbg !1184
  %1312 = load i32, i32* %1311, align 8, !dbg !1184
  %1313 = zext i32 %1312 to i64, !dbg !1185
  %1314 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1310, i64 %1313, !dbg !1185
  %1315 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1314, i32 0, i32 1, !dbg !1186
  %1316 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1315, i32 0, i32 0, !dbg !1187
  store i32 %1308, i32* %1316, align 4, !dbg !1188
  %1317 = bitcast %struct.mustache__instruction_s* %26 to i8*, !dbg !1189
  call void @llvm.memset.p0i8.i64(i8* align 4 %1317, i8 0, i64 20, i1 false), !dbg !1189
  %1318 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %26, i32 0, i32 0, !dbg !1190
  store i32 5, i32* %1318, align 4, !dbg !1190
  %1319 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %26), !dbg !1191
  %1320 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 7, !dbg !1192
  %1321 = load i32, i32* %1320, align 8, !dbg !1192
  %1322 = icmp ne i32 %1321, 0, !dbg !1194
  br i1 %1322, label %1323, label %1344, !dbg !1195

1323:                                             ; preds = %1291
  %1324 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 7, !dbg !1196
  %1325 = load i32, i32* %1324, align 8, !dbg !1196
  %1326 = add i32 %1325, 1, !dbg !1197
  %1327 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %25, i32 0, i32 1, !dbg !1198
  %1328 = load i32, i32* %1327, align 8, !dbg !1198
  %1329 = icmp eq i32 %1326, %1328, !dbg !1199
  br i1 %1329, label %1330, label %1344, !dbg !1200

1330:                                             ; preds = %1323
  %1331 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1, !dbg !1201
  %1332 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1331, align 8, !dbg !1201
  %1333 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 7, !dbg !1203
  %1334 = load i32, i32* %1333, align 8, !dbg !1203
  %1335 = zext i32 %1334 to i64, !dbg !1204
  %1336 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1332, i64 %1335, !dbg !1204
  %1337 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1336, i32 0, i32 1, !dbg !1205
  %1338 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1337, i32 0, i32 0, !dbg !1206
  %1339 = load i32, i32* %1338, align 4, !dbg !1206
  %1340 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 7, !dbg !1207
  store i32 %1339, i32* %1340, align 8, !dbg !1208
  %1341 = bitcast %struct.mustache__instruction_s* %27 to i8*, !dbg !1209
  call void @llvm.memset.p0i8.i64(i8* align 4 %1341, i8 0, i64 20, i1 false), !dbg !1209
  %1342 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %27, i32 0, i32 0, !dbg !1210
  store i32 8, i32* %1342, align 4, !dbg !1210
  %1343 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %27), !dbg !1211
  br label %1344, !dbg !1212

1344:                                             ; preds = %1330, %1323, %1291
  %1345 = load i8, i8* %5, align 1, !dbg !1213
  %1346 = icmp ne i8 %1345, 0, !dbg !1213
  br i1 %1346, label %1347, label %1351, !dbg !1215

1347:                                             ; preds = %1344
  %1348 = bitcast %struct.mustache__instruction_s* %28 to i8*, !dbg !1216
  call void @llvm.memset.p0i8.i64(i8* align 4 %1348, i8 0, i64 20, i1 false), !dbg !1216
  %1349 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %28, i32 0, i32 0, !dbg !1218
  store i32 9, i32* %1349, align 4, !dbg !1218
  %1350 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %28), !dbg !1219
  store i8 0, i8* %5, align 1, !dbg !1220
  br label %1351, !dbg !1221

1351:                                             ; preds = %1347, %1344
  %1352 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10, !dbg !1222
  %1353 = load i16, i16* %1352, align 8, !dbg !1223
  %1354 = add i16 %1353, -1, !dbg !1223
  store i16 %1354, i16* %1352, align 8, !dbg !1223
  br label %114, !dbg !384, !llvm.loop !1224

1355:                                             ; preds = %114
  %1356 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !1226
  %1357 = load %struct.mustache_s*, %struct.mustache_s** %1356, align 8, !dbg !1226
  %1358 = bitcast %struct.mustache_s* %1357 to i8*, !dbg !1227
  %1359 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !1228
  %1360 = load %struct.mustache_s*, %struct.mustache_s** %1359, align 8, !dbg !1228
  %1361 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1360, i32 0, i32 0, !dbg !1229
  %1362 = bitcast %union.anon* %1361 to %struct.anon*, !dbg !1230
  %1363 = getelementptr inbounds %struct.anon, %struct.anon* %1362, i32 0, i32 0, !dbg !1231
  %1364 = load i32, i32* %1363, align 8, !dbg !1231
  %1365 = zext i32 %1364 to i64, !dbg !1232
  %1366 = mul i64 20, %1365, !dbg !1233
  %1367 = add i64 8, %1366, !dbg !1234
  %1368 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 6, !dbg !1235
  %1369 = load i32, i32* %1368, align 4, !dbg !1235
  %1370 = zext i32 %1369 to i64, !dbg !1236
  %1371 = add i64 %1367, %1370, !dbg !1237
  %1372 = call i8* @realloc(i8* %1358, i64 %1371) #2, !dbg !1238
  %1373 = bitcast i8* %1372 to %struct.mustache_s*, !dbg !1238
  %1374 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !1239
  store %struct.mustache_s* %1373, %struct.mustache_s** %1374, align 8, !dbg !1240
  %1375 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !1241
  %1376 = load %struct.mustache_s*, %struct.mustache_s** %1375, align 8, !dbg !1241
  %1377 = icmp ne %struct.mustache_s* %1376, null, !dbg !1241
  br i1 %1377, label %1381, label %1378, !dbg !1243

1378:                                             ; preds = %1355
  call void @perror(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0)), !dbg !1244
  %1379 = call i32* @__errno_location() #9, !dbg !1244
  %1380 = load i32, i32* %1379, align 4, !dbg !1244
  call void @exit(i32 %1380) #10, !dbg !1244
  unreachable, !dbg !1244

1381:                                             ; preds = %1355
  %1382 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !1246
  %1383 = load %struct.mustache_s*, %struct.mustache_s** %1382, align 8, !dbg !1246
  %1384 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1383, i64 1, !dbg !1246
  %1385 = bitcast %struct.mustache_s* %1384 to %struct.mustache__instruction_s*, !dbg !1246
  %1386 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !1246
  %1387 = load %struct.mustache_s*, %struct.mustache_s** %1386, align 8, !dbg !1246
  %1388 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1387, i32 0, i32 0, !dbg !1246
  %1389 = bitcast %union.anon* %1388 to %struct.anon*, !dbg !1246
  %1390 = getelementptr inbounds %struct.anon, %struct.anon* %1389, i32 0, i32 0, !dbg !1246
  %1391 = load i32, i32* %1390, align 8, !dbg !1246
  %1392 = zext i32 %1391 to i64, !dbg !1246
  %1393 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1385, i64 %1392, !dbg !1246
  %1394 = bitcast %struct.mustache__instruction_s* %1393 to i8*, !dbg !1247
  %1395 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !1248
  %1396 = load i8*, i8** %1395, align 8, !dbg !1248
  %1397 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 6, !dbg !1249
  %1398 = load i32, i32* %1397, align 4, !dbg !1249
  %1399 = zext i32 %1398 to i64, !dbg !1250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1394, i8* align 1 %1396, i64 %1399, i1 false), !dbg !1247
  %1400 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !1251
  %1401 = load i8*, i8** %1400, align 8, !dbg !1251
  call void @free(i8* %1401) #2, !dbg !1252
  %1402 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 4, !dbg !1253
  %1403 = load i8*, i8** %1402, align 8, !dbg !1253
  call void @free(i8* %1403) #2, !dbg !1254
  %1404 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4, !dbg !1255
  %1405 = load i32*, i32** %1404, align 8, !dbg !1255
  store i32 0, i32* %1405, align 4, !dbg !1256
  %1406 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !1257
  %1407 = load %struct.mustache_s*, %struct.mustache_s** %1406, align 8, !dbg !1257
  store %struct.mustache_s* %1407, %struct.mustache_s** %2, align 8, !dbg !1258
  br label %1416, !dbg !1258

1408:                                             ; preds = %1257, %1118, %1038, %949, %897, %871, %813, %790, %732, %615, %605, %525, %515, %444, %266, %111, %102
  call void @llvm.dbg.label(metadata !1259), !dbg !1260
  %1409 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3, !dbg !1261
  %1410 = load i8*, i8** %1409, align 8, !dbg !1261
  call void @free(i8* %1410) #2, !dbg !1262
  %1411 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 4, !dbg !1263
  %1412 = load i8*, i8** %1411, align 8, !dbg !1263
  call void @free(i8* %1412) #2, !dbg !1264
  %1413 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0, !dbg !1265
  %1414 = load %struct.mustache_s*, %struct.mustache_s** %1413, align 8, !dbg !1265
  %1415 = bitcast %struct.mustache_s* %1414 to i8*, !dbg !1266
  call void @free(i8* %1415) #2, !dbg !1267
  store %struct.mustache_s* null, %struct.mustache_s** %2, align 8, !dbg !1268
  br label %1416, !dbg !1268

1416:                                             ; preds = %1408, %1381
  %1417 = load %struct.mustache_s*, %struct.mustache_s** %2, align 8, !dbg !1269
  ret %struct.mustache_s* %1417, !dbg !1269
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mustache_s* @fiobj_mustache_new(%struct.mustache_load_args_s* byval(%struct.mustache_load_args_s) align 8 %0) #0 !dbg !1270 {
  call void @llvm.dbg.declare(metadata %struct.mustache_load_args_s* %0, metadata !1271, metadata !DIExpression()), !dbg !1272
  %2 = call %struct.mustache_s* @mustache_load(%struct.mustache_load_args_s* byval(%struct.mustache_load_args_s) align 8 %0), !dbg !1273
  ret %struct.mustache_s* %2, !dbg !1274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_mustache_free(%struct.mustache_s* %0) #0 !dbg !1275 {
  %2 = alloca %struct.mustache_s*, align 8
  store %struct.mustache_s* %0, %struct.mustache_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache_s** %2, metadata !1278, metadata !DIExpression()), !dbg !1279
  %3 = load %struct.mustache_s*, %struct.mustache_s** %2, align 8, !dbg !1280
  call void @mustache_free(%struct.mustache_s* %3), !dbg !1281
  ret void, !dbg !1282
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mustache_free(%struct.mustache_s* %0) #0 !dbg !1283 {
  %2 = alloca %struct.mustache_s*, align 8
  store %struct.mustache_s* %0, %struct.mustache_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache_s** %2, metadata !1284, metadata !DIExpression()), !dbg !1285
  %3 = load %struct.mustache_s*, %struct.mustache_s** %2, align 8, !dbg !1286
  %4 = bitcast %struct.mustache_s* %3 to i8*, !dbg !1286
  call void @free(i8* %4) #2, !dbg !1287
  ret void, !dbg !1288
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_mustache_build2(i64 %0, %struct.mustache_s* %1, i64 %2) #0 !dbg !1289 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mustache_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mustache_build_args_s, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1292, metadata !DIExpression()), !dbg !1293
  store %struct.mustache_s* %1, %struct.mustache_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache_s** %5, metadata !1294, metadata !DIExpression()), !dbg !1295
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1296, metadata !DIExpression()), !dbg !1297
  %8 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %7, i32 0, i32 0, !dbg !1298
  %9 = load %struct.mustache_s*, %struct.mustache_s** %5, align 8, !dbg !1298
  store %struct.mustache_s* %9, %struct.mustache_s** %8, align 8, !dbg !1298
  %10 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %7, i32 0, i32 1, !dbg !1298
  %11 = load i64, i64* %4, align 8, !dbg !1298
  %12 = inttoptr i64 %11 to i8*, !dbg !1298
  store i8* %12, i8** %10, align 8, !dbg !1298
  %13 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %7, i32 0, i32 2, !dbg !1298
  %14 = load i64, i64* %6, align 8, !dbg !1298
  %15 = inttoptr i64 %14 to i8*, !dbg !1298
  store i8* %15, i8** %13, align 8, !dbg !1298
  %16 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %7, i32 0, i32 3, !dbg !1298
  store i32* null, i32** %16, align 8, !dbg !1298
  %17 = call i32 @mustache_build(%struct.mustache_build_args_s* byval(%struct.mustache_build_args_s) align 8 %7), !dbg !1298
  %18 = load i64, i64* %4, align 8, !dbg !1299
  ret i64 %18, !dbg !1300
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache_build(%struct.mustache_build_args_s* byval(%struct.mustache_build_args_s) align 8 %0) #0 !dbg !1301 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mustache__instruction_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mustache__builder_stack_s, align 8
  %7 = alloca %struct.mustache__section_stack_frame_s, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.mustache_build_args_s* %0, metadata !1311, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1313, metadata !DIExpression()), !dbg !1314
  %10 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3, !dbg !1315
  %11 = load i32*, i32** %10, align 8, !dbg !1315
  %12 = icmp ne i32* %11, null, !dbg !1317
  br i1 %12, label %15, label %13, !dbg !1318

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3, !dbg !1319
  store i32* %3, i32** %14, align 8, !dbg !1320
  br label %15, !dbg !1321

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 0, !dbg !1322
  %17 = load %struct.mustache_s*, %struct.mustache_s** %16, align 8, !dbg !1322
  %18 = icmp ne %struct.mustache_s* %17, null, !dbg !1324
  br i1 %18, label %20, label %19, !dbg !1325

19:                                               ; preds = %15
  br label %540, !dbg !1326

20:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata %struct.mustache__instruction_s** %4, metadata !1328, metadata !DIExpression()), !dbg !1329
  %21 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 0, !dbg !1330
  %22 = load %struct.mustache_s*, %struct.mustache_s** %21, align 8, !dbg !1330
  %23 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %22, i64 1, !dbg !1330
  %24 = bitcast %struct.mustache_s* %23 to %struct.mustache__instruction_s*, !dbg !1330
  store %struct.mustache__instruction_s* %24, %struct.mustache__instruction_s** %4, align 8, !dbg !1329
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1331, metadata !DIExpression()), !dbg !1333
  %25 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 0, !dbg !1334
  %26 = load %struct.mustache_s*, %struct.mustache_s** %25, align 8, !dbg !1334
  %27 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %26, i64 1, !dbg !1334
  %28 = bitcast %struct.mustache_s* %27 to %struct.mustache__instruction_s*, !dbg !1334
  %29 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 0, !dbg !1334
  %30 = load %struct.mustache_s*, %struct.mustache_s** %29, align 8, !dbg !1334
  %31 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %30, i32 0, i32 0, !dbg !1334
  %32 = bitcast %union.anon* %31 to %struct.anon*, !dbg !1334
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0, !dbg !1334
  %34 = load i32, i32* %33, align 8, !dbg !1334
  %35 = zext i32 %34 to i64, !dbg !1334
  %36 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %28, i64 %35, !dbg !1334
  %37 = bitcast %struct.mustache__instruction_s* %36 to i8*, !dbg !1334
  store i8* %37, i8** %5, align 8, !dbg !1333
  call void @llvm.dbg.declare(metadata %struct.mustache__builder_stack_s* %6, metadata !1335, metadata !DIExpression()), !dbg !1336
  %38 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 0, !dbg !1337
  %39 = load %struct.mustache_s*, %struct.mustache_s** %38, align 8, !dbg !1337
  %40 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 0, !dbg !1338
  store %struct.mustache_s* %39, %struct.mustache_s** %40, align 8, !dbg !1339
  %41 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1340
  store i32 0, i32* %41, align 8, !dbg !1341
  %42 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1342
  store i16 0, i16* %42, align 8, !dbg !1343
  %43 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 2, !dbg !1344
  store i32 0, i32* %43, align 4, !dbg !1345
  %44 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1346
  %45 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %44, i64 0, i64 0, !dbg !1347
  %46 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %7, i32 0, i32 0, !dbg !1348
  %47 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %46, i32 0, i32 0, !dbg !1349
  %48 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 1, !dbg !1350
  %49 = load i8*, i8** %48, align 8, !dbg !1350
  store i8* %49, i8** %47, align 8, !dbg !1349
  %50 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %46, i32 0, i32 1, !dbg !1349
  %51 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 2, !dbg !1351
  %52 = load i8*, i8** %51, align 8, !dbg !1351
  store i8* %52, i8** %50, align 8, !dbg !1349
  %53 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %7, i32 0, i32 1, !dbg !1348
  store i32 0, i32* %53, align 8, !dbg !1348
  %54 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %7, i32 0, i32 2, !dbg !1348
  %55 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1352
  %56 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %55, i64 0, !dbg !1352
  %57 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %56, i32 0, i32 1, !dbg !1353
  %58 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %57, i32 0, i32 0, !dbg !1354
  %59 = load i32, i32* %58, align 4, !dbg !1354
  store i32 %59, i32* %54, align 4, !dbg !1348
  %60 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %7, i32 0, i32 3, !dbg !1348
  store i32 0, i32* %60, align 8, !dbg !1348
  %61 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %7, i32 0, i32 4, !dbg !1348
  store i32 0, i32* %61, align 4, !dbg !1348
  %62 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %7, i32 0, i32 5, !dbg !1348
  store i16 0, i16* %62, align 8, !dbg !1348
  %63 = bitcast %struct.mustache__section_stack_frame_s* %45 to i8*, !dbg !1355
  %64 = bitcast %struct.mustache__section_stack_frame_s* %7 to i8*, !dbg !1355
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 40, i1 false), !dbg !1355
  br label %65, !dbg !1356

65:                                               ; preds = %533, %20
  %66 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1357
  %67 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1358
  %68 = load i32, i32* %67, align 8, !dbg !1358
  %69 = zext i32 %68 to i64, !dbg !1359
  %70 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %66, i64 %69, !dbg !1359
  %71 = ptrtoint %struct.mustache__instruction_s* %70 to i64, !dbg !1360
  %72 = load i8*, i8** %5, align 8, !dbg !1361
  %73 = ptrtoint i8* %72 to i64, !dbg !1362
  %74 = icmp ult i64 %71, %73, !dbg !1363
  br i1 %74, label %75, label %537, !dbg !1356

75:                                               ; preds = %65
  %76 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1364
  %77 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1366
  %78 = load i32, i32* %77, align 8, !dbg !1366
  %79 = zext i32 %78 to i64, !dbg !1364
  %80 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %76, i64 %79, !dbg !1364
  %81 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %80, i32 0, i32 0, !dbg !1367
  %82 = load i32, i32* %81, align 4, !dbg !1367
  switch i32 %82, label %523 [
    i32 0, label %83
    i32 1, label %114
    i32 2, label %145
    i32 6, label %176
    i32 3, label %176
    i32 4, label %176
    i32 5, label %344
    i32 7, label %465
    i32 8, label %469
    i32 9, label %479
  ], !dbg !1368

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1369
  %85 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1372
  %86 = load i16, i16* %85, align 8, !dbg !1372
  %87 = zext i16 %86 to i64, !dbg !1373
  %88 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %84, i64 0, i64 %87, !dbg !1373
  %89 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %88, i32 0, i32 0, !dbg !1374
  %90 = load i8*, i8** %5, align 8, !dbg !1375
  %91 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1376
  %92 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1377
  %93 = load i32, i32* %92, align 8, !dbg !1377
  %94 = zext i32 %93 to i64, !dbg !1376
  %95 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %91, i64 %94, !dbg !1376
  %96 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %95, i32 0, i32 1, !dbg !1378
  %97 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %96, i32 0, i32 2, !dbg !1379
  %98 = load i32, i32* %97, align 4, !dbg !1379
  %99 = zext i32 %98 to i64, !dbg !1380
  %100 = getelementptr inbounds i8, i8* %90, i64 %99, !dbg !1380
  %101 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1381
  %102 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1382
  %103 = load i32, i32* %102, align 8, !dbg !1382
  %104 = zext i32 %103 to i64, !dbg !1381
  %105 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %101, i64 %104, !dbg !1381
  %106 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %105, i32 0, i32 1, !dbg !1383
  %107 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %106, i32 0, i32 3, !dbg !1384
  %108 = load i16, i16* %107, align 4, !dbg !1384
  %109 = zext i16 %108 to i32, !dbg !1381
  %110 = call i32 @mustache_on_text(%struct.mustache_section_s* %89, i8* %100, i32 %109), !dbg !1385
  %111 = icmp ne i32 %110, 0, !dbg !1385
  br i1 %111, label %112, label %113, !dbg !1386

112:                                              ; preds = %83
  br label %540, !dbg !1387

113:                                              ; preds = %83
  br label %533, !dbg !1388

114:                                              ; preds = %75
  %115 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1389
  %116 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1391
  %117 = load i16, i16* %116, align 8, !dbg !1391
  %118 = zext i16 %117 to i64, !dbg !1392
  %119 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %115, i64 0, i64 %118, !dbg !1392
  %120 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %119, i32 0, i32 0, !dbg !1393
  %121 = load i8*, i8** %5, align 8, !dbg !1394
  %122 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1395
  %123 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1396
  %124 = load i32, i32* %123, align 8, !dbg !1396
  %125 = zext i32 %124 to i64, !dbg !1395
  %126 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %122, i64 %125, !dbg !1395
  %127 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %126, i32 0, i32 1, !dbg !1397
  %128 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %127, i32 0, i32 2, !dbg !1398
  %129 = load i32, i32* %128, align 4, !dbg !1398
  %130 = zext i32 %129 to i64, !dbg !1399
  %131 = getelementptr inbounds i8, i8* %121, i64 %130, !dbg !1399
  %132 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1400
  %133 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1401
  %134 = load i32, i32* %133, align 8, !dbg !1401
  %135 = zext i32 %134 to i64, !dbg !1400
  %136 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %132, i64 %135, !dbg !1400
  %137 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %136, i32 0, i32 1, !dbg !1402
  %138 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %137, i32 0, i32 3, !dbg !1403
  %139 = load i16, i16* %138, align 4, !dbg !1403
  %140 = zext i16 %139 to i32, !dbg !1400
  %141 = call i32 @mustache_on_arg(%struct.mustache_section_s* %120, i8* %131, i32 %140, i8 zeroext 1), !dbg !1404
  %142 = icmp ne i32 %141, 0, !dbg !1404
  br i1 %142, label %143, label %144, !dbg !1405

143:                                              ; preds = %114
  br label %540, !dbg !1406

144:                                              ; preds = %114
  br label %533, !dbg !1407

145:                                              ; preds = %75
  %146 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1408
  %147 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1410
  %148 = load i16, i16* %147, align 8, !dbg !1410
  %149 = zext i16 %148 to i64, !dbg !1411
  %150 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %146, i64 0, i64 %149, !dbg !1411
  %151 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %150, i32 0, i32 0, !dbg !1412
  %152 = load i8*, i8** %5, align 8, !dbg !1413
  %153 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1414
  %154 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1415
  %155 = load i32, i32* %154, align 8, !dbg !1415
  %156 = zext i32 %155 to i64, !dbg !1414
  %157 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %153, i64 %156, !dbg !1414
  %158 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %157, i32 0, i32 1, !dbg !1416
  %159 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %158, i32 0, i32 2, !dbg !1417
  %160 = load i32, i32* %159, align 4, !dbg !1417
  %161 = zext i32 %160 to i64, !dbg !1418
  %162 = getelementptr inbounds i8, i8* %152, i64 %161, !dbg !1418
  %163 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1419
  %164 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1420
  %165 = load i32, i32* %164, align 8, !dbg !1420
  %166 = zext i32 %165 to i64, !dbg !1419
  %167 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %163, i64 %166, !dbg !1419
  %168 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %167, i32 0, i32 1, !dbg !1421
  %169 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %168, i32 0, i32 3, !dbg !1422
  %170 = load i16, i16* %169, align 4, !dbg !1422
  %171 = zext i16 %170 to i32, !dbg !1419
  %172 = call i32 @mustache_on_arg(%struct.mustache_section_s* %151, i8* %162, i32 %171, i8 zeroext 0), !dbg !1423
  %173 = icmp ne i32 %172, 0, !dbg !1423
  br i1 %173, label %174, label %175, !dbg !1424

174:                                              ; preds = %145
  br label %540, !dbg !1425

175:                                              ; preds = %145
  br label %533, !dbg !1426

176:                                              ; preds = %75, %75, %75
  %177 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1427
  %178 = load i16, i16* %177, align 8, !dbg !1427
  %179 = zext i16 %178 to i32, !dbg !1429
  %180 = add nsw i32 %179, 1, !dbg !1430
  %181 = icmp sge i32 %180, 82, !dbg !1431
  br i1 %181, label %182, label %190, !dbg !1432

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3, !dbg !1433
  %184 = load i32*, i32** %183, align 8, !dbg !1433
  %185 = icmp ne i32* %184, null, !dbg !1436
  br i1 %185, label %186, label %189, !dbg !1437

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3, !dbg !1438
  %188 = load i32*, i32** %187, align 8, !dbg !1438
  store i32 1, i32* %188, align 4, !dbg !1439
  br label %189, !dbg !1440

189:                                              ; preds = %186, %182
  br label %543, !dbg !1441

190:                                              ; preds = %176
  %191 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1442
  %192 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1443
  %193 = load i16, i16* %192, align 8, !dbg !1443
  %194 = zext i16 %193 to i32, !dbg !1444
  %195 = add nsw i32 %194, 1, !dbg !1445
  %196 = sext i32 %195 to i64, !dbg !1446
  %197 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %191, i64 0, i64 %196, !dbg !1446
  %198 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %197, i32 0, i32 0, !dbg !1447
  %199 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1448
  %200 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1449
  %201 = load i16, i16* %200, align 8, !dbg !1449
  %202 = zext i16 %201 to i64, !dbg !1450
  %203 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %199, i64 0, i64 %202, !dbg !1450
  %204 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %203, i32 0, i32 0, !dbg !1451
  %205 = bitcast %struct.mustache_section_s* %198 to i8*, !dbg !1451
  %206 = bitcast %struct.mustache_section_s* %204 to i8*, !dbg !1451
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %205, i8* align 8 %206, i64 16, i1 false), !dbg !1451
  %207 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1452
  %208 = load i16, i16* %207, align 8, !dbg !1453
  %209 = add i16 %208, 1, !dbg !1453
  store i16 %209, i16* %207, align 8, !dbg !1453
  %210 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1454
  %211 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1455
  %212 = load i32, i32* %211, align 8, !dbg !1455
  %213 = zext i32 %212 to i64, !dbg !1454
  %214 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %210, i64 %213, !dbg !1454
  %215 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %214, i32 0, i32 0, !dbg !1456
  %216 = load i32, i32* %215, align 4, !dbg !1456
  %217 = icmp eq i32 %216, 6, !dbg !1457
  br i1 %217, label %218, label %227, !dbg !1454

218:                                              ; preds = %190
  %219 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1458
  %220 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1459
  %221 = load i32, i32* %220, align 8, !dbg !1459
  %222 = zext i32 %221 to i64, !dbg !1458
  %223 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %219, i64 %222, !dbg !1458
  %224 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %223, i32 0, i32 1, !dbg !1460
  %225 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %224, i32 0, i32 1, !dbg !1461
  %226 = load i32, i32* %225, align 4, !dbg !1461
  br label %230, !dbg !1454

227:                                              ; preds = %190
  %228 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1462
  %229 = load i32, i32* %228, align 8, !dbg !1462
  br label %230, !dbg !1454

230:                                              ; preds = %227, %218
  %231 = phi i32 [ %226, %218 ], [ %229, %227 ], !dbg !1454
  %232 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1463
  %233 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1464
  %234 = load i16, i16* %233, align 8, !dbg !1464
  %235 = zext i16 %234 to i64, !dbg !1465
  %236 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %232, i64 0, i64 %235, !dbg !1465
  %237 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %236, i32 0, i32 1, !dbg !1466
  store i32 %231, i32* %237, align 8, !dbg !1467
  %238 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1468
  %239 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1469
  %240 = load i32, i32* %239, align 8, !dbg !1469
  %241 = zext i32 %240 to i64, !dbg !1468
  %242 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %238, i64 %241, !dbg !1468
  %243 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %242, i32 0, i32 1, !dbg !1470
  %244 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %243, i32 0, i32 0, !dbg !1471
  %245 = load i32, i32* %244, align 4, !dbg !1471
  %246 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1472
  %247 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1473
  %248 = load i16, i16* %247, align 8, !dbg !1473
  %249 = zext i16 %248 to i64, !dbg !1474
  %250 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %246, i64 0, i64 %249, !dbg !1474
  %251 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %250, i32 0, i32 2, !dbg !1475
  store i32 %245, i32* %251, align 4, !dbg !1476
  %252 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1477
  %253 = load i16, i16* %252, align 8, !dbg !1477
  %254 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1478
  %255 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1479
  %256 = load i16, i16* %255, align 8, !dbg !1479
  %257 = zext i16 %256 to i64, !dbg !1480
  %258 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %254, i64 0, i64 %257, !dbg !1480
  %259 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %258, i32 0, i32 5, !dbg !1481
  store i16 %253, i16* %259, align 8, !dbg !1482
  %260 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1483
  %261 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1484
  %262 = load i16, i16* %261, align 8, !dbg !1484
  %263 = zext i16 %262 to i64, !dbg !1485
  %264 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %260, i64 0, i64 %263, !dbg !1485
  %265 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %264, i32 0, i32 3, !dbg !1486
  store i32 0, i32* %265, align 8, !dbg !1487
  %266 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1488
  %267 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1489
  %268 = load i16, i16* %267, align 8, !dbg !1489
  %269 = zext i16 %268 to i64, !dbg !1490
  %270 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %266, i64 0, i64 %269, !dbg !1490
  %271 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %270, i32 0, i32 4, !dbg !1491
  store i32 1, i32* %271, align 4, !dbg !1492
  %272 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1493
  %273 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1495
  %274 = load i32, i32* %273, align 8, !dbg !1495
  %275 = zext i32 %274 to i64, !dbg !1493
  %276 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %272, i64 %275, !dbg !1493
  %277 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %276, i32 0, i32 1, !dbg !1496
  %278 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %277, i32 0, i32 2, !dbg !1497
  %279 = load i32, i32* %278, align 4, !dbg !1497
  %280 = icmp ne i32 %279, 0, !dbg !1493
  br i1 %280, label %281, label %343, !dbg !1498

281:                                              ; preds = %230
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1499, metadata !DIExpression()), !dbg !1504
  %282 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1505
  %283 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1506
  %284 = load i16, i16* %283, align 8, !dbg !1506
  %285 = zext i16 %284 to i64, !dbg !1507
  %286 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %282, i64 0, i64 %285, !dbg !1507
  %287 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %286, i32 0, i32 0, !dbg !1508
  %288 = load i8*, i8** %5, align 8, !dbg !1509
  %289 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1510
  %290 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1511
  %291 = load i32, i32* %290, align 8, !dbg !1511
  %292 = zext i32 %291 to i64, !dbg !1510
  %293 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %289, i64 %292, !dbg !1510
  %294 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %293, i32 0, i32 1, !dbg !1512
  %295 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %294, i32 0, i32 2, !dbg !1513
  %296 = load i32, i32* %295, align 4, !dbg !1513
  %297 = zext i32 %296 to i64, !dbg !1514
  %298 = getelementptr inbounds i8, i8* %288, i64 %297, !dbg !1514
  %299 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1515
  %300 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1516
  %301 = load i32, i32* %300, align 8, !dbg !1516
  %302 = zext i32 %301 to i64, !dbg !1515
  %303 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %299, i64 %302, !dbg !1515
  %304 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %303, i32 0, i32 1, !dbg !1517
  %305 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %304, i32 0, i32 3, !dbg !1518
  %306 = load i16, i16* %305, align 4, !dbg !1518
  %307 = zext i16 %306 to i32, !dbg !1515
  %308 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1519
  %309 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1520
  %310 = load i32, i32* %309, align 8, !dbg !1520
  %311 = zext i32 %310 to i64, !dbg !1519
  %312 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %308, i64 %311, !dbg !1519
  %313 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %312, i32 0, i32 0, !dbg !1521
  %314 = load i32, i32* %313, align 4, !dbg !1521
  %315 = icmp eq i32 %314, 3, !dbg !1522
  %316 = zext i1 %315 to i32, !dbg !1522
  %317 = trunc i32 %316 to i8, !dbg !1519
  %318 = call i32 @mustache_on_section_test(%struct.mustache_section_s* %287, i8* %298, i32 %307, i8 zeroext %317), !dbg !1523
  store i32 %318, i32* %8, align 4, !dbg !1504
  %319 = load i32, i32* %8, align 4, !dbg !1524
  %320 = icmp eq i32 %319, -1, !dbg !1526
  br i1 %320, label %321, label %322, !dbg !1527

321:                                              ; preds = %281
  br label %540, !dbg !1528

322:                                              ; preds = %281
  %323 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1530
  %324 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1532
  %325 = load i32, i32* %324, align 8, !dbg !1532
  %326 = zext i32 %325 to i64, !dbg !1530
  %327 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %323, i64 %326, !dbg !1530
  %328 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %327, i32 0, i32 0, !dbg !1533
  %329 = load i32, i32* %328, align 4, !dbg !1533
  %330 = icmp eq i32 %329, 4, !dbg !1534
  br i1 %330, label %331, label %335, !dbg !1535

331:                                              ; preds = %322
  %332 = load i32, i32* %8, align 4, !dbg !1536
  %333 = icmp eq i32 %332, 0, !dbg !1538
  %334 = zext i1 %333 to i32, !dbg !1538
  store i32 %334, i32* %8, align 4, !dbg !1539
  br label %335, !dbg !1540

335:                                              ; preds = %331, %322
  %336 = load i32, i32* %8, align 4, !dbg !1541
  %337 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1542
  %338 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1543
  %339 = load i16, i16* %338, align 8, !dbg !1543
  %340 = zext i16 %339 to i64, !dbg !1544
  %341 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %337, i64 0, i64 %340, !dbg !1544
  %342 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %341, i32 0, i32 4, !dbg !1545
  store i32 %336, i32* %342, align 4, !dbg !1546
  br label %343, !dbg !1547

343:                                              ; preds = %335, %230
  br label %344, !dbg !1497

344:                                              ; preds = %75, %343
  %345 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1548
  %346 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1550
  %347 = load i16, i16* %346, align 8, !dbg !1550
  %348 = zext i16 %347 to i64, !dbg !1551
  %349 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %345, i64 0, i64 %348, !dbg !1551
  %350 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %349, i32 0, i32 3, !dbg !1552
  %351 = load i32, i32* %350, align 8, !dbg !1552
  %352 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1553
  %353 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1554
  %354 = load i16, i16* %353, align 8, !dbg !1554
  %355 = zext i16 %354 to i64, !dbg !1555
  %356 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %352, i64 0, i64 %355, !dbg !1555
  %357 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %356, i32 0, i32 4, !dbg !1556
  %358 = load i32, i32* %357, align 4, !dbg !1556
  %359 = icmp ult i32 %351, %358, !dbg !1557
  br i1 %359, label %360, label %453, !dbg !1558

360:                                              ; preds = %344
  %361 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1559
  %362 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1561
  %363 = load i16, i16* %362, align 8, !dbg !1561
  %364 = zext i16 %363 to i64, !dbg !1562
  %365 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %361, i64 0, i64 %364, !dbg !1562
  %366 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %365, i32 0, i32 1, !dbg !1563
  %367 = load i32, i32* %366, align 8, !dbg !1563
  %368 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1564
  store i32 %367, i32* %368, align 8, !dbg !1565
  %369 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1566
  %370 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1567
  %371 = load i16, i16* %370, align 8, !dbg !1567
  %372 = zext i16 %371 to i64, !dbg !1568
  %373 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %369, i64 0, i64 %372, !dbg !1568
  %374 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %373, i32 0, i32 0, !dbg !1569
  %375 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1570
  %376 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1571
  %377 = load i16, i16* %376, align 8, !dbg !1571
  %378 = zext i16 %377 to i32, !dbg !1572
  %379 = sub nsw i32 %378, 1, !dbg !1573
  %380 = sext i32 %379 to i64, !dbg !1574
  %381 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %375, i64 0, i64 %380, !dbg !1574
  %382 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %381, i32 0, i32 0, !dbg !1575
  %383 = bitcast %struct.mustache_section_s* %374 to i8*, !dbg !1575
  %384 = bitcast %struct.mustache_section_s* %382 to i8*, !dbg !1575
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %383, i8* align 8 %384, i64 16, i1 false), !dbg !1575
  %385 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1576
  %386 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1578
  %387 = load i32, i32* %386, align 8, !dbg !1578
  %388 = zext i32 %387 to i64, !dbg !1576
  %389 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %385, i64 %388, !dbg !1576
  %390 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %389, i32 0, i32 1, !dbg !1579
  %391 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %390, i32 0, i32 2, !dbg !1580
  %392 = load i32, i32* %391, align 4, !dbg !1580
  %393 = icmp ne i32 %392, 0, !dbg !1576
  br i1 %393, label %394, label %431, !dbg !1581

394:                                              ; preds = %360
  %395 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1582
  %396 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1583
  %397 = load i16, i16* %396, align 8, !dbg !1583
  %398 = zext i16 %397 to i64, !dbg !1584
  %399 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %395, i64 0, i64 %398, !dbg !1584
  %400 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %399, i32 0, i32 0, !dbg !1585
  %401 = load i8*, i8** %5, align 8, !dbg !1586
  %402 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1587
  %403 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1588
  %404 = load i32, i32* %403, align 8, !dbg !1588
  %405 = zext i32 %404 to i64, !dbg !1587
  %406 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %402, i64 %405, !dbg !1587
  %407 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %406, i32 0, i32 1, !dbg !1589
  %408 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %407, i32 0, i32 2, !dbg !1590
  %409 = load i32, i32* %408, align 4, !dbg !1590
  %410 = zext i32 %409 to i64, !dbg !1591
  %411 = getelementptr inbounds i8, i8* %401, i64 %410, !dbg !1591
  %412 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1592
  %413 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1593
  %414 = load i32, i32* %413, align 8, !dbg !1593
  %415 = zext i32 %414 to i64, !dbg !1592
  %416 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %412, i64 %415, !dbg !1592
  %417 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %416, i32 0, i32 1, !dbg !1594
  %418 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %417, i32 0, i32 3, !dbg !1595
  %419 = load i16, i16* %418, align 4, !dbg !1595
  %420 = zext i16 %419 to i32, !dbg !1592
  %421 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1596
  %422 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1597
  %423 = load i16, i16* %422, align 8, !dbg !1597
  %424 = zext i16 %423 to i64, !dbg !1598
  %425 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %421, i64 0, i64 %424, !dbg !1598
  %426 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %425, i32 0, i32 3, !dbg !1599
  %427 = load i32, i32* %426, align 8, !dbg !1599
  %428 = call i32 @mustache_on_section_start(%struct.mustache_section_s* %400, i8* %411, i32 %420, i32 %427), !dbg !1600
  %429 = icmp eq i32 %428, -1, !dbg !1601
  br i1 %429, label %430, label %431, !dbg !1602

430:                                              ; preds = %394
  br label %540, !dbg !1603

431:                                              ; preds = %394, %360
  %432 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1604
  %433 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1606
  %434 = load i32, i32* %433, align 8, !dbg !1606
  %435 = zext i32 %434 to i64, !dbg !1604
  %436 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %432, i64 %435, !dbg !1604
  %437 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %436, i32 0, i32 0, !dbg !1607
  %438 = load i32, i32* %437, align 4, !dbg !1607
  %439 = icmp eq i32 %438, 6, !dbg !1608
  br i1 %439, label %440, label %444, !dbg !1609

440:                                              ; preds = %431
  %441 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1610
  %442 = load i32, i32* %441, align 8, !dbg !1611
  %443 = add i32 %442, 1, !dbg !1611
  store i32 %443, i32* %441, align 8, !dbg !1611
  br label %444, !dbg !1611

444:                                              ; preds = %440, %431
  %445 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1612
  %446 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1613
  %447 = load i16, i16* %446, align 8, !dbg !1613
  %448 = zext i16 %447 to i64, !dbg !1614
  %449 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %445, i64 0, i64 %448, !dbg !1614
  %450 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %449, i32 0, i32 3, !dbg !1615
  %451 = load i32, i32* %450, align 8, !dbg !1616
  %452 = add i32 %451, 1, !dbg !1616
  store i32 %452, i32* %450, align 8, !dbg !1616
  br label %533, !dbg !1617

453:                                              ; preds = %344
  %454 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1618
  %455 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1619
  %456 = load i16, i16* %455, align 8, !dbg !1619
  %457 = zext i16 %456 to i64, !dbg !1620
  %458 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %454, i64 0, i64 %457, !dbg !1620
  %459 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %458, i32 0, i32 2, !dbg !1621
  %460 = load i32, i32* %459, align 4, !dbg !1621
  %461 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1622
  store i32 %460, i32* %461, align 8, !dbg !1623
  %462 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1624
  %463 = load i16, i16* %462, align 8, !dbg !1625
  %464 = add i16 %463, -1, !dbg !1625
  store i16 %464, i16* %462, align 8, !dbg !1625
  br label %533, !dbg !1626

465:                                              ; preds = %75
  %466 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1627
  %467 = load i32, i32* %466, align 8, !dbg !1627
  %468 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 2, !dbg !1628
  store i32 %467, i32* %468, align 4, !dbg !1629
  br label %533, !dbg !1630

469:                                              ; preds = %75
  %470 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1631
  %471 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 2, !dbg !1632
  %472 = load i32, i32* %471, align 4, !dbg !1632
  %473 = zext i32 %472 to i64, !dbg !1631
  %474 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %470, i64 %473, !dbg !1631
  %475 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %474, i32 0, i32 1, !dbg !1633
  %476 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %475, i32 0, i32 0, !dbg !1634
  %477 = load i32, i32* %476, align 4, !dbg !1634
  %478 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 2, !dbg !1635
  store i32 %477, i32* %478, align 4, !dbg !1636
  br label %533, !dbg !1637

479:                                              ; preds = %75
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1638, metadata !DIExpression()), !dbg !1640
  %480 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 2, !dbg !1641
  %481 = load i32, i32* %480, align 4, !dbg !1641
  store i32 %481, i32* %9, align 4, !dbg !1640
  br label %482, !dbg !1642

482:                                              ; preds = %514, %479
  %483 = load i32, i32* %9, align 4, !dbg !1643
  %484 = icmp ne i32 %483, 0, !dbg !1645
  br i1 %484, label %485, label %522, !dbg !1645

485:                                              ; preds = %482
  %486 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4, !dbg !1646
  %487 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3, !dbg !1649
  %488 = load i16, i16* %487, align 8, !dbg !1649
  %489 = zext i16 %488 to i64, !dbg !1650
  %490 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %486, i64 0, i64 %489, !dbg !1650
  %491 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %490, i32 0, i32 0, !dbg !1651
  %492 = load i8*, i8** %5, align 8, !dbg !1652
  %493 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1653
  %494 = load i32, i32* %9, align 4, !dbg !1654
  %495 = zext i32 %494 to i64, !dbg !1653
  %496 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %493, i64 %495, !dbg !1653
  %497 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %496, i32 0, i32 1, !dbg !1655
  %498 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %497, i32 0, i32 2, !dbg !1656
  %499 = load i32, i32* %498, align 4, !dbg !1656
  %500 = zext i32 %499 to i64, !dbg !1657
  %501 = getelementptr inbounds i8, i8* %492, i64 %500, !dbg !1657
  %502 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1658
  %503 = load i32, i32* %9, align 4, !dbg !1659
  %504 = zext i32 %503 to i64, !dbg !1658
  %505 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %502, i64 %504, !dbg !1658
  %506 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %505, i32 0, i32 1, !dbg !1660
  %507 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %506, i32 0, i32 3, !dbg !1661
  %508 = load i16, i16* %507, align 4, !dbg !1661
  %509 = zext i16 %508 to i32, !dbg !1658
  %510 = call i32 @mustache_on_text(%struct.mustache_section_s* %491, i8* %501, i32 %509), !dbg !1662
  %511 = icmp ne i32 %510, 0, !dbg !1662
  br i1 %511, label %512, label %513, !dbg !1663

512:                                              ; preds = %485
  br label %540, !dbg !1664

513:                                              ; preds = %485
  br label %514, !dbg !1665

514:                                              ; preds = %513
  %515 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !1666
  %516 = load i32, i32* %9, align 4, !dbg !1667
  %517 = zext i32 %516 to i64, !dbg !1666
  %518 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %515, i64 %517, !dbg !1666
  %519 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %518, i32 0, i32 1, !dbg !1668
  %520 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %519, i32 0, i32 0, !dbg !1669
  %521 = load i32, i32* %520, align 4, !dbg !1669
  store i32 %521, i32* %9, align 4, !dbg !1670
  br label %482, !dbg !1671, !llvm.loop !1672

522:                                              ; preds = %482
  br label %533, !dbg !1674

523:                                              ; preds = %75
  %524 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1675
  %525 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %524, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0)), !dbg !1676
  %526 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3, !dbg !1677
  %527 = load i32*, i32** %526, align 8, !dbg !1677
  %528 = icmp ne i32* %527, null, !dbg !1679
  br i1 %528, label %529, label %532, !dbg !1680

529:                                              ; preds = %523
  %530 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3, !dbg !1681
  %531 = load i32*, i32** %530, align 8, !dbg !1681
  store i32 10, i32* %531, align 4, !dbg !1683
  br label %532, !dbg !1684

532:                                              ; preds = %529, %523
  br label %543, !dbg !1685

533:                                              ; preds = %522, %469, %465, %453, %444, %175, %144, %113
  %534 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1, !dbg !1686
  %535 = load i32, i32* %534, align 8, !dbg !1687
  %536 = add i32 %535, 1, !dbg !1687
  store i32 %536, i32* %534, align 8, !dbg !1687
  br label %65, !dbg !1356, !llvm.loop !1688

537:                                              ; preds = %65
  %538 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3, !dbg !1690
  %539 = load i32*, i32** %538, align 8, !dbg !1690
  store i32 0, i32* %539, align 4, !dbg !1691
  store i32 0, i32* %2, align 4, !dbg !1692
  br label %548, !dbg !1692

540:                                              ; preds = %512, %430, %321, %174, %143, %112, %19
  call void @llvm.dbg.label(metadata !1693), !dbg !1694
  %541 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3, !dbg !1695
  %542 = load i32*, i32** %541, align 8, !dbg !1695
  store i32 11, i32* %542, align 4, !dbg !1696
  br label %543, !dbg !1697

543:                                              ; preds = %540, %532, %189
  call void @llvm.dbg.label(metadata !1698), !dbg !1699
  %544 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 1, !dbg !1700
  %545 = load i8*, i8** %544, align 8, !dbg !1700
  %546 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 2, !dbg !1701
  %547 = load i8*, i8** %546, align 8, !dbg !1701
  call void @mustache_on_formatting_error(i8* %545, i8* %547), !dbg !1702
  store i32 -1, i32* %2, align 4, !dbg !1703
  br label %548, !dbg !1703

548:                                              ; preds = %543, %537
  %549 = load i32, i32* %2, align 4, !dbg !1704
  ret i32 %549, !dbg !1704
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_mustache_build(%struct.mustache_s* %0, i64 %1) #0 !dbg !1705 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mustache_s*, align 8
  %5 = alloca i64, align 8
  store %struct.mustache_s* %0, %struct.mustache_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache_s** %4, metadata !1708, metadata !DIExpression()), !dbg !1709
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1710, metadata !DIExpression()), !dbg !1711
  %6 = load %struct.mustache_s*, %struct.mustache_s** %4, align 8, !dbg !1712
  %7 = icmp ne %struct.mustache_s* %6, null, !dbg !1712
  br i1 %7, label %9, label %8, !dbg !1714

8:                                                ; preds = %2
  store i64 0, i64* %3, align 8, !dbg !1715
  br label %20, !dbg !1715

9:                                                ; preds = %2
  %10 = load %struct.mustache_s*, %struct.mustache_s** %4, align 8, !dbg !1716
  %11 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %10, i32 0, i32 0, !dbg !1717
  %12 = bitcast %union.anon* %11 to %struct.anon*, !dbg !1718
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1, !dbg !1719
  %14 = load i32, i32* %13, align 4, !dbg !1719
  %15 = zext i32 %14 to i64, !dbg !1716
  %16 = call i64 @fiobj_str_buf(i64 %15), !dbg !1720
  %17 = load %struct.mustache_s*, %struct.mustache_s** %4, align 8, !dbg !1721
  %18 = load i64, i64* %5, align 8, !dbg !1722
  %19 = call i64 @fiobj_mustache_build2(i64 %16, %struct.mustache_s* %17, i64 %18), !dbg !1723
  store i64 %19, i64* %3, align 8, !dbg !1724
  br label %20, !dbg !1724

20:                                               ; preds = %9, %8
  %21 = load i64, i64* %3, align 8, !dbg !1725
  ret i64 %21, !dbg !1725
}

declare dso_local i64 @fiobj_str_buf(i64) #5

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

declare dso_local void @perror(i8*) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #7

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mustache__load_data(%struct.mustache__loader_stack_s* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 !dbg !1726 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.mustache__loader_stack_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mustache__data_segment_s, align 8
  %15 = alloca %struct.mustache__instruction_s, align 8
  store %struct.mustache__loader_stack_s* %0, %struct.mustache__loader_stack_s** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache__loader_stack_s** %7, metadata !1730, metadata !DIExpression()), !dbg !1731
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1732, metadata !DIExpression()), !dbg !1733
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1734, metadata !DIExpression()), !dbg !1735
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1736, metadata !DIExpression()), !dbg !1737
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1738, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1740, metadata !DIExpression()), !dbg !1742
  %16 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1743
  %17 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %16, i32 0, i32 6, !dbg !1744
  %18 = load i32, i32* %17, align 4, !dbg !1744
  %19 = zext i32 %18 to i64, !dbg !1743
  store i64 %19, i64* %12, align 8, !dbg !1742
  %20 = load i64, i64* %12, align 8, !dbg !1745
  %21 = load i64, i64* %11, align 8, !dbg !1747
  %22 = add i64 %20, %21, !dbg !1748
  %23 = icmp ugt i64 %22, 4294967295, !dbg !1749
  br i1 %23, label %24, label %25, !dbg !1750

24:                                               ; preds = %5
  br label %274, !dbg !1751

25:                                               ; preds = %5
  %26 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1752
  %27 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %26, i32 0, i32 3, !dbg !1753
  %28 = load i8*, i8** %27, align 8, !dbg !1753
  %29 = load i64, i64* %12, align 8, !dbg !1754
  %30 = load i64, i64* %11, align 8, !dbg !1755
  %31 = add i64 %29, %30, !dbg !1756
  %32 = load i64, i64* %9, align 8, !dbg !1757
  %33 = call i64 @mustache__data_segment_length(i64 %32), !dbg !1758
  %34 = add i64 %31, %33, !dbg !1759
  %35 = add i64 %34, 1, !dbg !1760
  %36 = call i8* @realloc(i8* %28, i64 %35) #2, !dbg !1761
  %37 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1762
  %38 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %37, i32 0, i32 3, !dbg !1763
  store i8* %36, i8** %38, align 8, !dbg !1764
  %39 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1765
  %40 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %39, i32 0, i32 3, !dbg !1765
  %41 = load i8*, i8** %40, align 8, !dbg !1765
  %42 = icmp ne i8* %41, null, !dbg !1765
  br i1 %42, label %46, label %43, !dbg !1767

43:                                               ; preds = %25
  call void @perror(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0)), !dbg !1768
  %44 = call i32* @__errno_location() #9, !dbg !1768
  %45 = load i32, i32* %44, align 4, !dbg !1768
  call void @exit(i32 %45) #10, !dbg !1768
  unreachable, !dbg !1768

46:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1770, metadata !DIExpression()), !dbg !1771
  %47 = load i64, i64* %9, align 8, !dbg !1772
  store i64 %47, i64* %13, align 8, !dbg !1771
  br label %48, !dbg !1773

48:                                               ; preds = %70, %46
  %49 = load i64, i64* %13, align 8, !dbg !1774
  %50 = icmp ne i64 %49, 0, !dbg !1773
  br i1 %50, label %51, label %71, !dbg !1773

51:                                               ; preds = %48
  %52 = load i64, i64* %13, align 8, !dbg !1775
  %53 = add i64 %52, -1, !dbg !1775
  store i64 %53, i64* %13, align 8, !dbg !1775
  %54 = load i8*, i8** %8, align 8, !dbg !1777
  %55 = load i64, i64* %13, align 8, !dbg !1779
  %56 = getelementptr inbounds i8, i8* %54, i64 %55, !dbg !1777
  %57 = load i8, i8* %56, align 1, !dbg !1777
  %58 = sext i8 %57 to i32, !dbg !1777
  %59 = icmp eq i32 %58, 47, !dbg !1780
  br i1 %59, label %67, label %60, !dbg !1781

60:                                               ; preds = %51
  %61 = load i8*, i8** %8, align 8, !dbg !1782
  %62 = load i64, i64* %13, align 8, !dbg !1783
  %63 = getelementptr inbounds i8, i8* %61, i64 %62, !dbg !1782
  %64 = load i8, i8* %63, align 1, !dbg !1782
  %65 = sext i8 %64 to i32, !dbg !1782
  %66 = icmp eq i32 %65, 92, !dbg !1784
  br i1 %66, label %67, label %70, !dbg !1785

67:                                               ; preds = %60, %51
  %68 = load i64, i64* %13, align 8, !dbg !1786
  %69 = add i64 %68, 1, !dbg !1786
  store i64 %69, i64* %13, align 8, !dbg !1786
  br label %71, !dbg !1788

70:                                               ; preds = %60
  br label %48, !dbg !1773, !llvm.loop !1789

71:                                               ; preds = %67, %48
  %72 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1791
  %73 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %72, i32 0, i32 3, !dbg !1792
  %74 = load i8*, i8** %73, align 8, !dbg !1792
  %75 = load i64, i64* %12, align 8, !dbg !1793
  %76 = getelementptr inbounds i8, i8* %74, i64 %75, !dbg !1794
  %77 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %14, i32 0, i32 0, !dbg !1795
  %78 = load i8*, i8** %8, align 8, !dbg !1796
  store i8* %78, i8** %77, align 8, !dbg !1795
  %79 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %14, i32 0, i32 1, !dbg !1795
  %80 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1797
  %81 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %80, i32 0, i32 0, !dbg !1798
  %82 = load %struct.mustache_s*, %struct.mustache_s** %81, align 8, !dbg !1798
  %83 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %82, i32 0, i32 0, !dbg !1799
  %84 = bitcast %union.anon* %83 to %struct.anon*, !dbg !1800
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %84, i32 0, i32 0, !dbg !1801
  %86 = load i32, i32* %85, align 8, !dbg !1801
  store i32 %86, i32* %79, align 8, !dbg !1795
  %87 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %14, i32 0, i32 2, !dbg !1795
  %88 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1802
  %89 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %88, i32 0, i32 6, !dbg !1803
  %90 = load i32, i32* %89, align 4, !dbg !1803
  %91 = zext i32 %90 to i64, !dbg !1802
  %92 = load i64, i64* %11, align 8, !dbg !1804
  %93 = add i64 %91, %92, !dbg !1805
  %94 = load i64, i64* %9, align 8, !dbg !1806
  %95 = call i64 @mustache__data_segment_length(i64 %94), !dbg !1807
  %96 = add i64 %93, %95, !dbg !1808
  %97 = trunc i64 %96 to i32, !dbg !1802
  store i32 %97, i32* %87, align 4, !dbg !1795
  %98 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %14, i32 0, i32 3, !dbg !1795
  %99 = load i64, i64* %9, align 8, !dbg !1809
  %100 = trunc i64 %99 to i16, !dbg !1809
  store i16 %100, i16* %98, align 8, !dbg !1795
  %101 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %14, i32 0, i32 4, !dbg !1795
  %102 = load i64, i64* %13, align 8, !dbg !1810
  %103 = trunc i64 %102 to i16, !dbg !1810
  store i16 %103, i16* %101, align 2, !dbg !1795
  %104 = call i64 @mustache__data_segment_write(i8* %76, %struct.mustache__data_segment_s* byval(%struct.mustache__data_segment_s) align 8 %14), !dbg !1811
  %105 = load i8*, i8** %10, align 8, !dbg !1812
  %106 = icmp ne i8* %105, null, !dbg !1812
  br i1 %106, label %107, label %118, !dbg !1814

107:                                              ; preds = %71
  %108 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1815
  %109 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %108, i32 0, i32 3, !dbg !1817
  %110 = load i8*, i8** %109, align 8, !dbg !1817
  %111 = load i64, i64* %12, align 8, !dbg !1818
  %112 = getelementptr inbounds i8, i8* %110, i64 %111, !dbg !1819
  %113 = load i64, i64* %9, align 8, !dbg !1820
  %114 = call i64 @mustache__data_segment_length(i64 %113), !dbg !1821
  %115 = getelementptr inbounds i8, i8* %112, i64 %114, !dbg !1822
  %116 = load i8*, i8** %10, align 8, !dbg !1823
  %117 = load i64, i64* %11, align 8, !dbg !1824
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %115, i8* align 1 %116, i64 %117, i1 false), !dbg !1825
  br label %118, !dbg !1826

118:                                              ; preds = %107, %71
  %119 = load i64, i64* %11, align 8, !dbg !1827
  %120 = load i64, i64* %9, align 8, !dbg !1828
  %121 = call i64 @mustache__data_segment_length(i64 %120), !dbg !1829
  %122 = add i64 %119, %121, !dbg !1830
  %123 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1831
  %124 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %123, i32 0, i32 6, !dbg !1832
  %125 = load i32, i32* %124, align 4, !dbg !1833
  %126 = zext i32 %125 to i64, !dbg !1833
  %127 = add i64 %126, %122, !dbg !1833
  %128 = trunc i64 %127 to i32, !dbg !1833
  store i32 %128, i32* %124, align 4, !dbg !1833
  %129 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1834
  %130 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %129, i32 0, i32 3, !dbg !1835
  %131 = load i8*, i8** %130, align 8, !dbg !1835
  %132 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1836
  %133 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %132, i32 0, i32 6, !dbg !1837
  %134 = load i32, i32* %133, align 4, !dbg !1837
  %135 = zext i32 %134 to i64, !dbg !1834
  %136 = getelementptr inbounds i8, i8* %131, i64 %135, !dbg !1834
  store i8 0, i8* %136, align 1, !dbg !1838
  %137 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1839
  %138 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %137, i32 0, i32 6, !dbg !1840
  %139 = load i32, i32* %138, align 4, !dbg !1840
  %140 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1841
  %141 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %140, i32 0, i32 0, !dbg !1842
  %142 = load %struct.mustache_s*, %struct.mustache_s** %141, align 8, !dbg !1842
  %143 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %142, i32 0, i32 0, !dbg !1843
  %144 = bitcast %union.anon* %143 to %struct.anon*, !dbg !1844
  %145 = getelementptr inbounds %struct.anon, %struct.anon* %144, i32 0, i32 1, !dbg !1845
  store i32 %139, i32* %145, align 4, !dbg !1846
  %146 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1847
  %147 = bitcast %struct.mustache__instruction_s* %15 to i8*, !dbg !1848
  call void @llvm.memset.p0i8.i64(i8* align 4 %147, i8 0, i64 20, i1 false), !dbg !1848
  %148 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %15, i32 0, i32 0, !dbg !1849
  store i32 3, i32* %148, align 4, !dbg !1849
  %149 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %146, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %15), !dbg !1850
  %150 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1851
  %151 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %150, i32 0, i32 10, !dbg !1852
  %152 = load i16, i16* %151, align 8, !dbg !1853
  %153 = add i16 %152, 1, !dbg !1853
  store i16 %153, i16* %151, align 8, !dbg !1853
  %154 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1854
  %155 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %154, i32 0, i32 10, !dbg !1856
  %156 = load i16, i16* %155, align 8, !dbg !1856
  %157 = zext i16 %156 to i32, !dbg !1854
  %158 = icmp sge i32 %157, 82, !dbg !1857
  br i1 %158, label %159, label %160, !dbg !1858

159:                                              ; preds = %118
  br label %274, !dbg !1859

160:                                              ; preds = %118
  %161 = load i64, i64* %12, align 8, !dbg !1860
  %162 = load i64, i64* %9, align 8, !dbg !1861
  %163 = call i64 @mustache__data_segment_length(i64 %162), !dbg !1862
  %164 = add i64 %161, %163, !dbg !1863
  %165 = trunc i64 %164 to i32, !dbg !1860
  %166 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1864
  %167 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %166, i32 0, i32 11, !dbg !1865
  %168 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1866
  %169 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %168, i32 0, i32 10, !dbg !1867
  %170 = load i16, i16* %169, align 8, !dbg !1867
  %171 = zext i16 %170 to i64, !dbg !1864
  %172 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %167, i64 0, i64 %171, !dbg !1864
  %173 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %172, i32 0, i32 1, !dbg !1868
  store i32 %165, i32* %173, align 4, !dbg !1869
  %174 = load i64, i64* %12, align 8, !dbg !1870
  %175 = trunc i64 %174 to i32, !dbg !1870
  %176 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1871
  %177 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %176, i32 0, i32 11, !dbg !1872
  %178 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1873
  %179 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %178, i32 0, i32 10, !dbg !1874
  %180 = load i16, i16* %179, align 8, !dbg !1874
  %181 = zext i16 %180 to i64, !dbg !1871
  %182 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %177, i64 0, i64 %181, !dbg !1871
  %183 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %182, i32 0, i32 0, !dbg !1875
  store i32 %175, i32* %183, align 4, !dbg !1876
  %184 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1877
  %185 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %184, i32 0, i32 6, !dbg !1878
  %186 = load i32, i32* %185, align 4, !dbg !1878
  %187 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1879
  %188 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %187, i32 0, i32 11, !dbg !1880
  %189 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1881
  %190 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %189, i32 0, i32 10, !dbg !1882
  %191 = load i16, i16* %190, align 8, !dbg !1882
  %192 = zext i16 %191 to i64, !dbg !1879
  %193 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %188, i64 0, i64 %192, !dbg !1879
  %194 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %193, i32 0, i32 2, !dbg !1883
  store i32 %186, i32* %194, align 4, !dbg !1884
  %195 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1885
  %196 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %195, i32 0, i32 11, !dbg !1886
  %197 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1887
  %198 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %197, i32 0, i32 10, !dbg !1888
  %199 = load i16, i16* %198, align 8, !dbg !1888
  %200 = zext i16 %199 to i64, !dbg !1885
  %201 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %196, i64 0, i64 %200, !dbg !1885
  %202 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %201, i32 0, i32 6, !dbg !1889
  store i8 2, i8* %202, align 4, !dbg !1890
  %203 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1891
  %204 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %203, i32 0, i32 11, !dbg !1892
  %205 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1893
  %206 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %205, i32 0, i32 10, !dbg !1894
  %207 = load i16, i16* %206, align 8, !dbg !1894
  %208 = zext i16 %207 to i64, !dbg !1891
  %209 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %204, i64 0, i64 %208, !dbg !1891
  %210 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %209, i32 0, i32 7, !dbg !1895
  store i8 2, i8* %210, align 1, !dbg !1896
  %211 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1897
  %212 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %211, i32 0, i32 11, !dbg !1898
  %213 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1899
  %214 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %213, i32 0, i32 10, !dbg !1900
  %215 = load i16, i16* %214, align 8, !dbg !1900
  %216 = zext i16 %215 to i64, !dbg !1897
  %217 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %212, i64 0, i64 %216, !dbg !1897
  %218 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %217, i32 0, i32 4, !dbg !1901
  %219 = getelementptr inbounds [5 x i8], [5 x i8]* %218, i64 0, i64 1, !dbg !1897
  store i8 123, i8* %219, align 1, !dbg !1902
  %220 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1903
  %221 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %220, i32 0, i32 11, !dbg !1904
  %222 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1905
  %223 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %222, i32 0, i32 10, !dbg !1906
  %224 = load i16, i16* %223, align 8, !dbg !1906
  %225 = zext i16 %224 to i64, !dbg !1903
  %226 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %221, i64 0, i64 %225, !dbg !1903
  %227 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %226, i32 0, i32 4, !dbg !1907
  %228 = getelementptr inbounds [5 x i8], [5 x i8]* %227, i64 0, i64 0, !dbg !1903
  store i8 123, i8* %228, align 2, !dbg !1908
  %229 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1909
  %230 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %229, i32 0, i32 11, !dbg !1910
  %231 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1911
  %232 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %231, i32 0, i32 10, !dbg !1912
  %233 = load i16, i16* %232, align 8, !dbg !1912
  %234 = zext i16 %233 to i64, !dbg !1909
  %235 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %230, i64 0, i64 %234, !dbg !1909
  %236 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %235, i32 0, i32 4, !dbg !1913
  %237 = getelementptr inbounds [5 x i8], [5 x i8]* %236, i64 0, i64 2, !dbg !1909
  store i8 0, i8* %237, align 2, !dbg !1914
  %238 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1915
  %239 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %238, i32 0, i32 11, !dbg !1916
  %240 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1917
  %241 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %240, i32 0, i32 10, !dbg !1918
  %242 = load i16, i16* %241, align 8, !dbg !1918
  %243 = zext i16 %242 to i64, !dbg !1915
  %244 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %239, i64 0, i64 %243, !dbg !1915
  %245 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %244, i32 0, i32 5, !dbg !1919
  %246 = getelementptr inbounds [5 x i8], [5 x i8]* %245, i64 0, i64 1, !dbg !1915
  store i8 125, i8* %246, align 1, !dbg !1920
  %247 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1921
  %248 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %247, i32 0, i32 11, !dbg !1922
  %249 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1923
  %250 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %249, i32 0, i32 10, !dbg !1924
  %251 = load i16, i16* %250, align 8, !dbg !1924
  %252 = zext i16 %251 to i64, !dbg !1921
  %253 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %248, i64 0, i64 %252, !dbg !1921
  %254 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %253, i32 0, i32 5, !dbg !1925
  %255 = getelementptr inbounds [5 x i8], [5 x i8]* %254, i64 0, i64 0, !dbg !1921
  store i8 125, i8* %255, align 1, !dbg !1926
  %256 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1927
  %257 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %256, i32 0, i32 11, !dbg !1928
  %258 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1929
  %259 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %258, i32 0, i32 10, !dbg !1930
  %260 = load i16, i16* %259, align 8, !dbg !1930
  %261 = zext i16 %260 to i64, !dbg !1927
  %262 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %257, i64 0, i64 %261, !dbg !1927
  %263 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %262, i32 0, i32 5, !dbg !1931
  %264 = getelementptr inbounds [5 x i8], [5 x i8]* %263, i64 0, i64 2, !dbg !1927
  store i8 0, i8* %264, align 1, !dbg !1932
  %265 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1933
  %266 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %265, i32 0, i32 11, !dbg !1934
  %267 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1935
  %268 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %267, i32 0, i32 10, !dbg !1936
  %269 = load i16, i16* %268, align 8, !dbg !1936
  %270 = zext i16 %269 to i64, !dbg !1933
  %271 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %266, i64 0, i64 %270, !dbg !1933
  %272 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %271, i32 0, i32 3, !dbg !1937
  store i16 0, i16* %272, align 4, !dbg !1938
  %273 = load i64, i64* %11, align 8, !dbg !1939
  store i64 %273, i64* %6, align 8, !dbg !1940
  br label %278, !dbg !1940

274:                                              ; preds = %159, %24
  call void @llvm.dbg.label(metadata !1941), !dbg !1942
  %275 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8, !dbg !1943
  %276 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %275, i32 0, i32 2, !dbg !1944
  %277 = load i32*, i32** %276, align 8, !dbg !1944
  store i32 1, i32* %277, align 4, !dbg !1945
  store i64 -1, i64* %6, align 8, !dbg !1946
  br label %278, !dbg !1946

278:                                              ; preds = %274, %160
  %279 = load i64, i64* %6, align 8, !dbg !1947
  ret i64 %279, !dbg !1947
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mustache__load_file(%struct.mustache__loader_stack_s* %0, i8* %1, i64 %2) #0 !dbg !1948 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mustache__loader_stack_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca %struct.mustache__data_segment_s, align 8
  %12 = alloca %struct.mustache__data_segment_s, align 8
  %13 = alloca %struct.mustache__data_segment_s, align 8
  %14 = alloca %struct.mustache__data_segment_s, align 8
  %15 = alloca %struct.mustache__instruction_s, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.mustache__instruction_s, align 8
  %18 = alloca i32, align 4
  store %struct.mustache__loader_stack_s* %0, %struct.mustache__loader_stack_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache__loader_stack_s** %5, metadata !1951, metadata !DIExpression()), !dbg !1952
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1953, metadata !DIExpression()), !dbg !1954
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1955, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !1957, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.declare(metadata i16* %9, metadata !1996, metadata !DIExpression()), !dbg !1997
  %19 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !1998
  %20 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %19, i32 0, i32 10, !dbg !1999
  %21 = load i16, i16* %20, align 8, !dbg !1999
  store i16 %21, i16* %9, align 2, !dbg !1997
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2000, metadata !DIExpression()), !dbg !2001
  store i32 0, i32* %10, align 4, !dbg !2001
  %22 = load i64, i64* %7, align 8, !dbg !2002
  %23 = icmp ne i64 %22, 0, !dbg !2002
  br i1 %23, label %25, label %24, !dbg !2004

24:                                               ; preds = %3
  br label %350, !dbg !2005

25:                                               ; preds = %3
  %26 = load i64, i64* %7, align 8, !dbg !2007
  %27 = icmp uge i64 %26, 8192, !dbg !2009
  br i1 %27, label %28, label %29, !dbg !2010

28:                                               ; preds = %25
  br label %354, !dbg !2011

29:                                               ; preds = %25
  br label %30, !dbg !2012

30:                                               ; preds = %211, %29
  call void @llvm.dbg.declare(metadata %struct.mustache__data_segment_s* %11, metadata !2013, metadata !DIExpression()), !dbg !2015
  %31 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2016
  %32 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %31, i32 0, i32 3, !dbg !2018
  %33 = load i8*, i8** %32, align 8, !dbg !2018
  %34 = icmp ne i8* %33, null, !dbg !2016
  br i1 %34, label %35, label %50, !dbg !2019

35:                                               ; preds = %30
  %36 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2020
  %37 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %36, i32 0, i32 3, !dbg !2021
  %38 = load i8*, i8** %37, align 8, !dbg !2021
  %39 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2022
  %40 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %39, i32 0, i32 11, !dbg !2023
  %41 = load i16, i16* %9, align 2, !dbg !2024
  %42 = zext i16 %41 to i64, !dbg !2022
  %43 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %40, i64 0, i64 %42, !dbg !2022
  %44 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %43, i32 0, i32 0, !dbg !2025
  %45 = load i32, i32* %44, align 4, !dbg !2025
  %46 = zext i32 %45 to i64, !dbg !2026
  %47 = getelementptr inbounds i8, i8* %38, i64 %46, !dbg !2026
  call void @mustache__data_segment_read(%struct.mustache__data_segment_s* sret %12, i8* %47), !dbg !2027
  %48 = bitcast %struct.mustache__data_segment_s* %11 to i8*, !dbg !2027
  %49 = bitcast %struct.mustache__data_segment_s* %12 to i8*, !dbg !2027
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 24, i1 false), !dbg !2027
  br label %55, !dbg !2028

50:                                               ; preds = %30
  %51 = bitcast %struct.mustache__data_segment_s* %13 to i8*, !dbg !2029
  call void @llvm.memset.p0i8.i64(i8* align 8 %51, i8 0, i64 24, i1 false), !dbg !2029
  %52 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %13, i32 0, i32 4, !dbg !2030
  store i16 0, i16* %52, align 2, !dbg !2030
  %53 = bitcast %struct.mustache__data_segment_s* %11 to i8*, !dbg !2029
  %54 = bitcast %struct.mustache__data_segment_s* %13 to i8*, !dbg !2029
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 24, i1 false), !dbg !2029
  br label %55

55:                                               ; preds = %50, %35
  %56 = load i32, i32* %10, align 4, !dbg !2031
  %57 = icmp ne i32 %56, 0, !dbg !2031
  br i1 %57, label %58, label %75, !dbg !2033

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4, !dbg !2034
  %60 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4, !dbg !2035
  %61 = load i16, i16* %60, align 2, !dbg !2035
  %62 = zext i16 %61 to i32, !dbg !2036
  %63 = icmp eq i32 %59, %62, !dbg !2037
  br i1 %63, label %64, label %75, !dbg !2038

64:                                               ; preds = %58
  %65 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2039
  %66 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %65, i32 0, i32 4, !dbg !2040
  %67 = load i8*, i8** %66, align 8, !dbg !2040
  %68 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 0, !dbg !2041
  %69 = load i8*, i8** %68, align 8, !dbg !2041
  %70 = load i32, i32* %10, align 4, !dbg !2042
  %71 = zext i32 %70 to i64, !dbg !2042
  %72 = call i32 @memcmp(i8* %67, i8* %69, i64 %71) #11, !dbg !2043
  %73 = icmp ne i32 %72, 0, !dbg !2043
  br i1 %73, label %75, label %74, !dbg !2044

74:                                               ; preds = %64
  br label %211, !dbg !2045

75:                                               ; preds = %64, %58, %55
  %76 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4, !dbg !2047
  %77 = load i16, i16* %76, align 2, !dbg !2047
  %78 = zext i16 %77 to i32, !dbg !2048
  store i32 %78, i32* %10, align 4, !dbg !2049
  %79 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2050
  %80 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %79, i32 0, i32 9, !dbg !2052
  %81 = load i16, i16* %80, align 2, !dbg !2052
  %82 = zext i16 %81 to i64, !dbg !2050
  %83 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4, !dbg !2053
  %84 = load i16, i16* %83, align 2, !dbg !2053
  %85 = zext i16 %84 to i64, !dbg !2054
  %86 = load i64, i64* %7, align 8, !dbg !2055
  %87 = add i64 %85, %86, !dbg !2056
  %88 = add i64 %87, 10, !dbg !2057
  %89 = icmp ult i64 %82, %88, !dbg !2058
  br i1 %89, label %90, label %120, !dbg !2059

90:                                               ; preds = %75
  %91 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2060
  %92 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %91, i32 0, i32 4, !dbg !2062
  %93 = load i8*, i8** %92, align 8, !dbg !2062
  %94 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4, !dbg !2063
  %95 = load i16, i16* %94, align 2, !dbg !2063
  %96 = zext i16 %95 to i64, !dbg !2064
  %97 = load i64, i64* %7, align 8, !dbg !2065
  %98 = add i64 %96, %97, !dbg !2066
  %99 = add i64 %98, 10, !dbg !2067
  %100 = call i8* @realloc(i8* %93, i64 %99) #2, !dbg !2068
  %101 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2069
  %102 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %101, i32 0, i32 4, !dbg !2070
  store i8* %100, i8** %102, align 8, !dbg !2071
  %103 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2072
  %104 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %103, i32 0, i32 4, !dbg !2072
  %105 = load i8*, i8** %104, align 8, !dbg !2072
  %106 = icmp ne i8* %105, null, !dbg !2072
  br i1 %106, label %110, label %107, !dbg !2074

107:                                              ; preds = %90
  call void @perror(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0)), !dbg !2075
  %108 = call i32* @__errno_location() #9, !dbg !2075
  %109 = load i32, i32* %108, align 4, !dbg !2075
  call void @exit(i32 %109) #10, !dbg !2075
  unreachable, !dbg !2075

110:                                              ; preds = %90
  %111 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4, !dbg !2077
  %112 = load i16, i16* %111, align 2, !dbg !2077
  %113 = zext i16 %112 to i64, !dbg !2078
  %114 = load i64, i64* %7, align 8, !dbg !2079
  %115 = add i64 %113, %114, !dbg !2080
  %116 = add i64 %115, 10, !dbg !2081
  %117 = trunc i64 %116 to i16, !dbg !2078
  %118 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2082
  %119 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %118, i32 0, i32 9, !dbg !2083
  store i16 %117, i16* %119, align 2, !dbg !2084
  br label %120, !dbg !2085

120:                                              ; preds = %110, %75
  %121 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4, !dbg !2086
  %122 = load i16, i16* %121, align 2, !dbg !2086
  %123 = icmp ne i16 %122, 0, !dbg !2088
  br i1 %123, label %125, label %124, !dbg !2089

124:                                              ; preds = %120
  store i16 1, i16* %9, align 2, !dbg !2090
  br label %134, !dbg !2092

125:                                              ; preds = %120
  %126 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2093
  %127 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %126, i32 0, i32 4, !dbg !2095
  %128 = load i8*, i8** %127, align 8, !dbg !2095
  %129 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 0, !dbg !2096
  %130 = load i8*, i8** %129, align 8, !dbg !2096
  %131 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4, !dbg !2097
  %132 = load i16, i16* %131, align 2, !dbg !2097
  %133 = zext i16 %132 to i64, !dbg !2098
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %128, i8* align 1 %130, i64 %133, i1 false), !dbg !2099
  br label %134

134:                                              ; preds = %125, %124
  %135 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2100
  %136 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %135, i32 0, i32 4, !dbg !2101
  %137 = load i8*, i8** %136, align 8, !dbg !2101
  %138 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4, !dbg !2102
  %139 = load i16, i16* %138, align 2, !dbg !2102
  %140 = zext i16 %139 to i32, !dbg !2103
  %141 = sext i32 %140 to i64, !dbg !2104
  %142 = getelementptr inbounds i8, i8* %137, i64 %141, !dbg !2104
  %143 = load i8*, i8** %6, align 8, !dbg !2105
  %144 = load i64, i64* %7, align 8, !dbg !2106
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %142, i8* align 1 %143, i64 %144, i1 false), !dbg !2107
  %145 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2108
  %146 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %145, i32 0, i32 4, !dbg !2109
  %147 = load i8*, i8** %146, align 8, !dbg !2109
  %148 = load i64, i64* %7, align 8, !dbg !2110
  %149 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4, !dbg !2111
  %150 = load i16, i16* %149, align 2, !dbg !2111
  %151 = zext i16 %150 to i64, !dbg !2112
  %152 = add i64 %148, %151, !dbg !2113
  %153 = getelementptr inbounds i8, i8* %147, i64 %152, !dbg !2108
  store i8 0, i8* %153, align 1, !dbg !2114
  %154 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2115
  %155 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %154, i32 0, i32 4, !dbg !2117
  %156 = load i8*, i8** %155, align 8, !dbg !2117
  %157 = call i32 @stat(i8* %156, %struct.stat* %8) #2, !dbg !2118
  %158 = icmp ne i32 %157, 0, !dbg !2118
  br i1 %158, label %171, label %159, !dbg !2119

159:                                              ; preds = %134
  %160 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3, !dbg !2120
  %161 = load i32, i32* %160, align 8, !dbg !2120
  %162 = and i32 %161, 61440, !dbg !2120
  %163 = icmp eq i32 %162, 32768, !dbg !2120
  br i1 %163, label %164, label %171, !dbg !2121

164:                                              ; preds = %159
  %165 = load i64, i64* %7, align 8, !dbg !2122
  %166 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4, !dbg !2124
  %167 = load i16, i16* %166, align 2, !dbg !2124
  %168 = zext i16 %167 to i64, !dbg !2125
  %169 = add i64 %165, %168, !dbg !2126
  %170 = trunc i64 %169 to i32, !dbg !2122
  store i32 %170, i32* %10, align 4, !dbg !2127
  br label %261, !dbg !2128

171:                                              ; preds = %159, %134
  %172 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2129
  %173 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %172, i32 0, i32 4, !dbg !2130
  %174 = load i8*, i8** %173, align 8, !dbg !2130
  %175 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4, !dbg !2131
  %176 = load i16, i16* %175, align 2, !dbg !2131
  %177 = zext i16 %176 to i32, !dbg !2132
  %178 = sext i32 %177 to i64, !dbg !2133
  %179 = getelementptr inbounds i8, i8* %174, i64 %178, !dbg !2133
  %180 = load i64, i64* %7, align 8, !dbg !2134
  %181 = getelementptr inbounds i8, i8* %179, i64 %180, !dbg !2135
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %181, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 9, i1 false), !dbg !2136
  %182 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2137
  %183 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %182, i32 0, i32 4, !dbg !2138
  %184 = load i8*, i8** %183, align 8, !dbg !2138
  %185 = load i64, i64* %7, align 8, !dbg !2139
  %186 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4, !dbg !2140
  %187 = load i16, i16* %186, align 2, !dbg !2140
  %188 = zext i16 %187 to i64, !dbg !2141
  %189 = add i64 %185, %188, !dbg !2142
  %190 = add i64 %189, 9, !dbg !2143
  %191 = getelementptr inbounds i8, i8* %184, i64 %190, !dbg !2137
  store i8 0, i8* %191, align 1, !dbg !2144
  %192 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2145
  %193 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %192, i32 0, i32 4, !dbg !2147
  %194 = load i8*, i8** %193, align 8, !dbg !2147
  %195 = call i32 @stat(i8* %194, %struct.stat* %8) #2, !dbg !2148
  %196 = icmp ne i32 %195, 0, !dbg !2148
  br i1 %196, label %210, label %197, !dbg !2149

197:                                              ; preds = %171
  %198 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3, !dbg !2150
  %199 = load i32, i32* %198, align 8, !dbg !2150
  %200 = and i32 %199, 61440, !dbg !2150
  %201 = icmp eq i32 %200, 32768, !dbg !2150
  br i1 %201, label %202, label %210, !dbg !2151

202:                                              ; preds = %197
  %203 = load i64, i64* %7, align 8, !dbg !2152
  %204 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4, !dbg !2154
  %205 = load i16, i16* %204, align 2, !dbg !2154
  %206 = zext i16 %205 to i64, !dbg !2155
  %207 = add i64 %203, %206, !dbg !2156
  %208 = add i64 %207, 9, !dbg !2157
  %209 = trunc i64 %208 to i32, !dbg !2152
  store i32 %209, i32* %10, align 4, !dbg !2158
  br label %261, !dbg !2159

210:                                              ; preds = %197, %171
  br label %211, !dbg !2160

211:                                              ; preds = %210, %74
  %212 = load i16, i16* %9, align 2, !dbg !2161
  %213 = add i16 %212, -1, !dbg !2161
  store i16 %213, i16* %9, align 2, !dbg !2161
  %214 = icmp ne i16 %213, 0, !dbg !2160
  br i1 %214, label %30, label %215, !dbg !2160, !llvm.loop !2162

215:                                              ; preds = %211
  %216 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2164
  %217 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %216, i32 0, i32 3, !dbg !2166
  %218 = load i8*, i8** %217, align 8, !dbg !2166
  %219 = icmp ne i8* %218, null, !dbg !2164
  br i1 %219, label %220, label %257, !dbg !2167

220:                                              ; preds = %215
  call void @llvm.dbg.declare(metadata %struct.mustache__data_segment_s* %14, metadata !2168, metadata !DIExpression()), !dbg !2170
  %221 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2171
  %222 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %221, i32 0, i32 3, !dbg !2172
  %223 = load i8*, i8** %222, align 8, !dbg !2172
  call void @mustache__data_segment_read(%struct.mustache__data_segment_s* sret %14, i8* %223), !dbg !2173
  %224 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %14, i32 0, i32 3, !dbg !2174
  %225 = load i16, i16* %224, align 8, !dbg !2174
  %226 = zext i16 %225 to i64, !dbg !2176
  %227 = load i64, i64* %7, align 8, !dbg !2177
  %228 = icmp eq i64 %226, %227, !dbg !2178
  br i1 %228, label %229, label %256, !dbg !2179

229:                                              ; preds = %220
  %230 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %14, i32 0, i32 0, !dbg !2180
  %231 = load i8*, i8** %230, align 8, !dbg !2180
  %232 = load i8*, i8** %6, align 8, !dbg !2181
  %233 = load i64, i64* %7, align 8, !dbg !2182
  %234 = call i32 @memcmp(i8* %231, i8* %232, i64 %233) #11, !dbg !2183
  %235 = icmp ne i32 %234, 0, !dbg !2183
  br i1 %235, label %256, label %236, !dbg !2184

236:                                              ; preds = %229
  %237 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2185
  %238 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %15, i32 0, i32 0, !dbg !2188
  store i32 6, i32* %238, align 4, !dbg !2188
  %239 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %15, i32 0, i32 1, !dbg !2188
  %240 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %239, i32 0, i32 0, !dbg !2189
  %241 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2190
  %242 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %241, i32 0, i32 0, !dbg !2191
  %243 = load %struct.mustache_s*, %struct.mustache_s** %242, align 8, !dbg !2191
  %244 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %243, i32 0, i32 0, !dbg !2192
  %245 = bitcast %union.anon* %244 to %struct.anon*, !dbg !2193
  %246 = getelementptr inbounds %struct.anon, %struct.anon* %245, i32 0, i32 0, !dbg !2194
  %247 = load i32, i32* %246, align 8, !dbg !2194
  store i32 %247, i32* %240, align 4, !dbg !2189
  %248 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %239, i32 0, i32 1, !dbg !2189
  store i32 0, i32* %248, align 4, !dbg !2189
  %249 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %239, i32 0, i32 2, !dbg !2189
  store i32 0, i32* %249, align 4, !dbg !2189
  %250 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %239, i32 0, i32 3, !dbg !2189
  store i16 0, i16* %250, align 4, !dbg !2189
  %251 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %239, i32 0, i32 4, !dbg !2189
  store i16 0, i16* %251, align 2, !dbg !2189
  %252 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %237, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %15), !dbg !2195
  %253 = icmp ne i32 %252, 0, !dbg !2195
  br i1 %253, label %254, label %255, !dbg !2196

254:                                              ; preds = %236
  br label %366, !dbg !2197

255:                                              ; preds = %236
  store i64 0, i64* %4, align 8, !dbg !2198
  br label %367, !dbg !2198

256:                                              ; preds = %229, %220
  br label %257, !dbg !2199

257:                                              ; preds = %256, %215
  %258 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2200
  %259 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %258, i32 0, i32 2, !dbg !2201
  %260 = load i32*, i32** %259, align 8, !dbg !2201
  store i32 3, i32* %260, align 4, !dbg !2202
  store i64 -1, i64* %4, align 8, !dbg !2203
  br label %367, !dbg !2203

261:                                              ; preds = %202, %164
  call void @llvm.dbg.label(metadata !2204), !dbg !2205
  %262 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !2206
  %263 = load i64, i64* %262, align 8, !dbg !2206
  %264 = icmp sge i64 %263, 2147483647, !dbg !2208
  br i1 %264, label %265, label %266, !dbg !2209

265:                                              ; preds = %261
  br label %358, !dbg !2210

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !2212
  %268 = load i64, i64* %267, align 8, !dbg !2212
  %269 = icmp eq i64 %268, 0, !dbg !2214
  br i1 %269, label %270, label %271, !dbg !2215

270:                                              ; preds = %266
  store i64 0, i64* %4, align 8, !dbg !2216
  br label %367, !dbg !2216

271:                                              ; preds = %266
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2218, metadata !DIExpression()), !dbg !2220
  %272 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2221
  %273 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2222
  %274 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %273, i32 0, i32 4, !dbg !2223
  %275 = load i8*, i8** %274, align 8, !dbg !2223
  %276 = load i32, i32* %10, align 4, !dbg !2224
  %277 = zext i32 %276 to i64, !dbg !2224
  %278 = call i32 @mustache__file_is_loaded(%struct.mustache__loader_stack_s* %272, i8* %275, i64 %277), !dbg !2225
  store i32 %278, i32* %16, align 4, !dbg !2220
  %279 = load i32, i32* %16, align 4, !dbg !2226
  %280 = icmp ne i32 %279, -1, !dbg !2228
  br i1 %280, label %281, label %302, !dbg !2229

281:                                              ; preds = %271
  %282 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2230
  %283 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %17, i32 0, i32 0, !dbg !2233
  store i32 6, i32* %283, align 4, !dbg !2233
  %284 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %17, i32 0, i32 1, !dbg !2233
  %285 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %284, i32 0, i32 0, !dbg !2234
  %286 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2235
  %287 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %286, i32 0, i32 0, !dbg !2236
  %288 = load %struct.mustache_s*, %struct.mustache_s** %287, align 8, !dbg !2236
  %289 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %288, i32 0, i32 0, !dbg !2237
  %290 = bitcast %union.anon* %289 to %struct.anon*, !dbg !2238
  %291 = getelementptr inbounds %struct.anon, %struct.anon* %290, i32 0, i32 0, !dbg !2239
  %292 = load i32, i32* %291, align 8, !dbg !2239
  store i32 %292, i32* %285, align 4, !dbg !2234
  %293 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %284, i32 0, i32 1, !dbg !2234
  %294 = load i32, i32* %16, align 4, !dbg !2240
  store i32 %294, i32* %293, align 4, !dbg !2234
  %295 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %284, i32 0, i32 2, !dbg !2234
  store i32 0, i32* %295, align 4, !dbg !2234
  %296 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %284, i32 0, i32 3, !dbg !2234
  store i16 0, i16* %296, align 4, !dbg !2234
  %297 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %284, i32 0, i32 4, !dbg !2234
  store i16 0, i16* %297, align 2, !dbg !2234
  %298 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %282, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %17), !dbg !2241
  %299 = icmp ne i32 %298, 0, !dbg !2241
  br i1 %299, label %300, label %301, !dbg !2242

300:                                              ; preds = %281
  br label %366, !dbg !2243

301:                                              ; preds = %281
  store i64 0, i64* %4, align 8, !dbg !2245
  br label %367, !dbg !2245

302:                                              ; preds = %271
  br label %303

303:                                              ; preds = %302
  br label %304

304:                                              ; preds = %303
  %305 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2246
  %306 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2248
  %307 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %306, i32 0, i32 4, !dbg !2249
  %308 = load i8*, i8** %307, align 8, !dbg !2249
  %309 = load i32, i32* %10, align 4, !dbg !2250
  %310 = zext i32 %309 to i64, !dbg !2250
  %311 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !2251
  %312 = load i64, i64* %311, align 8, !dbg !2251
  %313 = call i64 @mustache__load_data(%struct.mustache__loader_stack_s* %305, i8* %308, i64 %310, i8* null, i64 %312), !dbg !2252
  %314 = icmp eq i64 %313, -1, !dbg !2253
  br i1 %314, label %315, label %316, !dbg !2254

315:                                              ; preds = %304
  br label %366, !dbg !2255

316:                                              ; preds = %304
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2256, metadata !DIExpression()), !dbg !2257
  %317 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2258
  %318 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %317, i32 0, i32 4, !dbg !2259
  %319 = load i8*, i8** %318, align 8, !dbg !2259
  %320 = call i32 (i8*, i32, ...) @open(i8* %319, i32 0), !dbg !2260
  store i32 %320, i32* %18, align 4, !dbg !2257
  %321 = load i32, i32* %18, align 4, !dbg !2261
  %322 = icmp eq i32 %321, -1, !dbg !2263
  br i1 %322, label %323, label %324, !dbg !2264

323:                                              ; preds = %316
  br label %362, !dbg !2265

324:                                              ; preds = %316
  %325 = load i32, i32* %18, align 4, !dbg !2266
  %326 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2268
  %327 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %326, i32 0, i32 3, !dbg !2269
  %328 = load i8*, i8** %327, align 8, !dbg !2269
  %329 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2270
  %330 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %329, i32 0, i32 6, !dbg !2271
  %331 = load i32, i32* %330, align 4, !dbg !2271
  %332 = zext i32 %331 to i64, !dbg !2272
  %333 = getelementptr inbounds i8, i8* %328, i64 %332, !dbg !2272
  %334 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !2273
  %335 = load i64, i64* %334, align 8, !dbg !2273
  %336 = sub i64 0, %335, !dbg !2274
  %337 = getelementptr inbounds i8, i8* %333, i64 %336, !dbg !2274
  %338 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !2275
  %339 = load i64, i64* %338, align 8, !dbg !2275
  %340 = call i64 @pread(i32 %325, i8* %337, i64 %339, i64 0), !dbg !2276
  %341 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !2277
  %342 = load i64, i64* %341, align 8, !dbg !2277
  %343 = icmp ne i64 %340, %342, !dbg !2278
  br i1 %343, label %344, label %345, !dbg !2279

344:                                              ; preds = %324
  br label %362, !dbg !2280

345:                                              ; preds = %324
  %346 = load i32, i32* %18, align 4, !dbg !2281
  %347 = call i32 @close(i32 %346), !dbg !2282
  %348 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !2283
  %349 = load i64, i64* %348, align 8, !dbg !2283
  store i64 %349, i64* %4, align 8, !dbg !2284
  br label %367, !dbg !2284

350:                                              ; preds = %24
  call void @llvm.dbg.label(metadata !2285), !dbg !2286
  %351 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2287
  %352 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %351, i32 0, i32 2, !dbg !2288
  %353 = load i32*, i32** %352, align 8, !dbg !2288
  store i32 6, i32* %353, align 4, !dbg !2289
  store i64 -1, i64* %4, align 8, !dbg !2290
  br label %367, !dbg !2290

354:                                              ; preds = %28
  call void @llvm.dbg.label(metadata !2291), !dbg !2292
  %355 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2293
  %356 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %355, i32 0, i32 2, !dbg !2294
  %357 = load i32*, i32** %356, align 8, !dbg !2294
  store i32 5, i32* %357, align 4, !dbg !2295
  store i64 -1, i64* %4, align 8, !dbg !2296
  br label %367, !dbg !2296

358:                                              ; preds = %265
  call void @llvm.dbg.label(metadata !2297), !dbg !2298
  %359 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2299
  %360 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %359, i32 0, i32 2, !dbg !2300
  %361 = load i32*, i32** %360, align 8, !dbg !2300
  store i32 4, i32* %361, align 4, !dbg !2301
  store i64 -1, i64* %4, align 8, !dbg !2302
  br label %367, !dbg !2302

362:                                              ; preds = %344, %323
  call void @llvm.dbg.label(metadata !2303), !dbg !2304
  %363 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2305
  %364 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %363, i32 0, i32 2, !dbg !2306
  %365 = load i32*, i32** %364, align 8, !dbg !2306
  store i32 10, i32* %365, align 4, !dbg !2307
  store i64 -1, i64* %4, align 8, !dbg !2308
  br label %367, !dbg !2308

366:                                              ; preds = %315, %300, %254
  call void @llvm.dbg.label(metadata !2309), !dbg !2310
  store i64 -1, i64* %4, align 8, !dbg !2311
  br label %367, !dbg !2311

367:                                              ; preds = %366, %362, %358, %354, %350, %345, %301, %270, %257, %255
  %368 = load i64, i64* %4, align 8, !dbg !2312
  ret i64 %368, !dbg !2312
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache__push_text_instruction(%struct.mustache__loader_stack_s* %0, i32 %1, i32 %2) #0 !dbg !2313 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mustache__loader_stack_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mustache__instruction_s, align 8
  %12 = alloca %struct.mustache__instruction_s, align 8
  %13 = alloca %struct.mustache__instruction_s, align 8
  store %struct.mustache__loader_stack_s* %0, %struct.mustache__loader_stack_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache__loader_stack_s** %5, metadata !2316, metadata !DIExpression()), !dbg !2317
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2318, metadata !DIExpression()), !dbg !2319
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2320, metadata !DIExpression()), !dbg !2321
  br label %14, !dbg !2322

14:                                               ; preds = %60, %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2323, metadata !DIExpression()), !dbg !2327
  %15 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2328
  %16 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %15, i32 0, i32 3, !dbg !2329
  %17 = load i8*, i8** %16, align 8, !dbg !2329
  %18 = load i32, i32* %6, align 4, !dbg !2330
  %19 = zext i32 %18 to i64, !dbg !2331
  %20 = getelementptr inbounds i8, i8* %17, i64 %19, !dbg !2331
  store i8* %20, i8** %8, align 8, !dbg !2327
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2332, metadata !DIExpression()), !dbg !2333
  %21 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2334
  %22 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %21, i32 0, i32 3, !dbg !2335
  %23 = load i8*, i8** %22, align 8, !dbg !2335
  %24 = load i32, i32* %6, align 4, !dbg !2336
  %25 = zext i32 %24 to i64, !dbg !2337
  %26 = getelementptr inbounds i8, i8* %23, i64 %25, !dbg !2337
  %27 = load i32, i32* %7, align 4, !dbg !2338
  %28 = zext i32 %27 to i64, !dbg !2338
  %29 = call i8* @memchr(i8* %26, i32 10, i64 %28) #11, !dbg !2339
  store i8* %29, i8** %9, align 8, !dbg !2333
  %30 = load i8*, i8** %9, align 8, !dbg !2340
  %31 = icmp ne i8* %30, null, !dbg !2340
  br i1 %31, label %33, label %32, !dbg !2342

32:                                               ; preds = %14
  br label %71, !dbg !2343

33:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2344, metadata !DIExpression()), !dbg !2345
  %34 = load i8*, i8** %9, align 8, !dbg !2346
  %35 = load i8*, i8** %8, align 8, !dbg !2347
  %36 = ptrtoint i8* %34 to i64, !dbg !2348
  %37 = ptrtoint i8* %35 to i64, !dbg !2348
  %38 = sub i64 %36, %37, !dbg !2348
  %39 = add nsw i64 %38, 1, !dbg !2349
  store i64 %39, i64* %10, align 8, !dbg !2345
  %40 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2350
  %41 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %11, i32 0, i32 0, !dbg !2352
  store i32 0, i32* %41, align 4, !dbg !2352
  %42 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %11, i32 0, i32 1, !dbg !2352
  %43 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %42, i32 0, i32 0, !dbg !2353
  store i32 0, i32* %43, align 4, !dbg !2353
  %44 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %42, i32 0, i32 1, !dbg !2353
  store i32 0, i32* %44, align 4, !dbg !2353
  %45 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %42, i32 0, i32 2, !dbg !2353
  %46 = load i32, i32* %6, align 4, !dbg !2354
  store i32 %46, i32* %45, align 4, !dbg !2353
  %47 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %42, i32 0, i32 3, !dbg !2353
  %48 = load i64, i64* %10, align 8, !dbg !2355
  %49 = trunc i64 %48 to i16, !dbg !2355
  store i16 %49, i16* %47, align 4, !dbg !2353
  %50 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %42, i32 0, i32 4, !dbg !2353
  store i16 0, i16* %50, align 2, !dbg !2353
  %51 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %40, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %11), !dbg !2356
  %52 = icmp eq i32 %51, -1, !dbg !2357
  br i1 %52, label %59, label %53, !dbg !2358

53:                                               ; preds = %33
  %54 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2359
  %55 = bitcast %struct.mustache__instruction_s* %12 to i8*, !dbg !2360
  call void @llvm.memset.p0i8.i64(i8* align 4 %55, i8 0, i64 20, i1 false), !dbg !2360
  %56 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %12, i32 0, i32 0, !dbg !2361
  store i32 9, i32* %56, align 4, !dbg !2361
  %57 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %54, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %12), !dbg !2362
  %58 = icmp eq i32 %57, -1, !dbg !2363
  br i1 %58, label %59, label %60, !dbg !2364

59:                                               ; preds = %53, %33
  store i32 -1, i32* %4, align 4, !dbg !2365
  br label %88, !dbg !2365

60:                                               ; preds = %53
  %61 = load i64, i64* %10, align 8, !dbg !2366
  %62 = load i32, i32* %6, align 4, !dbg !2367
  %63 = zext i32 %62 to i64, !dbg !2367
  %64 = add i64 %63, %61, !dbg !2367
  %65 = trunc i64 %64 to i32, !dbg !2367
  store i32 %65, i32* %6, align 4, !dbg !2367
  %66 = load i64, i64* %10, align 8, !dbg !2368
  %67 = load i32, i32* %7, align 4, !dbg !2369
  %68 = zext i32 %67 to i64, !dbg !2369
  %69 = sub i64 %68, %66, !dbg !2369
  %70 = trunc i64 %69 to i32, !dbg !2369
  store i32 %70, i32* %7, align 4, !dbg !2369
  br label %14, !dbg !2370, !llvm.loop !2371

71:                                               ; preds = %32
  %72 = load i32, i32* %7, align 4, !dbg !2374
  %73 = icmp ne i32 %72, 0, !dbg !2374
  br i1 %73, label %75, label %74, !dbg !2376

74:                                               ; preds = %71
  store i32 0, i32* %4, align 4, !dbg !2377
  br label %88, !dbg !2377

75:                                               ; preds = %71
  %76 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2378
  %77 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %13, i32 0, i32 0, !dbg !2379
  store i32 0, i32* %77, align 4, !dbg !2379
  %78 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %13, i32 0, i32 1, !dbg !2379
  %79 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %78, i32 0, i32 0, !dbg !2380
  store i32 0, i32* %79, align 4, !dbg !2380
  %80 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %78, i32 0, i32 1, !dbg !2380
  store i32 0, i32* %80, align 4, !dbg !2380
  %81 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %78, i32 0, i32 2, !dbg !2380
  %82 = load i32, i32* %6, align 4, !dbg !2381
  store i32 %82, i32* %81, align 4, !dbg !2380
  %83 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %78, i32 0, i32 3, !dbg !2380
  %84 = load i32, i32* %7, align 4, !dbg !2382
  %85 = trunc i32 %84 to i16, !dbg !2382
  store i16 %85, i16* %83, align 4, !dbg !2380
  %86 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %78, i32 0, i32 4, !dbg !2380
  store i16 0, i16* %86, align 2, !dbg !2380
  %87 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %76, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %13), !dbg !2383
  store i32 %87, i32* %4, align 4, !dbg !2384
  br label %88, !dbg !2384

88:                                               ; preds = %75, %74, %59
  %89 = load i32, i32* %4, align 4, !dbg !2385
  ret i32 %89, !dbg !2385
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mustache__stand_alone_adjust(%struct.mustache__loader_stack_s* %0, i32 %1) #0 !dbg !2386 {
  %3 = alloca %struct.mustache__loader_stack_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mustache__instruction_s*, align 8
  store %struct.mustache__loader_stack_s* %0, %struct.mustache__loader_stack_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache__loader_stack_s** %3, metadata !2389, metadata !DIExpression()), !dbg !2390
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2391, metadata !DIExpression()), !dbg !2392
  %6 = load i32, i32* %4, align 4, !dbg !2393
  %7 = icmp ne i32 %6, 0, !dbg !2393
  br i1 %7, label %9, label %8, !dbg !2395

8:                                                ; preds = %2
  br label %106, !dbg !2396

9:                                                ; preds = %2
  %10 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8, !dbg !2397
  %11 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %10, i32 0, i32 3, !dbg !2398
  %12 = load i8*, i8** %11, align 8, !dbg !2398
  %13 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8, !dbg !2399
  %14 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %13, i32 0, i32 11, !dbg !2400
  %15 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8, !dbg !2401
  %16 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %15, i32 0, i32 10, !dbg !2402
  %17 = load i16, i16* %16, align 8, !dbg !2402
  %18 = zext i16 %17 to i64, !dbg !2399
  %19 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %14, i64 0, i64 %18, !dbg !2399
  %20 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %19, i32 0, i32 1, !dbg !2403
  %21 = load i32, i32* %20, align 4, !dbg !2403
  %22 = zext i32 %21 to i64, !dbg !2397
  %23 = getelementptr inbounds i8, i8* %12, i64 %22, !dbg !2397
  %24 = load i8, i8* %23, align 1, !dbg !2397
  %25 = sext i8 %24 to i32, !dbg !2397
  %26 = icmp eq i32 %25, 13, !dbg !2404
  %27 = zext i1 %26 to i32, !dbg !2404
  %28 = add nsw i32 1, %27, !dbg !2405
  %29 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8, !dbg !2406
  %30 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %29, i32 0, i32 11, !dbg !2407
  %31 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8, !dbg !2408
  %32 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %31, i32 0, i32 10, !dbg !2409
  %33 = load i16, i16* %32, align 8, !dbg !2409
  %34 = zext i16 %33 to i64, !dbg !2406
  %35 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %30, i64 0, i64 %34, !dbg !2406
  %36 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %35, i32 0, i32 1, !dbg !2410
  %37 = load i32, i32* %36, align 4, !dbg !2411
  %38 = add i32 %37, %28, !dbg !2411
  store i32 %38, i32* %36, align 4, !dbg !2411
  %39 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8, !dbg !2412
  %40 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %39, i32 0, i32 0, !dbg !2414
  %41 = load %struct.mustache_s*, %struct.mustache_s** %40, align 8, !dbg !2414
  %42 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %41, i32 0, i32 0, !dbg !2415
  %43 = bitcast %union.anon* %42 to %struct.anon*, !dbg !2416
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 0, !dbg !2417
  %45 = load i32, i32* %44, align 8, !dbg !2417
  %46 = icmp ne i32 %45, 0, !dbg !2412
  br i1 %46, label %47, label %106, !dbg !2418

47:                                               ; preds = %9
  %48 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8, !dbg !2419
  %49 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %48, i32 0, i32 1, !dbg !2420
  %50 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %49, align 8, !dbg !2420
  %51 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8, !dbg !2421
  %52 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %51, i32 0, i32 0, !dbg !2422
  %53 = load %struct.mustache_s*, %struct.mustache_s** %52, align 8, !dbg !2422
  %54 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %53, i32 0, i32 0, !dbg !2423
  %55 = bitcast %union.anon* %54 to %struct.anon*, !dbg !2424
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0, !dbg !2425
  %57 = load i32, i32* %56, align 8, !dbg !2425
  %58 = sub i32 %57, 1, !dbg !2426
  %59 = zext i32 %58 to i64, !dbg !2419
  %60 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %50, i64 %59, !dbg !2419
  %61 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %60, i32 0, i32 0, !dbg !2427
  %62 = load i32, i32* %61, align 4, !dbg !2427
  %63 = icmp eq i32 %62, 0, !dbg !2428
  br i1 %63, label %64, label %106, !dbg !2429

64:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata %struct.mustache__instruction_s** %5, metadata !2430, metadata !DIExpression()), !dbg !2432
  %65 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8, !dbg !2433
  %66 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %65, i32 0, i32 1, !dbg !2434
  %67 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %66, align 8, !dbg !2434
  %68 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8, !dbg !2435
  %69 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %68, i32 0, i32 0, !dbg !2436
  %70 = load %struct.mustache_s*, %struct.mustache_s** %69, align 8, !dbg !2436
  %71 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %70, i32 0, i32 0, !dbg !2437
  %72 = bitcast %union.anon* %71 to %struct.anon*, !dbg !2438
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %72, i32 0, i32 0, !dbg !2439
  %74 = load i32, i32* %73, align 8, !dbg !2439
  %75 = zext i32 %74 to i64, !dbg !2440
  %76 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %67, i64 %75, !dbg !2440
  %77 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %76, i64 -1, !dbg !2441
  store %struct.mustache__instruction_s* %77, %struct.mustache__instruction_s** %5, align 8, !dbg !2432
  %78 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %5, align 8, !dbg !2442
  %79 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %78, i32 0, i32 1, !dbg !2444
  %80 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %79, i32 0, i32 3, !dbg !2445
  %81 = load i16, i16* %80, align 4, !dbg !2445
  %82 = zext i16 %81 to i32, !dbg !2442
  %83 = load i32, i32* %4, align 4, !dbg !2446
  %84 = lshr i32 %83, 1, !dbg !2447
  %85 = icmp ule i32 %82, %84, !dbg !2448
  br i1 %85, label %86, label %95, !dbg !2449

86:                                               ; preds = %64
  %87 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8, !dbg !2450
  %88 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %87, i32 0, i32 0, !dbg !2451
  %89 = load %struct.mustache_s*, %struct.mustache_s** %88, align 8, !dbg !2451
  %90 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %89, i32 0, i32 0, !dbg !2452
  %91 = bitcast %union.anon* %90 to %struct.anon*, !dbg !2453
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 0, !dbg !2454
  %93 = load i32, i32* %92, align 8, !dbg !2455
  %94 = add i32 %93, -1, !dbg !2455
  store i32 %94, i32* %92, align 8, !dbg !2455
  br label %105, !dbg !2455

95:                                               ; preds = %64
  %96 = load i32, i32* %4, align 4, !dbg !2456
  %97 = lshr i32 %96, 1, !dbg !2457
  %98 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %5, align 8, !dbg !2458
  %99 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %98, i32 0, i32 1, !dbg !2459
  %100 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %99, i32 0, i32 3, !dbg !2460
  %101 = load i16, i16* %100, align 4, !dbg !2461
  %102 = zext i16 %101 to i32, !dbg !2461
  %103 = sub i32 %102, %97, !dbg !2461
  %104 = trunc i32 %103 to i16, !dbg !2461
  store i16 %104, i16* %100, align 4, !dbg !2461
  br label %105

105:                                              ; preds = %95, %86
  br label %106, !dbg !2462

106:                                              ; preds = %8, %105, %47, %9
  ret void, !dbg !2463
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %0, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %1) #0 !dbg !2464 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mustache__loader_stack_s*, align 8
  store %struct.mustache__loader_stack_s* %0, %struct.mustache__loader_stack_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache__loader_stack_s** %4, metadata !2467, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.declare(metadata %struct.mustache__instruction_s* %1, metadata !2469, metadata !DIExpression()), !dbg !2470
  %5 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8, !dbg !2471
  %6 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %5, i32 0, i32 0, !dbg !2473
  %7 = load %struct.mustache_s*, %struct.mustache_s** %6, align 8, !dbg !2473
  %8 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %7, i32 0, i32 0, !dbg !2474
  %9 = bitcast %union.anon* %8 to %struct.anon*, !dbg !2475
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0, !dbg !2476
  %11 = load i32, i32* %10, align 8, !dbg !2476
  %12 = icmp uge i32 %11, 2147483647, !dbg !2477
  br i1 %12, label %13, label %14, !dbg !2478

13:                                               ; preds = %2
  br label %84, !dbg !2479

14:                                               ; preds = %2
  %15 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8, !dbg !2480
  %16 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %15, i32 0, i32 5, !dbg !2482
  %17 = load i32, i32* %16, align 8, !dbg !2482
  %18 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8, !dbg !2483
  %19 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %18, i32 0, i32 0, !dbg !2484
  %20 = load %struct.mustache_s*, %struct.mustache_s** %19, align 8, !dbg !2484
  %21 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %20, i32 0, i32 0, !dbg !2485
  %22 = bitcast %union.anon* %21 to %struct.anon*, !dbg !2486
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0, !dbg !2487
  %24 = load i32, i32* %23, align 8, !dbg !2487
  %25 = icmp ule i32 %17, %24, !dbg !2488
  br i1 %25, label %26, label %61, !dbg !2489

26:                                               ; preds = %14
  %27 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8, !dbg !2490
  %28 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %27, i32 0, i32 0, !dbg !2492
  %29 = load %struct.mustache_s*, %struct.mustache_s** %28, align 8, !dbg !2492
  %30 = bitcast %struct.mustache_s* %29 to i8*, !dbg !2490
  %31 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8, !dbg !2493
  %32 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %31, i32 0, i32 5, !dbg !2494
  %33 = load i32, i32* %32, align 8, !dbg !2494
  %34 = add i32 %33, 32, !dbg !2495
  %35 = zext i32 %34 to i64, !dbg !2496
  %36 = mul i64 20, %35, !dbg !2497
  %37 = add i64 8, %36, !dbg !2498
  %38 = call i8* @realloc(i8* %30, i64 %37) #2, !dbg !2499
  %39 = bitcast i8* %38 to %struct.mustache_s*, !dbg !2499
  %40 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8, !dbg !2500
  %41 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %40, i32 0, i32 0, !dbg !2501
  store %struct.mustache_s* %39, %struct.mustache_s** %41, align 8, !dbg !2502
  %42 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8, !dbg !2503
  %43 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %42, i32 0, i32 0, !dbg !2503
  %44 = load %struct.mustache_s*, %struct.mustache_s** %43, align 8, !dbg !2503
  %45 = icmp ne %struct.mustache_s* %44, null, !dbg !2503
  br i1 %45, label %49, label %46, !dbg !2505

46:                                               ; preds = %26
  call void @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0)), !dbg !2506
  %47 = call i32* @__errno_location() #9, !dbg !2506
  %48 = load i32, i32* %47, align 4, !dbg !2506
  call void @exit(i32 %48) #10, !dbg !2506
  unreachable, !dbg !2506

49:                                               ; preds = %26
  %50 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8, !dbg !2508
  %51 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %50, i32 0, i32 5, !dbg !2509
  %52 = load i32, i32* %51, align 8, !dbg !2510
  %53 = add i32 %52, 32, !dbg !2510
  store i32 %53, i32* %51, align 8, !dbg !2510
  %54 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8, !dbg !2511
  %55 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %54, i32 0, i32 0, !dbg !2511
  %56 = load %struct.mustache_s*, %struct.mustache_s** %55, align 8, !dbg !2511
  %57 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %56, i64 1, !dbg !2511
  %58 = bitcast %struct.mustache_s* %57 to %struct.mustache__instruction_s*, !dbg !2511
  %59 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8, !dbg !2512
  %60 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %59, i32 0, i32 1, !dbg !2513
  store %struct.mustache__instruction_s* %58, %struct.mustache__instruction_s** %60, align 8, !dbg !2514
  br label %61, !dbg !2515

61:                                               ; preds = %49, %14
  %62 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8, !dbg !2516
  %63 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %62, i32 0, i32 1, !dbg !2517
  %64 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %63, align 8, !dbg !2517
  %65 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8, !dbg !2518
  %66 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %65, i32 0, i32 0, !dbg !2519
  %67 = load %struct.mustache_s*, %struct.mustache_s** %66, align 8, !dbg !2519
  %68 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %67, i32 0, i32 0, !dbg !2520
  %69 = bitcast %union.anon* %68 to %struct.anon*, !dbg !2521
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %69, i32 0, i32 0, !dbg !2522
  %71 = load i32, i32* %70, align 8, !dbg !2522
  %72 = zext i32 %71 to i64, !dbg !2516
  %73 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %64, i64 %72, !dbg !2516
  %74 = bitcast %struct.mustache__instruction_s* %73 to i8*, !dbg !2523
  %75 = bitcast %struct.mustache__instruction_s* %1 to i8*, !dbg !2523
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 8 %75, i64 20, i1 false), !dbg !2523
  %76 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8, !dbg !2524
  %77 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %76, i32 0, i32 0, !dbg !2525
  %78 = load %struct.mustache_s*, %struct.mustache_s** %77, align 8, !dbg !2525
  %79 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %78, i32 0, i32 0, !dbg !2526
  %80 = bitcast %union.anon* %79 to %struct.anon*, !dbg !2527
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 0, !dbg !2528
  %82 = load i32, i32* %81, align 8, !dbg !2529
  %83 = add i32 %82, 1, !dbg !2529
  store i32 %83, i32* %81, align 8, !dbg !2529
  store i32 0, i32* %3, align 4, !dbg !2530
  br label %88, !dbg !2530

84:                                               ; preds = %13
  call void @llvm.dbg.label(metadata !2531), !dbg !2532
  %85 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8, !dbg !2533
  %86 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %85, i32 0, i32 2, !dbg !2534
  %87 = load i32*, i32** %86, align 8, !dbg !2534
  store i32 1, i32* %87, align 4, !dbg !2535
  store i32 -1, i32* %3, align 4, !dbg !2536
  br label %88, !dbg !2536

88:                                               ; preds = %84, %61
  %89 = load i32, i32* %3, align 4, !dbg !2537
  ret i32 %89, !dbg !2537
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mustache__data_segment_read(%struct.mustache__data_segment_s* noalias sret %0, i8* %1) #0 !dbg !2538 {
  %3 = alloca i8*, align 8
  store i8* %1, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2541, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.declare(metadata %struct.mustache__data_segment_s* %0, metadata !2543, metadata !DIExpression()), !dbg !2544
  %4 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %0, i32 0, i32 0, !dbg !2545
  %5 = load i8*, i8** %3, align 8, !dbg !2546
  %6 = getelementptr inbounds i8, i8* %5, i64 12, !dbg !2547
  store i8* %6, i8** %4, align 8, !dbg !2545
  %7 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %0, i32 0, i32 1, !dbg !2545
  %8 = load i8*, i8** %3, align 8, !dbg !2548
  %9 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !2548
  %10 = load i8, i8* %9, align 1, !dbg !2548
  %11 = zext i8 %10 to i32, !dbg !2549
  %12 = load i8*, i8** %3, align 8, !dbg !2550
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !2550
  %14 = load i8, i8* %13, align 1, !dbg !2550
  %15 = zext i8 %14 to i32, !dbg !2551
  %16 = shl i32 %15, 1, !dbg !2552
  %17 = or i32 %11, %16, !dbg !2553
  %18 = load i8*, i8** %3, align 8, !dbg !2554
  %19 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !2554
  %20 = load i8, i8* %19, align 1, !dbg !2554
  %21 = zext i8 %20 to i32, !dbg !2555
  %22 = shl i32 %21, 2, !dbg !2556
  %23 = or i32 %17, %22, !dbg !2557
  %24 = load i8*, i8** %3, align 8, !dbg !2558
  %25 = getelementptr inbounds i8, i8* %24, i64 3, !dbg !2558
  %26 = load i8, i8* %25, align 1, !dbg !2558
  %27 = zext i8 %26 to i32, !dbg !2559
  %28 = shl i32 %27, 3, !dbg !2560
  %29 = or i32 %23, %28, !dbg !2561
  store i32 %29, i32* %7, align 8, !dbg !2545
  %30 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %0, i32 0, i32 2, !dbg !2545
  %31 = load i8*, i8** %3, align 8, !dbg !2562
  %32 = getelementptr inbounds i8, i8* %31, i64 4, !dbg !2562
  %33 = load i8, i8* %32, align 1, !dbg !2562
  %34 = zext i8 %33 to i32, !dbg !2563
  %35 = load i8*, i8** %3, align 8, !dbg !2564
  %36 = getelementptr inbounds i8, i8* %35, i64 5, !dbg !2564
  %37 = load i8, i8* %36, align 1, !dbg !2564
  %38 = zext i8 %37 to i32, !dbg !2565
  %39 = shl i32 %38, 1, !dbg !2566
  %40 = or i32 %34, %39, !dbg !2567
  %41 = load i8*, i8** %3, align 8, !dbg !2568
  %42 = getelementptr inbounds i8, i8* %41, i64 6, !dbg !2568
  %43 = load i8, i8* %42, align 1, !dbg !2568
  %44 = zext i8 %43 to i32, !dbg !2569
  %45 = shl i32 %44, 2, !dbg !2570
  %46 = or i32 %40, %45, !dbg !2571
  %47 = load i8*, i8** %3, align 8, !dbg !2572
  %48 = getelementptr inbounds i8, i8* %47, i64 7, !dbg !2572
  %49 = load i8, i8* %48, align 1, !dbg !2572
  %50 = zext i8 %49 to i32, !dbg !2573
  %51 = shl i32 %50, 3, !dbg !2574
  %52 = or i32 %46, %51, !dbg !2575
  store i32 %52, i32* %30, align 4, !dbg !2545
  %53 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %0, i32 0, i32 3, !dbg !2545
  %54 = load i8*, i8** %3, align 8, !dbg !2576
  %55 = getelementptr inbounds i8, i8* %54, i64 8, !dbg !2576
  %56 = load i8, i8* %55, align 1, !dbg !2576
  %57 = zext i8 %56 to i16, !dbg !2577
  %58 = zext i16 %57 to i32, !dbg !2577
  %59 = load i8*, i8** %3, align 8, !dbg !2578
  %60 = getelementptr inbounds i8, i8* %59, i64 9, !dbg !2578
  %61 = load i8, i8* %60, align 1, !dbg !2578
  %62 = zext i8 %61 to i16, !dbg !2579
  %63 = zext i16 %62 to i32, !dbg !2579
  %64 = shl i32 %63, 1, !dbg !2580
  %65 = or i32 %58, %64, !dbg !2581
  %66 = trunc i32 %65 to i16, !dbg !2582
  store i16 %66, i16* %53, align 8, !dbg !2545
  %67 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %0, i32 0, i32 4, !dbg !2545
  %68 = load i8*, i8** %3, align 8, !dbg !2583
  %69 = getelementptr inbounds i8, i8* %68, i64 10, !dbg !2583
  %70 = load i8, i8* %69, align 1, !dbg !2583
  %71 = zext i8 %70 to i16, !dbg !2584
  %72 = zext i16 %71 to i32, !dbg !2584
  %73 = load i8*, i8** %3, align 8, !dbg !2585
  %74 = getelementptr inbounds i8, i8* %73, i64 11, !dbg !2585
  %75 = load i8, i8* %74, align 1, !dbg !2585
  %76 = zext i8 %75 to i16, !dbg !2586
  %77 = zext i16 %76 to i32, !dbg !2586
  %78 = shl i32 %77, 1, !dbg !2587
  %79 = or i32 %72, %78, !dbg !2588
  %80 = trunc i32 %79 to i16, !dbg !2589
  store i16 %80, i16* %67, align 2, !dbg !2545
  ret void, !dbg !2590
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mustache__data_segment_length(i64 %0) #0 !dbg !2591 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2594, metadata !DIExpression()), !dbg !2595
  %3 = load i64, i64* %2, align 8, !dbg !2596
  %4 = add i64 13, %3, !dbg !2597
  ret i64 %4, !dbg !2598
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mustache__data_segment_write(i8* %0, %struct.mustache__data_segment_s* byval(%struct.mustache__data_segment_s) align 8 %1) #0 !dbg !2599 {
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2602, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.declare(metadata %struct.mustache__data_segment_s* %1, metadata !2604, metadata !DIExpression()), !dbg !2605
  %4 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 1, !dbg !2606
  %5 = load i32, i32* %4, align 8, !dbg !2606
  %6 = and i32 255, %5, !dbg !2607
  %7 = trunc i32 %6 to i8, !dbg !2608
  %8 = load i8*, i8** %3, align 8, !dbg !2609
  %9 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !2609
  store i8 %7, i8* %9, align 1, !dbg !2610
  %10 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 1, !dbg !2611
  %11 = load i32, i32* %10, align 8, !dbg !2611
  %12 = lshr i32 %11, 1, !dbg !2612
  %13 = and i32 255, %12, !dbg !2613
  %14 = trunc i32 %13 to i8, !dbg !2614
  %15 = load i8*, i8** %3, align 8, !dbg !2615
  %16 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !2615
  store i8 %14, i8* %16, align 1, !dbg !2616
  %17 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 1, !dbg !2617
  %18 = load i32, i32* %17, align 8, !dbg !2617
  %19 = lshr i32 %18, 2, !dbg !2618
  %20 = and i32 255, %19, !dbg !2619
  %21 = trunc i32 %20 to i8, !dbg !2620
  %22 = load i8*, i8** %3, align 8, !dbg !2621
  %23 = getelementptr inbounds i8, i8* %22, i64 2, !dbg !2621
  store i8 %21, i8* %23, align 1, !dbg !2622
  %24 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 1, !dbg !2623
  %25 = load i32, i32* %24, align 8, !dbg !2623
  %26 = lshr i32 %25, 3, !dbg !2624
  %27 = and i32 255, %26, !dbg !2625
  %28 = trunc i32 %27 to i8, !dbg !2626
  %29 = load i8*, i8** %3, align 8, !dbg !2627
  %30 = getelementptr inbounds i8, i8* %29, i64 3, !dbg !2627
  store i8 %28, i8* %30, align 1, !dbg !2628
  %31 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 2, !dbg !2629
  %32 = load i32, i32* %31, align 4, !dbg !2629
  %33 = and i32 255, %32, !dbg !2630
  %34 = trunc i32 %33 to i8, !dbg !2631
  %35 = load i8*, i8** %3, align 8, !dbg !2632
  %36 = getelementptr inbounds i8, i8* %35, i64 4, !dbg !2632
  store i8 %34, i8* %36, align 1, !dbg !2633
  %37 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 2, !dbg !2634
  %38 = load i32, i32* %37, align 4, !dbg !2634
  %39 = lshr i32 %38, 1, !dbg !2635
  %40 = and i32 255, %39, !dbg !2636
  %41 = trunc i32 %40 to i8, !dbg !2637
  %42 = load i8*, i8** %3, align 8, !dbg !2638
  %43 = getelementptr inbounds i8, i8* %42, i64 5, !dbg !2638
  store i8 %41, i8* %43, align 1, !dbg !2639
  %44 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 2, !dbg !2640
  %45 = load i32, i32* %44, align 4, !dbg !2640
  %46 = lshr i32 %45, 2, !dbg !2641
  %47 = and i32 255, %46, !dbg !2642
  %48 = trunc i32 %47 to i8, !dbg !2643
  %49 = load i8*, i8** %3, align 8, !dbg !2644
  %50 = getelementptr inbounds i8, i8* %49, i64 6, !dbg !2644
  store i8 %48, i8* %50, align 1, !dbg !2645
  %51 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 2, !dbg !2646
  %52 = load i32, i32* %51, align 4, !dbg !2646
  %53 = lshr i32 %52, 3, !dbg !2647
  %54 = and i32 255, %53, !dbg !2648
  %55 = trunc i32 %54 to i8, !dbg !2649
  %56 = load i8*, i8** %3, align 8, !dbg !2650
  %57 = getelementptr inbounds i8, i8* %56, i64 7, !dbg !2650
  store i8 %55, i8* %57, align 1, !dbg !2651
  %58 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 3, !dbg !2652
  %59 = load i16, i16* %58, align 8, !dbg !2652
  %60 = zext i16 %59 to i32, !dbg !2653
  %61 = and i32 255, %60, !dbg !2654
  %62 = trunc i32 %61 to i8, !dbg !2655
  %63 = load i8*, i8** %3, align 8, !dbg !2656
  %64 = getelementptr inbounds i8, i8* %63, i64 8, !dbg !2656
  store i8 %62, i8* %64, align 1, !dbg !2657
  %65 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 3, !dbg !2658
  %66 = load i16, i16* %65, align 8, !dbg !2658
  %67 = zext i16 %66 to i32, !dbg !2659
  %68 = ashr i32 %67, 1, !dbg !2660
  %69 = and i32 255, %68, !dbg !2661
  %70 = trunc i32 %69 to i8, !dbg !2662
  %71 = load i8*, i8** %3, align 8, !dbg !2663
  %72 = getelementptr inbounds i8, i8* %71, i64 9, !dbg !2663
  store i8 %70, i8* %72, align 1, !dbg !2664
  %73 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 4, !dbg !2665
  %74 = load i16, i16* %73, align 2, !dbg !2665
  %75 = zext i16 %74 to i32, !dbg !2666
  %76 = and i32 255, %75, !dbg !2667
  %77 = trunc i32 %76 to i8, !dbg !2668
  %78 = load i8*, i8** %3, align 8, !dbg !2669
  %79 = getelementptr inbounds i8, i8* %78, i64 10, !dbg !2669
  store i8 %77, i8* %79, align 1, !dbg !2670
  %80 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 4, !dbg !2671
  %81 = load i16, i16* %80, align 2, !dbg !2671
  %82 = zext i16 %81 to i32, !dbg !2672
  %83 = ashr i32 %82, 1, !dbg !2673
  %84 = and i32 255, %83, !dbg !2674
  %85 = trunc i32 %84 to i8, !dbg !2675
  %86 = load i8*, i8** %3, align 8, !dbg !2676
  %87 = getelementptr inbounds i8, i8* %86, i64 11, !dbg !2676
  store i8 %85, i8* %87, align 1, !dbg !2677
  %88 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 3, !dbg !2678
  %89 = load i16, i16* %88, align 8, !dbg !2678
  %90 = icmp ne i16 %89, 0, !dbg !2680
  br i1 %90, label %91, label %99, !dbg !2681

91:                                               ; preds = %2
  %92 = load i8*, i8** %3, align 8, !dbg !2682
  %93 = getelementptr inbounds i8, i8* %92, i64 12, !dbg !2683
  %94 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 0, !dbg !2684
  %95 = load i8*, i8** %94, align 8, !dbg !2684
  %96 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 3, !dbg !2685
  %97 = load i16, i16* %96, align 8, !dbg !2685
  %98 = zext i16 %97 to i64, !dbg !2686
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %93, i8* align 1 %95, i64 %98, i1 false), !dbg !2687
  br label %99, !dbg !2687

99:                                               ; preds = %91, %2
  %100 = load i8*, i8** %3, align 8, !dbg !2688
  %101 = getelementptr inbounds i8, i8* %100, i64 12, !dbg !2689
  %102 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 3, !dbg !2690
  %103 = load i16, i16* %102, align 8, !dbg !2690
  %104 = zext i16 %103 to i64, !dbg !2691
  %105 = getelementptr inbounds i8, i8* %101, i64 %104, !dbg !2691
  store i8 0, i8* %105, align 1, !dbg !2692
  %106 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 3, !dbg !2693
  %107 = load i16, i16* %106, align 8, !dbg !2693
  %108 = zext i16 %107 to i32, !dbg !2694
  %109 = add nsw i32 13, %108, !dbg !2695
  %110 = sext i32 %109 to i64, !dbg !2696
  ret i64 %110, !dbg !2697
}

; Function Attrs: nounwind
declare dso_local i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache__file_is_loaded(%struct.mustache__loader_stack_s* %0, i8* %1, i64 %2) #0 !dbg !2698 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mustache__loader_stack_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mustache__data_segment_s, align 8
  store %struct.mustache__loader_stack_s* %0, %struct.mustache__loader_stack_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache__loader_stack_s** %5, metadata !2701, metadata !DIExpression()), !dbg !2702
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2703, metadata !DIExpression()), !dbg !2704
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2705, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2707, metadata !DIExpression()), !dbg !2708
  %11 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2709
  %12 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %11, i32 0, i32 3, !dbg !2710
  %13 = load i8*, i8** %12, align 8, !dbg !2710
  store i8* %13, i8** %8, align 8, !dbg !2708
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2711, metadata !DIExpression()), !dbg !2712
  %14 = load i8*, i8** %8, align 8, !dbg !2713
  %15 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8, !dbg !2714
  %16 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %15, i32 0, i32 0, !dbg !2715
  %17 = load %struct.mustache_s*, %struct.mustache_s** %16, align 8, !dbg !2715
  %18 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %17, i32 0, i32 0, !dbg !2716
  %19 = bitcast %union.anon* %18 to %struct.anon*, !dbg !2717
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1, !dbg !2718
  %21 = load i32, i32* %20, align 4, !dbg !2718
  %22 = zext i32 %21 to i64, !dbg !2719
  %23 = getelementptr inbounds i8, i8* %14, i64 %22, !dbg !2719
  store i8* %23, i8** %9, align 8, !dbg !2712
  br label %24, !dbg !2720

24:                                               ; preds = %45, %3
  %25 = load i8*, i8** %8, align 8, !dbg !2721
  %26 = load i8*, i8** %9, align 8, !dbg !2722
  %27 = icmp ult i8* %25, %26, !dbg !2723
  br i1 %27, label %28, label %51, !dbg !2720

28:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.mustache__data_segment_s* %10, metadata !2724, metadata !DIExpression()), !dbg !2726
  %29 = load i8*, i8** %8, align 8, !dbg !2727
  call void @mustache__data_segment_read(%struct.mustache__data_segment_s* sret %10, i8* %29), !dbg !2728
  %30 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %10, i32 0, i32 3, !dbg !2729
  %31 = load i16, i16* %30, align 8, !dbg !2729
  %32 = zext i16 %31 to i64, !dbg !2731
  %33 = load i64, i64* %7, align 8, !dbg !2732
  %34 = icmp eq i64 %32, %33, !dbg !2733
  br i1 %34, label %35, label %45, !dbg !2734

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %10, i32 0, i32 0, !dbg !2735
  %37 = load i8*, i8** %36, align 8, !dbg !2735
  %38 = load i8*, i8** %6, align 8, !dbg !2736
  %39 = load i64, i64* %7, align 8, !dbg !2737
  %40 = call i32 @memcmp(i8* %37, i8* %38, i64 %39) #11, !dbg !2738
  %41 = icmp ne i32 %40, 0, !dbg !2738
  br i1 %41, label %45, label %42, !dbg !2739

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %10, i32 0, i32 1, !dbg !2740
  %44 = load i32, i32* %43, align 8, !dbg !2740
  store i32 %44, i32* %4, align 4, !dbg !2741
  br label %52, !dbg !2741

45:                                               ; preds = %35, %28
  %46 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %10, i32 0, i32 2, !dbg !2742
  %47 = load i32, i32* %46, align 4, !dbg !2742
  %48 = load i8*, i8** %8, align 8, !dbg !2743
  %49 = zext i32 %47 to i64, !dbg !2743
  %50 = getelementptr inbounds i8, i8* %48, i64 %49, !dbg !2743
  store i8* %50, i8** %8, align 8, !dbg !2743
  br label %24, !dbg !2720, !llvm.loop !2744

51:                                               ; preds = %24
  store i32 -1, i32* %4, align 4, !dbg !2746
  br label %52, !dbg !2746

52:                                               ; preds = %51, %42
  %53 = load i32, i32* %4, align 4, !dbg !2747
  ret i32 %53, !dbg !2747
}

declare dso_local i32 @open(i8*, i32, ...) #5

declare dso_local i64 @pread(i32, i8*, i64, i64) #5

declare dso_local i32 @close(i32) #5

; Function Attrs: nounwind readonly
declare dso_local i8* @memchr(i8*, i32, i64) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache_on_text(%struct.mustache_section_s* %0, i8* %1, i32 %2) #0 !dbg !2748 {
  %4 = alloca %struct.mustache_section_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache_section_s** %4, metadata !2752, metadata !DIExpression()), !dbg !2753
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2754, metadata !DIExpression()), !dbg !2755
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2756, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2758, metadata !DIExpression()), !dbg !2759
  %8 = load %struct.mustache_section_s*, %struct.mustache_section_s** %4, align 8, !dbg !2760
  %9 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %8, i32 0, i32 0, !dbg !2761
  %10 = load i8*, i8** %9, align 8, !dbg !2761
  %11 = ptrtoint i8* %10 to i64, !dbg !2762
  store i64 %11, i64* %7, align 8, !dbg !2759
  %12 = load i64, i64* %7, align 8, !dbg !2763
  %13 = load i8*, i8** %5, align 8, !dbg !2764
  %14 = load i32, i32* %6, align 4, !dbg !2765
  %15 = zext i32 %14 to i64, !dbg !2765
  %16 = call i64 @fiobj_str_write(i64 %12, i8* %13, i64 %15), !dbg !2766
  ret i32 0, !dbg !2767
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache_on_arg(%struct.mustache_section_s* %0, i8* %1, i32 %2, i8 zeroext %3) #0 !dbg !2768 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mustache_section_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca %struct.fio_str_info_s, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache_section_s** %6, metadata !2771, metadata !DIExpression()), !dbg !2772
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2773, metadata !DIExpression()), !dbg !2774
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2775, metadata !DIExpression()), !dbg !2776
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2777, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2779, metadata !DIExpression()), !dbg !2780
  %12 = load %struct.mustache_section_s*, %struct.mustache_section_s** %6, align 8, !dbg !2781
  %13 = load i8*, i8** %7, align 8, !dbg !2782
  %14 = load i32, i32* %8, align 4, !dbg !2783
  %15 = call i64 @fiobj_mustache_find_obj(%struct.mustache_section_s* %12, i8* %13, i32 %14), !dbg !2784
  store i64 %15, i64* %10, align 8, !dbg !2780
  %16 = load i64, i64* %10, align 8, !dbg !2785
  %17 = icmp ne i64 %16, 0, !dbg !2785
  br i1 %17, label %19, label %18, !dbg !2787

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4, !dbg !2788
  br label %34, !dbg !2788

19:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %11, metadata !2789, metadata !DIExpression()), !dbg !2790
  %20 = load i64, i64* %10, align 8, !dbg !2791
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %11, i64 %20), !dbg !2792
  %21 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 1, !dbg !2793
  %22 = load i64, i64* %21, align 8, !dbg !2793
  %23 = icmp ne i64 %22, 0, !dbg !2795
  br i1 %23, label %25, label %24, !dbg !2796

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4, !dbg !2797
  br label %34, !dbg !2797

25:                                               ; preds = %19
  %26 = load %struct.mustache_section_s*, %struct.mustache_section_s** %6, align 8, !dbg !2798
  %27 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 2, !dbg !2799
  %28 = load i8*, i8** %27, align 8, !dbg !2799
  %29 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 1, !dbg !2800
  %30 = load i64, i64* %29, align 8, !dbg !2800
  %31 = trunc i64 %30 to i32, !dbg !2801
  %32 = load i8, i8* %9, align 1, !dbg !2802
  %33 = call i32 @mustache_write_text(%struct.mustache_section_s* %26, i8* %28, i32 %31, i8 zeroext %32), !dbg !2803
  store i32 %33, i32* %5, align 4, !dbg !2804
  br label %34, !dbg !2804

34:                                               ; preds = %25, %24, %18
  %35 = load i32, i32* %5, align 4, !dbg !2805
  ret i32 %35, !dbg !2805
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache_on_section_test(%struct.mustache_section_s* %0, i8* %1, i32 %2, i8 zeroext %3) #0 !dbg !2806 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mustache_section_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache_section_s** %6, metadata !2809, metadata !DIExpression()), !dbg !2810
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2811, metadata !DIExpression()), !dbg !2812
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2813, metadata !DIExpression()), !dbg !2814
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2817, metadata !DIExpression()), !dbg !2818
  %11 = load %struct.mustache_section_s*, %struct.mustache_section_s** %6, align 8, !dbg !2819
  %12 = load i8*, i8** %7, align 8, !dbg !2820
  %13 = load i32, i32* %8, align 4, !dbg !2821
  %14 = call i64 @fiobj_mustache_find_obj(%struct.mustache_section_s* %11, i8* %12, i32 %13), !dbg !2822
  store i64 %14, i64* %10, align 8, !dbg !2818
  %15 = load i64, i64* %10, align 8, !dbg !2823
  %16 = icmp ne i64 %15, 0, !dbg !2823
  br i1 %16, label %17, label %21, !dbg !2825

17:                                               ; preds = %4
  %18 = load i64, i64* %10, align 8, !dbg !2826
  %19 = call i64 @fiobj_type_is(i64 %18, i8 zeroext 38), !dbg !2826
  %20 = icmp ne i64 %19, 0, !dbg !2826
  br i1 %20, label %21, label %22, !dbg !2827

21:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4, !dbg !2828
  br label %31, !dbg !2828

22:                                               ; preds = %17
  %23 = load i64, i64* %10, align 8, !dbg !2829
  %24 = call i64 @fiobj_type_is(i64 %23, i8 zeroext 41), !dbg !2829
  %25 = icmp ne i64 %24, 0, !dbg !2829
  br i1 %25, label %26, label %30, !dbg !2831

26:                                               ; preds = %22
  %27 = load i64, i64* %10, align 8, !dbg !2832
  %28 = call i64 @fiobj_ary_count(i64 %27), !dbg !2833
  %29 = trunc i64 %28 to i32, !dbg !2833
  store i32 %29, i32* %5, align 4, !dbg !2834
  br label %31, !dbg !2834

30:                                               ; preds = %22
  store i32 1, i32* %5, align 4, !dbg !2835
  br label %31, !dbg !2835

31:                                               ; preds = %30, %26, %21
  %32 = load i32, i32* %5, align 4, !dbg !2836
  ret i32 %32, !dbg !2836
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache_on_section_start(%struct.mustache_section_s* %0, i8* %1, i32 %2, i32 %3) #0 !dbg !2837 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mustache_section_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache_section_s** %6, metadata !2840, metadata !DIExpression()), !dbg !2841
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2842, metadata !DIExpression()), !dbg !2843
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2844, metadata !DIExpression()), !dbg !2845
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2846, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2848, metadata !DIExpression()), !dbg !2849
  %11 = load %struct.mustache_section_s*, %struct.mustache_section_s** %6, align 8, !dbg !2850
  %12 = load i8*, i8** %7, align 8, !dbg !2851
  %13 = load i32, i32* %8, align 4, !dbg !2852
  %14 = call i64 @fiobj_mustache_find_obj(%struct.mustache_section_s* %11, i8* %12, i32 %13), !dbg !2853
  store i64 %14, i64* %10, align 8, !dbg !2849
  %15 = load i64, i64* %10, align 8, !dbg !2854
  %16 = icmp ne i64 %15, 0, !dbg !2854
  br i1 %16, label %18, label %17, !dbg !2856

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4, !dbg !2857
  br label %36, !dbg !2857

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8, !dbg !2858
  %20 = call i64 @fiobj_type_is(i64 %19, i8 zeroext 41), !dbg !2858
  %21 = icmp ne i64 %20, 0, !dbg !2858
  br i1 %21, label %22, label %30, !dbg !2860

22:                                               ; preds = %18
  %23 = load i64, i64* %10, align 8, !dbg !2861
  %24 = load i32, i32* %9, align 4, !dbg !2862
  %25 = zext i32 %24 to i64, !dbg !2862
  %26 = call i64 @fiobj_ary_index(i64 %23, i64 %25), !dbg !2863
  %27 = inttoptr i64 %26 to i8*, !dbg !2864
  %28 = load %struct.mustache_section_s*, %struct.mustache_section_s** %6, align 8, !dbg !2865
  %29 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %28, i32 0, i32 1, !dbg !2866
  store i8* %27, i8** %29, align 8, !dbg !2867
  br label %35, !dbg !2865

30:                                               ; preds = %18
  %31 = load i64, i64* %10, align 8, !dbg !2868
  %32 = inttoptr i64 %31 to i8*, !dbg !2869
  %33 = load %struct.mustache_section_s*, %struct.mustache_section_s** %6, align 8, !dbg !2870
  %34 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %33, i32 0, i32 1, !dbg !2871
  store i8* %32, i8** %34, align 8, !dbg !2872
  br label %35

35:                                               ; preds = %30, %22
  store i32 0, i32* %5, align 4, !dbg !2873
  br label %36, !dbg !2873

36:                                               ; preds = %35, %17
  %37 = load i32, i32* %5, align 4, !dbg !2874
  ret i32 %37, !dbg !2874
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mustache_on_formatting_error(i8* %0, i8* %1) #0 !dbg !2875 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2878, metadata !DIExpression()), !dbg !2879
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2880, metadata !DIExpression()), !dbg !2881
  %5 = load i8*, i8** %3, align 8, !dbg !2882
  %6 = load i8*, i8** %4, align 8, !dbg !2883
  ret void, !dbg !2884
}

declare dso_local i64 @fiobj_str_write(i64, i8*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_mustache_find_obj(%struct.mustache_section_s* %0, i8* %1, i32 %2) #0 !dbg !2885 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mustache_section_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache_section_s** %5, metadata !2888, metadata !DIExpression()), !dbg !2889
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2890, metadata !DIExpression()), !dbg !2891
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2892, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2894, metadata !DIExpression()), !dbg !2895
  %12 = load %struct.mustache_section_s*, %struct.mustache_section_s** %5, align 8, !dbg !2896
  %13 = load i8*, i8** %6, align 8, !dbg !2897
  %14 = load i32, i32* %7, align 4, !dbg !2898
  %15 = call i64 @fiobj_mustache_find_obj_tree(%struct.mustache_section_s* %12, i8* %13, i32 %14), !dbg !2899
  store i64 %15, i64* %8, align 8, !dbg !2895
  %16 = load i64, i64* %8, align 8, !dbg !2900
  %17 = icmp ne i64 %16, 0, !dbg !2902
  br i1 %17, label %18, label %20, !dbg !2903

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8, !dbg !2904
  store i64 %19, i64* %4, align 8, !dbg !2905
  br label %119, !dbg !2905

20:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2906, metadata !DIExpression()), !dbg !2907
  store i32 0, i32* %9, align 4, !dbg !2907
  br label %21, !dbg !2908

21:                                               ; preds = %35, %20
  %22 = load i32, i32* %9, align 4, !dbg !2909
  %23 = load i32, i32* %7, align 4, !dbg !2910
  %24 = icmp ult i32 %22, %23, !dbg !2911
  br i1 %24, label %25, label %33, !dbg !2912

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8, !dbg !2913
  %27 = load i32, i32* %9, align 4, !dbg !2914
  %28 = zext i32 %27 to i64, !dbg !2913
  %29 = getelementptr inbounds i8, i8* %26, i64 %28, !dbg !2913
  %30 = load i8, i8* %29, align 1, !dbg !2913
  %31 = sext i8 %30 to i32, !dbg !2913
  %32 = icmp ne i32 %31, 46, !dbg !2915
  br label %33

33:                                               ; preds = %25, %21
  %34 = phi i1 [ false, %21 ], [ %32, %25 ], !dbg !2916
  br i1 %34, label %35, label %38, !dbg !2908

35:                                               ; preds = %33
  %36 = load i32, i32* %9, align 4, !dbg !2917
  %37 = add i32 %36, 1, !dbg !2917
  store i32 %37, i32* %9, align 4, !dbg !2917
  br label %21, !dbg !2908, !llvm.loop !2918

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4, !dbg !2920
  %40 = load i32, i32* %7, align 4, !dbg !2922
  %41 = icmp eq i32 %39, %40, !dbg !2923
  br i1 %41, label %42, label %43, !dbg !2924

42:                                               ; preds = %38
  store i64 0, i64* %4, align 8, !dbg !2925
  br label %119, !dbg !2925

43:                                               ; preds = %38
  %44 = load %struct.mustache_section_s*, %struct.mustache_section_s** %5, align 8, !dbg !2926
  %45 = load i8*, i8** %6, align 8, !dbg !2927
  %46 = load i32, i32* %9, align 4, !dbg !2928
  %47 = call i64 @fiobj_mustache_find_obj_tree(%struct.mustache_section_s* %44, i8* %45, i32 %46), !dbg !2929
  store i64 %47, i64* %8, align 8, !dbg !2930
  %48 = load i64, i64* %8, align 8, !dbg !2931
  %49 = icmp ne i64 %48, 0, !dbg !2931
  br i1 %49, label %51, label %50, !dbg !2933

50:                                               ; preds = %43
  store i64 0, i64* %4, align 8, !dbg !2934
  br label %119, !dbg !2934

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4, !dbg !2936
  %53 = add i32 %52, 1, !dbg !2936
  store i32 %53, i32* %9, align 4, !dbg !2936
  br label %54, !dbg !2937

54:                                               ; preds = %116, %51
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2938, metadata !DIExpression()), !dbg !2942
  %55 = call i64 @fiobj_str_tmp(), !dbg !2943
  store i64 %55, i64* %10, align 8, !dbg !2942
  %56 = load i64, i64* %10, align 8, !dbg !2944
  %57 = load i8*, i8** %6, align 8, !dbg !2945
  %58 = load i32, i32* %9, align 4, !dbg !2946
  %59 = zext i32 %58 to i64, !dbg !2947
  %60 = getelementptr inbounds i8, i8* %57, i64 %59, !dbg !2947
  %61 = load i32, i32* %7, align 4, !dbg !2948
  %62 = load i32, i32* %9, align 4, !dbg !2949
  %63 = sub i32 %61, %62, !dbg !2950
  %64 = zext i32 %63 to i64, !dbg !2948
  %65 = call i64 @fiobj_str_write(i64 %56, i8* %60, i64 %64), !dbg !2951
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2952, metadata !DIExpression()), !dbg !2953
  %66 = load i64, i64* %8, align 8, !dbg !2954
  %67 = load i64, i64* %10, align 8, !dbg !2955
  %68 = call i64 @fiobj_mustache_find_obj_absolute(i64 %66, i64 %67), !dbg !2956
  store i64 %68, i64* %11, align 8, !dbg !2953
  %69 = load i64, i64* %11, align 8, !dbg !2957
  %70 = icmp ne i64 %69, 0, !dbg !2959
  br i1 %70, label %71, label %73, !dbg !2960

71:                                               ; preds = %54
  %72 = load i64, i64* %11, align 8, !dbg !2961
  store i64 %72, i64* %4, align 8, !dbg !2962
  br label %119, !dbg !2962

73:                                               ; preds = %54
  %74 = load i32, i32* %9, align 4, !dbg !2963
  %75 = load i8*, i8** %6, align 8, !dbg !2964
  %76 = zext i32 %74 to i64, !dbg !2964
  %77 = getelementptr inbounds i8, i8* %75, i64 %76, !dbg !2964
  store i8* %77, i8** %6, align 8, !dbg !2964
  %78 = load i32, i32* %9, align 4, !dbg !2965
  %79 = load i32, i32* %7, align 4, !dbg !2966
  %80 = sub i32 %79, %78, !dbg !2966
  store i32 %80, i32* %7, align 4, !dbg !2966
  store i32 0, i32* %9, align 4, !dbg !2967
  br label %81, !dbg !2968

81:                                               ; preds = %95, %73
  %82 = load i32, i32* %9, align 4, !dbg !2969
  %83 = load i32, i32* %7, align 4, !dbg !2970
  %84 = icmp ult i32 %82, %83, !dbg !2971
  br i1 %84, label %85, label %93, !dbg !2972

85:                                               ; preds = %81
  %86 = load i8*, i8** %6, align 8, !dbg !2973
  %87 = load i32, i32* %9, align 4, !dbg !2974
  %88 = zext i32 %87 to i64, !dbg !2973
  %89 = getelementptr inbounds i8, i8* %86, i64 %88, !dbg !2973
  %90 = load i8, i8* %89, align 1, !dbg !2973
  %91 = sext i8 %90 to i32, !dbg !2973
  %92 = icmp ne i32 %91, 46, !dbg !2975
  br label %93

93:                                               ; preds = %85, %81
  %94 = phi i1 [ false, %81 ], [ %92, %85 ], !dbg !2976
  br i1 %94, label %95, label %98, !dbg !2968

95:                                               ; preds = %93
  %96 = load i32, i32* %9, align 4, !dbg !2977
  %97 = add i32 %96, 1, !dbg !2977
  store i32 %97, i32* %9, align 4, !dbg !2977
  br label %81, !dbg !2968, !llvm.loop !2978

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4, !dbg !2980
  %100 = load i32, i32* %7, align 4, !dbg !2982
  %101 = icmp eq i32 %99, %100, !dbg !2983
  br i1 %101, label %102, label %103, !dbg !2984

102:                                              ; preds = %98
  store i64 0, i64* %4, align 8, !dbg !2985
  br label %119, !dbg !2985

103:                                              ; preds = %98
  %104 = call i64 @fiobj_str_tmp(), !dbg !2987
  store i64 %104, i64* %10, align 8, !dbg !2988
  %105 = load i64, i64* %10, align 8, !dbg !2989
  %106 = load i8*, i8** %6, align 8, !dbg !2990
  %107 = load i32, i32* %9, align 4, !dbg !2991
  %108 = zext i32 %107 to i64, !dbg !2991
  %109 = call i64 @fiobj_str_write(i64 %105, i8* %106, i64 %108), !dbg !2992
  %110 = load i64, i64* %8, align 8, !dbg !2993
  %111 = load i64, i64* %10, align 8, !dbg !2994
  %112 = call i64 @fiobj_mustache_find_obj_absolute(i64 %110, i64 %111), !dbg !2995
  store i64 %112, i64* %8, align 8, !dbg !2996
  %113 = load i64, i64* %8, align 8, !dbg !2997
  %114 = icmp eq i64 %113, 0, !dbg !2999
  br i1 %114, label %115, label %116, !dbg !3000

115:                                              ; preds = %103
  store i64 0, i64* %4, align 8, !dbg !3001
  br label %119, !dbg !3001

116:                                              ; preds = %103
  %117 = load i32, i32* %9, align 4, !dbg !3002
  %118 = add i32 %117, 1, !dbg !3002
  store i32 %118, i32* %9, align 4, !dbg !3002
  br label %54, !dbg !3003, !llvm.loop !3004

119:                                              ; preds = %115, %102, %71, %50, %42, %18
  %120 = load i64, i64* %4, align 8, !dbg !3007
  ret i64 %120, !dbg !3007
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_obj2cstr(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !3008 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3012, metadata !DIExpression()), !dbg !3013
  %4 = load i64, i64* %3, align 8, !dbg !3014
  %5 = icmp ne i64 %4, 0, !dbg !3014
  br i1 %5, label %8, label %6, !dbg !3016

6:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !3017, metadata !DIExpression()), !dbg !3019
  %7 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !3019
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret to i8*), i64 24, i1 false), !dbg !3019
  br label %37, !dbg !3020

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8, !dbg !3021
  %10 = and i64 %9, 1, !dbg !3023
  %11 = icmp ne i64 %10, 0, !dbg !3023
  br i1 %11, label %12, label %15, !dbg !3024

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8, !dbg !3025
  %14 = ashr i64 %13, 1, !dbg !3026
  call void @fio_ltocstr(%struct.fio_str_info_s* sret %0, i64 %14), !dbg !3027
  br label %37, !dbg !3028

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8, !dbg !3029
  %17 = and i64 %16, 6, !dbg !3031
  %18 = icmp eq i64 %17, 6, !dbg !3032
  br i1 %18, label %19, label %31, !dbg !3033

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8, !dbg !3034
  %21 = trunc i64 %20 to i8, !dbg !3036
  %22 = zext i8 %21 to i32, !dbg !3036
  switch i32 %22, label %29 [
    i32 6, label %23
    i32 38, label %25
    i32 22, label %27
  ], !dbg !3037

23:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !3038, metadata !DIExpression()), !dbg !3041
  %24 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !3041
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.9 to i8*), i64 24, i1 false), !dbg !3041
  br label %37, !dbg !3042

25:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !3043, metadata !DIExpression()), !dbg !3045
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !3045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.11 to i8*), i64 24, i1 false), !dbg !3045
  br label %37, !dbg !3046

27:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !3047, metadata !DIExpression()), !dbg !3049
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !3049
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.13 to i8*), i64 24, i1 false), !dbg !3049
  br label %37, !dbg !3050

29:                                               ; preds = %19
  br label %30, !dbg !3051

30:                                               ; preds = %29
  br label %31, !dbg !3052

31:                                               ; preds = %30, %15
  %32 = load i64, i64* %3, align 8, !dbg !3053
  %33 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %32), !dbg !3053
  %34 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %33, i32 0, i32 6, !dbg !3054
  %35 = load void (%struct.fio_str_info_s*, i64)*, void (%struct.fio_str_info_s*, i64)** %34, align 8, !dbg !3054
  %36 = load i64, i64* %3, align 8, !dbg !3055
  call void %35(%struct.fio_str_info_s* sret %0, i64 %36), !dbg !3053
  br label %37, !dbg !3056

37:                                               ; preds = %31, %27, %25, %23, %12, %6
  ret void, !dbg !3057
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache_write_text(%struct.mustache_section_s* %0, i8* %1, i32 %2, i8 zeroext %3) #0 !dbg !3058 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mustache_section_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca %struct.mustache__builder_stack_s*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache_section_s** %6, metadata !3061, metadata !DIExpression()), !dbg !3062
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3063, metadata !DIExpression()), !dbg !3064
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3065, metadata !DIExpression()), !dbg !3066
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !3067, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.declare(metadata %struct.mustache__builder_stack_s** %10, metadata !3069, metadata !DIExpression()), !dbg !3070
  %13 = load %struct.mustache_section_s*, %struct.mustache_section_s** %6, align 8, !dbg !3071
  %14 = call %struct.mustache__builder_stack_s* @mustache___section2stack(%struct.mustache_section_s* %13), !dbg !3072
  store %struct.mustache__builder_stack_s* %14, %struct.mustache__builder_stack_s** %10, align 8, !dbg !3070
  %15 = load i8, i8* %9, align 1, !dbg !3073
  %16 = icmp ne i8 %15, 0, !dbg !3073
  br i1 %16, label %17, label %22, !dbg !3075

17:                                               ; preds = %4
  %18 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %10, align 8, !dbg !3076
  %19 = load i8*, i8** %7, align 8, !dbg !3077
  %20 = load i32, i32* %8, align 4, !dbg !3078
  %21 = call i32 @mustache__write_escaped(%struct.mustache__builder_stack_s* %18, i8* %19, i32 %20), !dbg !3079
  store i32 %21, i32* %5, align 4, !dbg !3080
  br label %89, !dbg !3080

22:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3081, metadata !DIExpression()), !dbg !3082
  %23 = load i8*, i8** %7, align 8, !dbg !3083
  %24 = load i32, i32* %8, align 4, !dbg !3084
  %25 = zext i32 %24 to i64, !dbg !3084
  %26 = call i8* @memchr(i8* %23, i32 10, i64 %25) #11, !dbg !3085
  store i8* %26, i8** %11, align 8, !dbg !3082
  br label %27, !dbg !3086

27:                                               ; preds = %70, %22
  %28 = load i32, i32* %8, align 4, !dbg !3087
  %29 = icmp ne i32 %28, 0, !dbg !3087
  br i1 %29, label %30, label %33, !dbg !3088

30:                                               ; preds = %27
  %31 = load i8*, i8** %11, align 8, !dbg !3089
  %32 = icmp ne i8* %31, null, !dbg !3088
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ false, %27 ], [ %32, %30 ], !dbg !3090
  br i1 %34, label %35, label %71, !dbg !3086

35:                                               ; preds = %33
  %36 = load i8*, i8** %11, align 8, !dbg !3091
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !3091
  store i8* %37, i8** %11, align 8, !dbg !3091
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3093, metadata !DIExpression()), !dbg !3095
  %38 = load i8*, i8** %11, align 8, !dbg !3096
  %39 = load i8*, i8** %7, align 8, !dbg !3097
  %40 = ptrtoint i8* %38 to i64, !dbg !3098
  %41 = ptrtoint i8* %39 to i64, !dbg !3098
  %42 = sub i64 %40, %41, !dbg !3098
  %43 = trunc i64 %42 to i32, !dbg !3096
  store i32 %43, i32* %12, align 4, !dbg !3095
  %44 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %10, align 8, !dbg !3099
  %45 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %44, i32 0, i32 4, !dbg !3101
  %46 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %10, align 8, !dbg !3102
  %47 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %46, i32 0, i32 3, !dbg !3103
  %48 = load i16, i16* %47, align 8, !dbg !3103
  %49 = zext i16 %48 to i64, !dbg !3099
  %50 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %45, i64 0, i64 %49, !dbg !3099
  %51 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %50, i32 0, i32 0, !dbg !3104
  %52 = load i8*, i8** %7, align 8, !dbg !3105
  %53 = load i32, i32* %12, align 4, !dbg !3106
  %54 = call i32 @mustache_on_text(%struct.mustache_section_s* %51, i8* %52, i32 %53), !dbg !3107
  %55 = icmp eq i32 %54, -1, !dbg !3108
  br i1 %55, label %56, label %57, !dbg !3109

56:                                               ; preds = %35
  store i32 -1, i32* %5, align 4, !dbg !3110
  br label %89, !dbg !3110

57:                                               ; preds = %35
  %58 = load i8*, i8** %11, align 8, !dbg !3111
  store i8* %58, i8** %7, align 8, !dbg !3112
  %59 = load i32, i32* %12, align 4, !dbg !3113
  %60 = load i32, i32* %8, align 4, !dbg !3114
  %61 = sub i32 %60, %59, !dbg !3114
  store i32 %61, i32* %8, align 4, !dbg !3114
  %62 = load i8*, i8** %7, align 8, !dbg !3115
  %63 = load i32, i32* %8, align 4, !dbg !3116
  %64 = zext i32 %63 to i64, !dbg !3116
  %65 = call i8* @memchr(i8* %62, i32 10, i64 %64) #11, !dbg !3117
  store i8* %65, i8** %11, align 8, !dbg !3118
  %66 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %10, align 8, !dbg !3119
  %67 = call i32 @mustache__write_padding(%struct.mustache__builder_stack_s* %66), !dbg !3121
  %68 = icmp eq i32 %67, -1, !dbg !3122
  br i1 %68, label %69, label %70, !dbg !3123

69:                                               ; preds = %57
  store i32 -1, i32* %5, align 4, !dbg !3124
  br label %89, !dbg !3124

70:                                               ; preds = %57
  br label %27, !dbg !3086, !llvm.loop !3125

71:                                               ; preds = %33
  %72 = load i32, i32* %8, align 4, !dbg !3127
  %73 = icmp ne i32 %72, 0, !dbg !3127
  br i1 %73, label %74, label %88, !dbg !3129

74:                                               ; preds = %71
  %75 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %10, align 8, !dbg !3130
  %76 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %75, i32 0, i32 4, !dbg !3131
  %77 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %10, align 8, !dbg !3132
  %78 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %77, i32 0, i32 3, !dbg !3133
  %79 = load i16, i16* %78, align 8, !dbg !3133
  %80 = zext i16 %79 to i64, !dbg !3130
  %81 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %76, i64 0, i64 %80, !dbg !3130
  %82 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %81, i32 0, i32 0, !dbg !3134
  %83 = load i8*, i8** %7, align 8, !dbg !3135
  %84 = load i32, i32* %8, align 4, !dbg !3136
  %85 = call i32 @mustache_on_text(%struct.mustache_section_s* %82, i8* %83, i32 %84), !dbg !3137
  %86 = icmp eq i32 %85, -1, !dbg !3138
  br i1 %86, label %87, label %88, !dbg !3139

87:                                               ; preds = %74
  store i32 -1, i32* %5, align 4, !dbg !3140
  br label %89, !dbg !3140

88:                                               ; preds = %74, %71
  store i32 0, i32* %5, align 4, !dbg !3141
  br label %89, !dbg !3141

89:                                               ; preds = %88, %87, %69, %56, %17
  %90 = load i32, i32* %5, align 4, !dbg !3142
  ret i32 %90, !dbg !3142
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_mustache_find_obj_tree(%struct.mustache_section_s* %0, i8* %1, i32 %2) #0 !dbg !3143 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mustache_section_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache_section_s** %5, metadata !3144, metadata !DIExpression()), !dbg !3145
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3146, metadata !DIExpression()), !dbg !3147
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3148, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3150, metadata !DIExpression()), !dbg !3151
  %10 = call i64 @fiobj_str_tmp(), !dbg !3152
  store i64 %10, i64* %8, align 8, !dbg !3151
  %11 = load i64, i64* %8, align 8, !dbg !3153
  %12 = load i8*, i8** %6, align 8, !dbg !3154
  %13 = load i32, i32* %7, align 4, !dbg !3155
  %14 = zext i32 %13 to i64, !dbg !3155
  %15 = call i64 @fiobj_str_write(i64 %11, i8* %12, i64 %14), !dbg !3156
  br label %16, !dbg !3157

16:                                               ; preds = %28, %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3158, metadata !DIExpression()), !dbg !3160
  %17 = load %struct.mustache_section_s*, %struct.mustache_section_s** %5, align 8, !dbg !3161
  %18 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %17, i32 0, i32 1, !dbg !3162
  %19 = load i8*, i8** %18, align 8, !dbg !3162
  %20 = ptrtoint i8* %19 to i64, !dbg !3163
  %21 = load i64, i64* %8, align 8, !dbg !3164
  %22 = call i64 @fiobj_mustache_find_obj_absolute(i64 %20, i64 %21), !dbg !3165
  store i64 %22, i64* %9, align 8, !dbg !3160
  %23 = load i64, i64* %9, align 8, !dbg !3166
  %24 = icmp ne i64 %23, 0, !dbg !3168
  br i1 %24, label %25, label %27, !dbg !3169

25:                                               ; preds = %16
  %26 = load i64, i64* %9, align 8, !dbg !3170
  store i64 %26, i64* %4, align 8, !dbg !3172
  br label %33, !dbg !3172

27:                                               ; preds = %16
  br label %28, !dbg !3173

28:                                               ; preds = %27
  %29 = load %struct.mustache_section_s*, %struct.mustache_section_s** %5, align 8, !dbg !3174
  %30 = call %struct.mustache_section_s* @mustache_section_parent(%struct.mustache_section_s* %29), !dbg !3175
  store %struct.mustache_section_s* %30, %struct.mustache_section_s** %5, align 8, !dbg !3176
  %31 = icmp ne %struct.mustache_section_s* %30, null, !dbg !3173
  br i1 %31, label %16, label %32, !dbg !3173, !llvm.loop !3177

32:                                               ; preds = %28
  store i64 0, i64* %4, align 8, !dbg !3179
  br label %33, !dbg !3179

33:                                               ; preds = %32, %25
  %34 = load i64, i64* %4, align 8, !dbg !3180
  ret i64 %34, !dbg !3180
}

declare dso_local i64 @fiobj_str_tmp() #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_mustache_find_obj_absolute(i64 %0, i64 %1) #0 !dbg !3181 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3184, metadata !DIExpression()), !dbg !3185
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3186, metadata !DIExpression()), !dbg !3187
  %7 = load i64, i64* %4, align 8, !dbg !3188
  %8 = call i64 @fiobj_type_is(i64 %7, i8 zeroext 42), !dbg !3188
  %9 = icmp ne i64 %8, 0, !dbg !3188
  br i1 %9, label %11, label %10, !dbg !3190

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8, !dbg !3191
  br label %16, !dbg !3191

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3192, metadata !DIExpression()), !dbg !3193
  store i64 0, i64* %6, align 8, !dbg !3193
  %12 = load i64, i64* %4, align 8, !dbg !3194
  %13 = load i64, i64* %5, align 8, !dbg !3195
  %14 = call i64 @fiobj_hash_get(i64 %12, i64 %13), !dbg !3196
  store i64 %14, i64* %6, align 8, !dbg !3197
  %15 = load i64, i64* %6, align 8, !dbg !3198
  store i64 %15, i64* %3, align 8, !dbg !3199
  br label %16, !dbg !3199

16:                                               ; preds = %11, %10
  %17 = load i64, i64* %3, align 8, !dbg !3200
  ret i64 %17, !dbg !3200
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mustache_section_s* @mustache_section_parent(%struct.mustache_section_s* %0) #0 !dbg !3201 {
  %2 = alloca %struct.mustache_section_s*, align 8
  %3 = alloca %struct.mustache_section_s*, align 8
  %4 = alloca %struct.mustache_section_s, align 8
  %5 = alloca %struct.mustache__section_stack_frame_s*, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache_section_s** %3, metadata !3204, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.declare(metadata %struct.mustache_section_s* %4, metadata !3206, metadata !DIExpression()), !dbg !3207
  %6 = load %struct.mustache_section_s*, %struct.mustache_section_s** %3, align 8, !dbg !3208
  %7 = bitcast %struct.mustache_section_s* %4 to i8*, !dbg !3209
  %8 = bitcast %struct.mustache_section_s* %6 to i8*, !dbg !3209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false), !dbg !3209
  call void @llvm.dbg.declare(metadata %struct.mustache__section_stack_frame_s** %5, metadata !3210, metadata !DIExpression()), !dbg !3211
  %9 = load %struct.mustache_section_s*, %struct.mustache_section_s** %3, align 8, !dbg !3212
  %10 = bitcast %struct.mustache_section_s* %9 to %struct.mustache__section_stack_frame_s*, !dbg !3213
  store %struct.mustache__section_stack_frame_s* %10, %struct.mustache__section_stack_frame_s** %5, align 8, !dbg !3211
  br label %11, !dbg !3214

11:                                               ; preds = %37, %1
  %12 = load %struct.mustache__section_stack_frame_s*, %struct.mustache__section_stack_frame_s** %5, align 8, !dbg !3215
  %13 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %12, i32 0, i32 5, !dbg !3216
  %14 = load i16, i16* %13, align 8, !dbg !3216
  %15 = icmp ne i16 %14, 0, !dbg !3214
  br i1 %15, label %16, label %38, !dbg !3214

16:                                               ; preds = %11
  %17 = load %struct.mustache__section_stack_frame_s*, %struct.mustache__section_stack_frame_s** %5, align 8, !dbg !3217
  %18 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %17, i32 -1, !dbg !3217
  store %struct.mustache__section_stack_frame_s* %18, %struct.mustache__section_stack_frame_s** %5, align 8, !dbg !3217
  %19 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %4, i32 0, i32 0, !dbg !3219
  %20 = load i8*, i8** %19, align 8, !dbg !3219
  %21 = load %struct.mustache__section_stack_frame_s*, %struct.mustache__section_stack_frame_s** %5, align 8, !dbg !3221
  %22 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %21, i32 0, i32 0, !dbg !3222
  %23 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %22, i32 0, i32 0, !dbg !3223
  %24 = load i8*, i8** %23, align 8, !dbg !3223
  %25 = icmp ne i8* %20, %24, !dbg !3224
  br i1 %25, label %34, label %26, !dbg !3225

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %4, i32 0, i32 1, !dbg !3226
  %28 = load i8*, i8** %27, align 8, !dbg !3226
  %29 = load %struct.mustache__section_stack_frame_s*, %struct.mustache__section_stack_frame_s** %5, align 8, !dbg !3227
  %30 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %29, i32 0, i32 0, !dbg !3228
  %31 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %30, i32 0, i32 1, !dbg !3229
  %32 = load i8*, i8** %31, align 8, !dbg !3229
  %33 = icmp ne i8* %28, %32, !dbg !3230
  br i1 %33, label %34, label %37, !dbg !3231

34:                                               ; preds = %26, %16
  %35 = load %struct.mustache__section_stack_frame_s*, %struct.mustache__section_stack_frame_s** %5, align 8, !dbg !3232
  %36 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %35, i32 0, i32 0, !dbg !3233
  store %struct.mustache_section_s* %36, %struct.mustache_section_s** %2, align 8, !dbg !3234
  br label %39, !dbg !3234

37:                                               ; preds = %26
  br label %11, !dbg !3214, !llvm.loop !3235

38:                                               ; preds = %11
  store %struct.mustache_section_s* null, %struct.mustache_section_s** %2, align 8, !dbg !3237
  br label %39, !dbg !3237

39:                                               ; preds = %38, %34
  %40 = load %struct.mustache_section_s*, %struct.mustache_section_s** %2, align 8, !dbg !3238
  ret %struct.mustache_section_s* %40, !dbg !3238
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_type_is(i64 %0, i8 zeroext %1) #0 !dbg !3239 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3242, metadata !DIExpression()), !dbg !3243
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3244, metadata !DIExpression()), !dbg !3245
  %6 = load i8, i8* %5, align 1, !dbg !3246
  %7 = zext i8 %6 to i32, !dbg !3246
  switch i32 %7, label %96 [
    i32 1, label %8
    i32 6, label %23
    i32 22, label %34
    i32 38, label %40
    i32 40, label %46
    i32 42, label %59
    i32 39, label %71
    i32 41, label %71
    i32 43, label %71
    i32 44, label %71
  ], !dbg !3247

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !3248
  %10 = and i64 %9, 1, !dbg !3250
  %11 = icmp ne i64 %10, 0, !dbg !3250
  br i1 %11, label %19, label %12, !dbg !3251

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8, !dbg !3252
  %14 = inttoptr i64 %13 to i8*, !dbg !3253
  %15 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !3254
  %16 = load i8, i8* %15, align 1, !dbg !3254
  %17 = zext i8 %16 to i32, !dbg !3254
  %18 = icmp eq i32 %17, 1, !dbg !3255
  br label %19, !dbg !3251

19:                                               ; preds = %12, %8
  %20 = phi i1 [ true, %8 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32, !dbg !3251
  %22 = sext i32 %21 to i64, !dbg !3256
  store i64 %22, i64* %3, align 8, !dbg !3257
  br label %121, !dbg !3257

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8, !dbg !3258
  %25 = icmp ne i64 %24, 0, !dbg !3258
  br i1 %25, label %26, label %30, !dbg !3259

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8, !dbg !3260
  %28 = call i64 @fiobj_null(), !dbg !3261
  %29 = icmp eq i64 %27, %28, !dbg !3262
  br label %30, !dbg !3259

30:                                               ; preds = %26, %23
  %31 = phi i1 [ true, %23 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32, !dbg !3259
  %33 = sext i32 %32 to i64, !dbg !3263
  store i64 %33, i64* %3, align 8, !dbg !3264
  br label %121, !dbg !3264

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8, !dbg !3265
  %36 = call i64 @fiobj_true(), !dbg !3266
  %37 = icmp eq i64 %35, %36, !dbg !3267
  %38 = zext i1 %37 to i32, !dbg !3267
  %39 = sext i32 %38 to i64, !dbg !3265
  store i64 %39, i64* %3, align 8, !dbg !3268
  br label %121, !dbg !3268

40:                                               ; preds = %2
  %41 = load i64, i64* %4, align 8, !dbg !3269
  %42 = call i64 @fiobj_false(), !dbg !3270
  %43 = icmp eq i64 %41, %42, !dbg !3271
  %44 = zext i1 %43 to i32, !dbg !3271
  %45 = sext i32 %44 to i64, !dbg !3269
  store i64 %45, i64* %3, align 8, !dbg !3272
  br label %121, !dbg !3272

46:                                               ; preds = %2
  %47 = load i64, i64* %4, align 8, !dbg !3273
  %48 = and i64 %47, 1, !dbg !3274
  %49 = icmp eq i64 %48, 0, !dbg !3275
  br i1 %49, label %50, label %54, !dbg !3276

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8, !dbg !3277
  %52 = and i64 %51, 6, !dbg !3278
  %53 = icmp eq i64 %52, 2, !dbg !3279
  br i1 %53, label %55, label %54, !dbg !3280

54:                                               ; preds = %50, %46
  br label %55, !dbg !3280

55:                                               ; preds = %54, %50
  %56 = phi i1 [ true, %50 ], [ false, %54 ]
  %57 = zext i1 %56 to i32, !dbg !3280
  %58 = sext i32 %57 to i64, !dbg !3281
  store i64 %58, i64* %3, align 8, !dbg !3282
  br label %121, !dbg !3282

59:                                               ; preds = %2
  %60 = load i64, i64* %4, align 8, !dbg !3283
  %61 = and i64 %60, 1, !dbg !3286
  %62 = icmp eq i64 %61, 0, !dbg !3287
  br i1 %62, label %63, label %67, !dbg !3288

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8, !dbg !3289
  %65 = and i64 %64, 6, !dbg !3290
  %66 = icmp eq i64 %65, 4, !dbg !3291
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ], !dbg !3292
  %69 = zext i1 %68 to i32, !dbg !3288
  %70 = sext i32 %69 to i64, !dbg !3293
  store i64 %70, i64* %3, align 8, !dbg !3294
  br label %121, !dbg !3294

71:                                               ; preds = %2, %2, %2, %2
  %72 = load i64, i64* %4, align 8, !dbg !3295
  %73 = icmp ne i64 %72, 0, !dbg !3295
  br i1 %73, label %74, label %92, !dbg !3295

74:                                               ; preds = %71
  %75 = load i64, i64* %4, align 8, !dbg !3295
  %76 = and i64 %75, 1, !dbg !3295
  %77 = icmp eq i64 %76, 0, !dbg !3295
  br i1 %77, label %78, label %92, !dbg !3295

78:                                               ; preds = %74
  %79 = load i64, i64* %4, align 8, !dbg !3295
  %80 = and i64 %79, 6, !dbg !3295
  %81 = icmp ne i64 %80, 6, !dbg !3295
  br i1 %81, label %82, label %92, !dbg !3296

82:                                               ; preds = %78
  %83 = load i64, i64* %4, align 8, !dbg !3297
  %84 = and i64 %83, -8, !dbg !3297
  %85 = inttoptr i64 %84 to i8*, !dbg !3297
  %86 = getelementptr inbounds i8, i8* %85, i64 0, !dbg !3298
  %87 = load i8, i8* %86, align 1, !dbg !3298
  %88 = zext i8 %87 to i32, !dbg !3298
  %89 = load i8, i8* %5, align 1, !dbg !3299
  %90 = zext i8 %89 to i32, !dbg !3299
  %91 = icmp eq i32 %88, %90, !dbg !3300
  br label %92

92:                                               ; preds = %82, %78, %74, %71
  %93 = phi i1 [ false, %78 ], [ false, %74 ], [ false, %71 ], [ %91, %82 ], !dbg !3301
  %94 = zext i1 %93 to i32, !dbg !3296
  %95 = sext i32 %94 to i64, !dbg !3295
  store i64 %95, i64* %3, align 8, !dbg !3302
  br label %121, !dbg !3302

96:                                               ; preds = %2
  %97 = load i64, i64* %4, align 8, !dbg !3303
  %98 = icmp ne i64 %97, 0, !dbg !3303
  br i1 %98, label %99, label %117, !dbg !3303

99:                                               ; preds = %96
  %100 = load i64, i64* %4, align 8, !dbg !3303
  %101 = and i64 %100, 1, !dbg !3303
  %102 = icmp eq i64 %101, 0, !dbg !3303
  br i1 %102, label %103, label %117, !dbg !3303

103:                                              ; preds = %99
  %104 = load i64, i64* %4, align 8, !dbg !3303
  %105 = and i64 %104, 6, !dbg !3303
  %106 = icmp ne i64 %105, 6, !dbg !3303
  br i1 %106, label %107, label %117, !dbg !3304

107:                                              ; preds = %103
  %108 = load i64, i64* %4, align 8, !dbg !3305
  %109 = and i64 %108, -8, !dbg !3305
  %110 = inttoptr i64 %109 to i8*, !dbg !3305
  %111 = getelementptr inbounds i8, i8* %110, i64 0, !dbg !3306
  %112 = load i8, i8* %111, align 1, !dbg !3306
  %113 = zext i8 %112 to i32, !dbg !3306
  %114 = load i8, i8* %5, align 1, !dbg !3307
  %115 = zext i8 %114 to i32, !dbg !3307
  %116 = icmp eq i32 %113, %115, !dbg !3308
  br label %117

117:                                              ; preds = %107, %103, %99, %96
  %118 = phi i1 [ false, %103 ], [ false, %99 ], [ false, %96 ], [ %116, %107 ], !dbg !3309
  %119 = zext i1 %118 to i32, !dbg !3304
  %120 = sext i32 %119 to i64, !dbg !3303
  store i64 %120, i64* %3, align 8, !dbg !3310
  br label %121, !dbg !3310

121:                                              ; preds = %117, %92, %67, %55, %40, %34, %30, %19
  %122 = load i64, i64* %3, align 8, !dbg !3311
  ret i64 %122, !dbg !3311
}

declare dso_local i64 @fiobj_hash_get(i64, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_null() #0 !dbg !3312 {
  ret i64 6, !dbg !3315
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_true() #0 !dbg !3316 {
  ret i64 22, !dbg !3317
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_false() #0 !dbg !3318 {
  ret i64 38, !dbg !3319
}

declare dso_local void @fio_ltocstr(%struct.fio_str_info_s* sret, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %0) #0 !dbg !3320 {
  %2 = alloca %struct.fiobj_object_vtable_s*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3374, metadata !DIExpression()), !dbg !3375
  %4 = load i64, i64* %3, align 8, !dbg !3376
  %5 = call zeroext i8 @fiobj_type(i64 %4), !dbg !3376
  %6 = zext i8 %5 to i32, !dbg !3376
  switch i32 %6, label %14 [
    i32 1, label %7
    i32 39, label %8
    i32 40, label %9
    i32 41, label %10
    i32 42, label %11
    i32 43, label %12
    i32 6, label %13
    i32 22, label %13
    i32 38, label %13
    i32 44, label %13
  ], !dbg !3377

7:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_NUMBER, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !3378
  br label %15, !dbg !3378

8:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_FLOAT, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !3380
  br label %15, !dbg !3380

9:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_STRING, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !3381
  br label %15, !dbg !3381

10:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_ARRAY, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !3382
  br label %15, !dbg !3382

11:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_HASH, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !3383
  br label %15, !dbg !3383

12:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_DATA, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !3384
  br label %15, !dbg !3384

13:                                               ; preds = %1, %1, %1, %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !3385
  br label %15, !dbg !3385

14:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !3386
  br label %15, !dbg !3386

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load %struct.fiobj_object_vtable_s*, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !3387
  ret %struct.fiobj_object_vtable_s* %16, !dbg !3387
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fiobj_type(i64 %0) #0 !dbg !3388 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3391, metadata !DIExpression()), !dbg !3392
  %4 = load i64, i64* %3, align 8, !dbg !3393
  %5 = icmp ne i64 %4, 0, !dbg !3393
  br i1 %5, label %7, label %6, !dbg !3395

6:                                                ; preds = %1
  store i8 6, i8* %2, align 1, !dbg !3396
  br label %35, !dbg !3396

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8, !dbg !3397
  %9 = and i64 %8, 1, !dbg !3399
  %10 = icmp ne i64 %9, 0, !dbg !3399
  br i1 %10, label %11, label %12, !dbg !3400

11:                                               ; preds = %7
  store i8 1, i8* %2, align 1, !dbg !3401
  br label %35, !dbg !3401

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8, !dbg !3402
  %14 = and i64 %13, 6, !dbg !3404
  %15 = icmp eq i64 %14, 6, !dbg !3405
  br i1 %15, label %16, label %19, !dbg !3406

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8, !dbg !3407
  %18 = trunc i64 %17 to i8, !dbg !3408
  store i8 %18, i8* %2, align 1, !dbg !3409
  br label %35, !dbg !3409

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8, !dbg !3410
  %21 = and i64 %20, 6, !dbg !3412
  %22 = icmp eq i64 %21, 2, !dbg !3413
  br i1 %22, label %23, label %24, !dbg !3414

23:                                               ; preds = %19
  store i8 40, i8* %2, align 1, !dbg !3415
  br label %35, !dbg !3415

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8, !dbg !3416
  %26 = and i64 %25, 6, !dbg !3418
  %27 = icmp eq i64 %26, 4, !dbg !3419
  br i1 %27, label %28, label %29, !dbg !3420

28:                                               ; preds = %24
  store i8 42, i8* %2, align 1, !dbg !3421
  br label %35, !dbg !3421

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8, !dbg !3422
  %31 = and i64 %30, -8, !dbg !3422
  %32 = inttoptr i64 %31 to i8*, !dbg !3422
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !3423
  %34 = load i8, i8* %33, align 1, !dbg !3423
  store i8 %34, i8* %2, align 1, !dbg !3424
  br label %35, !dbg !3424

35:                                               ; preds = %29, %28, %23, %16, %11, %6
  %36 = load i8, i8* %2, align 1, !dbg !3425
  ret i8 %36, !dbg !3425
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mustache__builder_stack_s* @mustache___section2stack(%struct.mustache_section_s* %0) #0 !dbg !3426 {
  %2 = alloca %struct.mustache_section_s*, align 8
  %3 = alloca %struct.mustache__section_stack_frame_s*, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache_section_s** %2, metadata !3429, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.declare(metadata %struct.mustache__section_stack_frame_s** %3, metadata !3431, metadata !DIExpression()), !dbg !3432
  %4 = load %struct.mustache_section_s*, %struct.mustache_section_s** %2, align 8, !dbg !3433
  %5 = bitcast %struct.mustache_section_s* %4 to %struct.mustache__section_stack_frame_s*, !dbg !3434
  store %struct.mustache__section_stack_frame_s* %5, %struct.mustache__section_stack_frame_s** %3, align 8, !dbg !3432
  %6 = load %struct.mustache__section_stack_frame_s*, %struct.mustache__section_stack_frame_s** %3, align 8, !dbg !3435
  %7 = load %struct.mustache__section_stack_frame_s*, %struct.mustache__section_stack_frame_s** %3, align 8, !dbg !3435
  %8 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %7, i32 0, i32 5, !dbg !3435
  %9 = load i16, i16* %8, align 8, !dbg !3435
  %10 = zext i16 %9 to i32, !dbg !3435
  %11 = sext i32 %10 to i64, !dbg !3435
  %12 = sub i64 0, %11, !dbg !3435
  %13 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %6, i64 %12, !dbg !3435
  %14 = ptrtoint %struct.mustache__section_stack_frame_s* %13 to i64, !dbg !3435
  %15 = sub i64 %14, ptrtoint ([82 x %struct.mustache__section_stack_frame_s]* getelementptr inbounds (%struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* null, i32 0, i32 4) to i64), !dbg !3435
  %16 = inttoptr i64 %15 to %struct.mustache__builder_stack_s*, !dbg !3435
  ret %struct.mustache__builder_stack_s* %16, !dbg !3436
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache__write_escaped(%struct.mustache__builder_stack_s* %0, i8* %1, i32 %2) #0 !dbg !146 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mustache__builder_stack_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.mustache__builder_stack_s* %0, %struct.mustache__builder_stack_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache__builder_stack_s** %5, metadata !3437, metadata !DIExpression()), !dbg !3438
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3439, metadata !DIExpression()), !dbg !3440
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3441, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.declare(metadata [4096 x i8]* %8, metadata !3443, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3448, metadata !DIExpression()), !dbg !3449
  store i64 0, i64* %9, align 8, !dbg !3449
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3450, metadata !DIExpression()), !dbg !3451
  %11 = load i8*, i8** %6, align 8, !dbg !3452
  %12 = load i32, i32* %7, align 4, !dbg !3453
  %13 = zext i32 %12 to i64, !dbg !3454
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !3454
  store i8* %14, i8** %10, align 8, !dbg !3451
  br label %15, !dbg !3455

15:                                               ; preds = %102, %3
  %16 = load i8*, i8** %6, align 8, !dbg !3456
  %17 = load i8*, i8** %10, align 8, !dbg !3457
  %18 = icmp ult i8* %16, %17, !dbg !3458
  br i1 %18, label %19, label %105, !dbg !3455

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8, !dbg !3459
  %21 = load i8, i8* %20, align 1, !dbg !3462
  %22 = sext i8 %21 to i32, !dbg !3462
  %23 = icmp eq i32 %22, 10, !dbg !3463
  br i1 %23, label %24, label %55, !dbg !3464

24:                                               ; preds = %19
  %25 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8, !dbg !3465
  %26 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %25, i32 0, i32 2, !dbg !3466
  %27 = load i32, i32* %26, align 4, !dbg !3466
  %28 = icmp ne i32 %27, 0, !dbg !3465
  br i1 %28, label %29, label %55, !dbg !3467

29:                                               ; preds = %24
  %30 = load i64, i64* %9, align 8, !dbg !3468
  %31 = add i64 %30, 1, !dbg !3468
  store i64 %31, i64* %9, align 8, !dbg !3468
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %30, !dbg !3470
  store i8 10, i8* %32, align 1, !dbg !3471
  %33 = load i64, i64* %9, align 8, !dbg !3472
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %33, !dbg !3473
  store i8 0, i8* %34, align 1, !dbg !3474
  %35 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8, !dbg !3475
  %36 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %35, i32 0, i32 4, !dbg !3477
  %37 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8, !dbg !3478
  %38 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %37, i32 0, i32 3, !dbg !3479
  %39 = load i16, i16* %38, align 8, !dbg !3479
  %40 = zext i16 %39 to i64, !dbg !3475
  %41 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %36, i64 0, i64 %40, !dbg !3475
  %42 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %41, i32 0, i32 0, !dbg !3480
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0, !dbg !3481
  %44 = load i64, i64* %9, align 8, !dbg !3482
  %45 = trunc i64 %44 to i32, !dbg !3482
  %46 = call i32 @mustache_on_text(%struct.mustache_section_s* %42, i8* %43, i32 %45), !dbg !3483
  %47 = icmp eq i32 %46, -1, !dbg !3484
  br i1 %47, label %48, label %49, !dbg !3485

48:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3486
  br label %127, !dbg !3486

49:                                               ; preds = %29
  store i64 0, i64* %9, align 8, !dbg !3487
  %50 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8, !dbg !3488
  %51 = call i32 @mustache__write_padding(%struct.mustache__builder_stack_s* %50), !dbg !3490
  %52 = icmp eq i32 %51, -1, !dbg !3491
  br i1 %52, label %53, label %54, !dbg !3492

53:                                               ; preds = %49
  store i32 -1, i32* %4, align 4, !dbg !3493
  br label %127, !dbg !3493

54:                                               ; preds = %49
  br label %102, !dbg !3494

55:                                               ; preds = %24, %19
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0, !dbg !3495
  %57 = load i64, i64* %9, align 8, !dbg !3497
  %58 = getelementptr inbounds i8, i8* %56, i64 %57, !dbg !3498
  %59 = load i8*, i8** %6, align 8, !dbg !3499
  %60 = getelementptr inbounds i8, i8* %59, i64 0, !dbg !3499
  %61 = load i8, i8* %60, align 1, !dbg !3499
  %62 = zext i8 %61 to i64, !dbg !3500
  %63 = getelementptr inbounds [256 x i8*], [256 x i8*]* @mustache__write_escaped.html_escape_strs, i64 0, i64 %62, !dbg !3500
  %64 = load i8*, i8** %63, align 8, !dbg !3500
  %65 = load i8*, i8** %6, align 8, !dbg !3501
  %66 = getelementptr inbounds i8, i8* %65, i64 0, !dbg !3501
  %67 = load i8, i8* %66, align 1, !dbg !3501
  %68 = zext i8 %67 to i64, !dbg !3502
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* @mustache__write_escaped.html_escape_len, i64 0, i64 %68, !dbg !3502
  %70 = load i8, i8* %69, align 1, !dbg !3502
  %71 = zext i8 %70 to i64, !dbg !3502
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %58, i8* align 1 %64, i64 %71, i1 false), !dbg !3503
  %72 = load i8*, i8** %6, align 8, !dbg !3504
  %73 = getelementptr inbounds i8, i8* %72, i64 0, !dbg !3504
  %74 = load i8, i8* %73, align 1, !dbg !3504
  %75 = zext i8 %74 to i64, !dbg !3505
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* @mustache__write_escaped.html_escape_len, i64 0, i64 %75, !dbg !3505
  %77 = load i8, i8* %76, align 1, !dbg !3505
  %78 = zext i8 %77 to i64, !dbg !3505
  %79 = load i64, i64* %9, align 8, !dbg !3506
  %80 = add i64 %79, %78, !dbg !3506
  store i64 %80, i64* %9, align 8, !dbg !3506
  %81 = load i64, i64* %9, align 8, !dbg !3507
  %82 = icmp uge i64 %81, 4090, !dbg !3509
  br i1 %82, label %83, label %101, !dbg !3510

83:                                               ; preds = %55
  %84 = load i64, i64* %9, align 8, !dbg !3511
  %85 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %84, !dbg !3513
  store i8 0, i8* %85, align 1, !dbg !3514
  %86 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8, !dbg !3515
  %87 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %86, i32 0, i32 4, !dbg !3517
  %88 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8, !dbg !3518
  %89 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %88, i32 0, i32 3, !dbg !3519
  %90 = load i16, i16* %89, align 8, !dbg !3519
  %91 = zext i16 %90 to i64, !dbg !3515
  %92 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %87, i64 0, i64 %91, !dbg !3515
  %93 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %92, i32 0, i32 0, !dbg !3520
  %94 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0, !dbg !3521
  %95 = load i64, i64* %9, align 8, !dbg !3522
  %96 = trunc i64 %95 to i32, !dbg !3522
  %97 = call i32 @mustache_on_text(%struct.mustache_section_s* %93, i8* %94, i32 %96), !dbg !3523
  %98 = icmp eq i32 %97, -1, !dbg !3524
  br i1 %98, label %99, label %100, !dbg !3525

99:                                               ; preds = %83
  store i32 -1, i32* %4, align 4, !dbg !3526
  br label %127, !dbg !3526

100:                                              ; preds = %83
  store i64 0, i64* %9, align 8, !dbg !3527
  br label %101, !dbg !3528

101:                                              ; preds = %100, %55
  br label %102

102:                                              ; preds = %101, %54
  %103 = load i8*, i8** %6, align 8, !dbg !3529
  %104 = getelementptr inbounds i8, i8* %103, i32 1, !dbg !3529
  store i8* %104, i8** %6, align 8, !dbg !3529
  br label %15, !dbg !3455, !llvm.loop !3530

105:                                              ; preds = %15
  %106 = load i64, i64* %9, align 8, !dbg !3532
  %107 = icmp ne i64 %106, 0, !dbg !3532
  br i1 %107, label %108, label %126, !dbg !3534

108:                                              ; preds = %105
  %109 = load i64, i64* %9, align 8, !dbg !3535
  %110 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %109, !dbg !3537
  store i8 0, i8* %110, align 1, !dbg !3538
  %111 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8, !dbg !3539
  %112 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %111, i32 0, i32 4, !dbg !3541
  %113 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8, !dbg !3542
  %114 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %113, i32 0, i32 3, !dbg !3543
  %115 = load i16, i16* %114, align 8, !dbg !3543
  %116 = zext i16 %115 to i64, !dbg !3539
  %117 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %112, i64 0, i64 %116, !dbg !3539
  %118 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %117, i32 0, i32 0, !dbg !3544
  %119 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0, !dbg !3545
  %120 = load i64, i64* %9, align 8, !dbg !3546
  %121 = trunc i64 %120 to i32, !dbg !3546
  %122 = call i32 @mustache_on_text(%struct.mustache_section_s* %118, i8* %119, i32 %121), !dbg !3547
  %123 = icmp eq i32 %122, -1, !dbg !3548
  br i1 %123, label %124, label %125, !dbg !3549

124:                                              ; preds = %108
  store i32 -1, i32* %4, align 4, !dbg !3550
  br label %127, !dbg !3550

125:                                              ; preds = %108
  br label %126, !dbg !3551

126:                                              ; preds = %125, %105
  store i32 0, i32* %4, align 4, !dbg !3552
  br label %127, !dbg !3552

127:                                              ; preds = %126, %124, %99, %53, %48
  %128 = load i32, i32* %4, align 4, !dbg !3553
  ret i32 %128, !dbg !3553
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache__write_padding(%struct.mustache__builder_stack_s* %0) #0 !dbg !3554 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mustache__builder_stack_s*, align 8
  %4 = alloca %struct.mustache__instruction_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.mustache__builder_stack_s* %0, %struct.mustache__builder_stack_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mustache__builder_stack_s** %3, metadata !3557, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.declare(metadata %struct.mustache__instruction_s** %4, metadata !3559, metadata !DIExpression()), !dbg !3561
  %7 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %3, align 8, !dbg !3562
  %8 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %7, i32 0, i32 0, !dbg !3562
  %9 = load %struct.mustache_s*, %struct.mustache_s** %8, align 8, !dbg !3562
  %10 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %9, i64 1, !dbg !3562
  %11 = bitcast %struct.mustache_s* %10 to %struct.mustache__instruction_s*, !dbg !3562
  store %struct.mustache__instruction_s* %11, %struct.mustache__instruction_s** %4, align 8, !dbg !3561
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3563, metadata !DIExpression()), !dbg !3564
  %12 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %3, align 8, !dbg !3565
  %13 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %12, i32 0, i32 0, !dbg !3565
  %14 = load %struct.mustache_s*, %struct.mustache_s** %13, align 8, !dbg !3565
  %15 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %14, i64 1, !dbg !3565
  %16 = bitcast %struct.mustache_s* %15 to %struct.mustache__instruction_s*, !dbg !3565
  %17 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %3, align 8, !dbg !3565
  %18 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %17, i32 0, i32 0, !dbg !3565
  %19 = load %struct.mustache_s*, %struct.mustache_s** %18, align 8, !dbg !3565
  %20 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %19, i32 0, i32 0, !dbg !3565
  %21 = bitcast %union.anon* %20 to %struct.anon*, !dbg !3565
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0, !dbg !3565
  %23 = load i32, i32* %22, align 8, !dbg !3565
  %24 = zext i32 %23 to i64, !dbg !3565
  %25 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %16, i64 %24, !dbg !3565
  %26 = bitcast %struct.mustache__instruction_s* %25 to i8*, !dbg !3565
  store i8* %26, i8** %5, align 8, !dbg !3564
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3566, metadata !DIExpression()), !dbg !3568
  %27 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %3, align 8, !dbg !3569
  %28 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %27, i32 0, i32 2, !dbg !3570
  %29 = load i32, i32* %28, align 4, !dbg !3570
  store i32 %29, i32* %6, align 4, !dbg !3568
  br label %30, !dbg !3571

30:                                               ; preds = %64, %1
  %31 = load i32, i32* %6, align 4, !dbg !3572
  %32 = icmp ne i32 %31, 0, !dbg !3574
  br i1 %32, label %33, label %72, !dbg !3574

33:                                               ; preds = %30
  %34 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %3, align 8, !dbg !3575
  %35 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %34, i32 0, i32 4, !dbg !3578
  %36 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %3, align 8, !dbg !3579
  %37 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %36, i32 0, i32 3, !dbg !3580
  %38 = load i16, i16* %37, align 8, !dbg !3580
  %39 = zext i16 %38 to i64, !dbg !3575
  %40 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %35, i64 0, i64 %39, !dbg !3575
  %41 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %40, i32 0, i32 0, !dbg !3581
  %42 = load i8*, i8** %5, align 8, !dbg !3582
  %43 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !3583
  %44 = load i32, i32* %6, align 4, !dbg !3584
  %45 = zext i32 %44 to i64, !dbg !3583
  %46 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %43, i64 %45, !dbg !3583
  %47 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %46, i32 0, i32 1, !dbg !3585
  %48 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %47, i32 0, i32 2, !dbg !3586
  %49 = load i32, i32* %48, align 4, !dbg !3586
  %50 = zext i32 %49 to i64, !dbg !3587
  %51 = getelementptr inbounds i8, i8* %42, i64 %50, !dbg !3587
  %52 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !3588
  %53 = load i32, i32* %6, align 4, !dbg !3589
  %54 = zext i32 %53 to i64, !dbg !3588
  %55 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %52, i64 %54, !dbg !3588
  %56 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %55, i32 0, i32 1, !dbg !3590
  %57 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %56, i32 0, i32 3, !dbg !3591
  %58 = load i16, i16* %57, align 4, !dbg !3591
  %59 = zext i16 %58 to i32, !dbg !3588
  %60 = call i32 @mustache_on_text(%struct.mustache_section_s* %41, i8* %51, i32 %59), !dbg !3592
  %61 = icmp eq i32 %60, -1, !dbg !3593
  br i1 %61, label %62, label %63, !dbg !3594

62:                                               ; preds = %33
  store i32 -1, i32* %2, align 4, !dbg !3595
  br label %73, !dbg !3595

63:                                               ; preds = %33
  br label %64, !dbg !3596

64:                                               ; preds = %63
  %65 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8, !dbg !3597
  %66 = load i32, i32* %6, align 4, !dbg !3598
  %67 = zext i32 %66 to i64, !dbg !3597
  %68 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %65, i64 %67, !dbg !3597
  %69 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %68, i32 0, i32 1, !dbg !3599
  %70 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %69, i32 0, i32 0, !dbg !3600
  %71 = load i32, i32* %70, align 4, !dbg !3600
  store i32 %71, i32* %6, align 4, !dbg !3601
  br label %30, !dbg !3602, !llvm.loop !3603

72:                                               ; preds = %30
  store i32 0, i32* %2, align 4, !dbg !3605
  br label %73, !dbg !3605

73:                                               ; preds = %72, %62
  %74 = load i32, i32* %2, align 4, !dbg !3606
  ret i32 %74, !dbg !3606
}

declare dso_local i64 @fiobj_ary_count(i64) #5

declare dso_local i64 @fiobj_ary_index(i64, i64) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!159, !160, !161}
!llvm.ident = !{!162}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "FIO_LOG_LEVEL", scope: !2, file: !141, line: 433, type: !87, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !80, globals: !138, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fiobj_mustache.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!4 = !{!5, !21, !51, !66}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mustache_error_en", file: !6, line: 70, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../include/mustache_parser.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "MUSTACHE_OK", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MUSTACHE_ERR_TOO_DEEP", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MUSTACHE_ERR_CLOSURE_MISMATCH", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MUSTACHE_ERR_FILE_NOT_FOUND", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "MUSTACHE_ERR_FILE_TOO_BIG", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "MUSTACHE_ERR_FILE_NAME_TOO_LONG", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "MUSTACHE_ERR_FILE_NAME_TOO_SHORT", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "MUSTACHE_ERR_EMPTY_TEMPLATE", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "MUSTACHE_ERR_DELIMITER_TOO_LONG", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "MUSTACHE_ERR_NAME_TOO_LONG", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "MUSTACHE_ERR_UNKNOWN", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "MUSTACHE_ERR_USER_ERROR", value: 11, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !22, file: !6, line: 320, baseType: !7, size: 32, elements: !40)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mustache__instruction_s", file: !6, line: 319, size: 160, elements: !23)
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "instruction", scope: !22, file: !6, line: 331, baseType: !21, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !22, file: !6, line: 344, baseType: !26, size: 128, offset: 32)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !22, file: !6, line: 333, size: 128, elements: !27)
!27 = !{!28, !33, !34, !35, !39}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !26, file: !6, line: 335, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 26, baseType: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !32, line: 42, baseType: !7)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!33 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !26, file: !6, line: 337, baseType: !29, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "name_pos", scope: !26, file: !6, line: 339, baseType: !29, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "name_len", scope: !26, file: !6, line: 341, baseType: !36, size: 16, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !30, line: 25, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !32, line: 40, baseType: !38)
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !26, file: !6, line: 343, baseType: !36, size: 16, offset: 112)
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!41 = !DIEnumerator(name: "MUSTACHE_WRITE_TEXT", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "MUSTACHE_WRITE_ARG", value: 1, isUnsigned: true)
!43 = !DIEnumerator(name: "MUSTACHE_WRITE_ARG_UNESCAPED", value: 2, isUnsigned: true)
!44 = !DIEnumerator(name: "MUSTACHE_SECTION_START", value: 3, isUnsigned: true)
!45 = !DIEnumerator(name: "MUSTACHE_SECTION_START_INV", value: 4, isUnsigned: true)
!46 = !DIEnumerator(name: "MUSTACHE_SECTION_END", value: 5, isUnsigned: true)
!47 = !DIEnumerator(name: "MUSTACHE_SECTION_GOTO", value: 6, isUnsigned: true)
!48 = !DIEnumerator(name: "MUSTACHE_PADDING_PUSH", value: 7, isUnsigned: true)
!49 = !DIEnumerator(name: "MUSTACHE_PADDING_POP", value: 8, isUnsigned: true)
!50 = !DIEnumerator(name: "MUSTACHE_PADDING_WRITE", value: 9, isUnsigned: true)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 46, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!54 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!55 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!56 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!57 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!58 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!59 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!60 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!61 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!62 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!64 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!65 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 50, baseType: !68, size: 8, elements: !69)
!67 = !DIFile(filename: "../include/fiobject.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!68 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!70 = !DIEnumerator(name: "FIOBJ_T_NUMBER", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "FIOBJ_T_NULL", value: 6, isUnsigned: true)
!72 = !DIEnumerator(name: "FIOBJ_T_TRUE", value: 22, isUnsigned: true)
!73 = !DIEnumerator(name: "FIOBJ_T_FALSE", value: 38, isUnsigned: true)
!74 = !DIEnumerator(name: "FIOBJ_T_FLOAT", value: 39, isUnsigned: true)
!75 = !DIEnumerator(name: "FIOBJ_T_STRING", value: 40, isUnsigned: true)
!76 = !DIEnumerator(name: "FIOBJ_T_ARRAY", value: 41, isUnsigned: true)
!77 = !DIEnumerator(name: "FIOBJ_T_HASH", value: 42, isUnsigned: true)
!78 = !DIEnumerator(name: "FIOBJ_T_DATA", value: 43, isUnsigned: true)
!79 = !DIEnumerator(name: "FIOBJ_T_UNKNOWN", value: 44, isUnsigned: true)
!80 = !{!81, !82, !29, !84, !87, !38, !88, !91, !36, !93, !94, !109, !111, !110, !113, !89}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "mustache__instruction_s", file: !6, line: 345, baseType: !22)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !85, line: 90, baseType: !86)
!85 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!86 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !30, line: 24, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !32, line: 38, baseType: !68)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "FIOBJ", file: !67, line: 63, baseType: !84)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "mustache__section_stack_frame_s", file: !6, line: 354, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 347, size: 320, elements: !97)
!97 = !{!98, !104, !105, !106, !107, !108}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !96, file: !6, line: 348, baseType: !99, size: 128)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "mustache_section_s", file: !6, line: 169, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mustache_section_s", file: !6, line: 158, size: 128, elements: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "udata1", scope: !100, file: !6, line: 163, baseType: !81, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "udata2", scope: !100, file: !6, line: 168, baseType: !81, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !96, file: !6, line: 349, baseType: !29, size: 32, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !96, file: !6, line: 350, baseType: !29, size: 32, offset: 160)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !96, file: !6, line: 351, baseType: !29, size: 32, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !96, file: !6, line: 352, baseType: !29, size: 32, offset: 224)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !96, file: !6, line: 353, baseType: !36, size: 16, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_type_enum", file: !67, line: 61, baseType: !66)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !85, line: 87, baseType: !112)
!112 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "mustache__builder_stack_s", file: !6, line: 366, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 360, size: 26432, elements: !116)
!116 = !{!117, !131, !132, !133, !134}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !115, file: !6, line: 361, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "mustache_s", file: !6, line: 67, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mustache_s", file: !6, line: 308, size: 64, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !120, file: !6, line: 316, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !6, line: 310, size: 64, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "read_only_pt", scope: !123, file: !6, line: 311, baseType: !81, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "read_only", scope: !123, file: !6, line: 315, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !6, line: 312, size: 64, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "intruction_count", scope: !127, file: !6, line: 313, baseType: !29, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "data_length", scope: !127, file: !6, line: 314, baseType: !29, size: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !115, file: !6, line: 362, baseType: !29, size: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !115, file: !6, line: 363, baseType: !29, size: 32, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !115, file: !6, line: 364, baseType: !36, size: 16, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !115, file: !6, line: 365, baseType: !135, size: 26240, offset: 192)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 26240, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 82)
!138 = !{!0, !139, !142, !144, !155}
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker1", scope: !2, file: !141, line: 2433, type: !89, isLocal: false, isDefinition: true)
!141 = !DIFile(filename: "../include/fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker2", scope: !2, file: !141, line: 2434, type: !89, isLocal: false, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "html_escape_strs", scope: !146, file: !6, line: 521, type: !150, isLocal: true, isDefinition: true)
!146 = distinct !DISubprogram(name: "mustache__write_escaped", scope: !6, file: !6, line: 498, type: !147, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{!87, !113, !91, !29}
!149 = !{}
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 16384, elements: !153)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!153 = !{!154}
!154 = !DISubrange(count: 256)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "html_escape_len", scope: !146, file: !6, line: 554, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 2048, elements: !153)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!159 = !{i32 7, !"Dwarf Version", i32 4}
!160 = !{i32 2, !"Debug Info Version", i32 3}
!161 = !{i32 1, !"wchar_size", i32 4}
!162 = !{!"clang version 10.0.0-4ubuntu1 "}
!163 = distinct !DISubprogram(name: "FIO_LOG2STDERR", scope: !141, file: !141, line: 437, type: !164, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !151, null}
!166 = !DILocalVariable(name: "format", arg: 1, scope: !163, file: !141, line: 437, type: !151)
!167 = !DILocation(line: 437, column: 28, scope: !163)
!168 = !DILocalVariable(name: "tmp___log", scope: !163, file: !141, line: 438, type: !169)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 16384, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 2048)
!172 = !DILocation(line: 438, column: 8, scope: !163)
!173 = !DILocalVariable(name: "argv", scope: !163, file: !141, line: 439, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !175, line: 52, baseType: !176)
!175 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !177, line: 32, baseType: !178)
!177 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 439, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 192, elements: !186)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 439, size: 192, elements: !181)
!181 = !{!182, !183, !184, !185}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !180, file: !3, line: 439, baseType: !7, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !180, file: !3, line: 439, baseType: !7, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !180, file: !3, line: 439, baseType: !81, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !180, file: !3, line: 439, baseType: !81, size: 64, offset: 128)
!186 = !{!187}
!187 = !DISubrange(count: 1)
!188 = !DILocation(line: 439, column: 11, scope: !163)
!189 = !DILocation(line: 440, column: 3, scope: !163)
!190 = !DILocalVariable(name: "len___log", scope: !163, file: !141, line: 441, type: !87)
!191 = !DILocation(line: 441, column: 7, scope: !163)
!192 = !DILocation(line: 441, column: 29, scope: !163)
!193 = !DILocation(line: 441, column: 66, scope: !163)
!194 = !DILocation(line: 441, column: 74, scope: !163)
!195 = !DILocation(line: 441, column: 19, scope: !163)
!196 = !DILocation(line: 442, column: 3, scope: !163)
!197 = !DILocation(line: 443, column: 7, scope: !198)
!198 = distinct !DILexicalBlock(scope: !163, file: !141, line: 443, column: 7)
!199 = !DILocation(line: 443, column: 17, scope: !198)
!200 = !DILocation(line: 443, column: 22, scope: !198)
!201 = !DILocation(line: 443, column: 25, scope: !198)
!202 = !DILocation(line: 443, column: 35, scope: !198)
!203 = !DILocation(line: 443, column: 7, scope: !163)
!204 = !DILocation(line: 444, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !141, line: 444, column: 9)
!206 = distinct !DILexicalBlock(scope: !198, file: !141, line: 443, column: 64)
!207 = !DILocation(line: 444, column: 19, scope: !205)
!208 = !DILocation(line: 444, column: 9, scope: !206)
!209 = !DILocation(line: 445, column: 14, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !141, line: 444, column: 48)
!211 = !DILocation(line: 445, column: 24, scope: !210)
!212 = !DILocation(line: 445, column: 7, scope: !210)
!213 = !DILocation(line: 447, column: 17, scope: !210)
!214 = !DILocation(line: 448, column: 5, scope: !210)
!215 = !DILocation(line: 449, column: 65, scope: !216)
!216 = distinct !DILexicalBlock(scope: !205, file: !141, line: 448, column: 12)
!217 = !DILocation(line: 449, column: 7, scope: !216)
!218 = !DILocation(line: 450, column: 7, scope: !216)
!219 = !DILocation(line: 452, column: 3, scope: !206)
!220 = !DILocation(line: 453, column: 22, scope: !163)
!221 = !DILocation(line: 453, column: 3, scope: !163)
!222 = !DILocation(line: 453, column: 26, scope: !163)
!223 = !DILocation(line: 454, column: 13, scope: !163)
!224 = !DILocation(line: 454, column: 3, scope: !163)
!225 = !DILocation(line: 454, column: 24, scope: !163)
!226 = !DILocation(line: 455, column: 10, scope: !163)
!227 = !DILocation(line: 455, column: 21, scope: !163)
!228 = !DILocation(line: 455, column: 35, scope: !163)
!229 = !DILocation(line: 455, column: 3, scope: !163)
!230 = !DILocation(line: 456, column: 1, scope: !163)
!231 = distinct !DISubprogram(name: "fiobj_mustache_load", scope: !3, file: !3, line: 31, type: !232, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!232 = !DISubroutineType(types: !233)
!233 = !{!118, !234}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_str_info_s", file: !141, line: 287, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_str_info_s", file: !141, line: 283, size: 192, elements: !236)
!236 = !{!237, !240, !241}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !235, file: !141, line: 284, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !239, line: 46, baseType: !86)
!239 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!240 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !235, file: !141, line: 285, baseType: !238, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !235, file: !141, line: 286, baseType: !91, size: 64, offset: 128)
!242 = !DILocalVariable(name: "filename", arg: 1, scope: !231, file: !3, line: 31, type: !234)
!243 = !DILocation(line: 31, column: 48, scope: !231)
!244 = !DILocation(line: 32, column: 10, scope: !231)
!245 = !DILocation(line: 32, column: 3, scope: !231)
!246 = distinct !DISubprogram(name: "mustache_load", scope: !6, file: !6, line: 1162, type: !247, scopeLine: 1162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!247 = !DISubroutineType(types: !248)
!248 = !{!118, !249}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "mustache_load_args_s", file: !6, line: 97, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 86, size: 320, elements: !251)
!251 = !{!252, !253, !254, !255, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !250, file: !6, line: 88, baseType: !151, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "filename_len", scope: !250, file: !6, line: 90, baseType: !238, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !250, file: !6, line: 92, baseType: !151, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !250, file: !6, line: 94, baseType: !238, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !250, file: !6, line: 96, baseType: !257, size: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "mustache_error_en", file: !6, line: 83, baseType: !5)
!259 = !DILocalVariable(name: "args", arg: 1, scope: !246, file: !6, line: 1162, type: !249)
!260 = !DILocation(line: 1162, column: 64, scope: !246)
!261 = !DILocalVariable(name: "err_if_missing", scope: !246, file: !6, line: 1163, type: !258)
!262 = !DILocation(line: 1163, column: 21, scope: !246)
!263 = !DILocalVariable(name: "s", scope: !246, file: !6, line: 1164, type: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "mustache__loader_stack_s", file: !6, line: 398, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 374, size: 18880, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !265, file: !6, line: 375, baseType: !118, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !265, file: !6, line: 376, baseType: !82, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !265, file: !6, line: 377, baseType: !257, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !265, file: !6, line: 378, baseType: !91, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !265, file: !6, line: 379, baseType: !91, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_capa", scope: !265, file: !6, line: 380, baseType: !29, size: 32, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !265, file: !6, line: 381, baseType: !29, size: 32, offset: 352)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !265, file: !6, line: 382, baseType: !29, size: 32, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "path_len", scope: !265, file: !6, line: 383, baseType: !36, size: 16, offset: 416)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "path_capa", scope: !265, file: !6, line: 384, baseType: !36, size: 16, offset: 432)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !265, file: !6, line: 385, baseType: !36, size: 16, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !265, file: !6, line: 397, baseType: !279, size: 18368, offset: 480)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 18368, elements: !136)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !265, file: !6, line: 386, size: 224, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !290, !291, !292}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "data_start", scope: !280, file: !6, line: 387, baseType: !29, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "data_pos", scope: !280, file: !6, line: 388, baseType: !29, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !280, file: !6, line: 389, baseType: !29, size: 32, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "open_sections", scope: !280, file: !6, line: 390, baseType: !36, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "del_start", scope: !280, file: !6, line: 391, baseType: !287, size: 40, offset: 112)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 40, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 5)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "del_end", scope: !280, file: !6, line: 393, baseType: !287, size: 40, offset: 152)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "del_start_len", scope: !280, file: !6, line: 395, baseType: !89, size: 8, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "del_end_len", scope: !280, file: !6, line: 396, baseType: !89, size: 8, offset: 200)
!293 = !DILocation(line: 1164, column: 28, scope: !246)
!294 = !DILocalVariable(name: "flag", scope: !246, file: !6, line: 1165, type: !89)
!295 = !DILocation(line: 1165, column: 11, scope: !246)
!296 = !DILocation(line: 1167, column: 13, scope: !297)
!297 = distinct !DILexicalBlock(scope: !246, file: !6, line: 1167, column: 7)
!298 = !DILocation(line: 1167, column: 8, scope: !297)
!299 = !DILocation(line: 1167, column: 7, scope: !246)
!300 = !DILocation(line: 1168, column: 10, scope: !297)
!301 = !DILocation(line: 1168, column: 14, scope: !297)
!302 = !DILocation(line: 1168, column: 5, scope: !297)
!303 = !DILocation(line: 1169, column: 5, scope: !246)
!304 = !DILocation(line: 1169, column: 15, scope: !246)
!305 = !DILocation(line: 1170, column: 5, scope: !246)
!306 = !DILocation(line: 1170, column: 10, scope: !246)
!307 = !DILocation(line: 1171, column: 5, scope: !246)
!308 = !DILocation(line: 1171, column: 10, scope: !246)
!309 = !DILocation(line: 1172, column: 5, scope: !246)
!310 = !DILocation(line: 1172, column: 14, scope: !246)
!311 = !DILocation(line: 1173, column: 5, scope: !246)
!312 = !DILocation(line: 1173, column: 7, scope: !246)
!313 = !DILocation(line: 1174, column: 5, scope: !246)
!314 = !DILocation(line: 1174, column: 12, scope: !246)
!315 = !DILocation(line: 1175, column: 5, scope: !246)
!316 = !DILocation(line: 1175, column: 11, scope: !246)
!317 = !DILocation(line: 1176, column: 5, scope: !246)
!318 = !DILocation(line: 1176, column: 13, scope: !246)
!319 = !DILocation(line: 1177, column: 9, scope: !246)
!320 = !DILocation(line: 1177, column: 5, scope: !246)
!321 = !DILocation(line: 1177, column: 7, scope: !246)
!322 = !DILocation(line: 1178, column: 3, scope: !323)
!323 = distinct !DILexicalBlock(scope: !246, file: !6, line: 1178, column: 3)
!324 = !DILocation(line: 1178, column: 3, scope: !246)
!325 = !DILocation(line: 1178, column: 3, scope: !326)
!326 = distinct !DILexicalBlock(scope: !323, file: !6, line: 1178, column: 3)
!327 = !DILocation(line: 1179, column: 5, scope: !246)
!328 = !DILocation(line: 1179, column: 8, scope: !246)
!329 = !DILocation(line: 1179, column: 10, scope: !246)
!330 = !DILocation(line: 1179, column: 23, scope: !246)
!331 = !DILocation(line: 1180, column: 5, scope: !246)
!332 = !DILocation(line: 1180, column: 8, scope: !246)
!333 = !DILocation(line: 1180, column: 10, scope: !246)
!334 = !DILocation(line: 1180, column: 20, scope: !246)
!335 = !DILocation(line: 1180, column: 32, scope: !246)
!336 = !DILocation(line: 1181, column: 5, scope: !246)
!337 = !DILocation(line: 1181, column: 8, scope: !246)
!338 = !DILocation(line: 1181, column: 10, scope: !246)
!339 = !DILocation(line: 1181, column: 20, scope: !246)
!340 = !DILocation(line: 1181, column: 37, scope: !246)
!341 = !DILocation(line: 1182, column: 9, scope: !246)
!342 = !DILocation(line: 1182, column: 5, scope: !246)
!343 = !DILocation(line: 1182, column: 7, scope: !246)
!344 = !DILocation(line: 1183, column: 16, scope: !246)
!345 = !DILocation(line: 1183, column: 5, scope: !246)
!346 = !DILocation(line: 1183, column: 9, scope: !246)
!347 = !DILocation(line: 1185, column: 13, scope: !348)
!348 = distinct !DILexicalBlock(scope: !246, file: !6, line: 1185, column: 7)
!349 = !DILocation(line: 1185, column: 8, scope: !348)
!350 = !DILocation(line: 1185, column: 26, scope: !348)
!351 = !DILocation(line: 1185, column: 34, scope: !348)
!352 = !DILocation(line: 1185, column: 29, scope: !348)
!353 = !DILocation(line: 1185, column: 7, scope: !246)
!354 = !DILocation(line: 1186, column: 37, scope: !348)
!355 = !DILocation(line: 1186, column: 25, scope: !348)
!356 = !DILocation(line: 1186, column: 10, scope: !348)
!357 = !DILocation(line: 1186, column: 23, scope: !348)
!358 = !DILocation(line: 1186, column: 5, scope: !348)
!359 = !DILocation(line: 1188, column: 12, scope: !360)
!360 = distinct !DILexicalBlock(scope: !246, file: !6, line: 1188, column: 7)
!361 = !DILocation(line: 1188, column: 7, scope: !360)
!362 = !DILocation(line: 1188, column: 7, scope: !246)
!363 = !DILocation(line: 1189, column: 38, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !6, line: 1189, column: 9)
!365 = distinct !DILexicalBlock(scope: !360, file: !6, line: 1188, column: 18)
!366 = !DILocation(line: 1189, column: 53, scope: !364)
!367 = !DILocation(line: 1189, column: 72, scope: !364)
!368 = !DILocation(line: 1190, column: 34, scope: !364)
!369 = !DILocation(line: 1189, column: 9, scope: !364)
!370 = !DILocation(line: 1190, column: 44, scope: !364)
!371 = !DILocation(line: 1189, column: 9, scope: !365)
!372 = !DILocation(line: 1191, column: 7, scope: !373)
!373 = distinct !DILexicalBlock(scope: !364, file: !6, line: 1190, column: 51)
!374 = !DILocation(line: 1193, column: 3, scope: !365)
!375 = !DILocation(line: 1194, column: 38, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !6, line: 1194, column: 9)
!377 = distinct !DILexicalBlock(scope: !360, file: !6, line: 1193, column: 10)
!378 = !DILocation(line: 1194, column: 53, scope: !376)
!379 = !DILocation(line: 1194, column: 9, scope: !376)
!380 = !DILocation(line: 1194, column: 67, scope: !376)
!381 = !DILocation(line: 1194, column: 9, scope: !377)
!382 = !DILocation(line: 1195, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !376, file: !6, line: 1194, column: 74)
!384 = !DILocation(line: 1200, column: 3, scope: !246)
!385 = !DILocation(line: 1200, column: 12, scope: !246)
!386 = !DILocation(line: 1202, column: 5, scope: !387)
!387 = distinct !DILexicalBlock(scope: !246, file: !6, line: 1200, column: 19)
!388 = !DILocation(line: 1202, column: 14, scope: !387)
!389 = !DILocation(line: 1202, column: 22, scope: !387)
!390 = !DILocation(line: 1202, column: 12, scope: !387)
!391 = !DILocation(line: 1202, column: 29, scope: !387)
!392 = !DILocation(line: 1202, column: 42, scope: !387)
!393 = !DILocation(line: 1202, column: 50, scope: !387)
!394 = !DILocation(line: 1202, column: 40, scope: !387)
!395 = !DILocation(line: 1202, column: 57, scope: !387)
!396 = !DILocation(line: 1202, column: 38, scope: !387)
!397 = !DILocalVariable(name: "stand_alone", scope: !398, file: !6, line: 1204, type: !29)
!398 = distinct !DILexicalBlock(scope: !387, file: !6, line: 1202, column: 67)
!399 = !DILocation(line: 1204, column: 16, scope: !398)
!400 = !DILocalVariable(name: "stand_alone_pos", scope: !398, file: !6, line: 1205, type: !29)
!401 = !DILocation(line: 1205, column: 16, scope: !398)
!402 = !DILocalVariable(name: "start", scope: !398, file: !6, line: 1207, type: !151)
!403 = !DILocation(line: 1207, column: 19, scope: !398)
!404 = !DILocation(line: 1207, column: 29, scope: !398)
!405 = !DILocation(line: 1207, column: 38, scope: !398)
!406 = !DILocation(line: 1207, column: 46, scope: !398)
!407 = !DILocation(line: 1207, column: 36, scope: !398)
!408 = !DILocation(line: 1207, column: 53, scope: !398)
!409 = !DILocation(line: 1207, column: 34, scope: !398)
!410 = !DILocalVariable(name: "beg", scope: !398, file: !6, line: 1209, type: !91)
!411 = !DILocation(line: 1209, column: 13, scope: !398)
!412 = !DILocation(line: 1209, column: 26, scope: !398)
!413 = !DILocation(line: 1209, column: 35, scope: !398)
!414 = !DILocation(line: 1209, column: 43, scope: !398)
!415 = !DILocation(line: 1209, column: 33, scope: !398)
!416 = !DILocation(line: 1209, column: 50, scope: !398)
!417 = !DILocation(line: 1209, column: 19, scope: !398)
!418 = !DILocalVariable(name: "org_beg", scope: !398, file: !6, line: 1210, type: !151)
!419 = !DILocation(line: 1210, column: 19, scope: !398)
!420 = !DILocation(line: 1210, column: 29, scope: !398)
!421 = !DILocation(line: 1211, column: 12, scope: !422)
!422 = distinct !DILexicalBlock(scope: !398, file: !6, line: 1211, column: 11)
!423 = !DILocation(line: 1211, column: 16, scope: !422)
!424 = !DILocation(line: 1211, column: 19, scope: !422)
!425 = !DILocation(line: 1211, column: 28, scope: !422)
!426 = !DILocation(line: 1211, column: 37, scope: !422)
!427 = !DILocation(line: 1211, column: 45, scope: !422)
!428 = !DILocation(line: 1211, column: 35, scope: !422)
!429 = !DILocation(line: 1211, column: 52, scope: !422)
!430 = !DILocation(line: 1211, column: 33, scope: !422)
!431 = !DILocation(line: 1211, column: 23, scope: !422)
!432 = !DILocation(line: 1211, column: 11, scope: !398)
!433 = !DILocation(line: 1213, column: 47, scope: !434)
!434 = distinct !DILexicalBlock(scope: !422, file: !6, line: 1211, column: 62)
!435 = !DILocation(line: 1213, column: 55, scope: !434)
!436 = !DILocation(line: 1213, column: 45, scope: !434)
!437 = !DILocation(line: 1213, column: 62, scope: !434)
!438 = !DILocation(line: 1214, column: 43, scope: !434)
!439 = !DILocation(line: 1214, column: 51, scope: !434)
!440 = !DILocation(line: 1214, column: 41, scope: !434)
!441 = !DILocation(line: 1214, column: 58, scope: !434)
!442 = !DILocation(line: 1215, column: 47, scope: !434)
!443 = !DILocation(line: 1215, column: 55, scope: !434)
!444 = !DILocation(line: 1215, column: 45, scope: !434)
!445 = !DILocation(line: 1215, column: 62, scope: !434)
!446 = !DILocation(line: 1214, column: 67, scope: !434)
!447 = !DILocation(line: 1213, column: 9, scope: !434)
!448 = !DILocation(line: 1216, column: 39, scope: !434)
!449 = !DILocation(line: 1216, column: 47, scope: !434)
!450 = !DILocation(line: 1216, column: 37, scope: !434)
!451 = !DILocation(line: 1216, column: 54, scope: !434)
!452 = !DILocation(line: 1216, column: 11, scope: !434)
!453 = !DILocation(line: 1216, column: 19, scope: !434)
!454 = !DILocation(line: 1216, column: 9, scope: !434)
!455 = !DILocation(line: 1216, column: 26, scope: !434)
!456 = !DILocation(line: 1216, column: 35, scope: !434)
!457 = !DILocation(line: 1217, column: 9, scope: !434)
!458 = distinct !{!458, !386, !459}
!459 = !DILocation(line: 1475, column: 5, scope: !387)
!460 = !DILocation(line: 1219, column: 11, scope: !461)
!461 = distinct !DILexicalBlock(scope: !398, file: !6, line: 1219, column: 11)
!462 = !DILocation(line: 1219, column: 18, scope: !461)
!463 = !DILocation(line: 1219, column: 15, scope: !461)
!464 = !DILocation(line: 1219, column: 11, scope: !398)
!465 = !DILocation(line: 1221, column: 47, scope: !466)
!466 = distinct !DILexicalBlock(scope: !461, file: !6, line: 1219, column: 25)
!467 = !DILocation(line: 1221, column: 55, scope: !466)
!468 = !DILocation(line: 1221, column: 45, scope: !466)
!469 = !DILocation(line: 1221, column: 62, scope: !466)
!470 = !DILocation(line: 1222, column: 63, scope: !466)
!471 = !DILocation(line: 1222, column: 69, scope: !466)
!472 = !DILocation(line: 1222, column: 67, scope: !466)
!473 = !DILocation(line: 1222, column: 41, scope: !466)
!474 = !DILocation(line: 1221, column: 9, scope: !466)
!475 = !DILocation(line: 1223, column: 7, scope: !466)
!476 = !DILocation(line: 1225, column: 16, scope: !398)
!477 = !DILocation(line: 1225, column: 24, scope: !398)
!478 = !DILocation(line: 1225, column: 14, scope: !398)
!479 = !DILocation(line: 1225, column: 31, scope: !398)
!480 = !DILocation(line: 1225, column: 11, scope: !398)
!481 = !DILocalVariable(name: "end", scope: !398, file: !6, line: 1227, type: !91)
!482 = !DILocation(line: 1227, column: 13, scope: !398)
!483 = !DILocation(line: 1227, column: 26, scope: !398)
!484 = !DILocation(line: 1227, column: 33, scope: !398)
!485 = !DILocation(line: 1227, column: 41, scope: !398)
!486 = !DILocation(line: 1227, column: 31, scope: !398)
!487 = !DILocation(line: 1227, column: 48, scope: !398)
!488 = !DILocation(line: 1227, column: 19, scope: !398)
!489 = !DILocation(line: 1228, column: 12, scope: !490)
!490 = distinct !DILexicalBlock(scope: !398, file: !6, line: 1228, column: 11)
!491 = !DILocation(line: 1228, column: 16, scope: !490)
!492 = !DILocation(line: 1228, column: 19, scope: !490)
!493 = !DILocation(line: 1228, column: 28, scope: !490)
!494 = !DILocation(line: 1228, column: 37, scope: !490)
!495 = !DILocation(line: 1228, column: 45, scope: !490)
!496 = !DILocation(line: 1228, column: 35, scope: !490)
!497 = !DILocation(line: 1228, column: 52, scope: !490)
!498 = !DILocation(line: 1228, column: 33, scope: !490)
!499 = !DILocation(line: 1228, column: 23, scope: !490)
!500 = !DILocation(line: 1228, column: 11, scope: !398)
!501 = !DILocation(line: 1230, column: 15, scope: !502)
!502 = distinct !DILexicalBlock(scope: !490, file: !6, line: 1228, column: 62)
!503 = !DILocation(line: 1230, column: 19, scope: !502)
!504 = !DILocation(line: 1231, column: 9, scope: !502)
!505 = !DILocation(line: 1235, column: 36, scope: !398)
!506 = !DILocation(line: 1235, column: 44, scope: !398)
!507 = !DILocation(line: 1235, column: 40, scope: !398)
!508 = !DILocation(line: 1235, column: 54, scope: !398)
!509 = !DILocation(line: 1235, column: 62, scope: !398)
!510 = !DILocation(line: 1235, column: 52, scope: !398)
!511 = !DILocation(line: 1235, column: 69, scope: !398)
!512 = !DILocation(line: 1235, column: 50, scope: !398)
!513 = !DILocation(line: 1235, column: 35, scope: !398)
!514 = !DILocation(line: 1235, column: 9, scope: !398)
!515 = !DILocation(line: 1235, column: 17, scope: !398)
!516 = !DILocation(line: 1235, column: 7, scope: !398)
!517 = !DILocation(line: 1235, column: 24, scope: !398)
!518 = !DILocation(line: 1235, column: 33, scope: !398)
!519 = !DILocation(line: 1238, column: 12, scope: !520)
!520 = distinct !DILexicalBlock(scope: !398, file: !6, line: 1238, column: 11)
!521 = !DILocation(line: 1238, column: 18, scope: !520)
!522 = !DILocation(line: 1238, column: 26, scope: !520)
!523 = !DILocation(line: 1238, column: 16, scope: !520)
!524 = !DILocation(line: 1238, column: 33, scope: !520)
!525 = !DILocation(line: 1238, column: 46, scope: !520)
!526 = !DILocation(line: 1239, column: 11, scope: !520)
!527 = !DILocation(line: 1239, column: 17, scope: !520)
!528 = !DILocation(line: 1239, column: 25, scope: !520)
!529 = !DILocation(line: 1239, column: 15, scope: !520)
!530 = !DILocation(line: 1239, column: 32, scope: !520)
!531 = !DILocation(line: 1239, column: 45, scope: !520)
!532 = !DILocation(line: 1239, column: 53, scope: !520)
!533 = !DILocation(line: 1240, column: 12, scope: !520)
!534 = !DILocation(line: 1240, column: 18, scope: !520)
!535 = !DILocation(line: 1240, column: 26, scope: !520)
!536 = !DILocation(line: 1240, column: 16, scope: !520)
!537 = !DILocation(line: 1240, column: 33, scope: !520)
!538 = !DILocation(line: 1240, column: 46, scope: !520)
!539 = !DILocation(line: 1240, column: 54, scope: !520)
!540 = !DILocation(line: 1241, column: 12, scope: !520)
!541 = !DILocation(line: 1241, column: 22, scope: !520)
!542 = !DILocation(line: 1241, column: 30, scope: !520)
!543 = !DILocation(line: 1241, column: 20, scope: !520)
!544 = !DILocation(line: 1241, column: 37, scope: !520)
!545 = !DILocation(line: 1241, column: 18, scope: !520)
!546 = !DILocation(line: 1241, column: 50, scope: !520)
!547 = !DILocation(line: 1238, column: 11, scope: !398)
!548 = !DILocalVariable(name: "pad", scope: !549, file: !6, line: 1242, type: !91)
!549 = distinct !DILexicalBlock(scope: !520, file: !6, line: 1241, column: 60)
!550 = !DILocation(line: 1242, column: 15, scope: !549)
!551 = !DILocation(line: 1242, column: 21, scope: !549)
!552 = !DILocation(line: 1242, column: 30, scope: !549)
!553 = !DILocation(line: 1242, column: 38, scope: !549)
!554 = !DILocation(line: 1242, column: 28, scope: !549)
!555 = !DILocation(line: 1242, column: 45, scope: !549)
!556 = !DILocation(line: 1242, column: 59, scope: !549)
!557 = !DILocation(line: 1242, column: 25, scope: !549)
!558 = !DILocation(line: 1243, column: 9, scope: !549)
!559 = !DILocation(line: 1243, column: 16, scope: !549)
!560 = !DILocation(line: 1243, column: 23, scope: !549)
!561 = !DILocation(line: 1243, column: 20, scope: !549)
!562 = !DILocation(line: 1243, column: 29, scope: !549)
!563 = !DILocation(line: 1243, column: 33, scope: !549)
!564 = !DILocation(line: 1243, column: 40, scope: !549)
!565 = !DILocation(line: 1243, column: 47, scope: !549)
!566 = !DILocation(line: 1243, column: 50, scope: !549)
!567 = !DILocation(line: 1243, column: 57, scope: !549)
!568 = !DILocation(line: 0, scope: !549)
!569 = !DILocation(line: 1244, column: 11, scope: !549)
!570 = distinct !{!570, !558, !571}
!571 = !DILocation(line: 1244, column: 13, scope: !549)
!572 = !DILocation(line: 1245, column: 13, scope: !573)
!573 = distinct !DILexicalBlock(scope: !549, file: !6, line: 1245, column: 13)
!574 = !DILocation(line: 1245, column: 20, scope: !573)
!575 = !DILocation(line: 1245, column: 28, scope: !573)
!576 = !DILocation(line: 1245, column: 31, scope: !573)
!577 = !DILocation(line: 1245, column: 38, scope: !573)
!578 = !DILocation(line: 1245, column: 13, scope: !549)
!579 = !DILocation(line: 1247, column: 11, scope: !580)
!580 = distinct !DILexicalBlock(scope: !573, file: !6, line: 1245, column: 44)
!581 = !DILocation(line: 1248, column: 29, scope: !580)
!582 = !DILocation(line: 1248, column: 37, scope: !580)
!583 = !DILocation(line: 1248, column: 33, scope: !580)
!584 = !DILocation(line: 1248, column: 27, scope: !580)
!585 = !DILocation(line: 1250, column: 17, scope: !580)
!586 = !DILocation(line: 1250, column: 24, scope: !580)
!587 = !DILocation(line: 1250, column: 32, scope: !580)
!588 = !DILocation(line: 1250, column: 40, scope: !580)
!589 = !DILocation(line: 1250, column: 30, scope: !580)
!590 = !DILocation(line: 1250, column: 47, scope: !580)
!591 = !DILocation(line: 1250, column: 28, scope: !580)
!592 = !DILocation(line: 1250, column: 21, scope: !580)
!593 = !DILocation(line: 1250, column: 63, scope: !580)
!594 = !DILocation(line: 1250, column: 69, scope: !580)
!595 = !DILocation(line: 1250, column: 15, scope: !580)
!596 = !DILocation(line: 1249, column: 23, scope: !580)
!597 = !DILocation(line: 1251, column: 9, scope: !580)
!598 = !DILocation(line: 1252, column: 7, scope: !549)
!599 = !DILocation(line: 1255, column: 12, scope: !398)
!600 = !DILocation(line: 1257, column: 15, scope: !398)
!601 = !DILocation(line: 1257, column: 7, scope: !398)
!602 = !DILocation(line: 1260, column: 42, scope: !603)
!603 = distinct !DILexicalBlock(scope: !398, file: !6, line: 1257, column: 23)
!604 = !DILocation(line: 1260, column: 9, scope: !603)
!605 = !DILocation(line: 1261, column: 9, scope: !603)
!606 = !DILocation(line: 1265, column: 42, scope: !603)
!607 = !DILocation(line: 1265, column: 9, scope: !603)
!608 = !DILocation(line: 1266, column: 9, scope: !603)
!609 = !DILocation(line: 1267, column: 9, scope: !603)
!610 = !DILocation(line: 1268, column: 13, scope: !611)
!611 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1268, column: 13)
!612 = !DILocation(line: 1268, column: 20, scope: !611)
!613 = !DILocation(line: 1268, column: 13, scope: !603)
!614 = !DILocation(line: 1269, column: 17, scope: !615)
!615 = distinct !DILexicalBlock(scope: !611, file: !6, line: 1268, column: 28)
!616 = !DILocation(line: 1269, column: 21, scope: !615)
!617 = !DILocation(line: 1270, column: 11, scope: !615)
!618 = !DILocation(line: 1272, column: 9, scope: !603)
!619 = !DILocation(line: 1273, column: 9, scope: !603)
!620 = !DILocation(line: 1273, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1273, column: 9)
!622 = distinct !{!622, !619, !619}
!623 = !DILocation(line: 1274, column: 9, scope: !603)
!624 = !DILocation(line: 1274, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1274, column: 9)
!626 = distinct !{!626, !623, !623}
!627 = !DILocation(line: 1275, column: 9, scope: !603)
!628 = !DILocalVariable(name: "div", scope: !629, file: !6, line: 1277, type: !91)
!629 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1276, column: 9)
!630 = !DILocation(line: 1277, column: 17, scope: !629)
!631 = !DILocation(line: 1277, column: 23, scope: !629)
!632 = !DILocation(line: 1278, column: 11, scope: !629)
!633 = !DILocation(line: 1278, column: 18, scope: !629)
!634 = !DILocation(line: 1278, column: 24, scope: !629)
!635 = !DILocation(line: 1278, column: 22, scope: !629)
!636 = !DILocation(line: 1278, column: 28, scope: !629)
!637 = !DILocation(line: 1278, column: 32, scope: !629)
!638 = !DILocation(line: 1278, column: 31, scope: !629)
!639 = !DILocation(line: 0, scope: !629)
!640 = !DILocation(line: 1279, column: 13, scope: !641)
!641 = distinct !DILexicalBlock(scope: !629, file: !6, line: 1278, column: 47)
!642 = distinct !{!642, !632, !643}
!643 = !DILocation(line: 1280, column: 11, scope: !629)
!644 = !DILocation(line: 1281, column: 15, scope: !645)
!645 = distinct !DILexicalBlock(scope: !629, file: !6, line: 1281, column: 15)
!646 = !DILocation(line: 1281, column: 22, scope: !645)
!647 = !DILocation(line: 1281, column: 19, scope: !645)
!648 = !DILocation(line: 1281, column: 26, scope: !645)
!649 = !DILocation(line: 1281, column: 29, scope: !645)
!650 = !DILocation(line: 1281, column: 36, scope: !645)
!651 = !DILocation(line: 1281, column: 33, scope: !645)
!652 = !DILocation(line: 1281, column: 15, scope: !629)
!653 = !DILocation(line: 1282, column: 19, scope: !654)
!654 = distinct !DILexicalBlock(scope: !645, file: !6, line: 1281, column: 41)
!655 = !DILocation(line: 1282, column: 23, scope: !654)
!656 = !DILocation(line: 1283, column: 13, scope: !654)
!657 = !DILocation(line: 1285, column: 15, scope: !658)
!658 = distinct !DILexicalBlock(scope: !629, file: !6, line: 1285, column: 15)
!659 = !DILocation(line: 1285, column: 21, scope: !658)
!660 = !DILocation(line: 1285, column: 19, scope: !658)
!661 = !DILocation(line: 1285, column: 25, scope: !658)
!662 = !DILocation(line: 1285, column: 15, scope: !629)
!663 = !DILocation(line: 1286, column: 19, scope: !664)
!664 = distinct !DILexicalBlock(scope: !658, file: !6, line: 1285, column: 61)
!665 = !DILocation(line: 1286, column: 23, scope: !664)
!666 = !DILocation(line: 1287, column: 13, scope: !664)
!667 = !DILocation(line: 1290, column: 44, scope: !629)
!668 = !DILocation(line: 1290, column: 50, scope: !629)
!669 = !DILocation(line: 1290, column: 48, scope: !629)
!670 = !DILocation(line: 1290, column: 13, scope: !629)
!671 = !DILocation(line: 1290, column: 21, scope: !629)
!672 = !DILocation(line: 1290, column: 11, scope: !629)
!673 = !DILocation(line: 1290, column: 28, scope: !629)
!674 = !DILocation(line: 1290, column: 42, scope: !629)
!675 = !DILocalVariable(name: "i", scope: !676, file: !6, line: 1291, type: !238)
!676 = distinct !DILexicalBlock(scope: !629, file: !6, line: 1291, column: 11)
!677 = !DILocation(line: 1291, column: 23, scope: !676)
!678 = !DILocation(line: 1291, column: 16, scope: !676)
!679 = !DILocation(line: 1291, column: 30, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !6, line: 1291, column: 11)
!681 = !DILocation(line: 1291, column: 36, scope: !680)
!682 = !DILocation(line: 1291, column: 44, scope: !680)
!683 = !DILocation(line: 1291, column: 34, scope: !680)
!684 = !DILocation(line: 1291, column: 51, scope: !680)
!685 = !DILocation(line: 1291, column: 32, scope: !680)
!686 = !DILocation(line: 1291, column: 11, scope: !676)
!687 = !DILocation(line: 1292, column: 45, scope: !688)
!688 = distinct !DILexicalBlock(scope: !680, file: !6, line: 1291, column: 71)
!689 = !DILocation(line: 1292, column: 49, scope: !688)
!690 = !DILocation(line: 1292, column: 15, scope: !688)
!691 = !DILocation(line: 1292, column: 23, scope: !688)
!692 = !DILocation(line: 1292, column: 13, scope: !688)
!693 = !DILocation(line: 1292, column: 30, scope: !688)
!694 = !DILocation(line: 1292, column: 40, scope: !688)
!695 = !DILocation(line: 1292, column: 43, scope: !688)
!696 = !DILocation(line: 1293, column: 11, scope: !688)
!697 = !DILocation(line: 1291, column: 66, scope: !680)
!698 = !DILocation(line: 1291, column: 11, scope: !680)
!699 = distinct !{!699, !686, !700}
!700 = !DILocation(line: 1293, column: 11, scope: !676)
!701 = !DILocation(line: 1294, column: 13, scope: !629)
!702 = !DILocation(line: 1294, column: 21, scope: !629)
!703 = !DILocation(line: 1294, column: 11, scope: !629)
!704 = !DILocation(line: 1294, column: 28, scope: !629)
!705 = !DILocation(line: 1294, column: 40, scope: !629)
!706 = !DILocation(line: 1294, column: 48, scope: !629)
!707 = !DILocation(line: 1294, column: 38, scope: !629)
!708 = !DILocation(line: 1294, column: 55, scope: !629)
!709 = !DILocation(line: 1294, column: 70, scope: !629)
!710 = !DILocation(line: 1296, column: 11, scope: !629)
!711 = !DILocation(line: 1297, column: 11, scope: !629)
!712 = !DILocation(line: 1297, column: 11, scope: !713)
!713 = distinct !DILexicalBlock(scope: !629, file: !6, line: 1297, column: 11)
!714 = distinct !{!714, !711, !711}
!715 = !DILocation(line: 1298, column: 15, scope: !716)
!716 = distinct !DILexicalBlock(scope: !629, file: !6, line: 1298, column: 15)
!717 = !DILocation(line: 1298, column: 22, scope: !716)
!718 = !DILocation(line: 1298, column: 19, scope: !716)
!719 = !DILocation(line: 1298, column: 15, scope: !629)
!720 = !DILocation(line: 1299, column: 19, scope: !721)
!721 = distinct !DILexicalBlock(scope: !716, file: !6, line: 1298, column: 27)
!722 = !DILocation(line: 1299, column: 23, scope: !721)
!723 = !DILocation(line: 1300, column: 13, scope: !721)
!724 = !DILocation(line: 1302, column: 15, scope: !725)
!725 = distinct !DILexicalBlock(scope: !629, file: !6, line: 1302, column: 15)
!726 = !DILocation(line: 1302, column: 21, scope: !725)
!727 = !DILocation(line: 1302, column: 19, scope: !725)
!728 = !DILocation(line: 1302, column: 25, scope: !725)
!729 = !DILocation(line: 1302, column: 15, scope: !629)
!730 = !DILocation(line: 1303, column: 19, scope: !731)
!731 = distinct !DILexicalBlock(scope: !725, file: !6, line: 1302, column: 61)
!732 = !DILocation(line: 1303, column: 23, scope: !731)
!733 = !DILocation(line: 1304, column: 13, scope: !731)
!734 = !DILocation(line: 1307, column: 42, scope: !629)
!735 = !DILocation(line: 1307, column: 48, scope: !629)
!736 = !DILocation(line: 1307, column: 46, scope: !629)
!737 = !DILocation(line: 1307, column: 13, scope: !629)
!738 = !DILocation(line: 1307, column: 21, scope: !629)
!739 = !DILocation(line: 1307, column: 11, scope: !629)
!740 = !DILocation(line: 1307, column: 28, scope: !629)
!741 = !DILocation(line: 1307, column: 40, scope: !629)
!742 = !DILocalVariable(name: "i", scope: !743, file: !6, line: 1308, type: !238)
!743 = distinct !DILexicalBlock(scope: !629, file: !6, line: 1308, column: 11)
!744 = !DILocation(line: 1308, column: 23, scope: !743)
!745 = !DILocation(line: 1308, column: 16, scope: !743)
!746 = !DILocation(line: 1308, column: 30, scope: !747)
!747 = distinct !DILexicalBlock(scope: !743, file: !6, line: 1308, column: 11)
!748 = !DILocation(line: 1308, column: 36, scope: !747)
!749 = !DILocation(line: 1308, column: 44, scope: !747)
!750 = !DILocation(line: 1308, column: 34, scope: !747)
!751 = !DILocation(line: 1308, column: 51, scope: !747)
!752 = !DILocation(line: 1308, column: 32, scope: !747)
!753 = !DILocation(line: 1308, column: 11, scope: !743)
!754 = !DILocation(line: 1309, column: 43, scope: !755)
!755 = distinct !DILexicalBlock(scope: !747, file: !6, line: 1308, column: 69)
!756 = !DILocation(line: 1309, column: 47, scope: !755)
!757 = !DILocation(line: 1309, column: 15, scope: !755)
!758 = !DILocation(line: 1309, column: 23, scope: !755)
!759 = !DILocation(line: 1309, column: 13, scope: !755)
!760 = !DILocation(line: 1309, column: 30, scope: !755)
!761 = !DILocation(line: 1309, column: 38, scope: !755)
!762 = !DILocation(line: 1309, column: 41, scope: !755)
!763 = !DILocation(line: 1310, column: 11, scope: !755)
!764 = !DILocation(line: 1308, column: 64, scope: !747)
!765 = !DILocation(line: 1308, column: 11, scope: !747)
!766 = distinct !{!766, !753, !767}
!767 = !DILocation(line: 1310, column: 11, scope: !743)
!768 = !DILocation(line: 1311, column: 13, scope: !629)
!769 = !DILocation(line: 1311, column: 21, scope: !629)
!770 = !DILocation(line: 1311, column: 11, scope: !629)
!771 = !DILocation(line: 1311, column: 28, scope: !629)
!772 = !DILocation(line: 1311, column: 38, scope: !629)
!773 = !DILocation(line: 1311, column: 46, scope: !629)
!774 = !DILocation(line: 1311, column: 36, scope: !629)
!775 = !DILocation(line: 1311, column: 53, scope: !629)
!776 = !DILocation(line: 1311, column: 66, scope: !629)
!777 = !DILocation(line: 1313, column: 9, scope: !603)
!778 = !DILocation(line: 1317, column: 14, scope: !603)
!779 = !DILocation(line: 1317, column: 9, scope: !603)
!780 = !DILocation(line: 1321, column: 42, scope: !603)
!781 = !DILocation(line: 1321, column: 9, scope: !603)
!782 = !DILocation(line: 1322, column: 9, scope: !603)
!783 = !DILocation(line: 1323, column: 9, scope: !603)
!784 = !DILocation(line: 1324, column: 9, scope: !603)
!785 = !DILocation(line: 1324, column: 9, scope: !786)
!786 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1324, column: 9)
!787 = distinct !{!787, !784, !784}
!788 = !DILocation(line: 1325, column: 9, scope: !603)
!789 = !DILocation(line: 1325, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1325, column: 9)
!791 = distinct !{!791, !788, !788}
!792 = !DILocation(line: 1326, column: 9, scope: !603)
!793 = !DILocation(line: 1328, column: 13, scope: !603)
!794 = !DILocation(line: 1328, column: 21, scope: !603)
!795 = !DILocation(line: 1328, column: 11, scope: !603)
!796 = !DILocation(line: 1328, column: 28, scope: !603)
!797 = !DILocation(line: 1328, column: 9, scope: !603)
!798 = !DILocation(line: 1329, column: 15, scope: !799)
!799 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1329, column: 13)
!800 = !DILocation(line: 1329, column: 23, scope: !799)
!801 = !DILocation(line: 1329, column: 13, scope: !799)
!802 = !DILocation(line: 1329, column: 30, scope: !799)
!803 = !DILocation(line: 1329, column: 44, scope: !799)
!804 = !DILocation(line: 1329, column: 13, scope: !603)
!805 = !DILocation(line: 1330, column: 17, scope: !806)
!806 = distinct !DILexicalBlock(scope: !799, file: !6, line: 1329, column: 71)
!807 = !DILocation(line: 1330, column: 21, scope: !806)
!808 = !DILocation(line: 1331, column: 11, scope: !806)
!809 = !DILocation(line: 1333, column: 13, scope: !810)
!810 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1333, column: 13)
!811 = !DILocation(line: 1333, column: 21, scope: !810)
!812 = !DILocation(line: 1333, column: 17, scope: !810)
!813 = !DILocation(line: 1333, column: 26, scope: !810)
!814 = !DILocation(line: 1333, column: 13, scope: !603)
!815 = !DILocation(line: 1334, column: 17, scope: !816)
!816 = distinct !DILexicalBlock(scope: !810, file: !6, line: 1333, column: 41)
!817 = !DILocation(line: 1334, column: 21, scope: !816)
!818 = !DILocation(line: 1335, column: 9, scope: !816)
!819 = !DILocation(line: 1338, column: 42, scope: !820)
!820 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1336, column: 13)
!821 = !DILocation(line: 1339, column: 37, scope: !820)
!822 = !DILocation(line: 1341, column: 29, scope: !820)
!823 = !DILocation(line: 1342, column: 37, scope: !820)
!824 = !DILocation(line: 1342, column: 45, scope: !820)
!825 = !DILocation(line: 1342, column: 41, scope: !820)
!826 = !DILocation(line: 1343, column: 37, scope: !820)
!827 = !DILocation(line: 1343, column: 43, scope: !820)
!828 = !DILocation(line: 1343, column: 41, scope: !820)
!829 = !DILocation(line: 1344, column: 37, scope: !820)
!830 = !DILocation(line: 1344, column: 45, scope: !820)
!831 = !DILocation(line: 1344, column: 35, scope: !820)
!832 = !DILocation(line: 1344, column: 52, scope: !820)
!833 = !DILocation(line: 1344, column: 64, scope: !820)
!834 = !DILocation(line: 1344, column: 72, scope: !820)
!835 = !DILocation(line: 1344, column: 68, scope: !820)
!836 = !DILocation(line: 1344, column: 61, scope: !820)
!837 = !DILocation(line: 1336, column: 13, scope: !820)
!838 = !DILocation(line: 1336, column: 13, scope: !603)
!839 = !DILocation(line: 1346, column: 11, scope: !840)
!840 = distinct !DILexicalBlock(scope: !820, file: !6, line: 1345, column: 26)
!841 = !DILocation(line: 1348, column: 9, scope: !603)
!842 = !DILocation(line: 1352, column: 42, scope: !603)
!843 = !DILocation(line: 1352, column: 9, scope: !603)
!844 = !DILocation(line: 1353, column: 14, scope: !845)
!845 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1353, column: 13)
!846 = !DILocation(line: 1353, column: 26, scope: !845)
!847 = !DILocation(line: 1353, column: 13, scope: !603)
!848 = !DILocation(line: 1356, column: 48, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !6, line: 1355, column: 15)
!850 = distinct !DILexicalBlock(scope: !845, file: !6, line: 1353, column: 33)
!851 = !DILocation(line: 1358, column: 35, scope: !849)
!852 = !DILocation(line: 1361, column: 40, scope: !849)
!853 = !DILocation(line: 1359, column: 43, scope: !849)
!854 = !DILocation(line: 1360, column: 44, scope: !849)
!855 = !DILocation(line: 1360, column: 56, scope: !849)
!856 = !DILocation(line: 1360, column: 43, scope: !849)
!857 = !DILocation(line: 1355, column: 15, scope: !849)
!858 = !DILocation(line: 1355, column: 15, scope: !850)
!859 = !DILocation(line: 1363, column: 13, scope: !860)
!860 = distinct !DILexicalBlock(scope: !849, file: !6, line: 1362, column: 32)
!861 = !DILocation(line: 1365, column: 25, scope: !850)
!862 = !DILocation(line: 1365, column: 28, scope: !850)
!863 = !DILocation(line: 1365, column: 30, scope: !850)
!864 = !DILocation(line: 1365, column: 40, scope: !850)
!865 = !DILocation(line: 1365, column: 57, scope: !850)
!866 = !DILocation(line: 1365, column: 13, scope: !850)
!867 = !DILocation(line: 1365, column: 21, scope: !850)
!868 = !DILocation(line: 1366, column: 9, scope: !850)
!869 = !DILocation(line: 1367, column: 9, scope: !603)
!870 = !DILocation(line: 1368, column: 9, scope: !603)
!871 = !DILocation(line: 1369, column: 9, scope: !603)
!872 = !DILocation(line: 1369, column: 9, scope: !873)
!873 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1369, column: 9)
!874 = distinct !{!874, !871, !871}
!875 = !DILocation(line: 1370, column: 9, scope: !603)
!876 = !DILocation(line: 1370, column: 9, scope: !877)
!877 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1370, column: 9)
!878 = distinct !{!878, !875, !875}
!879 = !DILocation(line: 1371, column: 9, scope: !603)
!880 = !DILocalVariable(name: "loaded", scope: !603, file: !6, line: 1372, type: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !175, line: 77, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !32, line: 193, baseType: !112)
!883 = !DILocation(line: 1372, column: 17, scope: !603)
!884 = !DILocation(line: 1372, column: 50, scope: !603)
!885 = !DILocation(line: 1372, column: 55, scope: !603)
!886 = !DILocation(line: 1372, column: 61, scope: !603)
!887 = !DILocation(line: 1372, column: 59, scope: !603)
!888 = !DILocation(line: 1372, column: 26, scope: !603)
!889 = !DILocation(line: 1373, column: 13, scope: !890)
!890 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1373, column: 13)
!891 = !DILocation(line: 1373, column: 20, scope: !890)
!892 = !DILocation(line: 1373, column: 13, scope: !603)
!893 = !DILocation(line: 1374, column: 11, scope: !890)
!894 = !DILocation(line: 1376, column: 14, scope: !895)
!895 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1376, column: 13)
!896 = !DILocation(line: 1376, column: 26, scope: !895)
!897 = !DILocation(line: 1376, column: 13, scope: !603)
!898 = !DILocation(line: 1377, column: 15, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !6, line: 1377, column: 15)
!900 = distinct !DILexicalBlock(scope: !895, file: !6, line: 1376, column: 33)
!901 = !DILocation(line: 1377, column: 15, scope: !900)
!902 = !DILocation(line: 1379, column: 46, scope: !899)
!903 = !DILocation(line: 1382, column: 29, scope: !899)
!904 = !DILocation(line: 1383, column: 45, scope: !899)
!905 = !DILocation(line: 1384, column: 46, scope: !899)
!906 = !DILocation(line: 1384, column: 58, scope: !899)
!907 = !DILocation(line: 1384, column: 45, scope: !899)
!908 = !DILocation(line: 1378, column: 13, scope: !899)
!909 = !DILocation(line: 1388, column: 28, scope: !910)
!910 = distinct !DILexicalBlock(scope: !899, file: !6, line: 1387, column: 20)
!911 = !DILocation(line: 1388, column: 53, scope: !910)
!912 = !DILocation(line: 1387, column: 20, scope: !910)
!913 = !DILocation(line: 1387, column: 20, scope: !899)
!914 = !DILocation(line: 1390, column: 13, scope: !910)
!915 = !DILocation(line: 1391, column: 9, scope: !900)
!916 = !DILocation(line: 1392, column: 9, scope: !603)
!917 = !DILocation(line: 1396, column: 42, scope: !603)
!918 = !DILocation(line: 1396, column: 9, scope: !603)
!919 = !DILocation(line: 1397, column: 9, scope: !603)
!920 = !DILocation(line: 1398, column: 9, scope: !603)
!921 = !DILocation(line: 1399, column: 9, scope: !603)
!922 = !DILocation(line: 1399, column: 9, scope: !923)
!923 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1399, column: 9)
!924 = distinct !{!924, !921, !921}
!925 = !DILocation(line: 1400, column: 9, scope: !603)
!926 = !DILocation(line: 1400, column: 9, scope: !927)
!927 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1400, column: 9)
!928 = distinct !{!928, !925, !925}
!929 = !DILocation(line: 1401, column: 9, scope: !603)
!930 = !DILocation(line: 1402, column: 16, scope: !931)
!931 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1402, column: 13)
!932 = !DILocation(line: 1402, column: 24, scope: !931)
!933 = !DILocation(line: 1402, column: 14, scope: !931)
!934 = !DILocation(line: 1402, column: 31, scope: !931)
!935 = !DILocation(line: 1402, column: 13, scope: !603)
!936 = !DILocation(line: 1403, column: 17, scope: !937)
!937 = distinct !DILexicalBlock(scope: !931, file: !6, line: 1402, column: 46)
!938 = !DILocation(line: 1403, column: 21, scope: !937)
!939 = !DILocation(line: 1404, column: 11, scope: !937)
!940 = !DILocalVariable(name: "pos", scope: !941, file: !6, line: 1406, type: !29)
!941 = distinct !DILexicalBlock(scope: !931, file: !6, line: 1405, column: 16)
!942 = !DILocation(line: 1406, column: 20, scope: !941)
!943 = !DILocation(line: 1406, column: 28, scope: !941)
!944 = !DILocation(line: 1406, column: 31, scope: !941)
!945 = !DILocation(line: 1406, column: 33, scope: !941)
!946 = !DILocation(line: 1406, column: 43, scope: !941)
!947 = !DILocalVariable(name: "nested", scope: !941, file: !6, line: 1407, type: !29)
!948 = !DILocation(line: 1407, column: 20, scope: !941)
!949 = !DILocation(line: 1408, column: 11, scope: !941)
!950 = !DILocation(line: 1409, column: 13, scope: !951)
!951 = distinct !DILexicalBlock(scope: !941, file: !6, line: 1408, column: 14)
!952 = !DILocation(line: 1410, column: 19, scope: !953)
!953 = distinct !DILexicalBlock(scope: !951, file: !6, line: 1410, column: 17)
!954 = !DILocation(line: 1410, column: 21, scope: !953)
!955 = !DILocation(line: 1410, column: 17, scope: !953)
!956 = !DILocation(line: 1410, column: 26, scope: !953)
!957 = !DILocation(line: 1410, column: 38, scope: !953)
!958 = !DILocation(line: 1410, column: 17, scope: !951)
!959 = !DILocation(line: 1411, column: 15, scope: !953)
!960 = !DILocation(line: 1412, column: 24, scope: !961)
!961 = distinct !DILexicalBlock(scope: !953, file: !6, line: 1412, column: 22)
!962 = !DILocation(line: 1412, column: 26, scope: !961)
!963 = !DILocation(line: 1412, column: 22, scope: !961)
!964 = !DILocation(line: 1412, column: 31, scope: !961)
!965 = !DILocation(line: 1412, column: 43, scope: !961)
!966 = !DILocation(line: 1412, column: 69, scope: !961)
!967 = !DILocation(line: 1413, column: 24, scope: !961)
!968 = !DILocation(line: 1413, column: 26, scope: !961)
!969 = !DILocation(line: 1413, column: 22, scope: !961)
!970 = !DILocation(line: 1413, column: 31, scope: !961)
!971 = !DILocation(line: 1413, column: 43, scope: !961)
!972 = !DILocation(line: 1412, column: 22, scope: !953)
!973 = !DILocation(line: 1414, column: 19, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !6, line: 1414, column: 19)
!975 = distinct !DILexicalBlock(scope: !961, file: !6, line: 1413, column: 74)
!976 = !DILocation(line: 1414, column: 19, scope: !975)
!977 = !DILocation(line: 1415, column: 17, scope: !978)
!978 = distinct !DILexicalBlock(scope: !974, file: !6, line: 1414, column: 27)
!979 = !DILocation(line: 1416, column: 15, scope: !978)
!980 = !DILocation(line: 1418, column: 23, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !6, line: 1418, column: 21)
!982 = distinct !DILexicalBlock(scope: !974, file: !6, line: 1416, column: 22)
!983 = !DILocation(line: 1418, column: 25, scope: !981)
!984 = !DILocation(line: 1418, column: 21, scope: !981)
!985 = !DILocation(line: 1418, column: 30, scope: !981)
!986 = !DILocation(line: 1418, column: 35, scope: !981)
!987 = !DILocation(line: 1418, column: 47, scope: !981)
!988 = !DILocation(line: 1418, column: 53, scope: !981)
!989 = !DILocation(line: 1418, column: 51, scope: !981)
!990 = !DILocation(line: 1418, column: 44, scope: !981)
!991 = !DILocation(line: 1418, column: 57, scope: !981)
!992 = !DILocation(line: 1419, column: 28, scope: !981)
!993 = !DILocation(line: 1419, column: 35, scope: !981)
!994 = !DILocation(line: 1419, column: 44, scope: !981)
!995 = !DILocation(line: 1419, column: 46, scope: !981)
!996 = !DILocation(line: 1419, column: 42, scope: !981)
!997 = !DILocation(line: 1419, column: 51, scope: !981)
!998 = !DILocation(line: 1419, column: 56, scope: !981)
!999 = !DILocation(line: 1419, column: 40, scope: !981)
!1000 = !DILocation(line: 1420, column: 30, scope: !981)
!1001 = !DILocation(line: 1420, column: 32, scope: !981)
!1002 = !DILocation(line: 1420, column: 28, scope: !981)
!1003 = !DILocation(line: 1420, column: 37, scope: !981)
!1004 = !DILocation(line: 1420, column: 42, scope: !981)
!1005 = !DILocation(line: 1419, column: 21, scope: !981)
!1006 = !DILocation(line: 1418, column: 21, scope: !982)
!1007 = !DILocation(line: 1421, column: 25, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !981, file: !6, line: 1420, column: 53)
!1009 = !DILocation(line: 1421, column: 29, scope: !1008)
!1010 = !DILocation(line: 1422, column: 19, scope: !1008)
!1011 = !DILocation(line: 1425, column: 39, scope: !982)
!1012 = !DILocation(line: 1425, column: 42, scope: !982)
!1013 = !DILocation(line: 1425, column: 44, scope: !982)
!1014 = !DILocation(line: 1425, column: 54, scope: !982)
!1015 = !DILocation(line: 1425, column: 19, scope: !982)
!1016 = !DILocation(line: 1425, column: 21, scope: !982)
!1017 = !DILocation(line: 1425, column: 17, scope: !982)
!1018 = !DILocation(line: 1425, column: 26, scope: !982)
!1019 = !DILocation(line: 1425, column: 31, scope: !982)
!1020 = !DILocation(line: 1425, column: 35, scope: !982)
!1021 = !DILocation(line: 1426, column: 37, scope: !982)
!1022 = !DILocation(line: 1426, column: 50, scope: !982)
!1023 = !DILocation(line: 1426, column: 59, scope: !982)
!1024 = !DILocation(line: 1426, column: 61, scope: !982)
!1025 = !DILocation(line: 1426, column: 57, scope: !982)
!1026 = !DILocation(line: 1426, column: 66, scope: !982)
!1027 = !DILocation(line: 1426, column: 71, scope: !982)
!1028 = !DILocation(line: 1426, column: 55, scope: !982)
!1029 = !DILocation(line: 1427, column: 50, scope: !982)
!1030 = !DILocation(line: 1427, column: 52, scope: !982)
!1031 = !DILocation(line: 1427, column: 48, scope: !982)
!1032 = !DILocation(line: 1427, column: 57, scope: !982)
!1033 = !DILocation(line: 1427, column: 62, scope: !982)
!1034 = !DILocation(line: 1426, column: 80, scope: !982)
!1035 = !DILocation(line: 1426, column: 45, scope: !982)
!1036 = !DILocation(line: 1426, column: 19, scope: !982)
!1037 = !DILocation(line: 1426, column: 21, scope: !982)
!1038 = !DILocation(line: 1426, column: 17, scope: !982)
!1039 = !DILocation(line: 1426, column: 26, scope: !982)
!1040 = !DILocation(line: 1426, column: 31, scope: !982)
!1041 = !DILocation(line: 1426, column: 35, scope: !982)
!1042 = !DILocation(line: 1430, column: 50, scope: !982)
!1043 = !DILocation(line: 1432, column: 61, scope: !982)
!1044 = !DILocation(line: 1432, column: 63, scope: !982)
!1045 = !DILocation(line: 1432, column: 59, scope: !982)
!1046 = !DILocation(line: 1432, column: 68, scope: !982)
!1047 = !DILocation(line: 1429, column: 17, scope: !982)
!1048 = !DILocation(line: 1434, column: 21, scope: !982)
!1049 = !DILocation(line: 1434, column: 29, scope: !982)
!1050 = !DILocation(line: 1434, column: 19, scope: !982)
!1051 = !DILocation(line: 1434, column: 36, scope: !982)
!1052 = !DILocation(line: 1434, column: 17, scope: !982)
!1053 = !DILocation(line: 1436, column: 21, scope: !982)
!1054 = !DILocation(line: 1437, column: 21, scope: !982)
!1055 = !DILocation(line: 1439, column: 13, scope: !975)
!1056 = !DILocation(line: 1440, column: 11, scope: !951)
!1057 = !DILocation(line: 1440, column: 20, scope: !941)
!1058 = distinct !{!1058, !949, !1059}
!1059 = !DILocation(line: 1440, column: 23, scope: !941)
!1060 = !DILocation(line: 1441, column: 15, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !941, file: !6, line: 1441, column: 15)
!1062 = !DILocation(line: 1441, column: 15, scope: !941)
!1063 = !DILocation(line: 1442, column: 19, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1061, file: !6, line: 1441, column: 20)
!1065 = !DILocation(line: 1442, column: 23, scope: !1064)
!1066 = !DILocation(line: 1443, column: 13, scope: !1064)
!1067 = !DILocation(line: 1446, column: 9, scope: !603)
!1068 = !DILocation(line: 1450, column: 15, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1450, column: 13)
!1070 = !DILocation(line: 1450, column: 22, scope: !1069)
!1071 = !DILocation(line: 1450, column: 30, scope: !1069)
!1072 = !DILocation(line: 1450, column: 20, scope: !1069)
!1073 = !DILocation(line: 1450, column: 37, scope: !1069)
!1074 = !DILocation(line: 1450, column: 13, scope: !1069)
!1075 = !DILocation(line: 1450, column: 47, scope: !1069)
!1076 = !DILocation(line: 1450, column: 54, scope: !1069)
!1077 = !DILocation(line: 1451, column: 15, scope: !1069)
!1078 = !DILocation(line: 1451, column: 23, scope: !1069)
!1079 = !DILocation(line: 1451, column: 13, scope: !1069)
!1080 = !DILocation(line: 1451, column: 30, scope: !1069)
!1081 = !DILocation(line: 1451, column: 41, scope: !1069)
!1082 = !DILocation(line: 1451, column: 48, scope: !1069)
!1083 = !DILocation(line: 1452, column: 15, scope: !1069)
!1084 = !DILocation(line: 1452, column: 23, scope: !1069)
!1085 = !DILocation(line: 1452, column: 13, scope: !1069)
!1086 = !DILocation(line: 1452, column: 30, scope: !1069)
!1087 = !DILocation(line: 1452, column: 40, scope: !1069)
!1088 = !DILocation(line: 1452, column: 48, scope: !1069)
!1089 = !DILocation(line: 1452, column: 38, scope: !1069)
!1090 = !DILocation(line: 1452, column: 55, scope: !1069)
!1091 = !DILocation(line: 1452, column: 67, scope: !1069)
!1092 = !DILocation(line: 1452, column: 72, scope: !1069)
!1093 = !DILocation(line: 1450, column: 13, scope: !603)
!1094 = !DILocation(line: 1453, column: 15, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1069, file: !6, line: 1452, column: 80)
!1096 = !DILocation(line: 1453, column: 23, scope: !1095)
!1097 = !DILocation(line: 1453, column: 13, scope: !1095)
!1098 = !DILocation(line: 1453, column: 30, scope: !1095)
!1099 = !DILocation(line: 1453, column: 11, scope: !1095)
!1100 = !DILocation(line: 1454, column: 9, scope: !1095)
!1101 = !DILocation(line: 1452, column: 75, scope: !1069)
!1102 = !DILocation(line: 1458, column: 14, scope: !603)
!1103 = !DILocation(line: 1458, column: 9, scope: !603)
!1104 = !DILocation(line: 1462, column: 9, scope: !603)
!1105 = !DILocation(line: 1464, column: 9, scope: !603)
!1106 = !DILocation(line: 1465, column: 9, scope: !603)
!1107 = !DILocation(line: 1465, column: 9, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1465, column: 9)
!1109 = distinct !{!1109, !1106, !1106}
!1110 = !DILocation(line: 1466, column: 9, scope: !603)
!1111 = !DILocation(line: 1466, column: 9, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !603, file: !6, line: 1466, column: 9)
!1113 = distinct !{!1113, !1110, !1110}
!1114 = !DILocation(line: 1467, column: 9, scope: !603)
!1115 = !DILocation(line: 1469, column: 42, scope: !603)
!1116 = !DILocation(line: 1470, column: 37, scope: !603)
!1117 = !DILocation(line: 1472, column: 29, scope: !603)
!1118 = !DILocation(line: 1472, column: 42, scope: !603)
!1119 = !DILocation(line: 1472, column: 50, scope: !603)
!1120 = !DILocation(line: 1472, column: 46, scope: !603)
!1121 = !DILocation(line: 1472, column: 68, scope: !603)
!1122 = !DILocation(line: 1472, column: 74, scope: !603)
!1123 = !DILocation(line: 1472, column: 72, scope: !603)
!1124 = !DILocation(line: 1468, column: 9, scope: !603)
!1125 = !DILocation(line: 1473, column: 9, scope: !603)
!1126 = !DILocation(line: 1477, column: 11, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !387, file: !6, line: 1477, column: 9)
!1128 = !DILocation(line: 1477, column: 19, scope: !1127)
!1129 = !DILocation(line: 1477, column: 9, scope: !1127)
!1130 = !DILocation(line: 1477, column: 26, scope: !1127)
!1131 = !DILocation(line: 1477, column: 9, scope: !387)
!1132 = !DILocation(line: 1478, column: 13, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1127, file: !6, line: 1477, column: 41)
!1134 = !DILocation(line: 1478, column: 17, scope: !1133)
!1135 = !DILocation(line: 1479, column: 7, scope: !1133)
!1136 = !DILocation(line: 1483, column: 10, scope: !387)
!1137 = !DILocation(line: 1484, column: 11, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !387, file: !6, line: 1484, column: 9)
!1139 = !DILocation(line: 1484, column: 14, scope: !1138)
!1140 = !DILocation(line: 1484, column: 16, scope: !1138)
!1141 = !DILocation(line: 1484, column: 26, scope: !1138)
!1142 = !DILocation(line: 1484, column: 9, scope: !1138)
!1143 = !DILocation(line: 1484, column: 43, scope: !1138)
!1144 = !DILocation(line: 1485, column: 11, scope: !1138)
!1145 = !DILocation(line: 1485, column: 15, scope: !1138)
!1146 = !DILocation(line: 1485, column: 18, scope: !1138)
!1147 = !DILocation(line: 1485, column: 20, scope: !1138)
!1148 = !DILocation(line: 1485, column: 30, scope: !1138)
!1149 = !DILocation(line: 1485, column: 47, scope: !1138)
!1150 = !DILocation(line: 1485, column: 9, scope: !1138)
!1151 = !DILocation(line: 1485, column: 52, scope: !1138)
!1152 = !DILocation(line: 1485, column: 64, scope: !1138)
!1153 = !DILocation(line: 1484, column: 9, scope: !387)
!1154 = !DILocation(line: 1487, column: 11, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1138, file: !6, line: 1486, column: 37)
!1156 = !DILocation(line: 1487, column: 14, scope: !1155)
!1157 = !DILocation(line: 1487, column: 16, scope: !1155)
!1158 = !DILocation(line: 1487, column: 26, scope: !1155)
!1159 = !DILocation(line: 1487, column: 7, scope: !1155)
!1160 = !DILocation(line: 1488, column: 12, scope: !1155)
!1161 = !DILocation(line: 1489, column: 5, scope: !1155)
!1162 = !DILocalVariable(name: "seg", scope: !387, file: !6, line: 1491, type: !1163)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "mustache__data_segment_s", file: !6, line: 650, baseType: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 644, size: 192, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1170}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1164, file: !6, line: 645, baseType: !151, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "inst_start", scope: !1164, file: !6, line: 646, baseType: !29, size: 32, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1164, file: !6, line: 647, baseType: !29, size: 32, offset: 96)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "filename_len", scope: !1164, file: !6, line: 648, baseType: !36, size: 16, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "path_len", scope: !1164, file: !6, line: 649, baseType: !36, size: 16, offset: 144)
!1171 = !DILocation(line: 1491, column: 30, scope: !387)
!1172 = !DILocation(line: 1492, column: 22, scope: !387)
!1173 = !DILocation(line: 1492, column: 31, scope: !387)
!1174 = !DILocation(line: 1492, column: 39, scope: !387)
!1175 = !DILocation(line: 1492, column: 29, scope: !387)
!1176 = !DILocation(line: 1492, column: 46, scope: !387)
!1177 = !DILocation(line: 1492, column: 27, scope: !387)
!1178 = !DILocation(line: 1491, column: 36, scope: !387)
!1179 = !DILocation(line: 1493, column: 38, scope: !387)
!1180 = !DILocation(line: 1493, column: 41, scope: !387)
!1181 = !DILocation(line: 1493, column: 43, scope: !387)
!1182 = !DILocation(line: 1493, column: 53, scope: !387)
!1183 = !DILocation(line: 1493, column: 7, scope: !387)
!1184 = !DILocation(line: 1493, column: 13, scope: !387)
!1185 = !DILocation(line: 1493, column: 5, scope: !387)
!1186 = !DILocation(line: 1493, column: 25, scope: !387)
!1187 = !DILocation(line: 1493, column: 30, scope: !387)
!1188 = !DILocation(line: 1493, column: 34, scope: !387)
!1189 = !DILocation(line: 1496, column: 13, scope: !387)
!1190 = !DILocation(line: 1496, column: 38, scope: !387)
!1191 = !DILocation(line: 1495, column: 5, scope: !387)
!1192 = !DILocation(line: 1498, column: 11, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !387, file: !6, line: 1498, column: 9)
!1194 = !DILocation(line: 1498, column: 9, scope: !1193)
!1195 = !DILocation(line: 1498, column: 19, scope: !1193)
!1196 = !DILocation(line: 1498, column: 24, scope: !1193)
!1197 = !DILocation(line: 1498, column: 32, scope: !1193)
!1198 = !DILocation(line: 1498, column: 43, scope: !1193)
!1199 = !DILocation(line: 1498, column: 36, scope: !1193)
!1200 = !DILocation(line: 1498, column: 9, scope: !387)
!1201 = !DILocation(line: 1499, column: 21, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1193, file: !6, line: 1498, column: 55)
!1203 = !DILocation(line: 1499, column: 25, scope: !1202)
!1204 = !DILocation(line: 1499, column: 19, scope: !1202)
!1205 = !DILocation(line: 1499, column: 34, scope: !1202)
!1206 = !DILocation(line: 1499, column: 39, scope: !1202)
!1207 = !DILocation(line: 1499, column: 9, scope: !1202)
!1208 = !DILocation(line: 1499, column: 17, scope: !1202)
!1209 = !DILocation(line: 1500, column: 38, scope: !1202)
!1210 = !DILocation(line: 1500, column: 63, scope: !1202)
!1211 = !DILocation(line: 1500, column: 7, scope: !1202)
!1212 = !DILocation(line: 1503, column: 5, scope: !1202)
!1213 = !DILocation(line: 1505, column: 9, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !387, file: !6, line: 1505, column: 9)
!1215 = !DILocation(line: 1505, column: 9, scope: !387)
!1216 = !DILocation(line: 1506, column: 38, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !6, line: 1505, column: 15)
!1218 = !DILocation(line: 1506, column: 63, scope: !1217)
!1219 = !DILocation(line: 1506, column: 7, scope: !1217)
!1220 = !DILocation(line: 1509, column: 12, scope: !1217)
!1221 = !DILocation(line: 1510, column: 5, scope: !1217)
!1222 = !DILocation(line: 1512, column: 9, scope: !387)
!1223 = !DILocation(line: 1512, column: 5, scope: !387)
!1224 = distinct !{!1224, !384, !1225}
!1225 = !DILocation(line: 1513, column: 3, scope: !246)
!1226 = !DILocation(line: 1515, column: 19, scope: !246)
!1227 = !DILocation(line: 1515, column: 17, scope: !246)
!1228 = !DILocation(line: 1516, column: 44, scope: !246)
!1229 = !DILocation(line: 1516, column: 47, scope: !246)
!1230 = !DILocation(line: 1516, column: 49, scope: !246)
!1231 = !DILocation(line: 1516, column: 59, scope: !246)
!1232 = !DILocation(line: 1516, column: 42, scope: !246)
!1233 = !DILocation(line: 1516, column: 40, scope: !246)
!1234 = !DILocation(line: 1515, column: 35, scope: !246)
!1235 = !DILocation(line: 1517, column: 28, scope: !246)
!1236 = !DILocation(line: 1517, column: 26, scope: !246)
!1237 = !DILocation(line: 1516, column: 77, scope: !246)
!1238 = !DILocation(line: 1515, column: 9, scope: !246)
!1239 = !DILocation(line: 1515, column: 5, scope: !246)
!1240 = !DILocation(line: 1515, column: 7, scope: !246)
!1241 = !DILocation(line: 1518, column: 3, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !246, file: !6, line: 1518, column: 3)
!1243 = !DILocation(line: 1518, column: 3, scope: !246)
!1244 = !DILocation(line: 1518, column: 3, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !6, line: 1518, column: 3)
!1246 = !DILocation(line: 1520, column: 10, scope: !246)
!1247 = !DILocation(line: 1520, column: 3, scope: !246)
!1248 = !DILocation(line: 1520, column: 31, scope: !246)
!1249 = !DILocation(line: 1520, column: 39, scope: !246)
!1250 = !DILocation(line: 1520, column: 37, scope: !246)
!1251 = !DILocation(line: 1521, column: 10, scope: !246)
!1252 = !DILocation(line: 1521, column: 3, scope: !246)
!1253 = !DILocation(line: 1522, column: 10, scope: !246)
!1254 = !DILocation(line: 1522, column: 3, scope: !246)
!1255 = !DILocation(line: 1524, column: 9, scope: !246)
!1256 = !DILocation(line: 1524, column: 13, scope: !246)
!1257 = !DILocation(line: 1525, column: 12, scope: !246)
!1258 = !DILocation(line: 1525, column: 3, scope: !246)
!1259 = !DILabel(scope: !246, name: "error", file: !6, line: 1527)
!1260 = !DILocation(line: 1527, column: 1, scope: !246)
!1261 = !DILocation(line: 1528, column: 10, scope: !246)
!1262 = !DILocation(line: 1528, column: 3, scope: !246)
!1263 = !DILocation(line: 1529, column: 10, scope: !246)
!1264 = !DILocation(line: 1529, column: 3, scope: !246)
!1265 = !DILocation(line: 1530, column: 10, scope: !246)
!1266 = !DILocation(line: 1530, column: 8, scope: !246)
!1267 = !DILocation(line: 1530, column: 3, scope: !246)
!1268 = !DILocation(line: 1531, column: 3, scope: !246)
!1269 = !DILocation(line: 1532, column: 1, scope: !246)
!1270 = distinct !DISubprogram(name: "fiobj_mustache_new", scope: !3, file: !3, line: 45, type: !247, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!1271 = !DILocalVariable(name: "args", arg: 1, scope: !1270, file: !3, line: 45, type: !249)
!1272 = !DILocation(line: 45, column: 70, scope: !1270)
!1273 = !DILocation(line: 46, column: 10, scope: !1270)
!1274 = !DILocation(line: 46, column: 3, scope: !1270)
!1275 = distinct !DISubprogram(name: "fiobj_mustache_free", scope: !3, file: !3, line: 50, type: !1276, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !118}
!1278 = !DILocalVariable(name: "mustache", arg: 1, scope: !1275, file: !3, line: 50, type: !118)
!1279 = !DILocation(line: 50, column: 38, scope: !1275)
!1280 = !DILocation(line: 50, column: 64, scope: !1275)
!1281 = !DILocation(line: 50, column: 50, scope: !1275)
!1282 = !DILocation(line: 50, column: 75, scope: !1275)
!1283 = distinct !DISubprogram(name: "mustache_free", scope: !6, file: !6, line: 121, type: !1276, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!1284 = !DILocalVariable(name: "mustache", arg: 1, scope: !1283, file: !6, line: 121, type: !118)
!1285 = !DILocation(line: 121, column: 53, scope: !1283)
!1286 = !DILocation(line: 122, column: 8, scope: !1283)
!1287 = !DILocation(line: 122, column: 3, scope: !1283)
!1288 = !DILocation(line: 123, column: 1, scope: !1283)
!1289 = distinct !DISubprogram(name: "fiobj_mustache_build2", scope: !3, file: !3, line: 58, type: !1290, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!93, !93, !118, !93}
!1292 = !DILocalVariable(name: "dest", arg: 1, scope: !1289, file: !3, line: 58, type: !93)
!1293 = !DILocation(line: 58, column: 35, scope: !1289)
!1294 = !DILocalVariable(name: "mustache", arg: 2, scope: !1289, file: !3, line: 58, type: !118)
!1295 = !DILocation(line: 58, column: 53, scope: !1289)
!1296 = !DILocalVariable(name: "data", arg: 3, scope: !1289, file: !3, line: 58, type: !93)
!1297 = !DILocation(line: 58, column: 69, scope: !1289)
!1298 = !DILocation(line: 59, column: 3, scope: !1289)
!1299 = !DILocation(line: 60, column: 10, scope: !1289)
!1300 = !DILocation(line: 60, column: 3, scope: !1289)
!1301 = distinct !DISubprogram(name: "mustache_build", scope: !6, file: !6, line: 1014, type: !1302, scopeLine: 1014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!87, !1304}
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "mustache_build_args_s", file: !6, line: 141, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 126, size: 256, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "mustache", scope: !1305, file: !6, line: 128, baseType: !118, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "udata1", scope: !1305, file: !6, line: 133, baseType: !81, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "udata2", scope: !1305, file: !6, line: 138, baseType: !81, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1305, file: !6, line: 140, baseType: !257, size: 64, offset: 192)
!1311 = !DILocalVariable(name: "args", arg: 1, scope: !1301, file: !6, line: 1014, type: !1304)
!1312 = !DILocation(line: 1014, column: 57, scope: !1301)
!1313 = !DILocalVariable(name: "err_if_missing", scope: !1301, file: !6, line: 1015, type: !258)
!1314 = !DILocation(line: 1015, column: 21, scope: !1301)
!1315 = !DILocation(line: 1016, column: 13, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1301, file: !6, line: 1016, column: 7)
!1317 = !DILocation(line: 1016, column: 8, scope: !1316)
!1318 = !DILocation(line: 1016, column: 7, scope: !1301)
!1319 = !DILocation(line: 1017, column: 10, scope: !1316)
!1320 = !DILocation(line: 1017, column: 14, scope: !1316)
!1321 = !DILocation(line: 1017, column: 5, scope: !1316)
!1322 = !DILocation(line: 1018, column: 13, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1301, file: !6, line: 1018, column: 7)
!1324 = !DILocation(line: 1018, column: 8, scope: !1323)
!1325 = !DILocation(line: 1018, column: 7, scope: !1301)
!1326 = !DILocation(line: 1019, column: 5, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !6, line: 1018, column: 23)
!1328 = !DILocalVariable(name: "instructions", scope: !1301, file: !6, line: 1022, type: !82)
!1329 = !DILocation(line: 1022, column: 28, scope: !1301)
!1330 = !DILocation(line: 1022, column: 43, scope: !1301)
!1331 = !DILocalVariable(name: "data", scope: !1301, file: !6, line: 1023, type: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!1333 = !DILocation(line: 1023, column: 15, scope: !1301)
!1334 = !DILocation(line: 1023, column: 22, scope: !1301)
!1335 = !DILocalVariable(name: "s", scope: !1301, file: !6, line: 1024, type: !114)
!1336 = !DILocation(line: 1024, column: 29, scope: !1301)
!1337 = !DILocation(line: 1025, column: 17, scope: !1301)
!1338 = !DILocation(line: 1025, column: 5, scope: !1301)
!1339 = !DILocation(line: 1025, column: 10, scope: !1301)
!1340 = !DILocation(line: 1026, column: 5, scope: !1301)
!1341 = !DILocation(line: 1026, column: 9, scope: !1301)
!1342 = !DILocation(line: 1027, column: 5, scope: !1301)
!1343 = !DILocation(line: 1027, column: 11, scope: !1301)
!1344 = !DILocation(line: 1028, column: 5, scope: !1301)
!1345 = !DILocation(line: 1028, column: 13, scope: !1301)
!1346 = !DILocation(line: 1029, column: 5, scope: !1301)
!1347 = !DILocation(line: 1029, column: 3, scope: !1301)
!1348 = !DILocation(line: 1029, column: 49, scope: !1301)
!1349 = !DILocation(line: 1031, column: 11, scope: !1301)
!1350 = !DILocation(line: 1032, column: 30, scope: !1301)
!1351 = !DILocation(line: 1033, column: 30, scope: !1301)
!1352 = !DILocation(line: 1036, column: 14, scope: !1301)
!1353 = !DILocation(line: 1036, column: 30, scope: !1301)
!1354 = !DILocation(line: 1036, column: 35, scope: !1301)
!1355 = !DILocation(line: 1029, column: 16, scope: !1301)
!1356 = !DILocation(line: 1041, column: 3, scope: !1301)
!1357 = !DILocation(line: 1041, column: 22, scope: !1301)
!1358 = !DILocation(line: 1041, column: 39, scope: !1301)
!1359 = !DILocation(line: 1041, column: 35, scope: !1301)
!1360 = !DILocation(line: 1041, column: 10, scope: !1301)
!1361 = !DILocation(line: 1041, column: 57, scope: !1301)
!1362 = !DILocation(line: 1041, column: 46, scope: !1301)
!1363 = !DILocation(line: 1041, column: 44, scope: !1301)
!1364 = !DILocation(line: 1042, column: 13, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1301, file: !6, line: 1041, column: 63)
!1366 = !DILocation(line: 1042, column: 28, scope: !1365)
!1367 = !DILocation(line: 1042, column: 33, scope: !1365)
!1368 = !DILocation(line: 1042, column: 5, scope: !1365)
!1369 = !DILocation(line: 1044, column: 31, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !6, line: 1044, column: 11)
!1371 = distinct !DILexicalBlock(scope: !1365, file: !6, line: 1042, column: 46)
!1372 = !DILocation(line: 1044, column: 39, scope: !1370)
!1373 = !DILocation(line: 1044, column: 29, scope: !1370)
!1374 = !DILocation(line: 1044, column: 46, scope: !1370)
!1375 = !DILocation(line: 1045, column: 28, scope: !1370)
!1376 = !DILocation(line: 1045, column: 35, scope: !1370)
!1377 = !DILocation(line: 1045, column: 50, scope: !1370)
!1378 = !DILocation(line: 1045, column: 55, scope: !1370)
!1379 = !DILocation(line: 1045, column: 60, scope: !1370)
!1380 = !DILocation(line: 1045, column: 33, scope: !1370)
!1381 = !DILocation(line: 1046, column: 28, scope: !1370)
!1382 = !DILocation(line: 1046, column: 43, scope: !1370)
!1383 = !DILocation(line: 1046, column: 48, scope: !1370)
!1384 = !DILocation(line: 1046, column: 53, scope: !1370)
!1385 = !DILocation(line: 1044, column: 11, scope: !1370)
!1386 = !DILocation(line: 1044, column: 11, scope: !1371)
!1387 = !DILocation(line: 1047, column: 9, scope: !1370)
!1388 = !DILocation(line: 1048, column: 7, scope: !1371)
!1389 = !DILocation(line: 1051, column: 30, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1371, file: !6, line: 1051, column: 11)
!1391 = !DILocation(line: 1051, column: 38, scope: !1390)
!1392 = !DILocation(line: 1051, column: 28, scope: !1390)
!1393 = !DILocation(line: 1051, column: 45, scope: !1390)
!1394 = !DILocation(line: 1052, column: 27, scope: !1390)
!1395 = !DILocation(line: 1052, column: 34, scope: !1390)
!1396 = !DILocation(line: 1052, column: 49, scope: !1390)
!1397 = !DILocation(line: 1052, column: 54, scope: !1390)
!1398 = !DILocation(line: 1052, column: 59, scope: !1390)
!1399 = !DILocation(line: 1052, column: 32, scope: !1390)
!1400 = !DILocation(line: 1053, column: 27, scope: !1390)
!1401 = !DILocation(line: 1053, column: 42, scope: !1390)
!1402 = !DILocation(line: 1053, column: 47, scope: !1390)
!1403 = !DILocation(line: 1053, column: 52, scope: !1390)
!1404 = !DILocation(line: 1051, column: 11, scope: !1390)
!1405 = !DILocation(line: 1051, column: 11, scope: !1371)
!1406 = !DILocation(line: 1054, column: 9, scope: !1390)
!1407 = !DILocation(line: 1055, column: 7, scope: !1371)
!1408 = !DILocation(line: 1057, column: 30, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1371, file: !6, line: 1057, column: 11)
!1410 = !DILocation(line: 1057, column: 38, scope: !1409)
!1411 = !DILocation(line: 1057, column: 28, scope: !1409)
!1412 = !DILocation(line: 1057, column: 45, scope: !1409)
!1413 = !DILocation(line: 1058, column: 27, scope: !1409)
!1414 = !DILocation(line: 1058, column: 34, scope: !1409)
!1415 = !DILocation(line: 1058, column: 49, scope: !1409)
!1416 = !DILocation(line: 1058, column: 54, scope: !1409)
!1417 = !DILocation(line: 1058, column: 59, scope: !1409)
!1418 = !DILocation(line: 1058, column: 32, scope: !1409)
!1419 = !DILocation(line: 1059, column: 27, scope: !1409)
!1420 = !DILocation(line: 1059, column: 42, scope: !1409)
!1421 = !DILocation(line: 1059, column: 47, scope: !1409)
!1422 = !DILocation(line: 1059, column: 52, scope: !1409)
!1423 = !DILocation(line: 1057, column: 11, scope: !1409)
!1424 = !DILocation(line: 1057, column: 11, scope: !1371)
!1425 = !DILocation(line: 1060, column: 9, scope: !1409)
!1426 = !DILocation(line: 1061, column: 7, scope: !1371)
!1427 = !DILocation(line: 1068, column: 13, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1371, file: !6, line: 1068, column: 11)
!1429 = !DILocation(line: 1068, column: 11, scope: !1428)
!1430 = !DILocation(line: 1068, column: 19, scope: !1428)
!1431 = !DILocation(line: 1068, column: 23, scope: !1428)
!1432 = !DILocation(line: 1068, column: 11, scope: !1371)
!1433 = !DILocation(line: 1069, column: 18, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !6, line: 1069, column: 13)
!1435 = distinct !DILexicalBlock(scope: !1428, file: !6, line: 1068, column: 50)
!1436 = !DILocation(line: 1069, column: 13, scope: !1434)
!1437 = !DILocation(line: 1069, column: 13, scope: !1435)
!1438 = !DILocation(line: 1070, column: 17, scope: !1434)
!1439 = !DILocation(line: 1070, column: 21, scope: !1434)
!1440 = !DILocation(line: 1070, column: 11, scope: !1434)
!1441 = !DILocation(line: 1071, column: 9, scope: !1435)
!1442 = !DILocation(line: 1073, column: 9, scope: !1371)
!1443 = !DILocation(line: 1073, column: 17, scope: !1371)
!1444 = !DILocation(line: 1073, column: 15, scope: !1371)
!1445 = !DILocation(line: 1073, column: 23, scope: !1371)
!1446 = !DILocation(line: 1073, column: 7, scope: !1371)
!1447 = !DILocation(line: 1073, column: 28, scope: !1371)
!1448 = !DILocation(line: 1073, column: 36, scope: !1371)
!1449 = !DILocation(line: 1073, column: 44, scope: !1371)
!1450 = !DILocation(line: 1073, column: 34, scope: !1371)
!1451 = !DILocation(line: 1073, column: 51, scope: !1371)
!1452 = !DILocation(line: 1074, column: 11, scope: !1371)
!1453 = !DILocation(line: 1074, column: 7, scope: !1371)
!1454 = !DILocation(line: 1076, column: 12, scope: !1371)
!1455 = !DILocation(line: 1076, column: 27, scope: !1371)
!1456 = !DILocation(line: 1076, column: 32, scope: !1371)
!1457 = !DILocation(line: 1076, column: 44, scope: !1371)
!1458 = !DILocation(line: 1077, column: 18, scope: !1371)
!1459 = !DILocation(line: 1077, column: 33, scope: !1371)
!1460 = !DILocation(line: 1077, column: 38, scope: !1371)
!1461 = !DILocation(line: 1077, column: 43, scope: !1371)
!1462 = !DILocation(line: 1078, column: 20, scope: !1371)
!1463 = !DILocation(line: 1075, column: 9, scope: !1371)
!1464 = !DILocation(line: 1075, column: 17, scope: !1371)
!1465 = !DILocation(line: 1075, column: 7, scope: !1371)
!1466 = !DILocation(line: 1075, column: 24, scope: !1371)
!1467 = !DILocation(line: 1075, column: 30, scope: !1371)
!1468 = !DILocation(line: 1079, column: 30, scope: !1371)
!1469 = !DILocation(line: 1079, column: 45, scope: !1371)
!1470 = !DILocation(line: 1079, column: 50, scope: !1371)
!1471 = !DILocation(line: 1079, column: 55, scope: !1371)
!1472 = !DILocation(line: 1079, column: 9, scope: !1371)
!1473 = !DILocation(line: 1079, column: 17, scope: !1371)
!1474 = !DILocation(line: 1079, column: 7, scope: !1371)
!1475 = !DILocation(line: 1079, column: 24, scope: !1371)
!1476 = !DILocation(line: 1079, column: 28, scope: !1371)
!1477 = !DILocation(line: 1080, column: 34, scope: !1371)
!1478 = !DILocation(line: 1080, column: 9, scope: !1371)
!1479 = !DILocation(line: 1080, column: 17, scope: !1371)
!1480 = !DILocation(line: 1080, column: 7, scope: !1371)
!1481 = !DILocation(line: 1080, column: 24, scope: !1371)
!1482 = !DILocation(line: 1080, column: 30, scope: !1371)
!1483 = !DILocation(line: 1081, column: 9, scope: !1371)
!1484 = !DILocation(line: 1081, column: 17, scope: !1371)
!1485 = !DILocation(line: 1081, column: 7, scope: !1371)
!1486 = !DILocation(line: 1081, column: 24, scope: !1371)
!1487 = !DILocation(line: 1081, column: 30, scope: !1371)
!1488 = !DILocation(line: 1082, column: 9, scope: !1371)
!1489 = !DILocation(line: 1082, column: 17, scope: !1371)
!1490 = !DILocation(line: 1082, column: 7, scope: !1371)
!1491 = !DILocation(line: 1082, column: 24, scope: !1371)
!1492 = !DILocation(line: 1082, column: 30, scope: !1371)
!1493 = !DILocation(line: 1085, column: 11, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1371, file: !6, line: 1085, column: 11)
!1495 = !DILocation(line: 1085, column: 26, scope: !1494)
!1496 = !DILocation(line: 1085, column: 31, scope: !1494)
!1497 = !DILocation(line: 1085, column: 36, scope: !1494)
!1498 = !DILocation(line: 1085, column: 11, scope: !1371)
!1499 = !DILocalVariable(name: "val", scope: !1500, file: !6, line: 1087, type: !1501)
!1500 = distinct !DILexicalBlock(scope: !1494, file: !6, line: 1085, column: 46)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1502, line: 26, baseType: !1503)
!1502 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !32, line: 41, baseType: !87)
!1504 = !DILocation(line: 1087, column: 17, scope: !1500)
!1505 = !DILocation(line: 1088, column: 16, scope: !1500)
!1506 = !DILocation(line: 1088, column: 24, scope: !1500)
!1507 = !DILocation(line: 1088, column: 14, scope: !1500)
!1508 = !DILocation(line: 1088, column: 31, scope: !1500)
!1509 = !DILocation(line: 1088, column: 36, scope: !1500)
!1510 = !DILocation(line: 1088, column: 43, scope: !1500)
!1511 = !DILocation(line: 1088, column: 58, scope: !1500)
!1512 = !DILocation(line: 1088, column: 63, scope: !1500)
!1513 = !DILocation(line: 1088, column: 68, scope: !1500)
!1514 = !DILocation(line: 1088, column: 41, scope: !1500)
!1515 = !DILocation(line: 1089, column: 13, scope: !1500)
!1516 = !DILocation(line: 1089, column: 28, scope: !1500)
!1517 = !DILocation(line: 1089, column: 33, scope: !1500)
!1518 = !DILocation(line: 1089, column: 38, scope: !1500)
!1519 = !DILocation(line: 1090, column: 13, scope: !1500)
!1520 = !DILocation(line: 1090, column: 28, scope: !1500)
!1521 = !DILocation(line: 1090, column: 33, scope: !1500)
!1522 = !DILocation(line: 1090, column: 45, scope: !1500)
!1523 = !DILocation(line: 1087, column: 23, scope: !1500)
!1524 = !DILocation(line: 1091, column: 13, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1500, file: !6, line: 1091, column: 13)
!1526 = !DILocation(line: 1091, column: 17, scope: !1525)
!1527 = !DILocation(line: 1091, column: 13, scope: !1500)
!1528 = !DILocation(line: 1092, column: 11, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !6, line: 1091, column: 24)
!1530 = !DILocation(line: 1094, column: 13, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1500, file: !6, line: 1094, column: 13)
!1532 = !DILocation(line: 1094, column: 28, scope: !1531)
!1533 = !DILocation(line: 1094, column: 33, scope: !1531)
!1534 = !DILocation(line: 1094, column: 45, scope: !1531)
!1535 = !DILocation(line: 1094, column: 13, scope: !1500)
!1536 = !DILocation(line: 1096, column: 18, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1531, file: !6, line: 1094, column: 76)
!1538 = !DILocation(line: 1096, column: 22, scope: !1537)
!1539 = !DILocation(line: 1096, column: 15, scope: !1537)
!1540 = !DILocation(line: 1097, column: 9, scope: !1537)
!1541 = !DILocation(line: 1098, column: 44, scope: !1500)
!1542 = !DILocation(line: 1098, column: 11, scope: !1500)
!1543 = !DILocation(line: 1098, column: 19, scope: !1500)
!1544 = !DILocation(line: 1098, column: 9, scope: !1500)
!1545 = !DILocation(line: 1098, column: 26, scope: !1500)
!1546 = !DILocation(line: 1098, column: 32, scope: !1500)
!1547 = !DILocation(line: 1099, column: 7, scope: !1500)
!1548 = !DILocation(line: 1103, column: 13, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1371, file: !6, line: 1103, column: 11)
!1550 = !DILocation(line: 1103, column: 21, scope: !1549)
!1551 = !DILocation(line: 1103, column: 11, scope: !1549)
!1552 = !DILocation(line: 1103, column: 28, scope: !1549)
!1553 = !DILocation(line: 1103, column: 38, scope: !1549)
!1554 = !DILocation(line: 1103, column: 46, scope: !1549)
!1555 = !DILocation(line: 1103, column: 36, scope: !1549)
!1556 = !DILocation(line: 1103, column: 53, scope: !1549)
!1557 = !DILocation(line: 1103, column: 34, scope: !1549)
!1558 = !DILocation(line: 1103, column: 11, scope: !1371)
!1559 = !DILocation(line: 1105, column: 19, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1549, file: !6, line: 1103, column: 60)
!1561 = !DILocation(line: 1105, column: 27, scope: !1560)
!1562 = !DILocation(line: 1105, column: 17, scope: !1560)
!1563 = !DILocation(line: 1105, column: 34, scope: !1560)
!1564 = !DILocation(line: 1105, column: 11, scope: !1560)
!1565 = !DILocation(line: 1105, column: 15, scope: !1560)
!1566 = !DILocation(line: 1106, column: 11, scope: !1560)
!1567 = !DILocation(line: 1106, column: 19, scope: !1560)
!1568 = !DILocation(line: 1106, column: 9, scope: !1560)
!1569 = !DILocation(line: 1106, column: 26, scope: !1560)
!1570 = !DILocation(line: 1106, column: 34, scope: !1560)
!1571 = !DILocation(line: 1106, column: 42, scope: !1560)
!1572 = !DILocation(line: 1106, column: 40, scope: !1560)
!1573 = !DILocation(line: 1106, column: 48, scope: !1560)
!1574 = !DILocation(line: 1106, column: 32, scope: !1560)
!1575 = !DILocation(line: 1106, column: 53, scope: !1560)
!1576 = !DILocation(line: 1108, column: 13, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1560, file: !6, line: 1108, column: 13)
!1578 = !DILocation(line: 1108, column: 28, scope: !1577)
!1579 = !DILocation(line: 1108, column: 33, scope: !1577)
!1580 = !DILocation(line: 1108, column: 38, scope: !1577)
!1581 = !DILocation(line: 1108, column: 47, scope: !1577)
!1582 = !DILocation(line: 1109, column: 42, scope: !1577)
!1583 = !DILocation(line: 1109, column: 50, scope: !1577)
!1584 = !DILocation(line: 1109, column: 40, scope: !1577)
!1585 = !DILocation(line: 1109, column: 57, scope: !1577)
!1586 = !DILocation(line: 1110, column: 39, scope: !1577)
!1587 = !DILocation(line: 1110, column: 46, scope: !1577)
!1588 = !DILocation(line: 1110, column: 61, scope: !1577)
!1589 = !DILocation(line: 1110, column: 66, scope: !1577)
!1590 = !DILocation(line: 1110, column: 71, scope: !1577)
!1591 = !DILocation(line: 1110, column: 44, scope: !1577)
!1592 = !DILocation(line: 1111, column: 39, scope: !1577)
!1593 = !DILocation(line: 1111, column: 54, scope: !1577)
!1594 = !DILocation(line: 1111, column: 59, scope: !1577)
!1595 = !DILocation(line: 1111, column: 64, scope: !1577)
!1596 = !DILocation(line: 1112, column: 41, scope: !1577)
!1597 = !DILocation(line: 1112, column: 49, scope: !1577)
!1598 = !DILocation(line: 1112, column: 39, scope: !1577)
!1599 = !DILocation(line: 1112, column: 56, scope: !1577)
!1600 = !DILocation(line: 1109, column: 13, scope: !1577)
!1601 = !DILocation(line: 1112, column: 63, scope: !1577)
!1602 = !DILocation(line: 1108, column: 13, scope: !1560)
!1603 = !DILocation(line: 1113, column: 11, scope: !1577)
!1604 = !DILocation(line: 1115, column: 13, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1560, file: !6, line: 1115, column: 13)
!1606 = !DILocation(line: 1115, column: 28, scope: !1605)
!1607 = !DILocation(line: 1115, column: 33, scope: !1605)
!1608 = !DILocation(line: 1115, column: 45, scope: !1605)
!1609 = !DILocation(line: 1115, column: 13, scope: !1560)
!1610 = !DILocation(line: 1116, column: 15, scope: !1605)
!1611 = !DILocation(line: 1116, column: 11, scope: !1605)
!1612 = !DILocation(line: 1117, column: 13, scope: !1560)
!1613 = !DILocation(line: 1117, column: 21, scope: !1560)
!1614 = !DILocation(line: 1117, column: 11, scope: !1560)
!1615 = !DILocation(line: 1117, column: 28, scope: !1560)
!1616 = !DILocation(line: 1117, column: 9, scope: !1560)
!1617 = !DILocation(line: 1118, column: 9, scope: !1560)
!1618 = !DILocation(line: 1120, column: 17, scope: !1371)
!1619 = !DILocation(line: 1120, column: 25, scope: !1371)
!1620 = !DILocation(line: 1120, column: 15, scope: !1371)
!1621 = !DILocation(line: 1120, column: 32, scope: !1371)
!1622 = !DILocation(line: 1120, column: 9, scope: !1371)
!1623 = !DILocation(line: 1120, column: 13, scope: !1371)
!1624 = !DILocation(line: 1121, column: 11, scope: !1371)
!1625 = !DILocation(line: 1121, column: 7, scope: !1371)
!1626 = !DILocation(line: 1122, column: 7, scope: !1371)
!1627 = !DILocation(line: 1124, column: 21, scope: !1371)
!1628 = !DILocation(line: 1124, column: 9, scope: !1371)
!1629 = !DILocation(line: 1124, column: 17, scope: !1371)
!1630 = !DILocation(line: 1125, column: 7, scope: !1371)
!1631 = !DILocation(line: 1127, column: 19, scope: !1371)
!1632 = !DILocation(line: 1127, column: 34, scope: !1371)
!1633 = !DILocation(line: 1127, column: 43, scope: !1371)
!1634 = !DILocation(line: 1127, column: 48, scope: !1371)
!1635 = !DILocation(line: 1127, column: 9, scope: !1371)
!1636 = !DILocation(line: 1127, column: 17, scope: !1371)
!1637 = !DILocation(line: 1128, column: 7, scope: !1371)
!1638 = !DILocalVariable(name: "i", scope: !1639, file: !6, line: 1130, type: !29)
!1639 = distinct !DILexicalBlock(scope: !1371, file: !6, line: 1130, column: 7)
!1640 = !DILocation(line: 1130, column: 21, scope: !1639)
!1641 = !DILocation(line: 1130, column: 27, scope: !1639)
!1642 = !DILocation(line: 1130, column: 12, scope: !1639)
!1643 = !DILocation(line: 1130, column: 36, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1639, file: !6, line: 1130, column: 7)
!1645 = !DILocation(line: 1130, column: 7, scope: !1639)
!1646 = !DILocation(line: 1131, column: 33, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !6, line: 1131, column: 13)
!1648 = distinct !DILexicalBlock(scope: !1644, file: !6, line: 1130, column: 69)
!1649 = !DILocation(line: 1131, column: 41, scope: !1647)
!1650 = !DILocation(line: 1131, column: 31, scope: !1647)
!1651 = !DILocation(line: 1131, column: 48, scope: !1647)
!1652 = !DILocation(line: 1132, column: 30, scope: !1647)
!1653 = !DILocation(line: 1132, column: 37, scope: !1647)
!1654 = !DILocation(line: 1132, column: 50, scope: !1647)
!1655 = !DILocation(line: 1132, column: 53, scope: !1647)
!1656 = !DILocation(line: 1132, column: 58, scope: !1647)
!1657 = !DILocation(line: 1132, column: 35, scope: !1647)
!1658 = !DILocation(line: 1133, column: 30, scope: !1647)
!1659 = !DILocation(line: 1133, column: 43, scope: !1647)
!1660 = !DILocation(line: 1133, column: 46, scope: !1647)
!1661 = !DILocation(line: 1133, column: 51, scope: !1647)
!1662 = !DILocation(line: 1131, column: 13, scope: !1647)
!1663 = !DILocation(line: 1131, column: 13, scope: !1648)
!1664 = !DILocation(line: 1134, column: 11, scope: !1647)
!1665 = !DILocation(line: 1135, column: 7, scope: !1648)
!1666 = !DILocation(line: 1130, column: 43, scope: !1644)
!1667 = !DILocation(line: 1130, column: 56, scope: !1644)
!1668 = !DILocation(line: 1130, column: 59, scope: !1644)
!1669 = !DILocation(line: 1130, column: 64, scope: !1644)
!1670 = !DILocation(line: 1130, column: 41, scope: !1644)
!1671 = !DILocation(line: 1130, column: 7, scope: !1644)
!1672 = distinct !{!1672, !1645, !1673}
!1673 = !DILocation(line: 1135, column: 7, scope: !1639)
!1674 = !DILocation(line: 1136, column: 7, scope: !1371)
!1675 = !DILocation(line: 1139, column: 15, scope: !1371)
!1676 = !DILocation(line: 1139, column: 7, scope: !1371)
!1677 = !DILocation(line: 1141, column: 16, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1371, file: !6, line: 1141, column: 11)
!1679 = !DILocation(line: 1141, column: 11, scope: !1678)
!1680 = !DILocation(line: 1141, column: 11, scope: !1371)
!1681 = !DILocation(line: 1142, column: 15, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !6, line: 1141, column: 21)
!1683 = !DILocation(line: 1142, column: 19, scope: !1682)
!1684 = !DILocation(line: 1143, column: 7, scope: !1682)
!1685 = !DILocation(line: 1144, column: 7, scope: !1371)
!1686 = !DILocation(line: 1146, column: 9, scope: !1365)
!1687 = !DILocation(line: 1146, column: 5, scope: !1365)
!1688 = distinct !{!1688, !1356, !1689}
!1689 = !DILocation(line: 1147, column: 3, scope: !1301)
!1690 = !DILocation(line: 1148, column: 9, scope: !1301)
!1691 = !DILocation(line: 1148, column: 13, scope: !1301)
!1692 = !DILocation(line: 1149, column: 3, scope: !1301)
!1693 = !DILabel(scope: !1301, name: "user_error", file: !6, line: 1150)
!1694 = !DILocation(line: 1150, column: 1, scope: !1301)
!1695 = !DILocation(line: 1151, column: 9, scope: !1301)
!1696 = !DILocation(line: 1151, column: 13, scope: !1301)
!1697 = !DILocation(line: 1151, column: 3, scope: !1301)
!1698 = !DILabel(scope: !1301, name: "error", file: !6, line: 1152)
!1699 = !DILocation(line: 1152, column: 1, scope: !1301)
!1700 = !DILocation(line: 1153, column: 37, scope: !1301)
!1701 = !DILocation(line: 1153, column: 50, scope: !1301)
!1702 = !DILocation(line: 1153, column: 3, scope: !1301)
!1703 = !DILocation(line: 1154, column: 3, scope: !1301)
!1704 = !DILocation(line: 1155, column: 1, scope: !1301)
!1705 = distinct !DISubprogram(name: "fiobj_mustache_build", scope: !3, file: !3, line: 69, type: !1706, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!93, !118, !93}
!1708 = !DILocalVariable(name: "mustache", arg: 1, scope: !1705, file: !3, line: 69, type: !118)
!1709 = !DILocation(line: 69, column: 40, scope: !1705)
!1710 = !DILocalVariable(name: "data", arg: 2, scope: !1705, file: !3, line: 69, type: !93)
!1711 = !DILocation(line: 69, column: 56, scope: !1705)
!1712 = !DILocation(line: 70, column: 8, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 70, column: 7)
!1714 = !DILocation(line: 70, column: 7, scope: !1705)
!1715 = !DILocation(line: 71, column: 5, scope: !1713)
!1716 = !DILocation(line: 72, column: 46, scope: !1705)
!1717 = !DILocation(line: 72, column: 56, scope: !1705)
!1718 = !DILocation(line: 72, column: 58, scope: !1705)
!1719 = !DILocation(line: 72, column: 68, scope: !1705)
!1720 = !DILocation(line: 72, column: 32, scope: !1705)
!1721 = !DILocation(line: 73, column: 32, scope: !1705)
!1722 = !DILocation(line: 73, column: 42, scope: !1705)
!1723 = !DILocation(line: 72, column: 10, scope: !1705)
!1724 = !DILocation(line: 72, column: 3, scope: !1705)
!1725 = !DILocation(line: 74, column: 1, scope: !1705)
!1726 = distinct !DISubprogram(name: "mustache__load_data", scope: !6, file: !6, line: 795, type: !1727, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!881, !1729, !151, !238, !151, !238}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!1730 = !DILocalVariable(name: "s", arg: 1, scope: !1726, file: !6, line: 795, type: !1729)
!1731 = !DILocation(line: 795, column: 69, scope: !1726)
!1732 = !DILocalVariable(name: "name", arg: 2, scope: !1726, file: !6, line: 796, type: !151)
!1733 = !DILocation(line: 796, column: 55, scope: !1726)
!1734 = !DILocalVariable(name: "name_len", arg: 3, scope: !1726, file: !6, line: 796, type: !238)
!1735 = !DILocation(line: 796, column: 68, scope: !1726)
!1736 = !DILocalVariable(name: "data", arg: 4, scope: !1726, file: !6, line: 797, type: !151)
!1737 = !DILocation(line: 797, column: 55, scope: !1726)
!1738 = !DILocalVariable(name: "data_len", arg: 5, scope: !1726, file: !6, line: 797, type: !238)
!1739 = !DILocation(line: 797, column: 68, scope: !1726)
!1740 = !DILocalVariable(name: "old_len", scope: !1726, file: !6, line: 798, type: !1741)
!1741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!1742 = !DILocation(line: 798, column: 16, scope: !1726)
!1743 = !DILocation(line: 798, column: 26, scope: !1726)
!1744 = !DILocation(line: 798, column: 29, scope: !1726)
!1745 = !DILocation(line: 799, column: 7, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1726, file: !6, line: 799, column: 7)
!1747 = !DILocation(line: 799, column: 17, scope: !1746)
!1748 = !DILocation(line: 799, column: 15, scope: !1746)
!1749 = !DILocation(line: 799, column: 26, scope: !1746)
!1750 = !DILocation(line: 799, column: 7, scope: !1726)
!1751 = !DILocation(line: 800, column: 5, scope: !1746)
!1752 = !DILocation(line: 801, column: 21, scope: !1726)
!1753 = !DILocation(line: 801, column: 24, scope: !1726)
!1754 = !DILocation(line: 801, column: 30, scope: !1726)
!1755 = !DILocation(line: 801, column: 40, scope: !1726)
!1756 = !DILocation(line: 801, column: 38, scope: !1726)
!1757 = !DILocation(line: 802, column: 64, scope: !1726)
!1758 = !DILocation(line: 802, column: 34, scope: !1726)
!1759 = !DILocation(line: 801, column: 49, scope: !1726)
!1760 = !DILocation(line: 802, column: 74, scope: !1726)
!1761 = !DILocation(line: 801, column: 13, scope: !1726)
!1762 = !DILocation(line: 801, column: 3, scope: !1726)
!1763 = !DILocation(line: 801, column: 6, scope: !1726)
!1764 = !DILocation(line: 801, column: 11, scope: !1726)
!1765 = !DILocation(line: 803, column: 3, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1726, file: !6, line: 803, column: 3)
!1767 = !DILocation(line: 803, column: 3, scope: !1726)
!1768 = !DILocation(line: 803, column: 3, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1766, file: !6, line: 803, column: 3)
!1770 = !DILocalVariable(name: "path_len", scope: !1726, file: !6, line: 805, type: !238)
!1771 = !DILocation(line: 805, column: 10, scope: !1726)
!1772 = !DILocation(line: 805, column: 21, scope: !1726)
!1773 = !DILocation(line: 806, column: 3, scope: !1726)
!1774 = !DILocation(line: 806, column: 10, scope: !1726)
!1775 = !DILocation(line: 807, column: 5, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1726, file: !6, line: 806, column: 20)
!1777 = !DILocation(line: 808, column: 9, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1776, file: !6, line: 808, column: 9)
!1779 = !DILocation(line: 808, column: 14, scope: !1778)
!1780 = !DILocation(line: 808, column: 24, scope: !1778)
!1781 = !DILocation(line: 808, column: 31, scope: !1778)
!1782 = !DILocation(line: 808, column: 34, scope: !1778)
!1783 = !DILocation(line: 808, column: 39, scope: !1778)
!1784 = !DILocation(line: 808, column: 49, scope: !1778)
!1785 = !DILocation(line: 808, column: 9, scope: !1776)
!1786 = !DILocation(line: 809, column: 7, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1778, file: !6, line: 808, column: 58)
!1788 = !DILocation(line: 810, column: 7, scope: !1787)
!1789 = distinct !{!1789, !1773, !1790}
!1790 = !DILocation(line: 812, column: 3, scope: !1726)
!1791 = !DILocation(line: 814, column: 18, scope: !1726)
!1792 = !DILocation(line: 814, column: 21, scope: !1726)
!1793 = !DILocation(line: 814, column: 28, scope: !1726)
!1794 = !DILocation(line: 814, column: 26, scope: !1726)
!1795 = !DILocation(line: 815, column: 33, scope: !1726)
!1796 = !DILocation(line: 816, column: 23, scope: !1726)
!1797 = !DILocation(line: 818, column: 25, scope: !1726)
!1798 = !DILocation(line: 818, column: 28, scope: !1726)
!1799 = !DILocation(line: 818, column: 31, scope: !1726)
!1800 = !DILocation(line: 818, column: 33, scope: !1726)
!1801 = !DILocation(line: 818, column: 43, scope: !1726)
!1802 = !DILocation(line: 820, column: 15, scope: !1726)
!1803 = !DILocation(line: 820, column: 18, scope: !1726)
!1804 = !DILocation(line: 820, column: 29, scope: !1726)
!1805 = !DILocation(line: 820, column: 27, scope: !1726)
!1806 = !DILocation(line: 820, column: 70, scope: !1726)
!1807 = !DILocation(line: 820, column: 40, scope: !1726)
!1808 = !DILocation(line: 820, column: 38, scope: !1726)
!1809 = !DILocation(line: 817, column: 27, scope: !1726)
!1810 = !DILocation(line: 821, column: 23, scope: !1726)
!1811 = !DILocation(line: 813, column: 3, scope: !1726)
!1812 = !DILocation(line: 823, column: 7, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1726, file: !6, line: 823, column: 7)
!1814 = !DILocation(line: 823, column: 7, scope: !1726)
!1815 = !DILocation(line: 824, column: 12, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1813, file: !6, line: 823, column: 13)
!1817 = !DILocation(line: 824, column: 15, scope: !1816)
!1818 = !DILocation(line: 824, column: 22, scope: !1816)
!1819 = !DILocation(line: 824, column: 20, scope: !1816)
!1820 = !DILocation(line: 824, column: 62, scope: !1816)
!1821 = !DILocation(line: 824, column: 32, scope: !1816)
!1822 = !DILocation(line: 824, column: 30, scope: !1816)
!1823 = !DILocation(line: 824, column: 73, scope: !1816)
!1824 = !DILocation(line: 825, column: 12, scope: !1816)
!1825 = !DILocation(line: 824, column: 5, scope: !1816)
!1826 = !DILocation(line: 826, column: 3, scope: !1816)
!1827 = !DILocation(line: 827, column: 18, scope: !1726)
!1828 = !DILocation(line: 827, column: 59, scope: !1726)
!1829 = !DILocation(line: 827, column: 29, scope: !1726)
!1830 = !DILocation(line: 827, column: 27, scope: !1726)
!1831 = !DILocation(line: 827, column: 3, scope: !1726)
!1832 = !DILocation(line: 827, column: 6, scope: !1726)
!1833 = !DILocation(line: 827, column: 15, scope: !1726)
!1834 = !DILocation(line: 828, column: 3, scope: !1726)
!1835 = !DILocation(line: 828, column: 6, scope: !1726)
!1836 = !DILocation(line: 828, column: 11, scope: !1726)
!1837 = !DILocation(line: 828, column: 14, scope: !1726)
!1838 = !DILocation(line: 828, column: 24, scope: !1726)
!1839 = !DILocation(line: 829, column: 35, scope: !1726)
!1840 = !DILocation(line: 829, column: 38, scope: !1726)
!1841 = !DILocation(line: 829, column: 3, scope: !1726)
!1842 = !DILocation(line: 829, column: 6, scope: !1726)
!1843 = !DILocation(line: 829, column: 9, scope: !1726)
!1844 = !DILocation(line: 829, column: 11, scope: !1726)
!1845 = !DILocation(line: 829, column: 21, scope: !1726)
!1846 = !DILocation(line: 829, column: 33, scope: !1726)
!1847 = !DILocation(line: 832, column: 7, scope: !1726)
!1848 = !DILocation(line: 832, column: 10, scope: !1726)
!1849 = !DILocation(line: 832, column: 35, scope: !1726)
!1850 = !DILocation(line: 831, column: 3, scope: !1726)
!1851 = !DILocation(line: 834, column: 5, scope: !1726)
!1852 = !DILocation(line: 834, column: 8, scope: !1726)
!1853 = !DILocation(line: 834, column: 3, scope: !1726)
!1854 = !DILocation(line: 835, column: 7, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1726, file: !6, line: 835, column: 7)
!1856 = !DILocation(line: 835, column: 10, scope: !1855)
!1857 = !DILocation(line: 835, column: 16, scope: !1855)
!1858 = !DILocation(line: 835, column: 7, scope: !1726)
!1859 = !DILocation(line: 836, column: 5, scope: !1855)
!1860 = !DILocation(line: 838, column: 7, scope: !1726)
!1861 = !DILocation(line: 838, column: 47, scope: !1726)
!1862 = !DILocation(line: 838, column: 17, scope: !1726)
!1863 = !DILocation(line: 838, column: 15, scope: !1726)
!1864 = !DILocation(line: 837, column: 3, scope: !1726)
!1865 = !DILocation(line: 837, column: 6, scope: !1726)
!1866 = !DILocation(line: 837, column: 12, scope: !1726)
!1867 = !DILocation(line: 837, column: 15, scope: !1726)
!1868 = !DILocation(line: 837, column: 22, scope: !1726)
!1869 = !DILocation(line: 837, column: 31, scope: !1726)
!1870 = !DILocation(line: 839, column: 35, scope: !1726)
!1871 = !DILocation(line: 839, column: 3, scope: !1726)
!1872 = !DILocation(line: 839, column: 6, scope: !1726)
!1873 = !DILocation(line: 839, column: 12, scope: !1726)
!1874 = !DILocation(line: 839, column: 15, scope: !1726)
!1875 = !DILocation(line: 839, column: 22, scope: !1726)
!1876 = !DILocation(line: 839, column: 33, scope: !1726)
!1877 = !DILocation(line: 840, column: 33, scope: !1726)
!1878 = !DILocation(line: 840, column: 36, scope: !1726)
!1879 = !DILocation(line: 840, column: 3, scope: !1726)
!1880 = !DILocation(line: 840, column: 6, scope: !1726)
!1881 = !DILocation(line: 840, column: 12, scope: !1726)
!1882 = !DILocation(line: 840, column: 15, scope: !1726)
!1883 = !DILocation(line: 840, column: 22, scope: !1726)
!1884 = !DILocation(line: 840, column: 31, scope: !1726)
!1885 = !DILocation(line: 842, column: 3, scope: !1726)
!1886 = !DILocation(line: 842, column: 6, scope: !1726)
!1887 = !DILocation(line: 842, column: 12, scope: !1726)
!1888 = !DILocation(line: 842, column: 15, scope: !1726)
!1889 = !DILocation(line: 842, column: 22, scope: !1726)
!1890 = !DILocation(line: 842, column: 36, scope: !1726)
!1891 = !DILocation(line: 843, column: 3, scope: !1726)
!1892 = !DILocation(line: 843, column: 6, scope: !1726)
!1893 = !DILocation(line: 843, column: 12, scope: !1726)
!1894 = !DILocation(line: 843, column: 15, scope: !1726)
!1895 = !DILocation(line: 843, column: 22, scope: !1726)
!1896 = !DILocation(line: 843, column: 34, scope: !1726)
!1897 = !DILocation(line: 844, column: 37, scope: !1726)
!1898 = !DILocation(line: 844, column: 40, scope: !1726)
!1899 = !DILocation(line: 844, column: 46, scope: !1726)
!1900 = !DILocation(line: 844, column: 49, scope: !1726)
!1901 = !DILocation(line: 844, column: 56, scope: !1726)
!1902 = !DILocation(line: 844, column: 69, scope: !1726)
!1903 = !DILocation(line: 844, column: 3, scope: !1726)
!1904 = !DILocation(line: 844, column: 6, scope: !1726)
!1905 = !DILocation(line: 844, column: 12, scope: !1726)
!1906 = !DILocation(line: 844, column: 15, scope: !1726)
!1907 = !DILocation(line: 844, column: 22, scope: !1726)
!1908 = !DILocation(line: 844, column: 35, scope: !1726)
!1909 = !DILocation(line: 845, column: 3, scope: !1726)
!1910 = !DILocation(line: 845, column: 6, scope: !1726)
!1911 = !DILocation(line: 845, column: 12, scope: !1726)
!1912 = !DILocation(line: 845, column: 15, scope: !1726)
!1913 = !DILocation(line: 845, column: 22, scope: !1726)
!1914 = !DILocation(line: 845, column: 35, scope: !1726)
!1915 = !DILocation(line: 846, column: 35, scope: !1726)
!1916 = !DILocation(line: 846, column: 38, scope: !1726)
!1917 = !DILocation(line: 846, column: 44, scope: !1726)
!1918 = !DILocation(line: 846, column: 47, scope: !1726)
!1919 = !DILocation(line: 846, column: 54, scope: !1726)
!1920 = !DILocation(line: 846, column: 65, scope: !1726)
!1921 = !DILocation(line: 846, column: 3, scope: !1726)
!1922 = !DILocation(line: 846, column: 6, scope: !1726)
!1923 = !DILocation(line: 846, column: 12, scope: !1726)
!1924 = !DILocation(line: 846, column: 15, scope: !1726)
!1925 = !DILocation(line: 846, column: 22, scope: !1726)
!1926 = !DILocation(line: 846, column: 33, scope: !1726)
!1927 = !DILocation(line: 847, column: 3, scope: !1726)
!1928 = !DILocation(line: 847, column: 6, scope: !1726)
!1929 = !DILocation(line: 847, column: 12, scope: !1726)
!1930 = !DILocation(line: 847, column: 15, scope: !1726)
!1931 = !DILocation(line: 847, column: 22, scope: !1726)
!1932 = !DILocation(line: 847, column: 33, scope: !1726)
!1933 = !DILocation(line: 848, column: 3, scope: !1726)
!1934 = !DILocation(line: 848, column: 6, scope: !1726)
!1935 = !DILocation(line: 848, column: 12, scope: !1726)
!1936 = !DILocation(line: 848, column: 15, scope: !1726)
!1937 = !DILocation(line: 848, column: 22, scope: !1726)
!1938 = !DILocation(line: 848, column: 36, scope: !1726)
!1939 = !DILocation(line: 849, column: 10, scope: !1726)
!1940 = !DILocation(line: 849, column: 3, scope: !1726)
!1941 = !DILabel(scope: !1726, name: "too_long", file: !6, line: 850)
!1942 = !DILocation(line: 850, column: 1, scope: !1726)
!1943 = !DILocation(line: 851, column: 4, scope: !1726)
!1944 = !DILocation(line: 851, column: 7, scope: !1726)
!1945 = !DILocation(line: 851, column: 11, scope: !1726)
!1946 = !DILocation(line: 852, column: 3, scope: !1726)
!1947 = !DILocation(line: 853, column: 1, scope: !1726)
!1948 = distinct !DISubprogram(name: "mustache__load_file", scope: !6, file: !6, line: 855, type: !1949, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!881, !1729, !151, !238}
!1951 = !DILocalVariable(name: "s", arg: 1, scope: !1948, file: !6, line: 855, type: !1729)
!1952 = !DILocation(line: 855, column: 69, scope: !1948)
!1953 = !DILocalVariable(name: "name", arg: 2, scope: !1948, file: !6, line: 856, type: !151)
!1954 = !DILocation(line: 856, column: 55, scope: !1948)
!1955 = !DILocalVariable(name: "name_len", arg: 3, scope: !1948, file: !6, line: 856, type: !238)
!1956 = !DILocation(line: 856, column: 68, scope: !1948)
!1957 = !DILocalVariable(name: "f_data", scope: !1948, file: !6, line: 857, type: !1958)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1959, line: 46, size: 1152, elements: !1960)
!1959 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1960 = !{!1961, !1963, !1965, !1967, !1969, !1971, !1973, !1974, !1975, !1977, !1979, !1981, !1989, !1990, !1991}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1958, file: !1959, line: 48, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !32, line: 145, baseType: !86)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1958, file: !1959, line: 53, baseType: !1964, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !32, line: 148, baseType: !86)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1958, file: !1959, line: 61, baseType: !1966, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !32, line: 151, baseType: !86)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1958, file: !1959, line: 62, baseType: !1968, size: 32, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !32, line: 150, baseType: !7)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1958, file: !1959, line: 64, baseType: !1970, size: 32, offset: 224)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !32, line: 146, baseType: !7)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1958, file: !1959, line: 65, baseType: !1972, size: 32, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !32, line: 147, baseType: !7)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1958, file: !1959, line: 67, baseType: !87, size: 32, offset: 288)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1958, file: !1959, line: 69, baseType: !1962, size: 64, offset: 320)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1958, file: !1959, line: 74, baseType: !1976, size: 64, offset: 384)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !32, line: 152, baseType: !112)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1958, file: !1959, line: 78, baseType: !1978, size: 64, offset: 448)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !32, line: 174, baseType: !112)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1958, file: !1959, line: 80, baseType: !1980, size: 64, offset: 512)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !32, line: 179, baseType: !112)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1958, file: !1959, line: 91, baseType: !1982, size: 128, offset: 576)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1983, line: 10, size: 128, elements: !1984)
!1983 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1984 = !{!1985, !1987}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1982, file: !1983, line: 12, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !32, line: 160, baseType: !112)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1982, file: !1983, line: 16, baseType: !1988, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !32, line: 196, baseType: !112)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1958, file: !1959, line: 92, baseType: !1982, size: 128, offset: 704)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1958, file: !1959, line: 93, baseType: !1982, size: 128, offset: 832)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1958, file: !1959, line: 106, baseType: !1992, size: 192, offset: 960)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1988, size: 192, elements: !1993)
!1993 = !{!1994}
!1994 = !DISubrange(count: 3)
!1995 = !DILocation(line: 857, column: 15, scope: !1948)
!1996 = !DILocalVariable(name: "i", scope: !1948, file: !6, line: 858, type: !36)
!1997 = !DILocation(line: 858, column: 12, scope: !1948)
!1998 = !DILocation(line: 858, column: 16, scope: !1948)
!1999 = !DILocation(line: 858, column: 19, scope: !1948)
!2000 = !DILocalVariable(name: "old_path_len", scope: !1948, file: !6, line: 859, type: !29)
!2001 = !DILocation(line: 859, column: 12, scope: !1948)
!2002 = !DILocation(line: 860, column: 8, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1948, file: !6, line: 860, column: 7)
!2004 = !DILocation(line: 860, column: 7, scope: !1948)
!2005 = !DILocation(line: 861, column: 5, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !6, line: 860, column: 18)
!2007 = !DILocation(line: 863, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1948, file: !6, line: 863, column: 7)
!2009 = !DILocation(line: 863, column: 16, scope: !2008)
!2010 = !DILocation(line: 863, column: 7, scope: !1948)
!2011 = !DILocation(line: 864, column: 5, scope: !2008)
!2012 = !DILocation(line: 866, column: 3, scope: !1948)
!2013 = !DILocalVariable(name: "seg", scope: !2014, file: !6, line: 867, type: !1163)
!2014 = distinct !DILexicalBlock(scope: !1948, file: !6, line: 866, column: 6)
!2015 = !DILocation(line: 867, column: 30, scope: !2014)
!2016 = !DILocation(line: 868, column: 9, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2014, file: !6, line: 868, column: 9)
!2018 = !DILocation(line: 868, column: 12, scope: !2017)
!2019 = !DILocation(line: 868, column: 9, scope: !2014)
!2020 = !DILocation(line: 869, column: 52, scope: !2017)
!2021 = !DILocation(line: 869, column: 55, scope: !2017)
!2022 = !DILocation(line: 870, column: 41, scope: !2017)
!2023 = !DILocation(line: 870, column: 44, scope: !2017)
!2024 = !DILocation(line: 870, column: 50, scope: !2017)
!2025 = !DILocation(line: 870, column: 53, scope: !2017)
!2026 = !DILocation(line: 869, column: 60, scope: !2017)
!2027 = !DILocation(line: 869, column: 13, scope: !2017)
!2028 = !DILocation(line: 869, column: 7, scope: !2017)
!2029 = !DILocation(line: 872, column: 13, scope: !2017)
!2030 = !DILocation(line: 872, column: 39, scope: !2017)
!2031 = !DILocation(line: 876, column: 9, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2014, file: !6, line: 876, column: 9)
!2033 = !DILocation(line: 876, column: 22, scope: !2032)
!2034 = !DILocation(line: 876, column: 26, scope: !2032)
!2035 = !DILocation(line: 876, column: 46, scope: !2032)
!2036 = !DILocation(line: 876, column: 42, scope: !2032)
!2037 = !DILocation(line: 876, column: 39, scope: !2032)
!2038 = !DILocation(line: 876, column: 55, scope: !2032)
!2039 = !DILocation(line: 877, column: 34, scope: !2032)
!2040 = !DILocation(line: 877, column: 37, scope: !2032)
!2041 = !DILocation(line: 877, column: 47, scope: !2032)
!2042 = !DILocation(line: 877, column: 57, scope: !2032)
!2043 = !DILocation(line: 877, column: 27, scope: !2032)
!2044 = !DILocation(line: 876, column: 9, scope: !2014)
!2045 = !DILocation(line: 878, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2032, file: !6, line: 877, column: 73)
!2047 = !DILocation(line: 880, column: 24, scope: !2014)
!2048 = !DILocation(line: 880, column: 20, scope: !2014)
!2049 = !DILocation(line: 880, column: 18, scope: !2014)
!2050 = !DILocation(line: 882, column: 9, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2014, file: !6, line: 882, column: 9)
!2052 = !DILocation(line: 882, column: 12, scope: !2051)
!2053 = !DILocation(line: 882, column: 28, scope: !2051)
!2054 = !DILocation(line: 882, column: 24, scope: !2051)
!2055 = !DILocation(line: 882, column: 39, scope: !2051)
!2056 = !DILocation(line: 882, column: 37, scope: !2051)
!2057 = !DILocation(line: 882, column: 48, scope: !2051)
!2058 = !DILocation(line: 882, column: 22, scope: !2051)
!2059 = !DILocation(line: 882, column: 9, scope: !2014)
!2060 = !DILocation(line: 883, column: 25, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2051, file: !6, line: 882, column: 54)
!2062 = !DILocation(line: 883, column: 28, scope: !2061)
!2063 = !DILocation(line: 883, column: 38, scope: !2061)
!2064 = !DILocation(line: 883, column: 34, scope: !2061)
!2065 = !DILocation(line: 883, column: 49, scope: !2061)
!2066 = !DILocation(line: 883, column: 47, scope: !2061)
!2067 = !DILocation(line: 883, column: 58, scope: !2061)
!2068 = !DILocation(line: 883, column: 17, scope: !2061)
!2069 = !DILocation(line: 883, column: 7, scope: !2061)
!2070 = !DILocation(line: 883, column: 10, scope: !2061)
!2071 = !DILocation(line: 883, column: 15, scope: !2061)
!2072 = !DILocation(line: 884, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2061, file: !6, line: 884, column: 7)
!2074 = !DILocation(line: 884, column: 7, scope: !2061)
!2075 = !DILocation(line: 884, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !6, line: 884, column: 7)
!2077 = !DILocation(line: 886, column: 26, scope: !2061)
!2078 = !DILocation(line: 886, column: 22, scope: !2061)
!2079 = !DILocation(line: 886, column: 37, scope: !2061)
!2080 = !DILocation(line: 886, column: 35, scope: !2061)
!2081 = !DILocation(line: 886, column: 46, scope: !2061)
!2082 = !DILocation(line: 886, column: 7, scope: !2061)
!2083 = !DILocation(line: 886, column: 10, scope: !2061)
!2084 = !DILocation(line: 886, column: 20, scope: !2061)
!2085 = !DILocation(line: 887, column: 5, scope: !2061)
!2086 = !DILocation(line: 889, column: 14, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2014, file: !6, line: 889, column: 9)
!2088 = !DILocation(line: 889, column: 10, scope: !2087)
!2089 = !DILocation(line: 889, column: 9, scope: !2014)
!2090 = !DILocation(line: 890, column: 9, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !6, line: 889, column: 24)
!2092 = !DILocation(line: 891, column: 5, scope: !2091)
!2093 = !DILocation(line: 892, column: 14, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2087, file: !6, line: 891, column: 12)
!2095 = !DILocation(line: 892, column: 17, scope: !2094)
!2096 = !DILocation(line: 892, column: 27, scope: !2094)
!2097 = !DILocation(line: 892, column: 41, scope: !2094)
!2098 = !DILocation(line: 892, column: 37, scope: !2094)
!2099 = !DILocation(line: 892, column: 7, scope: !2094)
!2100 = !DILocation(line: 895, column: 12, scope: !2014)
!2101 = !DILocation(line: 895, column: 15, scope: !2014)
!2102 = !DILocation(line: 895, column: 26, scope: !2014)
!2103 = !DILocation(line: 895, column: 22, scope: !2014)
!2104 = !DILocation(line: 895, column: 20, scope: !2014)
!2105 = !DILocation(line: 895, column: 36, scope: !2014)
!2106 = !DILocation(line: 895, column: 42, scope: !2014)
!2107 = !DILocation(line: 895, column: 5, scope: !2014)
!2108 = !DILocation(line: 896, column: 5, scope: !2014)
!2109 = !DILocation(line: 896, column: 8, scope: !2014)
!2110 = !DILocation(line: 896, column: 13, scope: !2014)
!2111 = !DILocation(line: 896, column: 28, scope: !2014)
!2112 = !DILocation(line: 896, column: 24, scope: !2014)
!2113 = !DILocation(line: 896, column: 22, scope: !2014)
!2114 = !DILocation(line: 896, column: 38, scope: !2014)
!2115 = !DILocation(line: 898, column: 15, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2014, file: !6, line: 898, column: 9)
!2117 = !DILocation(line: 898, column: 18, scope: !2116)
!2118 = !DILocation(line: 898, column: 10, scope: !2116)
!2119 = !DILocation(line: 898, column: 33, scope: !2116)
!2120 = !DILocation(line: 898, column: 36, scope: !2116)
!2121 = !DILocation(line: 898, column: 9, scope: !2014)
!2122 = !DILocation(line: 899, column: 22, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2116, file: !6, line: 898, column: 61)
!2124 = !DILocation(line: 899, column: 37, scope: !2123)
!2125 = !DILocation(line: 899, column: 33, scope: !2123)
!2126 = !DILocation(line: 899, column: 31, scope: !2123)
!2127 = !DILocation(line: 899, column: 20, scope: !2123)
!2128 = !DILocation(line: 900, column: 7, scope: !2123)
!2129 = !DILocation(line: 903, column: 12, scope: !2014)
!2130 = !DILocation(line: 903, column: 15, scope: !2014)
!2131 = !DILocation(line: 903, column: 26, scope: !2014)
!2132 = !DILocation(line: 903, column: 22, scope: !2014)
!2133 = !DILocation(line: 903, column: 20, scope: !2014)
!2134 = !DILocation(line: 903, column: 37, scope: !2014)
!2135 = !DILocation(line: 903, column: 35, scope: !2014)
!2136 = !DILocation(line: 903, column: 5, scope: !2014)
!2137 = !DILocation(line: 904, column: 5, scope: !2014)
!2138 = !DILocation(line: 904, column: 8, scope: !2014)
!2139 = !DILocation(line: 904, column: 13, scope: !2014)
!2140 = !DILocation(line: 904, column: 28, scope: !2014)
!2141 = !DILocation(line: 904, column: 24, scope: !2014)
!2142 = !DILocation(line: 904, column: 22, scope: !2014)
!2143 = !DILocation(line: 904, column: 37, scope: !2014)
!2144 = !DILocation(line: 904, column: 42, scope: !2014)
!2145 = !DILocation(line: 906, column: 15, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2014, file: !6, line: 906, column: 9)
!2147 = !DILocation(line: 906, column: 18, scope: !2146)
!2148 = !DILocation(line: 906, column: 10, scope: !2146)
!2149 = !DILocation(line: 906, column: 33, scope: !2146)
!2150 = !DILocation(line: 906, column: 36, scope: !2146)
!2151 = !DILocation(line: 906, column: 9, scope: !2014)
!2152 = !DILocation(line: 907, column: 22, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2146, file: !6, line: 906, column: 61)
!2154 = !DILocation(line: 907, column: 37, scope: !2153)
!2155 = !DILocation(line: 907, column: 33, scope: !2153)
!2156 = !DILocation(line: 907, column: 31, scope: !2153)
!2157 = !DILocation(line: 907, column: 46, scope: !2153)
!2158 = !DILocation(line: 907, column: 20, scope: !2153)
!2159 = !DILocation(line: 908, column: 7, scope: !2153)
!2160 = !DILocation(line: 910, column: 3, scope: !2014)
!2161 = !DILocation(line: 910, column: 12, scope: !1948)
!2162 = distinct !{!2162, !2012, !2163}
!2163 = !DILocation(line: 910, column: 15, scope: !1948)
!2164 = !DILocation(line: 913, column: 7, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !1948, file: !6, line: 913, column: 7)
!2166 = !DILocation(line: 913, column: 10, scope: !2165)
!2167 = !DILocation(line: 913, column: 7, scope: !1948)
!2168 = !DILocalVariable(name: "seg", scope: !2169, file: !6, line: 914, type: !1163)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !6, line: 913, column: 16)
!2170 = !DILocation(line: 914, column: 30, scope: !2169)
!2171 = !DILocation(line: 915, column: 48, scope: !2169)
!2172 = !DILocation(line: 915, column: 51, scope: !2169)
!2173 = !DILocation(line: 915, column: 9, scope: !2169)
!2174 = !DILocation(line: 916, column: 13, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2169, file: !6, line: 916, column: 9)
!2176 = !DILocation(line: 916, column: 9, scope: !2175)
!2177 = !DILocation(line: 916, column: 29, scope: !2175)
!2178 = !DILocation(line: 916, column: 26, scope: !2175)
!2179 = !DILocation(line: 916, column: 38, scope: !2175)
!2180 = !DILocation(line: 916, column: 53, scope: !2175)
!2181 = !DILocation(line: 916, column: 63, scope: !2175)
!2182 = !DILocation(line: 916, column: 69, scope: !2175)
!2183 = !DILocation(line: 916, column: 42, scope: !2175)
!2184 = !DILocation(line: 916, column: 9, scope: !2169)
!2185 = !DILocation(line: 919, column: 15, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !6, line: 918, column: 11)
!2187 = distinct !DILexicalBlock(scope: !2175, file: !6, line: 916, column: 80)
!2188 = !DILocation(line: 919, column: 43, scope: !2186)
!2189 = !DILocation(line: 922, column: 26, scope: !2186)
!2190 = !DILocation(line: 924, column: 37, scope: !2186)
!2191 = !DILocation(line: 924, column: 40, scope: !2186)
!2192 = !DILocation(line: 924, column: 43, scope: !2186)
!2193 = !DILocation(line: 924, column: 45, scope: !2186)
!2194 = !DILocation(line: 924, column: 55, scope: !2186)
!2195 = !DILocation(line: 918, column: 11, scope: !2186)
!2196 = !DILocation(line: 918, column: 11, scope: !2187)
!2197 = !DILocation(line: 927, column: 9, scope: !2186)
!2198 = !DILocation(line: 928, column: 7, scope: !2187)
!2199 = !DILocation(line: 930, column: 3, scope: !2169)
!2200 = !DILocation(line: 933, column: 4, scope: !1948)
!2201 = !DILocation(line: 933, column: 7, scope: !1948)
!2202 = !DILocation(line: 933, column: 11, scope: !1948)
!2203 = !DILocation(line: 934, column: 3, scope: !1948)
!2204 = !DILabel(scope: !1948, name: "file_found", file: !6, line: 939)
!2205 = !DILocation(line: 939, column: 1, scope: !1948)
!2206 = !DILocation(line: 940, column: 14, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !1948, file: !6, line: 940, column: 7)
!2208 = !DILocation(line: 940, column: 22, scope: !2207)
!2209 = !DILocation(line: 940, column: 7, scope: !1948)
!2210 = !DILocation(line: 941, column: 5, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !6, line: 940, column: 36)
!2212 = !DILocation(line: 942, column: 21, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2207, file: !6, line: 942, column: 14)
!2214 = !DILocation(line: 942, column: 29, scope: !2213)
!2215 = !DILocation(line: 942, column: 14, scope: !2207)
!2216 = !DILocation(line: 944, column: 5, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !6, line: 942, column: 35)
!2218 = !DILocalVariable(name: "pre_existing", scope: !2219, file: !6, line: 947, type: !29)
!2219 = distinct !DILexicalBlock(scope: !2213, file: !6, line: 945, column: 10)
!2220 = !DILocation(line: 947, column: 14, scope: !2219)
!2221 = !DILocation(line: 947, column: 54, scope: !2219)
!2222 = !DILocation(line: 947, column: 57, scope: !2219)
!2223 = !DILocation(line: 947, column: 60, scope: !2219)
!2224 = !DILocation(line: 947, column: 66, scope: !2219)
!2225 = !DILocation(line: 947, column: 29, scope: !2219)
!2226 = !DILocation(line: 948, column: 9, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2219, file: !6, line: 948, column: 9)
!2228 = !DILocation(line: 948, column: 22, scope: !2227)
!2229 = !DILocation(line: 948, column: 9, scope: !2219)
!2230 = !DILocation(line: 950, column: 15, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !6, line: 949, column: 11)
!2232 = distinct !DILexicalBlock(scope: !2227, file: !6, line: 948, column: 39)
!2233 = !DILocation(line: 950, column: 43, scope: !2231)
!2234 = !DILocation(line: 953, column: 26, scope: !2231)
!2235 = !DILocation(line: 955, column: 37, scope: !2231)
!2236 = !DILocation(line: 955, column: 40, scope: !2231)
!2237 = !DILocation(line: 955, column: 43, scope: !2231)
!2238 = !DILocation(line: 955, column: 45, scope: !2231)
!2239 = !DILocation(line: 955, column: 55, scope: !2231)
!2240 = !DILocation(line: 954, column: 37, scope: !2231)
!2241 = !DILocation(line: 949, column: 11, scope: !2231)
!2242 = !DILocation(line: 949, column: 11, scope: !2232)
!2243 = !DILocation(line: 958, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2231, file: !6, line: 957, column: 22)
!2245 = !DILocation(line: 960, column: 7, scope: !2232)
!2246 = !DILocation(line: 963, column: 27, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !1948, file: !6, line: 963, column: 7)
!2248 = !DILocation(line: 963, column: 30, scope: !2247)
!2249 = !DILocation(line: 963, column: 33, scope: !2247)
!2250 = !DILocation(line: 963, column: 39, scope: !2247)
!2251 = !DILocation(line: 963, column: 66, scope: !2247)
!2252 = !DILocation(line: 963, column: 7, scope: !2247)
!2253 = !DILocation(line: 963, column: 75, scope: !2247)
!2254 = !DILocation(line: 963, column: 7, scope: !1948)
!2255 = !DILocation(line: 964, column: 5, scope: !2247)
!2256 = !DILocalVariable(name: "fd", scope: !1948, file: !6, line: 965, type: !87)
!2257 = !DILocation(line: 965, column: 7, scope: !1948)
!2258 = !DILocation(line: 965, column: 17, scope: !1948)
!2259 = !DILocation(line: 965, column: 20, scope: !1948)
!2260 = !DILocation(line: 965, column: 12, scope: !1948)
!2261 = !DILocation(line: 966, column: 7, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !1948, file: !6, line: 966, column: 7)
!2263 = !DILocation(line: 966, column: 10, scope: !2262)
!2264 = !DILocation(line: 966, column: 7, scope: !1948)
!2265 = !DILocation(line: 967, column: 5, scope: !2262)
!2266 = !DILocation(line: 968, column: 13, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !1948, file: !6, line: 968, column: 7)
!2268 = !DILocation(line: 968, column: 17, scope: !2267)
!2269 = !DILocation(line: 968, column: 20, scope: !2267)
!2270 = !DILocation(line: 968, column: 27, scope: !2267)
!2271 = !DILocation(line: 968, column: 30, scope: !2267)
!2272 = !DILocation(line: 968, column: 25, scope: !2267)
!2273 = !DILocation(line: 968, column: 48, scope: !2267)
!2274 = !DILocation(line: 968, column: 39, scope: !2267)
!2275 = !DILocation(line: 968, column: 64, scope: !2267)
!2276 = !DILocation(line: 968, column: 7, scope: !2267)
!2277 = !DILocation(line: 969, column: 14, scope: !2267)
!2278 = !DILocation(line: 968, column: 76, scope: !2267)
!2279 = !DILocation(line: 968, column: 7, scope: !1948)
!2280 = !DILocation(line: 970, column: 5, scope: !2267)
!2281 = !DILocation(line: 971, column: 9, scope: !1948)
!2282 = !DILocation(line: 971, column: 3, scope: !1948)
!2283 = !DILocation(line: 972, column: 17, scope: !1948)
!2284 = !DILocation(line: 972, column: 3, scope: !1948)
!2285 = !DILabel(scope: !1948, name: "name_missing_error", file: !6, line: 974)
!2286 = !DILocation(line: 974, column: 1, scope: !1948)
!2287 = !DILocation(line: 975, column: 4, scope: !1948)
!2288 = !DILocation(line: 975, column: 7, scope: !1948)
!2289 = !DILocation(line: 975, column: 11, scope: !1948)
!2290 = !DILocation(line: 976, column: 3, scope: !1948)
!2291 = !DILabel(scope: !1948, name: "name_length_error", file: !6, line: 978)
!2292 = !DILocation(line: 978, column: 1, scope: !1948)
!2293 = !DILocation(line: 979, column: 4, scope: !1948)
!2294 = !DILocation(line: 979, column: 7, scope: !1948)
!2295 = !DILocation(line: 979, column: 11, scope: !1948)
!2296 = !DILocation(line: 980, column: 3, scope: !1948)
!2297 = !DILabel(scope: !1948, name: "file_too_big", file: !6, line: 982)
!2298 = !DILocation(line: 982, column: 1, scope: !1948)
!2299 = !DILocation(line: 983, column: 4, scope: !1948)
!2300 = !DILocation(line: 983, column: 7, scope: !1948)
!2301 = !DILocation(line: 983, column: 11, scope: !1948)
!2302 = !DILocation(line: 984, column: 3, scope: !1948)
!2303 = !DILabel(scope: !1948, name: "file_err", file: !6, line: 986)
!2304 = !DILocation(line: 986, column: 1, scope: !1948)
!2305 = !DILocation(line: 987, column: 4, scope: !1948)
!2306 = !DILocation(line: 987, column: 7, scope: !1948)
!2307 = !DILocation(line: 987, column: 11, scope: !1948)
!2308 = !DILocation(line: 988, column: 3, scope: !1948)
!2309 = !DILabel(scope: !1948, name: "unknown_error", file: !6, line: 990)
!2310 = !DILocation(line: 990, column: 1, scope: !1948)
!2311 = !DILocation(line: 991, column: 3, scope: !1948)
!2312 = !DILocation(line: 992, column: 1, scope: !1948)
!2313 = distinct !DISubprogram(name: "mustache__push_text_instruction", scope: !6, file: !6, line: 732, type: !2314, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!87, !1729, !29, !29}
!2316 = !DILocalVariable(name: "s", arg: 1, scope: !2313, file: !6, line: 732, type: !1729)
!2317 = !DILocation(line: 732, column: 77, scope: !2313)
!2318 = !DILocalVariable(name: "pos", arg: 2, scope: !2313, file: !6, line: 733, type: !29)
!2319 = !DILocation(line: 733, column: 60, scope: !2313)
!2320 = !DILocalVariable(name: "len", arg: 3, scope: !2313, file: !6, line: 733, type: !29)
!2321 = !DILocation(line: 733, column: 74, scope: !2313)
!2322 = !DILocation(line: 744, column: 3, scope: !2313)
!2323 = !DILocalVariable(name: "start", scope: !2324, file: !6, line: 746, type: !91)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !6, line: 744, column: 12)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !6, line: 744, column: 3)
!2326 = distinct !DILexicalBlock(scope: !2313, file: !6, line: 744, column: 3)
!2327 = !DILocation(line: 746, column: 11, scope: !2324)
!2328 = !DILocation(line: 746, column: 19, scope: !2324)
!2329 = !DILocation(line: 746, column: 22, scope: !2324)
!2330 = !DILocation(line: 746, column: 29, scope: !2324)
!2331 = !DILocation(line: 746, column: 27, scope: !2324)
!2332 = !DILocalVariable(name: "end", scope: !2324, file: !6, line: 747, type: !91)
!2333 = !DILocation(line: 747, column: 11, scope: !2324)
!2334 = !DILocation(line: 747, column: 24, scope: !2324)
!2335 = !DILocation(line: 747, column: 27, scope: !2324)
!2336 = !DILocation(line: 747, column: 34, scope: !2324)
!2337 = !DILocation(line: 747, column: 32, scope: !2324)
!2338 = !DILocation(line: 747, column: 45, scope: !2324)
!2339 = !DILocation(line: 747, column: 17, scope: !2324)
!2340 = !DILocation(line: 748, column: 10, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2324, file: !6, line: 748, column: 9)
!2342 = !DILocation(line: 748, column: 9, scope: !2324)
!2343 = !DILocation(line: 749, column: 7, scope: !2341)
!2344 = !DILocalVariable(name: "offset", scope: !2324, file: !6, line: 751, type: !1741)
!2345 = !DILocation(line: 751, column: 18, scope: !2324)
!2346 = !DILocation(line: 751, column: 28, scope: !2324)
!2347 = !DILocation(line: 751, column: 34, scope: !2324)
!2348 = !DILocation(line: 751, column: 32, scope: !2324)
!2349 = !DILocation(line: 751, column: 41, scope: !2324)
!2350 = !DILocation(line: 754, column: 13, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2324, file: !6, line: 753, column: 9)
!2352 = !DILocation(line: 755, column: 38, scope: !2351)
!2353 = !DILocation(line: 757, column: 25, scope: !2351)
!2354 = !DILocation(line: 757, column: 38, scope: !2351)
!2355 = !DILocation(line: 757, column: 55, scope: !2351)
!2356 = !DILocation(line: 753, column: 9, scope: !2351)
!2357 = !DILocation(line: 758, column: 16, scope: !2351)
!2358 = !DILocation(line: 758, column: 22, scope: !2351)
!2359 = !DILocation(line: 759, column: 36, scope: !2351)
!2360 = !DILocation(line: 759, column: 39, scope: !2351)
!2361 = !DILocation(line: 759, column: 64, scope: !2351)
!2362 = !DILocation(line: 759, column: 9, scope: !2351)
!2363 = !DILocation(line: 761, column: 42, scope: !2351)
!2364 = !DILocation(line: 753, column: 9, scope: !2324)
!2365 = !DILocation(line: 762, column: 7, scope: !2351)
!2366 = !DILocation(line: 763, column: 12, scope: !2324)
!2367 = !DILocation(line: 763, column: 9, scope: !2324)
!2368 = !DILocation(line: 764, column: 12, scope: !2324)
!2369 = !DILocation(line: 764, column: 9, scope: !2324)
!2370 = !DILocation(line: 744, column: 3, scope: !2325)
!2371 = distinct !{!2371, !2372, !2373}
!2372 = !DILocation(line: 744, column: 3, scope: !2326)
!2373 = !DILocation(line: 765, column: 3, scope: !2326)
!2374 = !DILocation(line: 767, column: 8, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2313, file: !6, line: 767, column: 7)
!2376 = !DILocation(line: 767, column: 7, scope: !2313)
!2377 = !DILocation(line: 768, column: 5, scope: !2375)
!2378 = !DILocation(line: 771, column: 7, scope: !2313)
!2379 = !DILocation(line: 771, column: 35, scope: !2313)
!2380 = !DILocation(line: 773, column: 22, scope: !2313)
!2381 = !DILocation(line: 773, column: 35, scope: !2313)
!2382 = !DILocation(line: 773, column: 52, scope: !2313)
!2383 = !DILocation(line: 770, column: 10, scope: !2313)
!2384 = !DILocation(line: 770, column: 3, scope: !2313)
!2385 = !DILocation(line: 775, column: 1, scope: !2313)
!2386 = distinct !DISubprogram(name: "mustache__stand_alone_adjust", scope: !6, file: !6, line: 692, type: !2387, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !1729, !29}
!2389 = !DILocalVariable(name: "s", arg: 1, scope: !2386, file: !6, line: 692, type: !1729)
!2390 = !DILocation(line: 692, column: 75, scope: !2386)
!2391 = !DILocalVariable(name: "stand_alone", arg: 2, scope: !2386, file: !6, line: 693, type: !29)
!2392 = !DILocation(line: 693, column: 58, scope: !2386)
!2393 = !DILocation(line: 694, column: 8, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2386, file: !6, line: 694, column: 7)
!2395 = !DILocation(line: 694, column: 7, scope: !2386)
!2396 = !DILocation(line: 695, column: 5, scope: !2394)
!2397 = !DILocation(line: 698, column: 12, scope: !2386)
!2398 = !DILocation(line: 698, column: 15, scope: !2386)
!2399 = !DILocation(line: 698, column: 20, scope: !2386)
!2400 = !DILocation(line: 698, column: 23, scope: !2386)
!2401 = !DILocation(line: 698, column: 29, scope: !2386)
!2402 = !DILocation(line: 698, column: 32, scope: !2386)
!2403 = !DILocation(line: 698, column: 39, scope: !2386)
!2404 = !DILocation(line: 698, column: 49, scope: !2386)
!2405 = !DILocation(line: 698, column: 9, scope: !2386)
!2406 = !DILocation(line: 697, column: 3, scope: !2386)
!2407 = !DILocation(line: 697, column: 6, scope: !2386)
!2408 = !DILocation(line: 697, column: 12, scope: !2386)
!2409 = !DILocation(line: 697, column: 15, scope: !2386)
!2410 = !DILocation(line: 697, column: 22, scope: !2386)
!2411 = !DILocation(line: 697, column: 31, scope: !2386)
!2412 = !DILocation(line: 700, column: 7, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2386, file: !6, line: 700, column: 7)
!2414 = !DILocation(line: 700, column: 10, scope: !2413)
!2415 = !DILocation(line: 700, column: 13, scope: !2413)
!2416 = !DILocation(line: 700, column: 15, scope: !2413)
!2417 = !DILocation(line: 700, column: 25, scope: !2413)
!2418 = !DILocation(line: 700, column: 42, scope: !2413)
!2419 = !DILocation(line: 701, column: 7, scope: !2413)
!2420 = !DILocation(line: 701, column: 10, scope: !2413)
!2421 = !DILocation(line: 701, column: 12, scope: !2413)
!2422 = !DILocation(line: 701, column: 15, scope: !2413)
!2423 = !DILocation(line: 701, column: 18, scope: !2413)
!2424 = !DILocation(line: 701, column: 20, scope: !2413)
!2425 = !DILocation(line: 701, column: 30, scope: !2413)
!2426 = !DILocation(line: 701, column: 47, scope: !2413)
!2427 = !DILocation(line: 701, column: 52, scope: !2413)
!2428 = !DILocation(line: 701, column: 64, scope: !2413)
!2429 = !DILocation(line: 700, column: 7, scope: !2386)
!2430 = !DILocalVariable(name: "ins", scope: !2431, file: !6, line: 703, type: !82)
!2431 = distinct !DILexicalBlock(scope: !2413, file: !6, line: 702, column: 32)
!2432 = !DILocation(line: 703, column: 30, scope: !2431)
!2433 = !DILocation(line: 704, column: 9, scope: !2431)
!2434 = !DILocation(line: 704, column: 12, scope: !2431)
!2435 = !DILocation(line: 704, column: 16, scope: !2431)
!2436 = !DILocation(line: 704, column: 19, scope: !2431)
!2437 = !DILocation(line: 704, column: 22, scope: !2431)
!2438 = !DILocation(line: 704, column: 24, scope: !2431)
!2439 = !DILocation(line: 704, column: 34, scope: !2431)
!2440 = !DILocation(line: 704, column: 14, scope: !2431)
!2441 = !DILocation(line: 704, column: 51, scope: !2431)
!2442 = !DILocation(line: 705, column: 9, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2431, file: !6, line: 705, column: 9)
!2444 = !DILocation(line: 705, column: 14, scope: !2443)
!2445 = !DILocation(line: 705, column: 19, scope: !2443)
!2446 = !DILocation(line: 705, column: 32, scope: !2443)
!2447 = !DILocation(line: 705, column: 44, scope: !2443)
!2448 = !DILocation(line: 705, column: 28, scope: !2443)
!2449 = !DILocation(line: 705, column: 9, scope: !2431)
!2450 = !DILocation(line: 706, column: 9, scope: !2443)
!2451 = !DILocation(line: 706, column: 12, scope: !2443)
!2452 = !DILocation(line: 706, column: 15, scope: !2443)
!2453 = !DILocation(line: 706, column: 17, scope: !2443)
!2454 = !DILocation(line: 706, column: 27, scope: !2443)
!2455 = !DILocation(line: 706, column: 7, scope: !2443)
!2456 = !DILocation(line: 708, column: 30, scope: !2443)
!2457 = !DILocation(line: 708, column: 42, scope: !2443)
!2458 = !DILocation(line: 708, column: 7, scope: !2443)
!2459 = !DILocation(line: 708, column: 12, scope: !2443)
!2460 = !DILocation(line: 708, column: 17, scope: !2443)
!2461 = !DILocation(line: 708, column: 26, scope: !2443)
!2462 = !DILocation(line: 709, column: 3, scope: !2431)
!2463 = !DILocation(line: 710, column: 1, scope: !2386)
!2464 = distinct !DISubprogram(name: "mustache__instruction_push", scope: !6, file: !6, line: 713, type: !2465, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!87, !1729, !83}
!2467 = !DILocalVariable(name: "s", arg: 1, scope: !2464, file: !6, line: 713, type: !1729)
!2468 = !DILocation(line: 713, column: 72, scope: !2464)
!2469 = !DILocalVariable(name: "inst", arg: 2, scope: !2464, file: !6, line: 714, type: !83)
!2470 = !DILocation(line: 714, column: 70, scope: !2464)
!2471 = !DILocation(line: 715, column: 7, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2464, file: !6, line: 715, column: 7)
!2473 = !DILocation(line: 715, column: 10, scope: !2472)
!2474 = !DILocation(line: 715, column: 13, scope: !2472)
!2475 = !DILocation(line: 715, column: 15, scope: !2472)
!2476 = !DILocation(line: 715, column: 25, scope: !2472)
!2477 = !DILocation(line: 715, column: 42, scope: !2472)
!2478 = !DILocation(line: 715, column: 7, scope: !2464)
!2479 = !DILocation(line: 716, column: 5, scope: !2472)
!2480 = !DILocation(line: 717, column: 7, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2464, file: !6, line: 717, column: 7)
!2482 = !DILocation(line: 717, column: 10, scope: !2481)
!2483 = !DILocation(line: 717, column: 20, scope: !2481)
!2484 = !DILocation(line: 717, column: 23, scope: !2481)
!2485 = !DILocation(line: 717, column: 26, scope: !2481)
!2486 = !DILocation(line: 717, column: 28, scope: !2481)
!2487 = !DILocation(line: 717, column: 38, scope: !2481)
!2488 = !DILocation(line: 717, column: 17, scope: !2481)
!2489 = !DILocation(line: 717, column: 7, scope: !2464)
!2490 = !DILocation(line: 718, column: 20, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2481, file: !6, line: 717, column: 56)
!2492 = !DILocation(line: 718, column: 23, scope: !2491)
!2493 = !DILocation(line: 718, column: 60, scope: !2491)
!2494 = !DILocation(line: 718, column: 63, scope: !2491)
!2495 = !DILocation(line: 718, column: 70, scope: !2491)
!2496 = !DILocation(line: 718, column: 59, scope: !2491)
!2497 = !DILocation(line: 718, column: 57, scope: !2491)
!2498 = !DILocation(line: 718, column: 40, scope: !2491)
!2499 = !DILocation(line: 718, column: 12, scope: !2491)
!2500 = !DILocation(line: 718, column: 5, scope: !2491)
!2501 = !DILocation(line: 718, column: 8, scope: !2491)
!2502 = !DILocation(line: 718, column: 10, scope: !2491)
!2503 = !DILocation(line: 719, column: 5, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2491, file: !6, line: 719, column: 5)
!2505 = !DILocation(line: 719, column: 5, scope: !2491)
!2506 = !DILocation(line: 719, column: 5, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2504, file: !6, line: 719, column: 5)
!2508 = !DILocation(line: 720, column: 5, scope: !2491)
!2509 = !DILocation(line: 720, column: 8, scope: !2491)
!2510 = !DILocation(line: 720, column: 15, scope: !2491)
!2511 = !DILocation(line: 721, column: 12, scope: !2491)
!2512 = !DILocation(line: 721, column: 5, scope: !2491)
!2513 = !DILocation(line: 721, column: 8, scope: !2491)
!2514 = !DILocation(line: 721, column: 10, scope: !2491)
!2515 = !DILocation(line: 722, column: 3, scope: !2491)
!2516 = !DILocation(line: 723, column: 3, scope: !2464)
!2517 = !DILocation(line: 723, column: 6, scope: !2464)
!2518 = !DILocation(line: 723, column: 8, scope: !2464)
!2519 = !DILocation(line: 723, column: 11, scope: !2464)
!2520 = !DILocation(line: 723, column: 14, scope: !2464)
!2521 = !DILocation(line: 723, column: 16, scope: !2464)
!2522 = !DILocation(line: 723, column: 26, scope: !2464)
!2523 = !DILocation(line: 723, column: 46, scope: !2464)
!2524 = !DILocation(line: 724, column: 5, scope: !2464)
!2525 = !DILocation(line: 724, column: 8, scope: !2464)
!2526 = !DILocation(line: 724, column: 11, scope: !2464)
!2527 = !DILocation(line: 724, column: 13, scope: !2464)
!2528 = !DILocation(line: 724, column: 23, scope: !2464)
!2529 = !DILocation(line: 724, column: 3, scope: !2464)
!2530 = !DILocation(line: 725, column: 3, scope: !2464)
!2531 = !DILabel(scope: !2464, name: "instructions_too_long", file: !6, line: 726)
!2532 = !DILocation(line: 726, column: 1, scope: !2464)
!2533 = !DILocation(line: 727, column: 4, scope: !2464)
!2534 = !DILocation(line: 727, column: 7, scope: !2464)
!2535 = !DILocation(line: 727, column: 11, scope: !2464)
!2536 = !DILocation(line: 728, column: 3, scope: !2464)
!2537 = !DILocation(line: 729, column: 1, scope: !2464)
!2538 = distinct !DISubprogram(name: "mustache__data_segment_read", scope: !6, file: !6, line: 679, type: !2539, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!1163, !88}
!2541 = !DILocalVariable(name: "data", arg: 1, scope: !2538, file: !6, line: 679, type: !88)
!2542 = !DILocation(line: 679, column: 38, scope: !2538)
!2543 = !DILocalVariable(name: "s", scope: !2538, file: !6, line: 680, type: !1163)
!2544 = !DILocation(line: 680, column: 28, scope: !2538)
!2545 = !DILocation(line: 680, column: 32, scope: !2538)
!2546 = !DILocation(line: 681, column: 28, scope: !2538)
!2547 = !DILocation(line: 681, column: 33, scope: !2538)
!2548 = !DILocation(line: 682, column: 32, scope: !2538)
!2549 = !DILocation(line: 682, column: 22, scope: !2538)
!2550 = !DILocation(line: 682, column: 53, scope: !2538)
!2551 = !DILocation(line: 682, column: 43, scope: !2538)
!2552 = !DILocation(line: 682, column: 61, scope: !2538)
!2553 = !DILocation(line: 682, column: 40, scope: !2538)
!2554 = !DILocation(line: 683, column: 33, scope: !2538)
!2555 = !DILocation(line: 683, column: 23, scope: !2538)
!2556 = !DILocation(line: 683, column: 41, scope: !2538)
!2557 = !DILocation(line: 682, column: 67, scope: !2538)
!2558 = !DILocation(line: 683, column: 60, scope: !2538)
!2559 = !DILocation(line: 683, column: 50, scope: !2538)
!2560 = !DILocation(line: 683, column: 68, scope: !2538)
!2561 = !DILocation(line: 683, column: 47, scope: !2538)
!2562 = !DILocation(line: 684, column: 26, scope: !2538)
!2563 = !DILocation(line: 684, column: 16, scope: !2538)
!2564 = !DILocation(line: 684, column: 47, scope: !2538)
!2565 = !DILocation(line: 684, column: 37, scope: !2538)
!2566 = !DILocation(line: 684, column: 55, scope: !2538)
!2567 = !DILocation(line: 684, column: 34, scope: !2538)
!2568 = !DILocation(line: 685, column: 27, scope: !2538)
!2569 = !DILocation(line: 685, column: 17, scope: !2538)
!2570 = !DILocation(line: 685, column: 35, scope: !2538)
!2571 = !DILocation(line: 684, column: 61, scope: !2538)
!2572 = !DILocation(line: 685, column: 54, scope: !2538)
!2573 = !DILocation(line: 685, column: 44, scope: !2538)
!2574 = !DILocation(line: 685, column: 62, scope: !2538)
!2575 = !DILocation(line: 685, column: 41, scope: !2538)
!2576 = !DILocation(line: 686, column: 34, scope: !2538)
!2577 = !DILocation(line: 686, column: 24, scope: !2538)
!2578 = !DILocation(line: 686, column: 55, scope: !2538)
!2579 = !DILocation(line: 686, column: 45, scope: !2538)
!2580 = !DILocation(line: 686, column: 63, scope: !2538)
!2581 = !DILocation(line: 686, column: 42, scope: !2538)
!2582 = !DILocation(line: 686, column: 23, scope: !2538)
!2583 = !DILocation(line: 687, column: 30, scope: !2538)
!2584 = !DILocation(line: 687, column: 20, scope: !2538)
!2585 = !DILocation(line: 687, column: 52, scope: !2538)
!2586 = !DILocation(line: 687, column: 42, scope: !2538)
!2587 = !DILocation(line: 687, column: 61, scope: !2538)
!2588 = !DILocation(line: 687, column: 39, scope: !2538)
!2589 = !DILocation(line: 687, column: 19, scope: !2538)
!2590 = !DILocation(line: 689, column: 3, scope: !2538)
!2591 = distinct !DISubprogram(name: "mustache__data_segment_length", scope: !6, file: !6, line: 673, type: !2592, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!238, !238}
!2594 = !DILocalVariable(name: "filename_len", arg: 1, scope: !2591, file: !6, line: 673, type: !238)
!2595 = !DILocation(line: 673, column: 59, scope: !2591)
!2596 = !DILocation(line: 674, column: 15, scope: !2591)
!2597 = !DILocation(line: 674, column: 13, scope: !2591)
!2598 = !DILocation(line: 674, column: 3, scope: !2591)
!2599 = distinct !DISubprogram(name: "mustache__data_segment_write", scope: !6, file: !6, line: 654, type: !2600, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!238, !88, !1163}
!2602 = !DILocalVariable(name: "dest", arg: 1, scope: !2599, file: !6, line: 654, type: !88)
!2603 = !DILocation(line: 654, column: 39, scope: !2599)
!2604 = !DILocalVariable(name: "data", arg: 2, scope: !2599, file: !6, line: 654, type: !1163)
!2605 = !DILocation(line: 654, column: 70, scope: !2599)
!2606 = !DILocation(line: 655, column: 25, scope: !2599)
!2607 = !DILocation(line: 655, column: 18, scope: !2599)
!2608 = !DILocation(line: 655, column: 13, scope: !2599)
!2609 = !DILocation(line: 655, column: 3, scope: !2599)
!2610 = !DILocation(line: 655, column: 11, scope: !2599)
!2611 = !DILocation(line: 656, column: 26, scope: !2599)
!2612 = !DILocation(line: 656, column: 37, scope: !2599)
!2613 = !DILocation(line: 656, column: 18, scope: !2599)
!2614 = !DILocation(line: 656, column: 13, scope: !2599)
!2615 = !DILocation(line: 656, column: 3, scope: !2599)
!2616 = !DILocation(line: 656, column: 11, scope: !2599)
!2617 = !DILocation(line: 657, column: 26, scope: !2599)
!2618 = !DILocation(line: 657, column: 37, scope: !2599)
!2619 = !DILocation(line: 657, column: 18, scope: !2599)
!2620 = !DILocation(line: 657, column: 13, scope: !2599)
!2621 = !DILocation(line: 657, column: 3, scope: !2599)
!2622 = !DILocation(line: 657, column: 11, scope: !2599)
!2623 = !DILocation(line: 658, column: 26, scope: !2599)
!2624 = !DILocation(line: 658, column: 37, scope: !2599)
!2625 = !DILocation(line: 658, column: 18, scope: !2599)
!2626 = !DILocation(line: 658, column: 13, scope: !2599)
!2627 = !DILocation(line: 658, column: 3, scope: !2599)
!2628 = !DILocation(line: 658, column: 11, scope: !2599)
!2629 = !DILocation(line: 659, column: 25, scope: !2599)
!2630 = !DILocation(line: 659, column: 18, scope: !2599)
!2631 = !DILocation(line: 659, column: 13, scope: !2599)
!2632 = !DILocation(line: 659, column: 3, scope: !2599)
!2633 = !DILocation(line: 659, column: 11, scope: !2599)
!2634 = !DILocation(line: 660, column: 26, scope: !2599)
!2635 = !DILocation(line: 660, column: 31, scope: !2599)
!2636 = !DILocation(line: 660, column: 18, scope: !2599)
!2637 = !DILocation(line: 660, column: 13, scope: !2599)
!2638 = !DILocation(line: 660, column: 3, scope: !2599)
!2639 = !DILocation(line: 660, column: 11, scope: !2599)
!2640 = !DILocation(line: 661, column: 26, scope: !2599)
!2641 = !DILocation(line: 661, column: 31, scope: !2599)
!2642 = !DILocation(line: 661, column: 18, scope: !2599)
!2643 = !DILocation(line: 661, column: 13, scope: !2599)
!2644 = !DILocation(line: 661, column: 3, scope: !2599)
!2645 = !DILocation(line: 661, column: 11, scope: !2599)
!2646 = !DILocation(line: 662, column: 26, scope: !2599)
!2647 = !DILocation(line: 662, column: 31, scope: !2599)
!2648 = !DILocation(line: 662, column: 18, scope: !2599)
!2649 = !DILocation(line: 662, column: 13, scope: !2599)
!2650 = !DILocation(line: 662, column: 3, scope: !2599)
!2651 = !DILocation(line: 662, column: 11, scope: !2599)
!2652 = !DILocation(line: 663, column: 25, scope: !2599)
!2653 = !DILocation(line: 663, column: 20, scope: !2599)
!2654 = !DILocation(line: 663, column: 18, scope: !2599)
!2655 = !DILocation(line: 663, column: 13, scope: !2599)
!2656 = !DILocation(line: 663, column: 3, scope: !2599)
!2657 = !DILocation(line: 663, column: 11, scope: !2599)
!2658 = !DILocation(line: 664, column: 26, scope: !2599)
!2659 = !DILocation(line: 664, column: 21, scope: !2599)
!2660 = !DILocation(line: 664, column: 39, scope: !2599)
!2661 = !DILocation(line: 664, column: 18, scope: !2599)
!2662 = !DILocation(line: 664, column: 13, scope: !2599)
!2663 = !DILocation(line: 664, column: 3, scope: !2599)
!2664 = !DILocation(line: 664, column: 11, scope: !2599)
!2665 = !DILocation(line: 665, column: 26, scope: !2599)
!2666 = !DILocation(line: 665, column: 21, scope: !2599)
!2667 = !DILocation(line: 665, column: 19, scope: !2599)
!2668 = !DILocation(line: 665, column: 14, scope: !2599)
!2669 = !DILocation(line: 665, column: 3, scope: !2599)
!2670 = !DILocation(line: 665, column: 12, scope: !2599)
!2671 = !DILocation(line: 666, column: 27, scope: !2599)
!2672 = !DILocation(line: 666, column: 22, scope: !2599)
!2673 = !DILocation(line: 666, column: 36, scope: !2599)
!2674 = !DILocation(line: 666, column: 19, scope: !2599)
!2675 = !DILocation(line: 666, column: 14, scope: !2599)
!2676 = !DILocation(line: 666, column: 3, scope: !2599)
!2677 = !DILocation(line: 666, column: 12, scope: !2599)
!2678 = !DILocation(line: 667, column: 12, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2599, file: !6, line: 667, column: 7)
!2680 = !DILocation(line: 667, column: 7, scope: !2679)
!2681 = !DILocation(line: 667, column: 7, scope: !2599)
!2682 = !DILocation(line: 668, column: 12, scope: !2679)
!2683 = !DILocation(line: 668, column: 17, scope: !2679)
!2684 = !DILocation(line: 668, column: 28, scope: !2679)
!2685 = !DILocation(line: 668, column: 43, scope: !2679)
!2686 = !DILocation(line: 668, column: 38, scope: !2679)
!2687 = !DILocation(line: 668, column: 5, scope: !2679)
!2688 = !DILocation(line: 669, column: 4, scope: !2599)
!2689 = !DILocation(line: 669, column: 9, scope: !2599)
!2690 = !DILocation(line: 669, column: 20, scope: !2599)
!2691 = !DILocation(line: 669, column: 3, scope: !2599)
!2692 = !DILocation(line: 669, column: 34, scope: !2599)
!2693 = !DILocation(line: 670, column: 20, scope: !2599)
!2694 = !DILocation(line: 670, column: 15, scope: !2599)
!2695 = !DILocation(line: 670, column: 13, scope: !2599)
!2696 = !DILocation(line: 670, column: 10, scope: !2599)
!2697 = !DILocation(line: 670, column: 3, scope: !2599)
!2698 = distinct !DISubprogram(name: "mustache__file_is_loaded", scope: !6, file: !6, line: 782, type: !2699, scopeLine: 783, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!29, !1729, !91, !238}
!2701 = !DILocalVariable(name: "s", arg: 1, scope: !2698, file: !6, line: 782, type: !1729)
!2702 = !DILocation(line: 782, column: 75, scope: !2698)
!2703 = !DILocalVariable(name: "name", arg: 2, scope: !2698, file: !6, line: 783, type: !91)
!2704 = !DILocation(line: 783, column: 55, scope: !2698)
!2705 = !DILocalVariable(name: "name_len", arg: 3, scope: !2698, file: !6, line: 783, type: !238)
!2706 = !DILocation(line: 783, column: 68, scope: !2698)
!2707 = !DILocalVariable(name: "data", scope: !2698, file: !6, line: 784, type: !91)
!2708 = !DILocation(line: 784, column: 9, scope: !2698)
!2709 = !DILocation(line: 784, column: 16, scope: !2698)
!2710 = !DILocation(line: 784, column: 19, scope: !2698)
!2711 = !DILocalVariable(name: "end", scope: !2698, file: !6, line: 785, type: !151)
!2712 = !DILocation(line: 785, column: 15, scope: !2698)
!2713 = !DILocation(line: 785, column: 21, scope: !2698)
!2714 = !DILocation(line: 785, column: 28, scope: !2698)
!2715 = !DILocation(line: 785, column: 31, scope: !2698)
!2716 = !DILocation(line: 785, column: 34, scope: !2698)
!2717 = !DILocation(line: 785, column: 36, scope: !2698)
!2718 = !DILocation(line: 785, column: 46, scope: !2698)
!2719 = !DILocation(line: 785, column: 26, scope: !2698)
!2720 = !DILocation(line: 786, column: 3, scope: !2698)
!2721 = !DILocation(line: 786, column: 10, scope: !2698)
!2722 = !DILocation(line: 786, column: 17, scope: !2698)
!2723 = !DILocation(line: 786, column: 15, scope: !2698)
!2724 = !DILocalVariable(name: "seg", scope: !2725, file: !6, line: 787, type: !1163)
!2725 = distinct !DILexicalBlock(scope: !2698, file: !6, line: 786, column: 22)
!2726 = !DILocation(line: 787, column: 30, scope: !2725)
!2727 = !DILocation(line: 787, column: 75, scope: !2725)
!2728 = !DILocation(line: 787, column: 36, scope: !2725)
!2729 = !DILocation(line: 788, column: 13, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2725, file: !6, line: 788, column: 9)
!2731 = !DILocation(line: 788, column: 9, scope: !2730)
!2732 = !DILocation(line: 788, column: 29, scope: !2730)
!2733 = !DILocation(line: 788, column: 26, scope: !2730)
!2734 = !DILocation(line: 788, column: 38, scope: !2730)
!2735 = !DILocation(line: 788, column: 53, scope: !2730)
!2736 = !DILocation(line: 788, column: 63, scope: !2730)
!2737 = !DILocation(line: 788, column: 69, scope: !2730)
!2738 = !DILocation(line: 788, column: 42, scope: !2730)
!2739 = !DILocation(line: 788, column: 9, scope: !2725)
!2740 = !DILocation(line: 789, column: 18, scope: !2730)
!2741 = !DILocation(line: 789, column: 7, scope: !2730)
!2742 = !DILocation(line: 790, column: 17, scope: !2725)
!2743 = !DILocation(line: 790, column: 10, scope: !2725)
!2744 = distinct !{!2744, !2720, !2745}
!2745 = !DILocation(line: 791, column: 3, scope: !2698)
!2746 = !DILocation(line: 792, column: 3, scope: !2698)
!2747 = !DILocation(line: 793, column: 1, scope: !2698)
!2748 = distinct !DISubprogram(name: "mustache_on_text", scope: !3, file: !3, line: 170, type: !2749, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!87, !2751, !151, !29}
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!2752 = !DILocalVariable(name: "section", arg: 1, scope: !2748, file: !3, line: 170, type: !2751)
!2753 = !DILocation(line: 170, column: 49, scope: !2748)
!2754 = !DILocalVariable(name: "data", arg: 2, scope: !2748, file: !3, line: 170, type: !151)
!2755 = !DILocation(line: 170, column: 70, scope: !2748)
!2756 = !DILocalVariable(name: "data_len", arg: 3, scope: !2748, file: !3, line: 171, type: !29)
!2757 = !DILocation(line: 171, column: 38, scope: !2748)
!2758 = !DILocalVariable(name: "dest", scope: !2748, file: !3, line: 172, type: !93)
!2759 = !DILocation(line: 172, column: 9, scope: !2748)
!2760 = !DILocation(line: 172, column: 23, scope: !2748)
!2761 = !DILocation(line: 172, column: 32, scope: !2748)
!2762 = !DILocation(line: 172, column: 16, scope: !2748)
!2763 = !DILocation(line: 173, column: 19, scope: !2748)
!2764 = !DILocation(line: 173, column: 25, scope: !2748)
!2765 = !DILocation(line: 173, column: 31, scope: !2748)
!2766 = !DILocation(line: 173, column: 3, scope: !2748)
!2767 = !DILocation(line: 174, column: 3, scope: !2748)
!2768 = distinct !DISubprogram(name: "mustache_on_arg", scope: !3, file: !3, line: 154, type: !2769, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!87, !2751, !151, !29, !68}
!2771 = !DILocalVariable(name: "section", arg: 1, scope: !2768, file: !3, line: 154, type: !2751)
!2772 = !DILocation(line: 154, column: 48, scope: !2768)
!2773 = !DILocalVariable(name: "name", arg: 2, scope: !2768, file: !3, line: 154, type: !151)
!2774 = !DILocation(line: 154, column: 69, scope: !2768)
!2775 = !DILocalVariable(name: "name_len", arg: 3, scope: !2768, file: !3, line: 155, type: !29)
!2776 = !DILocation(line: 155, column: 37, scope: !2768)
!2777 = !DILocalVariable(name: "escape", arg: 4, scope: !2768, file: !3, line: 155, type: !68)
!2778 = !DILocation(line: 155, column: 61, scope: !2768)
!2779 = !DILocalVariable(name: "o", scope: !2768, file: !3, line: 156, type: !93)
!2780 = !DILocation(line: 156, column: 9, scope: !2768)
!2781 = !DILocation(line: 156, column: 37, scope: !2768)
!2782 = !DILocation(line: 156, column: 46, scope: !2768)
!2783 = !DILocation(line: 156, column: 52, scope: !2768)
!2784 = !DILocation(line: 156, column: 13, scope: !2768)
!2785 = !DILocation(line: 157, column: 8, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 157, column: 7)
!2787 = !DILocation(line: 157, column: 7, scope: !2768)
!2788 = !DILocation(line: 158, column: 5, scope: !2786)
!2789 = !DILocalVariable(name: "i", scope: !2768, file: !3, line: 159, type: !234)
!2790 = !DILocation(line: 159, column: 18, scope: !2768)
!2791 = !DILocation(line: 159, column: 37, scope: !2768)
!2792 = !DILocation(line: 159, column: 22, scope: !2768)
!2793 = !DILocation(line: 160, column: 10, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 160, column: 7)
!2795 = !DILocation(line: 160, column: 8, scope: !2794)
!2796 = !DILocation(line: 160, column: 7, scope: !2768)
!2797 = !DILocation(line: 161, column: 5, scope: !2794)
!2798 = !DILocation(line: 162, column: 30, scope: !2768)
!2799 = !DILocation(line: 162, column: 41, scope: !2768)
!2800 = !DILocation(line: 162, column: 49, scope: !2768)
!2801 = !DILocation(line: 162, column: 47, scope: !2768)
!2802 = !DILocation(line: 162, column: 54, scope: !2768)
!2803 = !DILocation(line: 162, column: 10, scope: !2768)
!2804 = !DILocation(line: 162, column: 3, scope: !2768)
!2805 = !DILocation(line: 163, column: 1, scope: !2768)
!2806 = distinct !DISubprogram(name: "mustache_on_section_test", scope: !3, file: !3, line: 191, type: !2807, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!1501, !2751, !151, !29, !89}
!2809 = !DILocalVariable(name: "section", arg: 1, scope: !2806, file: !3, line: 191, type: !2751)
!2810 = !DILocation(line: 191, column: 61, scope: !2806)
!2811 = !DILocalVariable(name: "name", arg: 2, scope: !2806, file: !3, line: 192, type: !151)
!2812 = !DILocation(line: 192, column: 53, scope: !2806)
!2813 = !DILocalVariable(name: "name_len", arg: 3, scope: !2806, file: !3, line: 192, type: !29)
!2814 = !DILocation(line: 192, column: 68, scope: !2806)
!2815 = !DILocalVariable(name: "callable", arg: 4, scope: !2806, file: !3, line: 193, type: !89)
!2816 = !DILocation(line: 193, column: 49, scope: !2806)
!2817 = !DILocalVariable(name: "o", scope: !2806, file: !3, line: 194, type: !93)
!2818 = !DILocation(line: 194, column: 9, scope: !2806)
!2819 = !DILocation(line: 194, column: 37, scope: !2806)
!2820 = !DILocation(line: 194, column: 46, scope: !2806)
!2821 = !DILocation(line: 194, column: 52, scope: !2806)
!2822 = !DILocation(line: 194, column: 13, scope: !2806)
!2823 = !DILocation(line: 195, column: 8, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 195, column: 7)
!2825 = !DILocation(line: 195, column: 10, scope: !2824)
!2826 = !DILocation(line: 195, column: 13, scope: !2824)
!2827 = !DILocation(line: 195, column: 7, scope: !2806)
!2828 = !DILocation(line: 196, column: 5, scope: !2824)
!2829 = !DILocation(line: 197, column: 7, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 197, column: 7)
!2831 = !DILocation(line: 197, column: 7, scope: !2806)
!2832 = !DILocation(line: 198, column: 28, scope: !2830)
!2833 = !DILocation(line: 198, column: 12, scope: !2830)
!2834 = !DILocation(line: 198, column: 5, scope: !2830)
!2835 = !DILocation(line: 199, column: 3, scope: !2806)
!2836 = !DILocation(line: 201, column: 1, scope: !2806)
!2837 = distinct !DISubprogram(name: "mustache_on_section_start", scope: !3, file: !3, line: 215, type: !2838, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!87, !2751, !151, !29, !29}
!2840 = !DILocalVariable(name: "section", arg: 1, scope: !2837, file: !3, line: 215, type: !2751)
!2841 = !DILocation(line: 215, column: 58, scope: !2837)
!2842 = !DILocalVariable(name: "name", arg: 2, scope: !2837, file: !3, line: 216, type: !151)
!2843 = !DILocation(line: 216, column: 50, scope: !2837)
!2844 = !DILocalVariable(name: "name_len", arg: 3, scope: !2837, file: !3, line: 216, type: !29)
!2845 = !DILocation(line: 216, column: 65, scope: !2837)
!2846 = !DILocalVariable(name: "index", arg: 4, scope: !2837, file: !3, line: 217, type: !29)
!2847 = !DILocation(line: 217, column: 47, scope: !2837)
!2848 = !DILocalVariable(name: "o", scope: !2837, file: !3, line: 218, type: !93)
!2849 = !DILocation(line: 218, column: 9, scope: !2837)
!2850 = !DILocation(line: 218, column: 37, scope: !2837)
!2851 = !DILocation(line: 218, column: 46, scope: !2837)
!2852 = !DILocation(line: 218, column: 52, scope: !2837)
!2853 = !DILocation(line: 218, column: 13, scope: !2837)
!2854 = !DILocation(line: 219, column: 8, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 219, column: 7)
!2856 = !DILocation(line: 219, column: 7, scope: !2837)
!2857 = !DILocation(line: 220, column: 5, scope: !2855)
!2858 = !DILocation(line: 221, column: 7, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 221, column: 7)
!2860 = !DILocation(line: 221, column: 7, scope: !2837)
!2861 = !DILocation(line: 222, column: 47, scope: !2859)
!2862 = !DILocation(line: 222, column: 50, scope: !2859)
!2863 = !DILocation(line: 222, column: 31, scope: !2859)
!2864 = !DILocation(line: 222, column: 23, scope: !2859)
!2865 = !DILocation(line: 222, column: 5, scope: !2859)
!2866 = !DILocation(line: 222, column: 14, scope: !2859)
!2867 = !DILocation(line: 222, column: 21, scope: !2859)
!2868 = !DILocation(line: 224, column: 31, scope: !2859)
!2869 = !DILocation(line: 224, column: 23, scope: !2859)
!2870 = !DILocation(line: 224, column: 5, scope: !2859)
!2871 = !DILocation(line: 224, column: 14, scope: !2859)
!2872 = !DILocation(line: 224, column: 21, scope: !2859)
!2873 = !DILocation(line: 225, column: 3, scope: !2837)
!2874 = !DILocation(line: 226, column: 1, scope: !2837)
!2875 = distinct !DISubprogram(name: "mustache_on_formatting_error", scope: !3, file: !3, line: 231, type: !2876, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !81, !81}
!2878 = !DILocalVariable(name: "udata1", arg: 1, scope: !2875, file: !3, line: 231, type: !81)
!2879 = !DILocation(line: 231, column: 48, scope: !2875)
!2880 = !DILocalVariable(name: "udata2", arg: 2, scope: !2875, file: !3, line: 231, type: !81)
!2881 = !DILocation(line: 231, column: 62, scope: !2875)
!2882 = !DILocation(line: 232, column: 9, scope: !2875)
!2883 = !DILocation(line: 233, column: 9, scope: !2875)
!2884 = !DILocation(line: 234, column: 1, scope: !2875)
!2885 = distinct !DISubprogram(name: "fiobj_mustache_find_obj", scope: !3, file: !3, line: 102, type: !2886, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!93, !2751, !151, !29}
!2888 = !DILocalVariable(name: "section", arg: 1, scope: !2885, file: !3, line: 102, type: !2751)
!2889 = !DILocation(line: 102, column: 65, scope: !2885)
!2890 = !DILocalVariable(name: "name", arg: 2, scope: !2885, file: !3, line: 103, type: !151)
!2891 = !DILocation(line: 103, column: 57, scope: !2885)
!2892 = !DILocalVariable(name: "name_len", arg: 3, scope: !2885, file: !3, line: 104, type: !29)
!2893 = !DILocation(line: 104, column: 54, scope: !2885)
!2894 = !DILocalVariable(name: "tmp", scope: !2885, file: !3, line: 105, type: !93)
!2895 = !DILocation(line: 105, column: 9, scope: !2885)
!2896 = !DILocation(line: 105, column: 44, scope: !2885)
!2897 = !DILocation(line: 105, column: 53, scope: !2885)
!2898 = !DILocation(line: 105, column: 59, scope: !2885)
!2899 = !DILocation(line: 105, column: 15, scope: !2885)
!2900 = !DILocation(line: 106, column: 7, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 106, column: 7)
!2902 = !DILocation(line: 106, column: 11, scope: !2901)
!2903 = !DILocation(line: 106, column: 7, scope: !2885)
!2904 = !DILocation(line: 107, column: 12, scope: !2901)
!2905 = !DILocation(line: 107, column: 5, scope: !2901)
!2906 = !DILocalVariable(name: "dot", scope: !2885, file: !3, line: 109, type: !29)
!2907 = !DILocation(line: 109, column: 12, scope: !2885)
!2908 = !DILocation(line: 110, column: 3, scope: !2885)
!2909 = !DILocation(line: 110, column: 10, scope: !2885)
!2910 = !DILocation(line: 110, column: 16, scope: !2885)
!2911 = !DILocation(line: 110, column: 14, scope: !2885)
!2912 = !DILocation(line: 110, column: 25, scope: !2885)
!2913 = !DILocation(line: 110, column: 28, scope: !2885)
!2914 = !DILocation(line: 110, column: 33, scope: !2885)
!2915 = !DILocation(line: 110, column: 38, scope: !2885)
!2916 = !DILocation(line: 0, scope: !2885)
!2917 = !DILocation(line: 111, column: 5, scope: !2885)
!2918 = distinct !{!2918, !2908, !2919}
!2919 = !DILocation(line: 111, column: 7, scope: !2885)
!2920 = !DILocation(line: 112, column: 7, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 112, column: 7)
!2922 = !DILocation(line: 112, column: 14, scope: !2921)
!2923 = !DILocation(line: 112, column: 11, scope: !2921)
!2924 = !DILocation(line: 112, column: 7, scope: !2885)
!2925 = !DILocation(line: 113, column: 5, scope: !2921)
!2926 = !DILocation(line: 114, column: 38, scope: !2885)
!2927 = !DILocation(line: 114, column: 47, scope: !2885)
!2928 = !DILocation(line: 114, column: 53, scope: !2885)
!2929 = !DILocation(line: 114, column: 9, scope: !2885)
!2930 = !DILocation(line: 114, column: 7, scope: !2885)
!2931 = !DILocation(line: 115, column: 8, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 115, column: 7)
!2933 = !DILocation(line: 115, column: 7, scope: !2885)
!2934 = !DILocation(line: 116, column: 5, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 115, column: 13)
!2936 = !DILocation(line: 118, column: 3, scope: !2885)
!2937 = !DILocation(line: 119, column: 3, scope: !2885)
!2938 = !DILocalVariable(name: "key", scope: !2939, file: !3, line: 120, type: !93)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 119, column: 12)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 119, column: 3)
!2941 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 119, column: 3)
!2942 = !DILocation(line: 120, column: 11, scope: !2939)
!2943 = !DILocation(line: 120, column: 17, scope: !2939)
!2944 = !DILocation(line: 121, column: 21, scope: !2939)
!2945 = !DILocation(line: 121, column: 26, scope: !2939)
!2946 = !DILocation(line: 121, column: 33, scope: !2939)
!2947 = !DILocation(line: 121, column: 31, scope: !2939)
!2948 = !DILocation(line: 121, column: 38, scope: !2939)
!2949 = !DILocation(line: 121, column: 49, scope: !2939)
!2950 = !DILocation(line: 121, column: 47, scope: !2939)
!2951 = !DILocation(line: 121, column: 5, scope: !2939)
!2952 = !DILocalVariable(name: "obj", scope: !2939, file: !3, line: 122, type: !93)
!2953 = !DILocation(line: 122, column: 11, scope: !2939)
!2954 = !DILocation(line: 122, column: 50, scope: !2939)
!2955 = !DILocation(line: 122, column: 55, scope: !2939)
!2956 = !DILocation(line: 122, column: 17, scope: !2939)
!2957 = !DILocation(line: 123, column: 9, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 123, column: 9)
!2959 = !DILocation(line: 123, column: 13, scope: !2958)
!2960 = !DILocation(line: 123, column: 9, scope: !2939)
!2961 = !DILocation(line: 124, column: 14, scope: !2958)
!2962 = !DILocation(line: 124, column: 7, scope: !2958)
!2963 = !DILocation(line: 125, column: 13, scope: !2939)
!2964 = !DILocation(line: 125, column: 10, scope: !2939)
!2965 = !DILocation(line: 126, column: 17, scope: !2939)
!2966 = !DILocation(line: 126, column: 14, scope: !2939)
!2967 = !DILocation(line: 127, column: 9, scope: !2939)
!2968 = !DILocation(line: 128, column: 5, scope: !2939)
!2969 = !DILocation(line: 128, column: 12, scope: !2939)
!2970 = !DILocation(line: 128, column: 18, scope: !2939)
!2971 = !DILocation(line: 128, column: 16, scope: !2939)
!2972 = !DILocation(line: 128, column: 27, scope: !2939)
!2973 = !DILocation(line: 128, column: 30, scope: !2939)
!2974 = !DILocation(line: 128, column: 35, scope: !2939)
!2975 = !DILocation(line: 128, column: 40, scope: !2939)
!2976 = !DILocation(line: 0, scope: !2939)
!2977 = !DILocation(line: 129, column: 7, scope: !2939)
!2978 = distinct !{!2978, !2968, !2979}
!2979 = !DILocation(line: 129, column: 9, scope: !2939)
!2980 = !DILocation(line: 130, column: 9, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 130, column: 9)
!2982 = !DILocation(line: 130, column: 16, scope: !2981)
!2983 = !DILocation(line: 130, column: 13, scope: !2981)
!2984 = !DILocation(line: 130, column: 9, scope: !2939)
!2985 = !DILocation(line: 131, column: 7, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 130, column: 26)
!2987 = !DILocation(line: 133, column: 11, scope: !2939)
!2988 = !DILocation(line: 133, column: 9, scope: !2939)
!2989 = !DILocation(line: 134, column: 21, scope: !2939)
!2990 = !DILocation(line: 134, column: 26, scope: !2939)
!2991 = !DILocation(line: 134, column: 32, scope: !2939)
!2992 = !DILocation(line: 134, column: 5, scope: !2939)
!2993 = !DILocation(line: 135, column: 44, scope: !2939)
!2994 = !DILocation(line: 135, column: 49, scope: !2939)
!2995 = !DILocation(line: 135, column: 11, scope: !2939)
!2996 = !DILocation(line: 135, column: 9, scope: !2939)
!2997 = !DILocation(line: 136, column: 9, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 136, column: 9)
!2999 = !DILocation(line: 136, column: 13, scope: !2998)
!3000 = !DILocation(line: 136, column: 9, scope: !2939)
!3001 = !DILocation(line: 137, column: 7, scope: !2998)
!3002 = !DILocation(line: 138, column: 5, scope: !2939)
!3003 = !DILocation(line: 119, column: 3, scope: !2940)
!3004 = distinct !{!3004, !3005, !3006}
!3005 = !DILocation(line: 119, column: 3, scope: !2941)
!3006 = !DILocation(line: 139, column: 3, scope: !2941)
!3007 = !DILocation(line: 140, column: 1, scope: !2885)
!3008 = distinct !DISubprogram(name: "fiobj_obj2cstr", scope: !67, file: !67, line: 515, type: !3009, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!234, !3011}
!3011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!3012 = !DILocalVariable(name: "o", arg: 1, scope: !3008, file: !67, line: 515, type: !3011)
!3013 = !DILocation(line: 515, column: 54, scope: !3008)
!3014 = !DILocation(line: 516, column: 8, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3008, file: !67, line: 516, column: 7)
!3016 = !DILocation(line: 516, column: 7, scope: !3008)
!3017 = !DILocalVariable(name: "ret", scope: !3018, file: !67, line: 517, type: !234)
!3018 = distinct !DILexicalBlock(scope: !3015, file: !67, line: 516, column: 11)
!3019 = !DILocation(line: 517, column: 20, scope: !3018)
!3020 = !DILocation(line: 518, column: 5, scope: !3018)
!3021 = !DILocation(line: 520, column: 7, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3008, file: !67, line: 520, column: 7)
!3023 = !DILocation(line: 520, column: 9, scope: !3022)
!3024 = !DILocation(line: 520, column: 7, scope: !3008)
!3025 = !DILocation(line: 521, column: 35, scope: !3022)
!3026 = !DILocation(line: 521, column: 38, scope: !3022)
!3027 = !DILocation(line: 521, column: 12, scope: !3022)
!3028 = !DILocation(line: 521, column: 5, scope: !3022)
!3029 = !DILocation(line: 522, column: 8, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3008, file: !67, line: 522, column: 7)
!3031 = !DILocation(line: 522, column: 10, scope: !3030)
!3032 = !DILocation(line: 522, column: 37, scope: !3030)
!3033 = !DILocation(line: 522, column: 7, scope: !3008)
!3034 = !DILocation(line: 523, column: 30, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3030, file: !67, line: 522, column: 65)
!3036 = !DILocation(line: 523, column: 13, scope: !3035)
!3037 = !DILocation(line: 523, column: 5, scope: !3035)
!3038 = !DILocalVariable(name: "ret", scope: !3039, file: !67, line: 525, type: !234)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !67, line: 524, column: 24)
!3040 = distinct !DILexicalBlock(scope: !3035, file: !67, line: 523, column: 33)
!3041 = !DILocation(line: 525, column: 22, scope: !3039)
!3042 = !DILocation(line: 526, column: 7, scope: !3039)
!3043 = !DILocalVariable(name: "ret", scope: !3044, file: !67, line: 529, type: !234)
!3044 = distinct !DILexicalBlock(scope: !3040, file: !67, line: 528, column: 25)
!3045 = !DILocation(line: 529, column: 22, scope: !3044)
!3046 = !DILocation(line: 530, column: 7, scope: !3044)
!3047 = !DILocalVariable(name: "ret", scope: !3048, file: !67, line: 533, type: !234)
!3048 = distinct !DILexicalBlock(scope: !3040, file: !67, line: 532, column: 24)
!3049 = !DILocation(line: 533, column: 22, scope: !3048)
!3050 = !DILocation(line: 534, column: 7, scope: !3048)
!3051 = !DILocation(line: 537, column: 7, scope: !3040)
!3052 = !DILocation(line: 539, column: 3, scope: !3035)
!3053 = !DILocation(line: 540, column: 10, scope: !3008)
!3054 = !DILocation(line: 540, column: 28, scope: !3008)
!3055 = !DILocation(line: 540, column: 35, scope: !3008)
!3056 = !DILocation(line: 540, column: 3, scope: !3008)
!3057 = !DILocation(line: 541, column: 1, scope: !3008)
!3058 = distinct !DISubprogram(name: "mustache_write_text", scope: !6, file: !6, line: 603, type: !3059, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!87, !2751, !91, !29, !89}
!3061 = !DILocalVariable(name: "section", arg: 1, scope: !3058, file: !6, line: 603, type: !2751)
!3062 = !DILocation(line: 603, column: 59, scope: !3058)
!3063 = !DILocalVariable(name: "text", arg: 2, scope: !3058, file: !6, line: 603, type: !91)
!3064 = !DILocation(line: 603, column: 74, scope: !3058)
!3065 = !DILocalVariable(name: "len", arg: 3, scope: !3058, file: !6, line: 604, type: !29)
!3066 = !DILocation(line: 604, column: 48, scope: !3058)
!3067 = !DILocalVariable(name: "escape", arg: 4, scope: !3058, file: !6, line: 604, type: !89)
!3068 = !DILocation(line: 604, column: 61, scope: !3058)
!3069 = !DILocalVariable(name: "s", scope: !3058, file: !6, line: 605, type: !113)
!3070 = !DILocation(line: 605, column: 30, scope: !3058)
!3071 = !DILocation(line: 605, column: 59, scope: !3058)
!3072 = !DILocation(line: 605, column: 34, scope: !3058)
!3073 = !DILocation(line: 606, column: 7, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3058, file: !6, line: 606, column: 7)
!3075 = !DILocation(line: 606, column: 7, scope: !3058)
!3076 = !DILocation(line: 607, column: 36, scope: !3074)
!3077 = !DILocation(line: 607, column: 39, scope: !3074)
!3078 = !DILocation(line: 607, column: 45, scope: !3074)
!3079 = !DILocation(line: 607, column: 12, scope: !3074)
!3080 = !DILocation(line: 607, column: 5, scope: !3074)
!3081 = !DILocalVariable(name: "end", scope: !3058, file: !6, line: 610, type: !91)
!3082 = !DILocation(line: 610, column: 9, scope: !3058)
!3083 = !DILocation(line: 610, column: 22, scope: !3058)
!3084 = !DILocation(line: 610, column: 34, scope: !3058)
!3085 = !DILocation(line: 610, column: 15, scope: !3058)
!3086 = !DILocation(line: 611, column: 3, scope: !3058)
!3087 = !DILocation(line: 611, column: 10, scope: !3058)
!3088 = !DILocation(line: 611, column: 14, scope: !3058)
!3089 = !DILocation(line: 611, column: 17, scope: !3058)
!3090 = !DILocation(line: 0, scope: !3058)
!3091 = !DILocation(line: 612, column: 5, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3058, file: !6, line: 611, column: 22)
!3093 = !DILocalVariable(name: "slice_len", scope: !3092, file: !6, line: 613, type: !3094)
!3094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!3095 = !DILocation(line: 613, column: 20, scope: !3092)
!3096 = !DILocation(line: 613, column: 32, scope: !3092)
!3097 = !DILocation(line: 613, column: 38, scope: !3092)
!3098 = !DILocation(line: 613, column: 36, scope: !3092)
!3099 = !DILocation(line: 614, column: 27, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3092, file: !6, line: 614, column: 9)
!3101 = !DILocation(line: 614, column: 30, scope: !3100)
!3102 = !DILocation(line: 614, column: 36, scope: !3100)
!3103 = !DILocation(line: 614, column: 39, scope: !3100)
!3104 = !DILocation(line: 614, column: 46, scope: !3100)
!3105 = !DILocation(line: 614, column: 51, scope: !3100)
!3106 = !DILocation(line: 614, column: 57, scope: !3100)
!3107 = !DILocation(line: 614, column: 9, scope: !3100)
!3108 = !DILocation(line: 614, column: 68, scope: !3100)
!3109 = !DILocation(line: 614, column: 9, scope: !3092)
!3110 = !DILocation(line: 615, column: 7, scope: !3100)
!3111 = !DILocation(line: 616, column: 12, scope: !3092)
!3112 = !DILocation(line: 616, column: 10, scope: !3092)
!3113 = !DILocation(line: 617, column: 12, scope: !3092)
!3114 = !DILocation(line: 617, column: 9, scope: !3092)
!3115 = !DILocation(line: 618, column: 18, scope: !3092)
!3116 = !DILocation(line: 618, column: 30, scope: !3092)
!3117 = !DILocation(line: 618, column: 11, scope: !3092)
!3118 = !DILocation(line: 618, column: 9, scope: !3092)
!3119 = !DILocation(line: 619, column: 33, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3092, file: !6, line: 619, column: 9)
!3121 = !DILocation(line: 619, column: 9, scope: !3120)
!3122 = !DILocation(line: 619, column: 36, scope: !3120)
!3123 = !DILocation(line: 619, column: 9, scope: !3092)
!3124 = !DILocation(line: 620, column: 7, scope: !3120)
!3125 = distinct !{!3125, !3086, !3126}
!3126 = !DILocation(line: 621, column: 3, scope: !3058)
!3127 = !DILocation(line: 622, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3058, file: !6, line: 622, column: 7)
!3129 = !DILocation(line: 622, column: 11, scope: !3128)
!3130 = !DILocation(line: 622, column: 32, scope: !3128)
!3131 = !DILocation(line: 622, column: 35, scope: !3128)
!3132 = !DILocation(line: 622, column: 41, scope: !3128)
!3133 = !DILocation(line: 622, column: 44, scope: !3128)
!3134 = !DILocation(line: 622, column: 51, scope: !3128)
!3135 = !DILocation(line: 622, column: 56, scope: !3128)
!3136 = !DILocation(line: 622, column: 62, scope: !3128)
!3137 = !DILocation(line: 622, column: 14, scope: !3128)
!3138 = !DILocation(line: 622, column: 67, scope: !3128)
!3139 = !DILocation(line: 622, column: 7, scope: !3058)
!3140 = !DILocation(line: 623, column: 5, scope: !3128)
!3141 = !DILocation(line: 629, column: 3, scope: !3058)
!3142 = !DILocation(line: 630, column: 1, scope: !3058)
!3143 = distinct !DISubprogram(name: "fiobj_mustache_find_obj_tree", scope: !3, file: !3, line: 88, type: !2886, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!3144 = !DILocalVariable(name: "section", arg: 1, scope: !3143, file: !3, line: 88, type: !2751)
!3145 = !DILocation(line: 88, column: 70, scope: !3143)
!3146 = !DILocalVariable(name: "name", arg: 2, scope: !3143, file: !3, line: 89, type: !151)
!3147 = !DILocation(line: 89, column: 62, scope: !3143)
!3148 = !DILocalVariable(name: "name_len", arg: 3, scope: !3143, file: !3, line: 90, type: !29)
!3149 = !DILocation(line: 90, column: 59, scope: !3143)
!3150 = !DILocalVariable(name: "key", scope: !3143, file: !3, line: 91, type: !93)
!3151 = !DILocation(line: 91, column: 9, scope: !3143)
!3152 = !DILocation(line: 91, column: 15, scope: !3143)
!3153 = !DILocation(line: 92, column: 19, scope: !3143)
!3154 = !DILocation(line: 92, column: 24, scope: !3143)
!3155 = !DILocation(line: 92, column: 30, scope: !3143)
!3156 = !DILocation(line: 92, column: 3, scope: !3143)
!3157 = !DILocation(line: 93, column: 3, scope: !3143)
!3158 = !DILocalVariable(name: "tmp", scope: !3159, file: !3, line: 94, type: !93)
!3159 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 93, column: 6)
!3160 = !DILocation(line: 94, column: 11, scope: !3159)
!3161 = !DILocation(line: 94, column: 57, scope: !3159)
!3162 = !DILocation(line: 94, column: 66, scope: !3159)
!3163 = !DILocation(line: 94, column: 50, scope: !3159)
!3164 = !DILocation(line: 94, column: 74, scope: !3159)
!3165 = !DILocation(line: 94, column: 17, scope: !3159)
!3166 = !DILocation(line: 95, column: 9, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 95, column: 9)
!3168 = !DILocation(line: 95, column: 13, scope: !3167)
!3169 = !DILocation(line: 95, column: 9, scope: !3159)
!3170 = !DILocation(line: 96, column: 14, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 95, column: 31)
!3172 = !DILocation(line: 96, column: 7, scope: !3171)
!3173 = !DILocation(line: 98, column: 3, scope: !3159)
!3174 = !DILocation(line: 98, column: 47, scope: !3143)
!3175 = !DILocation(line: 98, column: 23, scope: !3143)
!3176 = !DILocation(line: 98, column: 21, scope: !3143)
!3177 = distinct !{!3177, !3157, !3178}
!3178 = !DILocation(line: 98, column: 56, scope: !3143)
!3179 = !DILocation(line: 99, column: 3, scope: !3143)
!3180 = !DILocation(line: 100, column: 1, scope: !3143)
!3181 = distinct !DISubprogram(name: "fiobj_mustache_find_obj_absolute", scope: !3, file: !3, line: 80, type: !3182, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!93, !93, !93}
!3184 = !DILocalVariable(name: "parent", arg: 1, scope: !3181, file: !3, line: 80, type: !93)
!3185 = !DILocation(line: 80, column: 60, scope: !3181)
!3186 = !DILocalVariable(name: "key", arg: 2, scope: !3181, file: !3, line: 80, type: !93)
!3187 = !DILocation(line: 80, column: 74, scope: !3181)
!3188 = !DILocation(line: 81, column: 8, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 81, column: 7)
!3190 = !DILocation(line: 81, column: 7, scope: !3181)
!3191 = !DILocation(line: 82, column: 5, scope: !3189)
!3192 = !DILocalVariable(name: "o", scope: !3181, file: !3, line: 83, type: !93)
!3193 = !DILocation(line: 83, column: 9, scope: !3181)
!3194 = !DILocation(line: 84, column: 22, scope: !3181)
!3195 = !DILocation(line: 84, column: 30, scope: !3181)
!3196 = !DILocation(line: 84, column: 7, scope: !3181)
!3197 = !DILocation(line: 84, column: 5, scope: !3181)
!3198 = !DILocation(line: 85, column: 10, scope: !3181)
!3199 = !DILocation(line: 85, column: 3, scope: !3181)
!3200 = !DILocation(line: 86, column: 1, scope: !3181)
!3201 = distinct !DISubprogram(name: "mustache_section_parent", scope: !6, file: !6, line: 442, type: !3202, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!2751, !2751}
!3204 = !DILocalVariable(name: "section", arg: 1, scope: !3201, file: !6, line: 442, type: !2751)
!3205 = !DILocation(line: 442, column: 45, scope: !3201)
!3206 = !DILocalVariable(name: "tmp", scope: !3201, file: !6, line: 443, type: !99)
!3207 = !DILocation(line: 443, column: 22, scope: !3201)
!3208 = !DILocation(line: 443, column: 29, scope: !3201)
!3209 = !DILocation(line: 443, column: 28, scope: !3201)
!3210 = !DILocalVariable(name: "f", scope: !3201, file: !6, line: 444, type: !94)
!3211 = !DILocation(line: 444, column: 36, scope: !3201)
!3212 = !DILocation(line: 445, column: 42, scope: !3201)
!3213 = !DILocation(line: 445, column: 7, scope: !3201)
!3214 = !DILocation(line: 446, column: 3, scope: !3201)
!3215 = !DILocation(line: 446, column: 10, scope: !3201)
!3216 = !DILocation(line: 446, column: 13, scope: !3201)
!3217 = !DILocation(line: 447, column: 5, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3201, file: !6, line: 446, column: 20)
!3219 = !DILocation(line: 448, column: 13, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3218, file: !6, line: 448, column: 9)
!3221 = !DILocation(line: 448, column: 23, scope: !3220)
!3222 = !DILocation(line: 448, column: 26, scope: !3220)
!3223 = !DILocation(line: 448, column: 30, scope: !3220)
!3224 = !DILocation(line: 448, column: 20, scope: !3220)
!3225 = !DILocation(line: 448, column: 37, scope: !3220)
!3226 = !DILocation(line: 448, column: 44, scope: !3220)
!3227 = !DILocation(line: 448, column: 54, scope: !3220)
!3228 = !DILocation(line: 448, column: 57, scope: !3220)
!3229 = !DILocation(line: 448, column: 61, scope: !3220)
!3230 = !DILocation(line: 448, column: 51, scope: !3220)
!3231 = !DILocation(line: 448, column: 9, scope: !3218)
!3232 = !DILocation(line: 449, column: 15, scope: !3220)
!3233 = !DILocation(line: 449, column: 18, scope: !3220)
!3234 = !DILocation(line: 449, column: 7, scope: !3220)
!3235 = distinct !{!3235, !3214, !3236}
!3236 = !DILocation(line: 450, column: 3, scope: !3201)
!3237 = !DILocation(line: 451, column: 3, scope: !3201)
!3238 = !DILocation(line: 452, column: 1, scope: !3201)
!3239 = distinct !DISubprogram(name: "fiobj_type_is", scope: !67, file: !67, line: 269, type: !3240, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!238, !93, !110}
!3242 = !DILocalVariable(name: "o", arg: 1, scope: !3239, file: !67, line: 269, type: !93)
!3243 = !DILocation(line: 269, column: 39, scope: !3239)
!3244 = !DILocalVariable(name: "type", arg: 2, scope: !3239, file: !67, line: 269, type: !110)
!3245 = !DILocation(line: 269, column: 58, scope: !3239)
!3246 = !DILocation(line: 270, column: 11, scope: !3239)
!3247 = !DILocation(line: 270, column: 3, scope: !3239)
!3248 = !DILocation(line: 272, column: 13, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3239, file: !67, line: 270, column: 17)
!3250 = !DILocation(line: 272, column: 15, scope: !3249)
!3251 = !DILocation(line: 272, column: 39, scope: !3249)
!3252 = !DILocation(line: 273, column: 32, scope: !3249)
!3253 = !DILocation(line: 273, column: 13, scope: !3249)
!3254 = !DILocation(line: 273, column: 12, scope: !3249)
!3255 = !DILocation(line: 273, column: 38, scope: !3249)
!3256 = !DILocation(line: 272, column: 12, scope: !3249)
!3257 = !DILocation(line: 272, column: 5, scope: !3249)
!3258 = !DILocation(line: 275, column: 13, scope: !3249)
!3259 = !DILocation(line: 275, column: 15, scope: !3249)
!3260 = !DILocation(line: 275, column: 18, scope: !3249)
!3261 = !DILocation(line: 275, column: 23, scope: !3249)
!3262 = !DILocation(line: 275, column: 20, scope: !3249)
!3263 = !DILocation(line: 275, column: 12, scope: !3249)
!3264 = !DILocation(line: 275, column: 5, scope: !3249)
!3265 = !DILocation(line: 277, column: 12, scope: !3249)
!3266 = !DILocation(line: 277, column: 17, scope: !3249)
!3267 = !DILocation(line: 277, column: 14, scope: !3249)
!3268 = !DILocation(line: 277, column: 5, scope: !3249)
!3269 = !DILocation(line: 279, column: 12, scope: !3249)
!3270 = !DILocation(line: 279, column: 17, scope: !3249)
!3271 = !DILocation(line: 279, column: 14, scope: !3249)
!3272 = !DILocation(line: 279, column: 5, scope: !3249)
!3273 = !DILocation(line: 281, column: 38, scope: !3249)
!3274 = !DILocation(line: 281, column: 40, scope: !3249)
!3275 = !DILocation(line: 281, column: 64, scope: !3249)
!3276 = !DILocation(line: 281, column: 69, scope: !3249)
!3277 = !DILocation(line: 282, column: 14, scope: !3249)
!3278 = !DILocation(line: 282, column: 16, scope: !3249)
!3279 = !DILocation(line: 282, column: 43, scope: !3249)
!3280 = !DILocation(line: 282, column: 68, scope: !3249)
!3281 = !DILocation(line: 281, column: 12, scope: !3249)
!3282 = !DILocation(line: 281, column: 5, scope: !3249)
!3283 = !DILocation(line: 287, column: 16, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !67, line: 286, column: 29)
!3285 = distinct !DILexicalBlock(scope: !3249, file: !67, line: 286, column: 9)
!3286 = !DILocation(line: 287, column: 18, scope: !3284)
!3287 = !DILocation(line: 287, column: 42, scope: !3284)
!3288 = !DILocation(line: 287, column: 47, scope: !3284)
!3289 = !DILocation(line: 288, column: 16, scope: !3284)
!3290 = !DILocation(line: 288, column: 18, scope: !3284)
!3291 = !DILocation(line: 288, column: 45, scope: !3284)
!3292 = !DILocation(line: 0, scope: !3284)
!3293 = !DILocation(line: 287, column: 14, scope: !3284)
!3294 = !DILocation(line: 287, column: 7, scope: !3284)
!3295 = !DILocation(line: 295, column: 12, scope: !3249)
!3296 = !DILocation(line: 295, column: 34, scope: !3249)
!3297 = !DILocation(line: 296, column: 32, scope: !3249)
!3298 = !DILocation(line: 296, column: 12, scope: !3249)
!3299 = !DILocation(line: 296, column: 52, scope: !3249)
!3300 = !DILocation(line: 296, column: 49, scope: !3249)
!3301 = !DILocation(line: 0, scope: !3249)
!3302 = !DILocation(line: 295, column: 5, scope: !3249)
!3303 = !DILocation(line: 298, column: 10, scope: !3239)
!3304 = !DILocation(line: 298, column: 32, scope: !3239)
!3305 = !DILocation(line: 298, column: 55, scope: !3239)
!3306 = !DILocation(line: 298, column: 35, scope: !3239)
!3307 = !DILocation(line: 298, column: 75, scope: !3239)
!3308 = !DILocation(line: 298, column: 72, scope: !3239)
!3309 = !DILocation(line: 0, scope: !3239)
!3310 = !DILocation(line: 298, column: 3, scope: !3239)
!3311 = !DILocation(line: 299, column: 1, scope: !3239)
!3312 = distinct !DISubprogram(name: "fiobj_null", scope: !67, file: !67, line: 87, type: !3313, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!93}
!3315 = !DILocation(line: 87, column: 37, scope: !3312)
!3316 = distinct !DISubprogram(name: "fiobj_true", scope: !67, file: !67, line: 88, type: !3313, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!3317 = !DILocation(line: 88, column: 37, scope: !3316)
!3318 = distinct !DISubprogram(name: "fiobj_false", scope: !67, file: !67, line: 89, type: !3313, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!3319 = !DILocation(line: 89, column: 38, scope: !3318)
!3320 = distinct !DISubprogram(name: "fiobj_type_vtable", scope: !67, file: !67, line: 344, type: !3321, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!3323, !93}
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3325)
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_vtable_s", file: !67, line: 325, baseType: !3326)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 305, size: 576, elements: !3327)
!3327 = !{!3328, !3329, !3337, !3342, !3347, !3352, !3360, !3363, !3368}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "class_name", scope: !3326, file: !67, line: 307, baseType: !151, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !3326, file: !67, line: 309, baseType: !3330, size: 64, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3331)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{null, !93, !3334, !81}
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{null, !93, !81}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3326, file: !67, line: 311, baseType: !3338, size: 64, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3339)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!84, !3011}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "is_true", scope: !3326, file: !67, line: 313, baseType: !3343, size: 64, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3344)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!238, !3011}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "is_eq", scope: !3326, file: !67, line: 315, baseType: !3348, size: 64, offset: 256)
!3348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3349)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!238, !3011, !3011}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "each", scope: !3326, file: !67, line: 317, baseType: !3353, size: 64, offset: 320)
!3353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3354)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!238, !93, !238, !3357, !81}
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!87, !93, !81}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "to_str", scope: !3326, file: !67, line: 320, baseType: !3361, size: 64, offset: 384)
!3361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3362)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "to_i", scope: !3326, file: !67, line: 322, baseType: !3364, size: 64, offset: 448)
!3364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3365)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!111, !3011}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "to_f", scope: !3326, file: !67, line: 324, baseType: !3369, size: 64, offset: 512)
!3369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3370)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!3373, !3011}
!3373 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!3374 = !DILocalVariable(name: "o", arg: 1, scope: !3320, file: !67, line: 344, type: !93)
!3375 = !DILocation(line: 344, column: 65, scope: !3320)
!3376 = !DILocation(line: 345, column: 11, scope: !3320)
!3377 = !DILocation(line: 345, column: 3, scope: !3320)
!3378 = !DILocation(line: 347, column: 5, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3320, file: !67, line: 345, column: 26)
!3380 = !DILocation(line: 349, column: 5, scope: !3379)
!3381 = !DILocation(line: 351, column: 5, scope: !3379)
!3382 = !DILocation(line: 353, column: 5, scope: !3379)
!3383 = !DILocation(line: 355, column: 5, scope: !3379)
!3384 = !DILocation(line: 357, column: 5, scope: !3379)
!3385 = !DILocation(line: 362, column: 5, scope: !3379)
!3386 = !DILocation(line: 364, column: 3, scope: !3320)
!3387 = !DILocation(line: 365, column: 1, scope: !3320)
!3388 = distinct !DISubprogram(name: "fiobj_type", scope: !67, file: !67, line: 250, type: !3389, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!110, !93}
!3391 = !DILocalVariable(name: "o", arg: 1, scope: !3388, file: !67, line: 250, type: !93)
!3392 = !DILocation(line: 250, column: 45, scope: !3388)
!3393 = !DILocation(line: 251, column: 8, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3388, file: !67, line: 251, column: 7)
!3395 = !DILocation(line: 251, column: 7, scope: !3388)
!3396 = !DILocation(line: 252, column: 5, scope: !3394)
!3397 = !DILocation(line: 253, column: 7, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3388, file: !67, line: 253, column: 7)
!3399 = !DILocation(line: 253, column: 9, scope: !3398)
!3400 = !DILocation(line: 253, column: 7, scope: !3388)
!3401 = !DILocation(line: 254, column: 5, scope: !3398)
!3402 = !DILocation(line: 255, column: 8, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3388, file: !67, line: 255, column: 7)
!3404 = !DILocation(line: 255, column: 10, scope: !3403)
!3405 = !DILocation(line: 255, column: 37, scope: !3403)
!3406 = !DILocation(line: 255, column: 7, scope: !3388)
!3407 = !DILocation(line: 256, column: 29, scope: !3403)
!3408 = !DILocation(line: 256, column: 12, scope: !3403)
!3409 = !DILocation(line: 256, column: 5, scope: !3403)
!3410 = !DILocation(line: 258, column: 8, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3388, file: !67, line: 257, column: 7)
!3412 = !DILocation(line: 258, column: 10, scope: !3411)
!3413 = !DILocation(line: 258, column: 37, scope: !3411)
!3414 = !DILocation(line: 257, column: 7, scope: !3388)
!3415 = !DILocation(line: 259, column: 5, scope: !3411)
!3416 = !DILocation(line: 260, column: 30, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3388, file: !67, line: 260, column: 7)
!3418 = !DILocation(line: 260, column: 32, scope: !3417)
!3419 = !DILocation(line: 260, column: 59, scope: !3417)
!3420 = !DILocation(line: 260, column: 7, scope: !3388)
!3421 = !DILocation(line: 261, column: 5, scope: !3417)
!3422 = !DILocation(line: 262, column: 30, scope: !3388)
!3423 = !DILocation(line: 262, column: 10, scope: !3388)
!3424 = !DILocation(line: 262, column: 3, scope: !3388)
!3425 = !DILocation(line: 263, column: 1, scope: !3388)
!3426 = distinct !DISubprogram(name: "mustache___section2stack", scope: !6, file: !6, line: 427, type: !3427, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!113, !2751}
!3429 = !DILocalVariable(name: "section", arg: 1, scope: !3426, file: !6, line: 427, type: !2751)
!3430 = !DILocation(line: 427, column: 46, scope: !3426)
!3431 = !DILocalVariable(name: "f", scope: !3426, file: !6, line: 428, type: !94)
!3432 = !DILocation(line: 428, column: 36, scope: !3426)
!3433 = !DILocation(line: 429, column: 42, scope: !3426)
!3434 = !DILocation(line: 429, column: 7, scope: !3426)
!3435 = !DILocation(line: 430, column: 10, scope: !3426)
!3436 = !DILocation(line: 430, column: 3, scope: !3426)
!3437 = !DILocalVariable(name: "s", arg: 1, scope: !146, file: !6, line: 498, type: !113)
!3438 = !DILocation(line: 498, column: 63, scope: !146)
!3439 = !DILocalVariable(name: "text", arg: 2, scope: !146, file: !6, line: 498, type: !91)
!3440 = !DILocation(line: 498, column: 72, scope: !146)
!3441 = !DILocalVariable(name: "len", arg: 3, scope: !146, file: !6, line: 499, type: !29)
!3442 = !DILocation(line: 499, column: 45, scope: !146)
!3443 = !DILocalVariable(name: "buffer", scope: !146, file: !6, line: 566, type: !3444)
!3444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 32768, elements: !3445)
!3445 = !{!3446}
!3446 = !DISubrange(count: 4096)
!3447 = !DILocation(line: 566, column: 8, scope: !146)
!3448 = !DILocalVariable(name: "pos", scope: !146, file: !6, line: 567, type: !238)
!3449 = !DILocation(line: 567, column: 10, scope: !146)
!3450 = !DILocalVariable(name: "end", scope: !146, file: !6, line: 568, type: !151)
!3451 = !DILocation(line: 568, column: 15, scope: !146)
!3452 = !DILocation(line: 568, column: 21, scope: !146)
!3453 = !DILocation(line: 568, column: 28, scope: !146)
!3454 = !DILocation(line: 568, column: 26, scope: !146)
!3455 = !DILocation(line: 569, column: 3, scope: !146)
!3456 = !DILocation(line: 569, column: 10, scope: !146)
!3457 = !DILocation(line: 569, column: 17, scope: !146)
!3458 = !DILocation(line: 569, column: 15, scope: !146)
!3459 = !DILocation(line: 570, column: 42, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !6, line: 570, column: 9)
!3461 = distinct !DILexicalBlock(scope: !146, file: !6, line: 569, column: 22)
!3462 = !DILocation(line: 570, column: 41, scope: !3460)
!3463 = !DILocation(line: 570, column: 47, scope: !3460)
!3464 = !DILocation(line: 570, column: 55, scope: !3460)
!3465 = !DILocation(line: 570, column: 58, scope: !3460)
!3466 = !DILocation(line: 570, column: 61, scope: !3460)
!3467 = !DILocation(line: 570, column: 9, scope: !3461)
!3468 = !DILocation(line: 571, column: 17, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3460, file: !6, line: 570, column: 70)
!3470 = !DILocation(line: 571, column: 7, scope: !3469)
!3471 = !DILocation(line: 571, column: 21, scope: !3469)
!3472 = !DILocation(line: 572, column: 14, scope: !3469)
!3473 = !DILocation(line: 572, column: 7, scope: !3469)
!3474 = !DILocation(line: 572, column: 19, scope: !3469)
!3475 = !DILocation(line: 573, column: 29, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3469, file: !6, line: 573, column: 11)
!3477 = !DILocation(line: 573, column: 32, scope: !3476)
!3478 = !DILocation(line: 573, column: 38, scope: !3476)
!3479 = !DILocation(line: 573, column: 41, scope: !3476)
!3480 = !DILocation(line: 573, column: 48, scope: !3476)
!3481 = !DILocation(line: 573, column: 53, scope: !3476)
!3482 = !DILocation(line: 573, column: 61, scope: !3476)
!3483 = !DILocation(line: 573, column: 11, scope: !3476)
!3484 = !DILocation(line: 573, column: 66, scope: !3476)
!3485 = !DILocation(line: 573, column: 11, scope: !3469)
!3486 = !DILocation(line: 574, column: 9, scope: !3476)
!3487 = !DILocation(line: 575, column: 11, scope: !3469)
!3488 = !DILocation(line: 576, column: 35, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3469, file: !6, line: 576, column: 11)
!3490 = !DILocation(line: 576, column: 11, scope: !3489)
!3491 = !DILocation(line: 576, column: 38, scope: !3489)
!3492 = !DILocation(line: 576, column: 11, scope: !3469)
!3493 = !DILocation(line: 577, column: 9, scope: !3489)
!3494 = !DILocation(line: 578, column: 5, scope: !3469)
!3495 = !DILocation(line: 579, column: 14, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3460, file: !6, line: 578, column: 12)
!3497 = !DILocation(line: 579, column: 23, scope: !3496)
!3498 = !DILocation(line: 579, column: 21, scope: !3496)
!3499 = !DILocation(line: 579, column: 54, scope: !3496)
!3500 = !DILocation(line: 579, column: 28, scope: !3496)
!3501 = !DILocation(line: 580, column: 39, scope: !3496)
!3502 = !DILocation(line: 580, column: 14, scope: !3496)
!3503 = !DILocation(line: 579, column: 7, scope: !3496)
!3504 = !DILocation(line: 581, column: 39, scope: !3496)
!3505 = !DILocation(line: 581, column: 14, scope: !3496)
!3506 = !DILocation(line: 581, column: 11, scope: !3496)
!3507 = !DILocation(line: 582, column: 11, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3496, file: !6, line: 582, column: 11)
!3509 = !DILocation(line: 582, column: 15, scope: !3508)
!3510 = !DILocation(line: 582, column: 11, scope: !3496)
!3511 = !DILocation(line: 583, column: 16, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3508, file: !6, line: 582, column: 53)
!3513 = !DILocation(line: 583, column: 9, scope: !3512)
!3514 = !DILocation(line: 583, column: 21, scope: !3512)
!3515 = !DILocation(line: 584, column: 31, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3512, file: !6, line: 584, column: 13)
!3517 = !DILocation(line: 584, column: 34, scope: !3516)
!3518 = !DILocation(line: 584, column: 40, scope: !3516)
!3519 = !DILocation(line: 584, column: 43, scope: !3516)
!3520 = !DILocation(line: 584, column: 50, scope: !3516)
!3521 = !DILocation(line: 584, column: 55, scope: !3516)
!3522 = !DILocation(line: 584, column: 63, scope: !3516)
!3523 = !DILocation(line: 584, column: 13, scope: !3516)
!3524 = !DILocation(line: 584, column: 68, scope: !3516)
!3525 = !DILocation(line: 584, column: 13, scope: !3512)
!3526 = !DILocation(line: 585, column: 11, scope: !3516)
!3527 = !DILocation(line: 586, column: 13, scope: !3512)
!3528 = !DILocation(line: 587, column: 7, scope: !3512)
!3529 = !DILocation(line: 589, column: 5, scope: !3461)
!3530 = distinct !{!3530, !3455, !3531}
!3531 = !DILocation(line: 590, column: 3, scope: !146)
!3532 = !DILocation(line: 591, column: 7, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !146, file: !6, line: 591, column: 7)
!3534 = !DILocation(line: 591, column: 7, scope: !146)
!3535 = !DILocation(line: 592, column: 12, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3533, file: !6, line: 591, column: 12)
!3537 = !DILocation(line: 592, column: 5, scope: !3536)
!3538 = !DILocation(line: 592, column: 17, scope: !3536)
!3539 = !DILocation(line: 593, column: 27, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3536, file: !6, line: 593, column: 9)
!3541 = !DILocation(line: 593, column: 30, scope: !3540)
!3542 = !DILocation(line: 593, column: 36, scope: !3540)
!3543 = !DILocation(line: 593, column: 39, scope: !3540)
!3544 = !DILocation(line: 593, column: 46, scope: !3540)
!3545 = !DILocation(line: 593, column: 51, scope: !3540)
!3546 = !DILocation(line: 593, column: 59, scope: !3540)
!3547 = !DILocation(line: 593, column: 9, scope: !3540)
!3548 = !DILocation(line: 593, column: 64, scope: !3540)
!3549 = !DILocation(line: 593, column: 9, scope: !3536)
!3550 = !DILocation(line: 594, column: 7, scope: !3540)
!3551 = !DILocation(line: 595, column: 3, scope: !3536)
!3552 = !DILocation(line: 596, column: 3, scope: !146)
!3553 = !DILocation(line: 598, column: 1, scope: !146)
!3554 = distinct !DISubprogram(name: "mustache__write_padding", scope: !6, file: !6, line: 484, type: !3555, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !149)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!87, !113}
!3557 = !DILocalVariable(name: "s", arg: 1, scope: !3554, file: !6, line: 484, type: !113)
!3558 = !DILocation(line: 484, column: 70, scope: !3554)
!3559 = !DILocalVariable(name: "inst", scope: !3554, file: !6, line: 485, type: !3560)
!3560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!3561 = !DILocation(line: 485, column: 34, scope: !3554)
!3562 = !DILocation(line: 485, column: 41, scope: !3554)
!3563 = !DILocalVariable(name: "data", scope: !3554, file: !6, line: 486, type: !1332)
!3564 = !DILocation(line: 486, column: 15, scope: !3554)
!3565 = !DILocation(line: 486, column: 22, scope: !3554)
!3566 = !DILocalVariable(name: "i", scope: !3567, file: !6, line: 487, type: !29)
!3567 = distinct !DILexicalBlock(scope: !3554, file: !6, line: 487, column: 3)
!3568 = !DILocation(line: 487, column: 17, scope: !3567)
!3569 = !DILocation(line: 487, column: 21, scope: !3567)
!3570 = !DILocation(line: 487, column: 24, scope: !3567)
!3571 = !DILocation(line: 487, column: 8, scope: !3567)
!3572 = !DILocation(line: 487, column: 33, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3567, file: !6, line: 487, column: 3)
!3574 = !DILocation(line: 487, column: 3, scope: !3567)
!3575 = !DILocation(line: 488, column: 27, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !6, line: 488, column: 9)
!3577 = distinct !DILexicalBlock(scope: !3573, file: !6, line: 487, column: 58)
!3578 = !DILocation(line: 488, column: 30, scope: !3576)
!3579 = !DILocation(line: 488, column: 36, scope: !3576)
!3580 = !DILocation(line: 488, column: 39, scope: !3576)
!3581 = !DILocation(line: 488, column: 46, scope: !3576)
!3582 = !DILocation(line: 488, column: 51, scope: !3576)
!3583 = !DILocation(line: 488, column: 58, scope: !3576)
!3584 = !DILocation(line: 488, column: 63, scope: !3576)
!3585 = !DILocation(line: 488, column: 66, scope: !3576)
!3586 = !DILocation(line: 488, column: 71, scope: !3576)
!3587 = !DILocation(line: 488, column: 56, scope: !3576)
!3588 = !DILocation(line: 489, column: 26, scope: !3576)
!3589 = !DILocation(line: 489, column: 31, scope: !3576)
!3590 = !DILocation(line: 489, column: 34, scope: !3576)
!3591 = !DILocation(line: 489, column: 39, scope: !3576)
!3592 = !DILocation(line: 488, column: 9, scope: !3576)
!3593 = !DILocation(line: 489, column: 49, scope: !3576)
!3594 = !DILocation(line: 488, column: 9, scope: !3577)
!3595 = !DILocation(line: 490, column: 7, scope: !3576)
!3596 = !DILocation(line: 491, column: 3, scope: !3577)
!3597 = !DILocation(line: 487, column: 40, scope: !3573)
!3598 = !DILocation(line: 487, column: 45, scope: !3573)
!3599 = !DILocation(line: 487, column: 48, scope: !3573)
!3600 = !DILocation(line: 487, column: 53, scope: !3573)
!3601 = !DILocation(line: 487, column: 38, scope: !3573)
!3602 = !DILocation(line: 487, column: 3, scope: !3573)
!3603 = distinct !{!3603, !3574, !3604}
!3604 = !DILocation(line: 491, column: 3, scope: !3567)
!3605 = !DILocation(line: 492, column: 3, scope: !3554)
!3606 = !DILocation(line: 493, column: 1, scope: !3554)
