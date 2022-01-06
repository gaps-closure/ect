; ModuleID = 'fiobj_mustache.c'
source_filename = "fiobj_mustache.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
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
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1
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
@mustache__write_escaped.html_escape_strs = internal global [256 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.269, i32 0, i32 0)], align 16
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
@mustache__write_escaped.html_escape_len = internal constant [256 x i8] c"\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\05\05\05\05\06\05\05\05\05\05\05\05\05\01\01\01\01\01\01\01\01\01\01\05\05\04\05\04\05\05\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\05\05\05\05\05\05\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\06\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @FIO_LOG2STDERR(i8*, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #1
  store i32 %11, i32* %5, align 4
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_end(i8* %13)
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 2046
  br i1 %18, label %19, label %29

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 2046
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 2016
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false)
  store i32 2041, i32* %5, align 4
  br label %28

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26)
  br label %42

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32
  store i8 10, i8* %33, align 1
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35
  store i8 48, i8* %36, align 1
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40)
  br label %42

42:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mustache_s* @fiobj_mustache_load(%struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8) #0 {
  %2 = alloca %struct.mustache_load_args_s, align 8
  %3 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %5 = load i8*, i8** %4, align 8
  store i8* %5, i8** %3, align 8
  %6 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %6, align 8
  %9 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %2, i32 0, i32 2
  store i8* null, i8** %9, align 8
  %10 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %2, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %2, i32 0, i32 4
  store i32* null, i32** %11, align 8
  %12 = call %struct.mustache_s* @mustache_load(%struct.mustache_load_args_s* byval(%struct.mustache_load_args_s) align 8 %2)
  ret %struct.mustache_s* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mustache_s* @mustache_load(%struct.mustache_load_args_s* byval(%struct.mustache_load_args_s) align 8) #0 {
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
  store i8 0, i8* %5, align 1
  %29 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  store i32* %3, i32** %33, align 8
  br label %34

34:                                               ; preds = %32, %1
  %35 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 9
  store i16 0, i16* %35, align 2
  %36 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 4
  store i8* null, i8** %36, align 8
  %37 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  store i8* null, i8** %37, align 8
  %38 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 6
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  store %struct.mustache__instruction_s* null, %struct.mustache__instruction_s** %39, align 8
  %40 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 5
  store i32 32, i32* %40, align 8
  %41 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  store i16 0, i16* %41, align 8
  %42 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 7
  store i32 0, i32* %42, align 8
  %43 = call noalias i8* @malloc(i64 648) #1
  %44 = bitcast i8* %43 to %struct.mustache_s*
  %45 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  store %struct.mustache_s* %44, %struct.mustache_s** %45, align 8
  %46 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %47 = load %struct.mustache_s*, %struct.mustache_s** %46, align 8
  %48 = icmp ne %struct.mustache_s* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %34
  call void @perror(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32* @__errno_location() #8
  %51 = load i32, i32* %50, align 4
  call void @exit(i32 %51) #9
  unreachable

52:                                               ; preds = %34
  %53 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %54 = load %struct.mustache_s*, %struct.mustache_s** %53, align 8
  %55 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %54, i32 0, i32 0
  %56 = bitcast %union.anon* %55 to i8**
  store i8* null, i8** %56, align 8
  %57 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %58 = load %struct.mustache_s*, %struct.mustache_s** %57, align 8
  %59 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %58, i32 0, i32 0
  %60 = bitcast %union.anon* %59 to %struct.anon*
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %63 = load %struct.mustache_s*, %struct.mustache_s** %62, align 8
  %64 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %63, i32 0, i32 0
  %65 = bitcast %union.anon* %64 to %struct.anon*
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %68 = load %struct.mustache_s*, %struct.mustache_s** %67, align 8
  %69 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %68, i64 1
  %70 = bitcast %struct.mustache_s* %69 to %struct.mustache__instruction_s*
  %71 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  store %struct.mustache__instruction_s* %70, %struct.mustache__instruction_s** %71, align 8
  %72 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 2
  store i32* %73, i32** %74, align 8
  %75 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %52
  %79 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strlen(i8* %84) #10
  %86 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 1
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %82, %78, %52
  %88 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @mustache__load_data(%struct.mustache__loader_stack_s* %4, i8* %93, i64 %95, i8* %97, i64 %99)
  %101 = icmp eq i64 %100, -1
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %1408

103:                                              ; preds = %91
  br label %113

104:                                              ; preds = %87
  %105 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @mustache__load_file(%struct.mustache__loader_stack_s* %4, i8* %106, i64 %108)
  %110 = icmp eq i64 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %1408

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %103
  br label %114

114:                                              ; preds = %1351, %113
  %115 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %116 = load i16, i16* %115, align 8
  %117 = icmp ne i16 %116, 0
  br i1 %117, label %118, label %1355

118:                                              ; preds = %114
  br label %119

119:                                              ; preds = %1247, %173, %118
  %120 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %121 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %122 = load i16, i16* %121, align 8
  %123 = zext i16 %122 to i64
  %124 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %120, i64 0, i64 %123
  %125 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %128 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %129 = load i16, i16* %128, align 8
  %130 = zext i16 %129 to i64
  %131 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %127, i64 0, i64 %130
  %132 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp ult i32 %126, %133
  br i1 %134, label %135, label %1248

135:                                              ; preds = %119
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %136 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %139 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %140 = load i16, i16* %139, align 8
  %141 = zext i16 %140 to i64
  %142 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %138, i64 0, i64 %141
  %143 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %137, i64 %145
  store i8* %146, i8** %8, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %149 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %150 = load i16, i16* %149, align 8
  %151 = zext i16 %150 to i64
  %152 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %148, i64 0, i64 %151
  %153 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %152, i32 0, i32 4
  %154 = getelementptr inbounds [5 x i8], [5 x i8]* %153, i64 0, i64 0
  %155 = call i8* @strstr(i8* %147, i8* %154) #10
  store i8* %155, i8** %9, align 8
  %156 = load i8*, i8** %9, align 8
  store i8* %156, i8** %10, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %173

159:                                              ; preds = %135
  %160 = load i8*, i8** %9, align 8
  %161 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %164 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %165 = load i16, i16* %164, align 8
  %166 = zext i16 %165 to i64
  %167 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %163, i64 0, i64 %166
  %168 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %162, i64 %170
  %172 = icmp uge i8* %160, %171
  br i1 %172, label %173, label %210

173:                                              ; preds = %159, %135
  %174 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %175 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %176 = load i16, i16* %175, align 8
  %177 = zext i16 %176 to i64
  %178 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %174, i64 0, i64 %177
  %179 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %182 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %183 = load i16, i16* %182, align 8
  %184 = zext i16 %183 to i64
  %185 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %181, i64 0, i64 %184
  %186 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %189 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %190 = load i16, i16* %189, align 8
  %191 = zext i16 %190 to i64
  %192 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %188, i64 0, i64 %191
  %193 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sub i32 %187, %194
  %196 = call i32 @mustache__push_text_instruction(%struct.mustache__loader_stack_s* %4, i32 %180, i32 %195)
  %197 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %198 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %199 = load i16, i16* %198, align 8
  %200 = zext i16 %199 to i64
  %201 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %197, i64 0, i64 %200
  %202 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %205 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %206 = load i16, i16* %205, align 8
  %207 = zext i16 %206 to i64
  %208 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %204, i64 0, i64 %207
  %209 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %208, i32 0, i32 1
  store i32 %203, i32* %209, align 4
  br label %119

210:                                              ; preds = %159
  %211 = load i8*, i8** %9, align 8
  %212 = load i8*, i8** %8, align 8
  %213 = icmp ne i8* %211, %212
  br i1 %213, label %214, label %229

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %216 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %217 = load i16, i16* %216, align 8
  %218 = zext i16 %217 to i64
  %219 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %215, i64 0, i64 %218
  %220 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i8*, i8** %9, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = ptrtoint i8* %222 to i64
  %225 = ptrtoint i8* %223 to i64
  %226 = sub i64 %224, %225
  %227 = trunc i64 %226 to i32
  %228 = call i32 @mustache__push_text_instruction(%struct.mustache__loader_stack_s* %4, i32 %221, i32 %227)
  br label %229

229:                                              ; preds = %214, %210
  %230 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %231 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %232 = load i16, i16* %231, align 8
  %233 = zext i16 %232 to i64
  %234 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %230, i64 0, i64 %233
  %235 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %234, i32 0, i32 6
  %236 = load i8, i8* %235, align 4
  %237 = zext i8 %236 to i32
  %238 = load i8*, i8** %9, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  store i8* %240, i8** %9, align 8
  %241 = load i8*, i8** %9, align 8
  %242 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %243 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %244 = load i16, i16* %243, align 8
  %245 = zext i16 %244 to i64
  %246 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %242, i64 0, i64 %245
  %247 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %246, i32 0, i32 5
  %248 = getelementptr inbounds [5 x i8], [5 x i8]* %247, i64 0, i64 0
  %249 = call i8* @strstr(i8* %241, i8* %248) #10
  store i8* %249, i8** %11, align 8
  %250 = load i8*, i8** %11, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %266

252:                                              ; preds = %229
  %253 = load i8*, i8** %11, align 8
  %254 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %257 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %258 = load i16, i16* %257, align 8
  %259 = zext i16 %258 to i64
  %260 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %256, i64 0, i64 %259
  %261 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %255, i64 %263
  %265 = icmp uge i8* %253, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %252, %229
  %267 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %268 = load i32*, i32** %267, align 8
  store i32 2, i32* %268, align 4
  br label %1408

269:                                              ; preds = %252
  %270 = load i8*, i8** %11, align 8
  %271 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %272 = load i8*, i8** %271, align 8
  %273 = ptrtoint i8* %270 to i64
  %274 = ptrtoint i8* %272 to i64
  %275 = sub i64 %273, %274
  %276 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %277 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %278 = load i16, i16* %277, align 8
  %279 = zext i16 %278 to i64
  %280 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %276, i64 0, i64 %279
  %281 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %280, i32 0, i32 7
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i64
  %284 = add nsw i64 %275, %283
  %285 = trunc i64 %284 to i32
  %286 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %287 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %288 = load i16, i16* %287, align 8
  %289 = zext i16 %288 to i64
  %290 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %286, i64 0, i64 %289
  %291 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %290, i32 0, i32 1
  store i32 %285, i32* %291, align 4
  %292 = load i8*, i8** %11, align 8
  %293 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %294 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %295 = load i16, i16* %294, align 8
  %296 = zext i16 %295 to i64
  %297 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %293, i64 0, i64 %296
  %298 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %297, i32 0, i32 7
  %299 = load i8, i8* %298, align 1
  %300 = zext i8 %299 to i64
  %301 = getelementptr inbounds i8, i8* %292, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = icmp ne i8 %302, 0
  br i1 %303, label %304, label %348

304:                                              ; preds = %269
  %305 = load i8*, i8** %11, align 8
  %306 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %307 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %308 = load i16, i16* %307, align 8
  %309 = zext i16 %308 to i64
  %310 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %306, i64 0, i64 %309
  %311 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %310, i32 0, i32 7
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i64
  %314 = getelementptr inbounds i8, i8* %305, i64 %313
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 10
  br i1 %317, label %348, label %318

318:                                              ; preds = %304
  %319 = load i8*, i8** %11, align 8
  %320 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %321 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %322 = load i16, i16* %321, align 8
  %323 = zext i16 %322 to i64
  %324 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %320, i64 0, i64 %323
  %325 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %324, i32 0, i32 7
  %326 = load i8, i8* %325, align 1
  %327 = zext i8 %326 to i64
  %328 = getelementptr inbounds i8, i8* %319, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 %330, 13
  br i1 %331, label %332, label %426

332:                                              ; preds = %318
  %333 = load i8*, i8** %11, align 8
  %334 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %335 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %336 = load i16, i16* %335, align 8
  %337 = zext i16 %336 to i64
  %338 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %334, i64 0, i64 %337
  %339 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %338, i32 0, i32 7
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = add nsw i32 1, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %333, i64 %343
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i32
  %347 = icmp eq i32 %346, 10
  br i1 %347, label %348, label %426

348:                                              ; preds = %332, %304, %269
  %349 = load i8*, i8** %9, align 8
  %350 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %351 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %352 = load i16, i16* %351, align 8
  %353 = zext i16 %352 to i64
  %354 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %350, i64 0, i64 %353
  %355 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %354, i32 0, i32 6
  %356 = load i8, i8* %355, align 4
  %357 = zext i8 %356 to i32
  %358 = add nsw i32 %357, 1
  %359 = sext i32 %358 to i64
  %360 = sub i64 0, %359
  %361 = getelementptr inbounds i8, i8* %349, i64 %360
  store i8* %361, i8** %12, align 8
  br label %362

362:                                              ; preds = %382, %348
  %363 = load i8*, i8** %12, align 8
  %364 = load i8*, i8** %8, align 8
  %365 = icmp uge i8* %363, %364
  br i1 %365, label %366, label %380

366:                                              ; preds = %362
  %367 = load i8*, i8** %12, align 8
  %368 = getelementptr inbounds i8, i8* %367, i64 0
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = icmp eq i32 %370, 32
  br i1 %371, label %378, label %372

372:                                              ; preds = %366
  %373 = load i8*, i8** %12, align 8
  %374 = getelementptr inbounds i8, i8* %373, i64 0
  %375 = load i8, i8* %374, align 1
  %376 = sext i8 %375 to i32
  %377 = icmp eq i32 %376, 9
  br label %378

378:                                              ; preds = %372, %366
  %379 = phi i1 [ true, %366 ], [ %377, %372 ]
  br label %380

380:                                              ; preds = %378, %362
  %381 = phi i1 [ false, %362 ], [ %379, %378 ]
  br i1 %381, label %382, label %385

382:                                              ; preds = %380
  %383 = load i8*, i8** %12, align 8
  %384 = getelementptr inbounds i8, i8* %383, i32 -1
  store i8* %384, i8** %12, align 8
  br label %362

385:                                              ; preds = %380
  %386 = load i8*, i8** %12, align 8
  %387 = getelementptr inbounds i8, i8* %386, i64 0
  %388 = load i8, i8* %387, align 1
  %389 = sext i8 %388 to i32
  %390 = icmp eq i32 %389, 10
  br i1 %390, label %397, label %391

391:                                              ; preds = %385
  %392 = load i8*, i8** %12, align 8
  %393 = getelementptr inbounds i8, i8* %392, i64 0
  %394 = load i8, i8* %393, align 1
  %395 = sext i8 %394 to i32
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %425

397:                                              ; preds = %391, %385
  %398 = load i8*, i8** %12, align 8
  %399 = getelementptr inbounds i8, i8* %398, i32 1
  store i8* %399, i8** %12, align 8
  %400 = load i8*, i8** %12, align 8
  %401 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %402 = load i8*, i8** %401, align 8
  %403 = ptrtoint i8* %400 to i64
  %404 = ptrtoint i8* %402 to i64
  %405 = sub i64 %403, %404
  %406 = trunc i64 %405 to i32
  store i32 %406, i32* %7, align 4
  %407 = load i8*, i8** %9, align 8
  %408 = load i8*, i8** %12, align 8
  %409 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %410 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %411 = load i16, i16* %410, align 8
  %412 = zext i16 %411 to i64
  %413 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %409, i64 0, i64 %412
  %414 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %413, i32 0, i32 6
  %415 = load i8, i8* %414, align 4
  %416 = zext i8 %415 to i32
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i8, i8* %408, i64 %417
  %419 = ptrtoint i8* %407 to i64
  %420 = ptrtoint i8* %418 to i64
  %421 = sub i64 %419, %420
  %422 = shl i64 %421, 1
  %423 = or i64 %422, 1
  %424 = trunc i64 %423 to i32
  store i32 %424, i32* %6, align 4
  br label %425

425:                                              ; preds = %397, %391
  br label %426

426:                                              ; preds = %425, %332, %318
  store i8 1, i8* %5, align 1
  %427 = load i8*, i8** %9, align 8
  %428 = getelementptr inbounds i8, i8* %427, i64 0
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
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
  ]

431:                                              ; preds = %426
  %432 = load i32, i32* %6, align 4
  call void @mustache__stand_alone_adjust(%struct.mustache__loader_stack_s* %4, i32 %432)
  br label %1247

433:                                              ; preds = %426
  %434 = load i32, i32* %6, align 4
  call void @mustache__stand_alone_adjust(%struct.mustache__loader_stack_s* %4, i32 %434)
  %435 = load i8*, i8** %9, align 8
  %436 = getelementptr inbounds i8, i8* %435, i32 1
  store i8* %436, i8** %9, align 8
  %437 = load i8*, i8** %11, align 8
  %438 = getelementptr inbounds i8, i8* %437, i32 -1
  store i8* %438, i8** %11, align 8
  %439 = load i8*, i8** %11, align 8
  %440 = getelementptr inbounds i8, i8* %439, i64 0
  %441 = load i8, i8* %440, align 1
  %442 = sext i8 %441 to i32
  %443 = icmp ne i32 %442, 61
  br i1 %443, label %444, label %447

444:                                              ; preds = %433
  %445 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %446 = load i32*, i32** %445, align 8
  store i32 2, i32* %446, align 4
  br label %1408

447:                                              ; preds = %433
  %448 = load i8*, i8** %11, align 8
  %449 = getelementptr inbounds i8, i8* %448, i32 -1
  store i8* %449, i8** %11, align 8
  br label %450

450:                                              ; preds = %462, %447
  %451 = call i16** @__ctype_b_loc() #8
  %452 = load i16*, i16** %451, align 8
  %453 = load i8*, i8** %9, align 8
  %454 = load i8, i8* %453, align 1
  %455 = sext i8 %454 to i32
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i16, i16* %452, i64 %456
  %458 = load i16, i16* %457, align 2
  %459 = zext i16 %458 to i32
  %460 = and i32 %459, 8192
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %450
  %463 = load i8*, i8** %9, align 8
  %464 = getelementptr inbounds i8, i8* %463, i64 1
  store i8* %464, i8** %9, align 8
  br label %450

465:                                              ; preds = %450
  br label %466

466:                                              ; preds = %478, %465
  %467 = call i16** @__ctype_b_loc() #8
  %468 = load i16*, i16** %467, align 8
  %469 = load i8*, i8** %11, align 8
  %470 = load i8, i8* %469, align 1
  %471 = sext i8 %470 to i32
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i16, i16* %468, i64 %472
  %474 = load i16, i16* %473, align 2
  %475 = zext i16 %474 to i32
  %476 = and i32 %475, 8192
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %466
  %479 = load i8*, i8** %11, align 8
  %480 = getelementptr inbounds i8, i8* %479, i64 -1
  store i8* %480, i8** %11, align 8
  br label %466

481:                                              ; preds = %466
  %482 = load i8*, i8** %11, align 8
  %483 = getelementptr inbounds i8, i8* %482, i32 1
  store i8* %483, i8** %11, align 8
  %484 = load i8*, i8** %9, align 8
  store i8* %484, i8** %13, align 8
  br label %485

485:                                              ; preds = %504, %481
  %486 = load i8*, i8** %13, align 8
  %487 = load i8*, i8** %11, align 8
  %488 = icmp ult i8* %486, %487
  br i1 %488, label %489, label %502

489:                                              ; preds = %485
  %490 = call i16** @__ctype_b_loc() #8
  %491 = load i16*, i16** %490, align 8
  %492 = load i8*, i8** %13, align 8
  %493 = load i8, i8* %492, align 1
  %494 = sext i8 %493 to i32
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i16, i16* %491, i64 %495
  %497 = load i16, i16* %496, align 2
  %498 = zext i16 %497 to i32
  %499 = and i32 %498, 8192
  %500 = icmp ne i32 %499, 0
  %501 = xor i1 %500, true
  br label %502

502:                                              ; preds = %489, %485
  %503 = phi i1 [ false, %485 ], [ %501, %489 ]
  br i1 %503, label %504, label %507

504:                                              ; preds = %502
  %505 = load i8*, i8** %13, align 8
  %506 = getelementptr inbounds i8, i8* %505, i32 1
  store i8* %506, i8** %13, align 8
  br label %485

507:                                              ; preds = %502
  %508 = load i8*, i8** %13, align 8
  %509 = load i8*, i8** %11, align 8
  %510 = icmp eq i8* %508, %509
  br i1 %510, label %515, label %511

511:                                              ; preds = %507
  %512 = load i8*, i8** %13, align 8
  %513 = load i8*, i8** %9, align 8
  %514 = icmp eq i8* %512, %513
  br i1 %514, label %515, label %518

515:                                              ; preds = %511, %507
  %516 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %517 = load i32*, i32** %516, align 8
  store i32 2, i32* %517, align 4
  br label %1408

518:                                              ; preds = %511
  %519 = load i8*, i8** %13, align 8
  %520 = load i8*, i8** %9, align 8
  %521 = ptrtoint i8* %519 to i64
  %522 = ptrtoint i8* %520 to i64
  %523 = sub i64 %521, %522
  %524 = icmp sge i64 %523, 5
  br i1 %524, label %525, label %528

525:                                              ; preds = %518
  %526 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %527 = load i32*, i32** %526, align 8
  store i32 8, i32* %527, align 4
  br label %1408

528:                                              ; preds = %518
  %529 = load i8*, i8** %13, align 8
  %530 = load i8*, i8** %9, align 8
  %531 = ptrtoint i8* %529 to i64
  %532 = ptrtoint i8* %530 to i64
  %533 = sub i64 %531, %532
  %534 = trunc i64 %533 to i8
  %535 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %536 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %537 = load i16, i16* %536, align 8
  %538 = zext i16 %537 to i64
  %539 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %535, i64 0, i64 %538
  %540 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %539, i32 0, i32 6
  store i8 %534, i8* %540, align 4
  store i64 0, i64* %14, align 8
  br label %541

541:                                              ; preds = %565, %528
  %542 = load i64, i64* %14, align 8
  %543 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %544 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %545 = load i16, i16* %544, align 8
  %546 = zext i16 %545 to i64
  %547 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %543, i64 0, i64 %546
  %548 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %547, i32 0, i32 6
  %549 = load i8, i8* %548, align 4
  %550 = zext i8 %549 to i64
  %551 = icmp ult i64 %542, %550
  br i1 %551, label %552, label %568

552:                                              ; preds = %541
  %553 = load i8*, i8** %9, align 8
  %554 = load i64, i64* %14, align 8
  %555 = getelementptr inbounds i8, i8* %553, i64 %554
  %556 = load i8, i8* %555, align 1
  %557 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %558 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %559 = load i16, i16* %558, align 8
  %560 = zext i16 %559 to i64
  %561 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %557, i64 0, i64 %560
  %562 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %561, i32 0, i32 4
  %563 = load i64, i64* %14, align 8
  %564 = getelementptr inbounds [5 x i8], [5 x i8]* %562, i64 0, i64 %563
  store i8 %556, i8* %564, align 1
  br label %565

565:                                              ; preds = %552
  %566 = load i64, i64* %14, align 8
  %567 = add i64 %566, 1
  store i64 %567, i64* %14, align 8
  br label %541

568:                                              ; preds = %541
  %569 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %570 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %571 = load i16, i16* %570, align 8
  %572 = zext i16 %571 to i64
  %573 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %569, i64 0, i64 %572
  %574 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %573, i32 0, i32 4
  %575 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %576 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %577 = load i16, i16* %576, align 8
  %578 = zext i16 %577 to i64
  %579 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %575, i64 0, i64 %578
  %580 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %579, i32 0, i32 6
  %581 = load i8, i8* %580, align 4
  %582 = zext i8 %581 to i64
  %583 = getelementptr inbounds [5 x i8], [5 x i8]* %574, i64 0, i64 %582
  store i8 0, i8* %583, align 1
  %584 = load i8*, i8** %13, align 8
  %585 = getelementptr inbounds i8, i8* %584, i32 1
  store i8* %585, i8** %13, align 8
  br label %586

586:                                              ; preds = %598, %568
  %587 = call i16** @__ctype_b_loc() #8
  %588 = load i16*, i16** %587, align 8
  %589 = load i8*, i8** %13, align 8
  %590 = load i8, i8* %589, align 1
  %591 = sext i8 %590 to i32
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i16, i16* %588, i64 %592
  %594 = load i16, i16* %593, align 2
  %595 = zext i16 %594 to i32
  %596 = and i32 %595, 8192
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %601

598:                                              ; preds = %586
  %599 = load i8*, i8** %13, align 8
  %600 = getelementptr inbounds i8, i8* %599, i64 1
  store i8* %600, i8** %13, align 8
  br label %586

601:                                              ; preds = %586
  %602 = load i8*, i8** %13, align 8
  %603 = load i8*, i8** %11, align 8
  %604 = icmp eq i8* %602, %603
  br i1 %604, label %605, label %608

605:                                              ; preds = %601
  %606 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %607 = load i32*, i32** %606, align 8
  store i32 2, i32* %607, align 4
  br label %1408

608:                                              ; preds = %601
  %609 = load i8*, i8** %11, align 8
  %610 = load i8*, i8** %13, align 8
  %611 = ptrtoint i8* %609 to i64
  %612 = ptrtoint i8* %610 to i64
  %613 = sub i64 %611, %612
  %614 = icmp sge i64 %613, 5
  br i1 %614, label %615, label %618

615:                                              ; preds = %608
  %616 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %617 = load i32*, i32** %616, align 8
  store i32 8, i32* %617, align 4
  br label %1408

618:                                              ; preds = %608
  %619 = load i8*, i8** %11, align 8
  %620 = load i8*, i8** %13, align 8
  %621 = ptrtoint i8* %619 to i64
  %622 = ptrtoint i8* %620 to i64
  %623 = sub i64 %621, %622
  %624 = trunc i64 %623 to i8
  %625 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %626 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %627 = load i16, i16* %626, align 8
  %628 = zext i16 %627 to i64
  %629 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %625, i64 0, i64 %628
  %630 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %629, i32 0, i32 7
  store i8 %624, i8* %630, align 1
  store i64 0, i64* %15, align 8
  br label %631

631:                                              ; preds = %655, %618
  %632 = load i64, i64* %15, align 8
  %633 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %634 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %635 = load i16, i16* %634, align 8
  %636 = zext i16 %635 to i64
  %637 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %633, i64 0, i64 %636
  %638 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %637, i32 0, i32 7
  %639 = load i8, i8* %638, align 1
  %640 = zext i8 %639 to i64
  %641 = icmp ult i64 %632, %640
  br i1 %641, label %642, label %658

642:                                              ; preds = %631
  %643 = load i8*, i8** %13, align 8
  %644 = load i64, i64* %15, align 8
  %645 = getelementptr inbounds i8, i8* %643, i64 %644
  %646 = load i8, i8* %645, align 1
  %647 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %648 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %649 = load i16, i16* %648, align 8
  %650 = zext i16 %649 to i64
  %651 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %647, i64 0, i64 %650
  %652 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %651, i32 0, i32 5
  %653 = load i64, i64* %15, align 8
  %654 = getelementptr inbounds [5 x i8], [5 x i8]* %652, i64 0, i64 %653
  store i8 %646, i8* %654, align 1
  br label %655

655:                                              ; preds = %642
  %656 = load i64, i64* %15, align 8
  %657 = add i64 %656, 1
  store i64 %657, i64* %15, align 8
  br label %631

658:                                              ; preds = %631
  %659 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %660 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %661 = load i16, i16* %660, align 8
  %662 = zext i16 %661 to i64
  %663 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %659, i64 0, i64 %662
  %664 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %663, i32 0, i32 5
  %665 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %666 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %667 = load i16, i16* %666, align 8
  %668 = zext i16 %667 to i64
  %669 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %665, i64 0, i64 %668
  %670 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %669, i32 0, i32 7
  %671 = load i8, i8* %670, align 1
  %672 = zext i8 %671 to i64
  %673 = getelementptr inbounds [5 x i8], [5 x i8]* %664, i64 0, i64 %672
  store i8 0, i8* %673, align 1
  br label %1247

674:                                              ; preds = %426
  store i8 0, i8* %5, align 1
  br label %675

675:                                              ; preds = %426, %674
  %676 = load i32, i32* %6, align 4
  call void @mustache__stand_alone_adjust(%struct.mustache__loader_stack_s* %4, i32 %676)
  %677 = load i8*, i8** %9, align 8
  %678 = getelementptr inbounds i8, i8* %677, i32 1
  store i8* %678, i8** %9, align 8
  %679 = load i8*, i8** %11, align 8
  %680 = getelementptr inbounds i8, i8* %679, i32 -1
  store i8* %680, i8** %11, align 8
  br label %681

681:                                              ; preds = %693, %675
  %682 = call i16** @__ctype_b_loc() #8
  %683 = load i16*, i16** %682, align 8
  %684 = load i8*, i8** %9, align 8
  %685 = load i8, i8* %684, align 1
  %686 = sext i8 %685 to i32
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i16, i16* %683, i64 %687
  %689 = load i16, i16* %688, align 2
  %690 = zext i16 %689 to i32
  %691 = and i32 %690, 8192
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %696

693:                                              ; preds = %681
  %694 = load i8*, i8** %9, align 8
  %695 = getelementptr inbounds i8, i8* %694, i64 1
  store i8* %695, i8** %9, align 8
  br label %681

696:                                              ; preds = %681
  br label %697

697:                                              ; preds = %709, %696
  %698 = call i16** @__ctype_b_loc() #8
  %699 = load i16*, i16** %698, align 8
  %700 = load i8*, i8** %11, align 8
  %701 = load i8, i8* %700, align 1
  %702 = sext i8 %701 to i32
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds i16, i16* %699, i64 %703
  %705 = load i16, i16* %704, align 2
  %706 = zext i16 %705 to i32
  %707 = and i32 %706, 8192
  %708 = icmp ne i32 %707, 0
  br i1 %708, label %709, label %712

709:                                              ; preds = %697
  %710 = load i8*, i8** %11, align 8
  %711 = getelementptr inbounds i8, i8* %710, i64 -1
  store i8* %711, i8** %11, align 8
  br label %697

712:                                              ; preds = %697
  %713 = load i8*, i8** %11, align 8
  %714 = getelementptr inbounds i8, i8* %713, i32 1
  store i8* %714, i8** %11, align 8
  %715 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %716 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %717 = load i16, i16* %716, align 8
  %718 = zext i16 %717 to i64
  %719 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %715, i64 0, i64 %718
  %720 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %719, i32 0, i32 3
  %721 = load i16, i16* %720, align 4
  %722 = add i16 %721, 1
  store i16 %722, i16* %720, align 4
  %723 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %724 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %725 = load i16, i16* %724, align 8
  %726 = zext i16 %725 to i64
  %727 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %723, i64 0, i64 %726
  %728 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %727, i32 0, i32 3
  %729 = load i16, i16* %728, align 4
  %730 = zext i16 %729 to i32
  %731 = icmp sge i32 %730, 82
  br i1 %731, label %732, label %735

732:                                              ; preds = %712
  %733 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %734 = load i32*, i32** %733, align 8
  store i32 1, i32* %734, align 4
  br label %1408

735:                                              ; preds = %712
  %736 = load i8*, i8** %9, align 8
  %737 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %738 = load i8*, i8** %737, align 8
  %739 = ptrtoint i8* %736 to i64
  %740 = ptrtoint i8* %738 to i64
  %741 = sub i64 %739, %740
  %742 = icmp sge i64 %741, 65535
  br i1 %742, label %743, label %746

743:                                              ; preds = %735
  %744 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %745 = load i32*, i32** %744, align 8
  store i32 9, i32* %745, align 4
  br label %746

746:                                              ; preds = %743, %735
  %747 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %16, i32 0, i32 0
  %748 = load i8, i8* %5, align 1
  %749 = zext i8 %748 to i32
  %750 = icmp ne i32 %749, 0
  %751 = zext i1 %750 to i64
  %752 = select i1 %750, i32 3, i32 4
  store i32 %752, i32* %747, align 4
  %753 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %16, i32 0, i32 1
  %754 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %753, i32 0, i32 0
  store i32 0, i32* %754, align 4
  %755 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %753, i32 0, i32 1
  store i32 0, i32* %755, align 4
  %756 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %753, i32 0, i32 2
  %757 = load i8*, i8** %9, align 8
  %758 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %759 = load i8*, i8** %758, align 8
  %760 = ptrtoint i8* %757 to i64
  %761 = ptrtoint i8* %759 to i64
  %762 = sub i64 %760, %761
  %763 = trunc i64 %762 to i32
  store i32 %763, i32* %756, align 4
  %764 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %753, i32 0, i32 3
  %765 = load i8*, i8** %11, align 8
  %766 = load i8*, i8** %9, align 8
  %767 = ptrtoint i8* %765 to i64
  %768 = ptrtoint i8* %766 to i64
  %769 = sub i64 %767, %768
  %770 = trunc i64 %769 to i16
  store i16 %770, i16* %764, align 4
  %771 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %753, i32 0, i32 4
  %772 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %773 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %774 = load i16, i16* %773, align 8
  %775 = zext i16 %774 to i64
  %776 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %772, i64 0, i64 %775
  %777 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %776, i32 0, i32 1
  %778 = load i32, i32* %777, align 4
  %779 = zext i32 %778 to i64
  %780 = load i8*, i8** %9, align 8
  %781 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %782 = load i8*, i8** %781, align 8
  %783 = ptrtoint i8* %780 to i64
  %784 = ptrtoint i8* %782 to i64
  %785 = sub i64 %783, %784
  %786 = sub nsw i64 %779, %785
  %787 = trunc i64 %786 to i16
  store i16 %787, i16* %771, align 2
  %788 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %16)
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %790, label %791

790:                                              ; preds = %746
  br label %1408

791:                                              ; preds = %746
  br label %1247

792:                                              ; preds = %426
  %793 = load i32, i32* %6, align 4
  call void @mustache__stand_alone_adjust(%struct.mustache__loader_stack_s* %4, i32 %793)
  %794 = load i32, i32* %6, align 4
  %795 = lshr i32 %794, 1
  %796 = icmp ne i32 %795, 0
  br i1 %796, label %797, label %823

797:                                              ; preds = %792
  %798 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %17, i32 0, i32 0
  store i32 7, i32* %798, align 4
  %799 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %17, i32 0, i32 1
  %800 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %799, i32 0, i32 0
  %801 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 7
  %802 = load i32, i32* %801, align 8
  store i32 %802, i32* %800, align 4
  %803 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %799, i32 0, i32 1
  store i32 0, i32* %803, align 4
  %804 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %799, i32 0, i32 2
  %805 = load i32, i32* %7, align 4
  store i32 %805, i32* %804, align 4
  %806 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %799, i32 0, i32 3
  %807 = load i32, i32* %6, align 4
  %808 = lshr i32 %807, 1
  %809 = trunc i32 %808 to i16
  store i16 %809, i16* %806, align 4
  %810 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %799, i32 0, i32 4
  store i16 0, i16* %810, align 2
  %811 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %17)
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %813, label %814

813:                                              ; preds = %797
  br label %1408

814:                                              ; preds = %797
  %815 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %816 = load %struct.mustache_s*, %struct.mustache_s** %815, align 8
  %817 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %816, i32 0, i32 0
  %818 = bitcast %union.anon* %817 to %struct.anon*
  %819 = getelementptr inbounds %struct.anon, %struct.anon* %818, i32 0, i32 0
  %820 = load i32, i32* %819, align 8
  %821 = sub i32 %820, 1
  %822 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 7
  store i32 %821, i32* %822, align 8
  br label %823

823:                                              ; preds = %814, %792
  %824 = load i8*, i8** %9, align 8
  %825 = getelementptr inbounds i8, i8* %824, i32 1
  store i8* %825, i8** %9, align 8
  %826 = load i8*, i8** %11, align 8
  %827 = getelementptr inbounds i8, i8* %826, i32 -1
  store i8* %827, i8** %11, align 8
  br label %828

828:                                              ; preds = %840, %823
  %829 = call i16** @__ctype_b_loc() #8
  %830 = load i16*, i16** %829, align 8
  %831 = load i8*, i8** %9, align 8
  %832 = load i8, i8* %831, align 1
  %833 = sext i8 %832 to i32
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds i16, i16* %830, i64 %834
  %836 = load i16, i16* %835, align 2
  %837 = zext i16 %836 to i32
  %838 = and i32 %837, 8192
  %839 = icmp ne i32 %838, 0
  br i1 %839, label %840, label %843

840:                                              ; preds = %828
  %841 = load i8*, i8** %9, align 8
  %842 = getelementptr inbounds i8, i8* %841, i64 1
  store i8* %842, i8** %9, align 8
  br label %828

843:                                              ; preds = %828
  br label %844

844:                                              ; preds = %856, %843
  %845 = call i16** @__ctype_b_loc() #8
  %846 = load i16*, i16** %845, align 8
  %847 = load i8*, i8** %11, align 8
  %848 = load i8, i8* %847, align 1
  %849 = sext i8 %848 to i32
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds i16, i16* %846, i64 %850
  %852 = load i16, i16* %851, align 2
  %853 = zext i16 %852 to i32
  %854 = and i32 %853, 8192
  %855 = icmp ne i32 %854, 0
  br i1 %855, label %856, label %859

856:                                              ; preds = %844
  %857 = load i8*, i8** %11, align 8
  %858 = getelementptr inbounds i8, i8* %857, i64 -1
  store i8* %858, i8** %11, align 8
  br label %844

859:                                              ; preds = %844
  %860 = load i8*, i8** %11, align 8
  %861 = getelementptr inbounds i8, i8* %860, i32 1
  store i8* %861, i8** %11, align 8
  %862 = load i8*, i8** %9, align 8
  %863 = load i8*, i8** %11, align 8
  %864 = load i8*, i8** %9, align 8
  %865 = ptrtoint i8* %863 to i64
  %866 = ptrtoint i8* %864 to i64
  %867 = sub i64 %865, %866
  %868 = call i64 @mustache__load_file(%struct.mustache__loader_stack_s* %4, i8* %862, i64 %867)
  store i64 %868, i64* %18, align 8
  %869 = load i64, i64* %18, align 8
  %870 = icmp eq i64 %869, -1
  br i1 %870, label %871, label %872

871:                                              ; preds = %859
  br label %1408

872:                                              ; preds = %859
  %873 = load i32, i32* %6, align 4
  %874 = lshr i32 %873, 1
  %875 = icmp ne i32 %874, 0
  br i1 %875, label %876, label %900

876:                                              ; preds = %872
  %877 = load i64, i64* %18, align 8
  %878 = icmp ne i64 %877, 0
  br i1 %878, label %879, label %892

879:                                              ; preds = %876
  %880 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %19, i32 0, i32 0
  store i32 0, i32* %880, align 4
  %881 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %19, i32 0, i32 1
  %882 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %881, i32 0, i32 0
  store i32 0, i32* %882, align 4
  %883 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %881, i32 0, i32 1
  store i32 0, i32* %883, align 4
  %884 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %881, i32 0, i32 2
  %885 = load i32, i32* %7, align 4
  store i32 %885, i32* %884, align 4
  %886 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %881, i32 0, i32 3
  %887 = load i32, i32* %6, align 4
  %888 = lshr i32 %887, 1
  %889 = trunc i32 %888 to i16
  store i16 %889, i16* %886, align 4
  %890 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %881, i32 0, i32 4
  store i16 0, i16* %890, align 2
  %891 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %19)
  br label %899

892:                                              ; preds = %876
  %893 = bitcast %struct.mustache__instruction_s* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %893, i8 0, i64 20, i1 false)
  %894 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %20, i32 0, i32 0
  store i32 8, i32* %894, align 4
  %895 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %20)
  %896 = icmp ne i32 %895, 0
  br i1 %896, label %897, label %898

897:                                              ; preds = %892
  br label %1408

898:                                              ; preds = %892
  br label %899

899:                                              ; preds = %898, %879
  br label %900

900:                                              ; preds = %899, %872
  br label %1247

901:                                              ; preds = %426
  %902 = load i32, i32* %6, align 4
  call void @mustache__stand_alone_adjust(%struct.mustache__loader_stack_s* %4, i32 %902)
  %903 = load i8*, i8** %9, align 8
  %904 = getelementptr inbounds i8, i8* %903, i32 1
  store i8* %904, i8** %9, align 8
  %905 = load i8*, i8** %11, align 8
  %906 = getelementptr inbounds i8, i8* %905, i32 -1
  store i8* %906, i8** %11, align 8
  br label %907

907:                                              ; preds = %919, %901
  %908 = call i16** @__ctype_b_loc() #8
  %909 = load i16*, i16** %908, align 8
  %910 = load i8*, i8** %9, align 8
  %911 = load i8, i8* %910, align 1
  %912 = sext i8 %911 to i32
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds i16, i16* %909, i64 %913
  %915 = load i16, i16* %914, align 2
  %916 = zext i16 %915 to i32
  %917 = and i32 %916, 8192
  %918 = icmp ne i32 %917, 0
  br i1 %918, label %919, label %922

919:                                              ; preds = %907
  %920 = load i8*, i8** %9, align 8
  %921 = getelementptr inbounds i8, i8* %920, i64 1
  store i8* %921, i8** %9, align 8
  br label %907

922:                                              ; preds = %907
  br label %923

923:                                              ; preds = %935, %922
  %924 = call i16** @__ctype_b_loc() #8
  %925 = load i16*, i16** %924, align 8
  %926 = load i8*, i8** %11, align 8
  %927 = load i8, i8* %926, align 1
  %928 = sext i8 %927 to i32
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds i16, i16* %925, i64 %929
  %931 = load i16, i16* %930, align 2
  %932 = zext i16 %931 to i32
  %933 = and i32 %932, 8192
  %934 = icmp ne i32 %933, 0
  br i1 %934, label %935, label %938

935:                                              ; preds = %923
  %936 = load i8*, i8** %11, align 8
  %937 = getelementptr inbounds i8, i8* %936, i64 -1
  store i8* %937, i8** %11, align 8
  br label %923

938:                                              ; preds = %923
  %939 = load i8*, i8** %11, align 8
  %940 = getelementptr inbounds i8, i8* %939, i32 1
  store i8* %940, i8** %11, align 8
  %941 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %942 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %943 = load i16, i16* %942, align 8
  %944 = zext i16 %943 to i64
  %945 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %941, i64 0, i64 %944
  %946 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %945, i32 0, i32 3
  %947 = load i16, i16* %946, align 4
  %948 = icmp ne i16 %947, 0
  br i1 %948, label %952, label %949

949:                                              ; preds = %938
  %950 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %951 = load i32*, i32** %950, align 8
  store i32 2, i32* %951, align 4
  br label %1408

952:                                              ; preds = %938
  %953 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %954 = load %struct.mustache_s*, %struct.mustache_s** %953, align 8
  %955 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %954, i32 0, i32 0
  %956 = bitcast %union.anon* %955 to %struct.anon*
  %957 = getelementptr inbounds %struct.anon, %struct.anon* %956, i32 0, i32 0
  %958 = load i32, i32* %957, align 8
  store i32 %958, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %959

959:                                              ; preds = %1112, %952
  %960 = load i32, i32* %21, align 4
  %961 = add i32 %960, -1
  store i32 %961, i32* %21, align 4
  %962 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  %963 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %962, align 8
  %964 = load i32, i32* %21, align 4
  %965 = zext i32 %964 to i64
  %966 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %963, i64 %965
  %967 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %966, i32 0, i32 0
  %968 = load i32, i32* %967, align 4
  %969 = icmp eq i32 %968, 5
  br i1 %969, label %970, label %973

970:                                              ; preds = %959
  %971 = load i32, i32* %22, align 4
  %972 = add i32 %971, 1
  store i32 %972, i32* %22, align 4
  br label %1111

973:                                              ; preds = %959
  %974 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  %975 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %974, align 8
  %976 = load i32, i32* %21, align 4
  %977 = zext i32 %976 to i64
  %978 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %975, i64 %977
  %979 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %978, i32 0, i32 0
  %980 = load i32, i32* %979, align 4
  %981 = icmp eq i32 %980, 3
  br i1 %981, label %991, label %982

982:                                              ; preds = %973
  %983 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  %984 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %983, align 8
  %985 = load i32, i32* %21, align 4
  %986 = zext i32 %985 to i64
  %987 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %984, i64 %986
  %988 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %987, i32 0, i32 0
  %989 = load i32, i32* %988, align 4
  %990 = icmp eq i32 %989, 4
  br i1 %990, label %991, label %1110

991:                                              ; preds = %982, %973
  %992 = load i32, i32* %22, align 4
  %993 = icmp ne i32 %992, 0
  br i1 %993, label %994, label %997

994:                                              ; preds = %991
  %995 = load i32, i32* %22, align 4
  %996 = add i32 %995, -1
  store i32 %996, i32* %22, align 4
  br label %1109

997:                                              ; preds = %991
  %998 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  %999 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %998, align 8
  %1000 = load i32, i32* %21, align 4
  %1001 = zext i32 %1000 to i64
  %1002 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %999, i64 %1001
  %1003 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1002, i32 0, i32 1
  %1004 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1003, i32 0, i32 3
  %1005 = load i16, i16* %1004, align 4
  %1006 = zext i16 %1005 to i64
  %1007 = load i8*, i8** %11, align 8
  %1008 = load i8*, i8** %9, align 8
  %1009 = ptrtoint i8* %1007 to i64
  %1010 = ptrtoint i8* %1008 to i64
  %1011 = sub i64 %1009, %1010
  %1012 = icmp ne i64 %1006, %1011
  br i1 %1012, label %1038, label %1013

1013:                                             ; preds = %997
  %1014 = load i8*, i8** %9, align 8
  %1015 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %1016 = load i8*, i8** %1015, align 8
  %1017 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  %1018 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1017, align 8
  %1019 = load i32, i32* %21, align 4
  %1020 = zext i32 %1019 to i64
  %1021 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1018, i64 %1020
  %1022 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1021, i32 0, i32 1
  %1023 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1022, i32 0, i32 2
  %1024 = load i32, i32* %1023, align 4
  %1025 = zext i32 %1024 to i64
  %1026 = getelementptr inbounds i8, i8* %1016, i64 %1025
  %1027 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  %1028 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1027, align 8
  %1029 = load i32, i32* %21, align 4
  %1030 = zext i32 %1029 to i64
  %1031 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1028, i64 %1030
  %1032 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1031, i32 0, i32 1
  %1033 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1032, i32 0, i32 3
  %1034 = load i16, i16* %1033, align 4
  %1035 = zext i16 %1034 to i64
  %1036 = call i32 @memcmp(i8* %1014, i8* %1026, i64 %1035) #10
  %1037 = icmp ne i32 %1036, 0
  br i1 %1037, label %1038, label %1041

1038:                                             ; preds = %1013, %997
  %1039 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %1040 = load i32*, i32** %1039, align 8
  store i32 2, i32* %1040, align 4
  br label %1408

1041:                                             ; preds = %1013
  %1042 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %1043 = load %struct.mustache_s*, %struct.mustache_s** %1042, align 8
  %1044 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1043, i32 0, i32 0
  %1045 = bitcast %union.anon* %1044 to %struct.anon*
  %1046 = getelementptr inbounds %struct.anon, %struct.anon* %1045, i32 0, i32 0
  %1047 = load i32, i32* %1046, align 8
  %1048 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  %1049 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1048, align 8
  %1050 = load i32, i32* %21, align 4
  %1051 = zext i32 %1050 to i64
  %1052 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1049, i64 %1051
  %1053 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1052, i32 0, i32 1
  %1054 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1053, i32 0, i32 0
  store i32 %1047, i32* %1054, align 4
  %1055 = load i8*, i8** %10, align 8
  %1056 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %1057 = load i8*, i8** %1056, align 8
  %1058 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  %1059 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1058, align 8
  %1060 = load i32, i32* %21, align 4
  %1061 = zext i32 %1060 to i64
  %1062 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1059, i64 %1061
  %1063 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1062, i32 0, i32 1
  %1064 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1063, i32 0, i32 2
  %1065 = load i32, i32* %1064, align 4
  %1066 = zext i32 %1065 to i64
  %1067 = getelementptr inbounds i8, i8* %1057, i64 %1066
  %1068 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  %1069 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1068, align 8
  %1070 = load i32, i32* %21, align 4
  %1071 = zext i32 %1070 to i64
  %1072 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1069, i64 %1071
  %1073 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1072, i32 0, i32 1
  %1074 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1073, i32 0, i32 4
  %1075 = load i16, i16* %1074, align 2
  %1076 = zext i16 %1075 to i32
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds i8, i8* %1067, i64 %1077
  %1079 = ptrtoint i8* %1055 to i64
  %1080 = ptrtoint i8* %1078 to i64
  %1081 = sub i64 %1079, %1080
  %1082 = trunc i64 %1081 to i32
  %1083 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  %1084 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1083, align 8
  %1085 = load i32, i32* %21, align 4
  %1086 = zext i32 %1085 to i64
  %1087 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1084, i64 %1086
  %1088 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1087, i32 0, i32 1
  %1089 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1088, i32 0, i32 1
  store i32 %1082, i32* %1089, align 4
  %1090 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %23, i32 0, i32 0
  store i32 5, i32* %1090, align 4
  %1091 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %23, i32 0, i32 1
  %1092 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  %1093 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1092, align 8
  %1094 = load i32, i32* %21, align 4
  %1095 = zext i32 %1094 to i64
  %1096 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1093, i64 %1095
  %1097 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1096, i32 0, i32 1
  %1098 = bitcast %struct.anon.0* %1091 to i8*
  %1099 = bitcast %struct.anon.0* %1097 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1098, i8* align 4 %1099, i64 16, i1 false)
  %1100 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %23)
  %1101 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %1102 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %1103 = load i16, i16* %1102, align 8
  %1104 = zext i16 %1103 to i64
  %1105 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1101, i64 0, i64 %1104
  %1106 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1105, i32 0, i32 3
  %1107 = load i16, i16* %1106, align 4
  %1108 = add i16 %1107, -1
  store i16 %1108, i16* %1106, align 4
  store i32 0, i32* %21, align 4
  store i8* null, i8** %9, align 8
  br label %1109

1109:                                             ; preds = %1041, %994
  br label %1110

1110:                                             ; preds = %1109, %982
  br label %1111

1111:                                             ; preds = %1110, %970
  br label %1112

1112:                                             ; preds = %1111
  %1113 = load i32, i32* %21, align 4
  %1114 = icmp ne i32 %1113, 0
  br i1 %1114, label %959, label %1115

1115:                                             ; preds = %1112
  %1116 = load i8*, i8** %9, align 8
  %1117 = icmp ne i8* %1116, null
  br i1 %1117, label %1118, label %1121

1118:                                             ; preds = %1115
  %1119 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %1120 = load i32*, i32** %1119, align 8
  store i32 2, i32* %1120, align 4
  br label %1408

1121:                                             ; preds = %1115
  br label %1122

1122:                                             ; preds = %1121
  br label %1247

1123:                                             ; preds = %426
  %1124 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %1125 = load i8*, i8** %1124, align 8
  %1126 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %1127 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %1128 = load i16, i16* %1127, align 8
  %1129 = zext i16 %1128 to i64
  %1130 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1126, i64 0, i64 %1129
  %1131 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1130, i32 0, i32 1
  %1132 = load i32, i32* %1131, align 4
  %1133 = zext i32 %1132 to i64
  %1134 = getelementptr inbounds i8, i8* %1125, i64 %1133
  %1135 = load i8, i8* %1134, align 1
  %1136 = sext i8 %1135 to i32
  %1137 = icmp eq i32 %1136, 125
  br i1 %1137, label %1138, label %1179

1138:                                             ; preds = %1123
  %1139 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %1140 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %1141 = load i16, i16* %1140, align 8
  %1142 = zext i16 %1141 to i64
  %1143 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1139, i64 0, i64 %1142
  %1144 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1143, i32 0, i32 5
  %1145 = getelementptr inbounds [5 x i8], [5 x i8]* %1144, i64 0, i64 0
  %1146 = load i8, i8* %1145, align 1
  %1147 = sext i8 %1146 to i32
  %1148 = icmp eq i32 %1147, 125
  br i1 %1148, label %1149, label %1179

1149:                                             ; preds = %1138
  %1150 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %1151 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %1152 = load i16, i16* %1151, align 8
  %1153 = zext i16 %1152 to i64
  %1154 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1150, i64 0, i64 %1153
  %1155 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1154, i32 0, i32 5
  %1156 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %1157 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %1158 = load i16, i16* %1157, align 8
  %1159 = zext i16 %1158 to i64
  %1160 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1156, i64 0, i64 %1159
  %1161 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1160, i32 0, i32 7
  %1162 = load i8, i8* %1161, align 1
  %1163 = zext i8 %1162 to i32
  %1164 = sub nsw i32 %1163, 1
  %1165 = sext i32 %1164 to i64
  %1166 = getelementptr inbounds [5 x i8], [5 x i8]* %1155, i64 0, i64 %1165
  %1167 = load i8, i8* %1166, align 1
  %1168 = sext i8 %1167 to i32
  %1169 = icmp eq i32 %1168, 125
  br i1 %1169, label %1170, label %1179

1170:                                             ; preds = %1149
  %1171 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %1172 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %1173 = load i16, i16* %1172, align 8
  %1174 = zext i16 %1173 to i64
  %1175 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1171, i64 0, i64 %1174
  %1176 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1175, i32 0, i32 1
  %1177 = load i32, i32* %1176, align 4
  %1178 = add i32 %1177, 1
  store i32 %1178, i32* %1176, align 4
  br label %1179

1179:                                             ; preds = %1170, %1149, %1138, %1123
  br label %1180

1180:                                             ; preds = %426, %1179
  store i8 0, i8* %5, align 1
  br label %1181

1181:                                             ; preds = %426, %426, %1180
  %1182 = load i8*, i8** %9, align 8
  %1183 = getelementptr inbounds i8, i8* %1182, i32 1
  store i8* %1183, i8** %9, align 8
  br label %1184

1184:                                             ; preds = %426, %1181
  %1185 = load i8*, i8** %11, align 8
  %1186 = getelementptr inbounds i8, i8* %1185, i32 -1
  store i8* %1186, i8** %11, align 8
  br label %1187

1187:                                             ; preds = %1199, %1184
  %1188 = call i16** @__ctype_b_loc() #8
  %1189 = load i16*, i16** %1188, align 8
  %1190 = load i8*, i8** %9, align 8
  %1191 = load i8, i8* %1190, align 1
  %1192 = sext i8 %1191 to i32
  %1193 = sext i32 %1192 to i64
  %1194 = getelementptr inbounds i16, i16* %1189, i64 %1193
  %1195 = load i16, i16* %1194, align 2
  %1196 = zext i16 %1195 to i32
  %1197 = and i32 %1196, 8192
  %1198 = icmp ne i32 %1197, 0
  br i1 %1198, label %1199, label %1202

1199:                                             ; preds = %1187
  %1200 = load i8*, i8** %9, align 8
  %1201 = getelementptr inbounds i8, i8* %1200, i64 1
  store i8* %1201, i8** %9, align 8
  br label %1187

1202:                                             ; preds = %1187
  br label %1203

1203:                                             ; preds = %1215, %1202
  %1204 = call i16** @__ctype_b_loc() #8
  %1205 = load i16*, i16** %1204, align 8
  %1206 = load i8*, i8** %11, align 8
  %1207 = load i8, i8* %1206, align 1
  %1208 = sext i8 %1207 to i32
  %1209 = sext i32 %1208 to i64
  %1210 = getelementptr inbounds i16, i16* %1205, i64 %1209
  %1211 = load i16, i16* %1210, align 2
  %1212 = zext i16 %1211 to i32
  %1213 = and i32 %1212, 8192
  %1214 = icmp ne i32 %1213, 0
  br i1 %1214, label %1215, label %1218

1215:                                             ; preds = %1203
  %1216 = load i8*, i8** %11, align 8
  %1217 = getelementptr inbounds i8, i8* %1216, i64 -1
  store i8* %1217, i8** %11, align 8
  br label %1203

1218:                                             ; preds = %1203
  %1219 = load i8*, i8** %11, align 8
  %1220 = getelementptr inbounds i8, i8* %1219, i32 1
  store i8* %1220, i8** %11, align 8
  %1221 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %24, i32 0, i32 0
  %1222 = load i8, i8* %5, align 1
  %1223 = zext i8 %1222 to i32
  %1224 = icmp ne i32 %1223, 0
  %1225 = zext i1 %1224 to i64
  %1226 = select i1 %1224, i32 1, i32 2
  store i32 %1226, i32* %1221, align 4
  %1227 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %24, i32 0, i32 1
  %1228 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1227, i32 0, i32 0
  store i32 0, i32* %1228, align 4
  %1229 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1227, i32 0, i32 1
  store i32 0, i32* %1229, align 4
  %1230 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1227, i32 0, i32 2
  %1231 = load i8*, i8** %9, align 8
  %1232 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %1233 = load i8*, i8** %1232, align 8
  %1234 = ptrtoint i8* %1231 to i64
  %1235 = ptrtoint i8* %1233 to i64
  %1236 = sub i64 %1234, %1235
  %1237 = trunc i64 %1236 to i32
  store i32 %1237, i32* %1230, align 4
  %1238 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1227, i32 0, i32 3
  %1239 = load i8*, i8** %11, align 8
  %1240 = load i8*, i8** %9, align 8
  %1241 = ptrtoint i8* %1239 to i64
  %1242 = ptrtoint i8* %1240 to i64
  %1243 = sub i64 %1241, %1242
  %1244 = trunc i64 %1243 to i16
  store i16 %1244, i16* %1238, align 4
  %1245 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1227, i32 0, i32 4
  store i16 0, i16* %1245, align 2
  %1246 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %24)
  br label %1247

1247:                                             ; preds = %1218, %1122, %900, %791, %658, %431
  br label %119

1248:                                             ; preds = %119
  %1249 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %1250 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %1251 = load i16, i16* %1250, align 8
  %1252 = zext i16 %1251 to i64
  %1253 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1249, i64 0, i64 %1252
  %1254 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1253, i32 0, i32 3
  %1255 = load i16, i16* %1254, align 4
  %1256 = icmp ne i16 %1255, 0
  br i1 %1256, label %1257, label %1260

1257:                                             ; preds = %1248
  %1258 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %1259 = load i32*, i32** %1258, align 8
  store i32 2, i32* %1259, align 4
  br label %1408

1260:                                             ; preds = %1248
  store i8 0, i8* %5, align 1
  %1261 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %1262 = load %struct.mustache_s*, %struct.mustache_s** %1261, align 8
  %1263 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1262, i32 0, i32 0
  %1264 = bitcast %union.anon* %1263 to %struct.anon*
  %1265 = getelementptr inbounds %struct.anon, %struct.anon* %1264, i32 0, i32 0
  %1266 = load i32, i32* %1265, align 8
  %1267 = icmp ne i32 %1266, 0
  br i1 %1267, label %1268, label %1291

1268:                                             ; preds = %1260
  %1269 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  %1270 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1269, align 8
  %1271 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %1272 = load %struct.mustache_s*, %struct.mustache_s** %1271, align 8
  %1273 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1272, i32 0, i32 0
  %1274 = bitcast %union.anon* %1273 to %struct.anon*
  %1275 = getelementptr inbounds %struct.anon, %struct.anon* %1274, i32 0, i32 0
  %1276 = load i32, i32* %1275, align 8
  %1277 = sub i32 %1276, 1
  %1278 = zext i32 %1277 to i64
  %1279 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1270, i64 %1278
  %1280 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1279, i32 0, i32 0
  %1281 = load i32, i32* %1280, align 4
  %1282 = icmp eq i32 %1281, 9
  br i1 %1282, label %1283, label %1291

1283:                                             ; preds = %1268
  %1284 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %1285 = load %struct.mustache_s*, %struct.mustache_s** %1284, align 8
  %1286 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1285, i32 0, i32 0
  %1287 = bitcast %union.anon* %1286 to %struct.anon*
  %1288 = getelementptr inbounds %struct.anon, %struct.anon* %1287, i32 0, i32 0
  %1289 = load i32, i32* %1288, align 8
  %1290 = add i32 %1289, -1
  store i32 %1290, i32* %1288, align 8
  store i8 1, i8* %5, align 1
  br label %1291

1291:                                             ; preds = %1283, %1268, %1260
  %1292 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %1293 = load i8*, i8** %1292, align 8
  %1294 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 11
  %1295 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %1296 = load i16, i16* %1295, align 8
  %1297 = zext i16 %1296 to i64
  %1298 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %1294, i64 0, i64 %1297
  %1299 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1298, i32 0, i32 0
  %1300 = load i32, i32* %1299, align 4
  %1301 = zext i32 %1300 to i64
  %1302 = getelementptr inbounds i8, i8* %1293, i64 %1301
  call void @mustache__data_segment_read(%struct.mustache__data_segment_s* sret %25, i8* %1302)
  %1303 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %1304 = load %struct.mustache_s*, %struct.mustache_s** %1303, align 8
  %1305 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1304, i32 0, i32 0
  %1306 = bitcast %union.anon* %1305 to %struct.anon*
  %1307 = getelementptr inbounds %struct.anon, %struct.anon* %1306, i32 0, i32 0
  %1308 = load i32, i32* %1307, align 8
  %1309 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  %1310 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1309, align 8
  %1311 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %25, i32 0, i32 1
  %1312 = load i32, i32* %1311, align 8
  %1313 = zext i32 %1312 to i64
  %1314 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1310, i64 %1313
  %1315 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1314, i32 0, i32 1
  %1316 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1315, i32 0, i32 0
  store i32 %1308, i32* %1316, align 4
  %1317 = bitcast %struct.mustache__instruction_s* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %1317, i8 0, i64 20, i1 false)
  %1318 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %26, i32 0, i32 0
  store i32 5, i32* %1318, align 4
  %1319 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %26)
  %1320 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 7
  %1321 = load i32, i32* %1320, align 8
  %1322 = icmp ne i32 %1321, 0
  br i1 %1322, label %1323, label %1344

1323:                                             ; preds = %1291
  %1324 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 7
  %1325 = load i32, i32* %1324, align 8
  %1326 = add i32 %1325, 1
  %1327 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %25, i32 0, i32 1
  %1328 = load i32, i32* %1327, align 8
  %1329 = icmp eq i32 %1326, %1328
  br i1 %1329, label %1330, label %1344

1330:                                             ; preds = %1323
  %1331 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 1
  %1332 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %1331, align 8
  %1333 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 7
  %1334 = load i32, i32* %1333, align 8
  %1335 = zext i32 %1334 to i64
  %1336 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1332, i64 %1335
  %1337 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1336, i32 0, i32 1
  %1338 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1337, i32 0, i32 0
  %1339 = load i32, i32* %1338, align 4
  %1340 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 7
  store i32 %1339, i32* %1340, align 8
  %1341 = bitcast %struct.mustache__instruction_s* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %1341, i8 0, i64 20, i1 false)
  %1342 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %27, i32 0, i32 0
  store i32 8, i32* %1342, align 4
  %1343 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %27)
  br label %1344

1344:                                             ; preds = %1330, %1323, %1291
  %1345 = load i8, i8* %5, align 1
  %1346 = icmp ne i8 %1345, 0
  br i1 %1346, label %1347, label %1351

1347:                                             ; preds = %1344
  %1348 = bitcast %struct.mustache__instruction_s* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %1348, i8 0, i64 20, i1 false)
  %1349 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %28, i32 0, i32 0
  store i32 9, i32* %1349, align 4
  %1350 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %4, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %28)
  store i8 0, i8* %5, align 1
  br label %1351

1351:                                             ; preds = %1347, %1344
  %1352 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 10
  %1353 = load i16, i16* %1352, align 8
  %1354 = add i16 %1353, -1
  store i16 %1354, i16* %1352, align 8
  br label %114

1355:                                             ; preds = %114
  %1356 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %1357 = load %struct.mustache_s*, %struct.mustache_s** %1356, align 8
  %1358 = bitcast %struct.mustache_s* %1357 to i8*
  %1359 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %1360 = load %struct.mustache_s*, %struct.mustache_s** %1359, align 8
  %1361 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1360, i32 0, i32 0
  %1362 = bitcast %union.anon* %1361 to %struct.anon*
  %1363 = getelementptr inbounds %struct.anon, %struct.anon* %1362, i32 0, i32 0
  %1364 = load i32, i32* %1363, align 8
  %1365 = zext i32 %1364 to i64
  %1366 = mul i64 20, %1365
  %1367 = add i64 8, %1366
  %1368 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 6
  %1369 = load i32, i32* %1368, align 4
  %1370 = zext i32 %1369 to i64
  %1371 = add i64 %1367, %1370
  %1372 = call i8* @realloc(i8* %1358, i64 %1371) #1
  %1373 = bitcast i8* %1372 to %struct.mustache_s*
  %1374 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  store %struct.mustache_s* %1373, %struct.mustache_s** %1374, align 8
  %1375 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %1376 = load %struct.mustache_s*, %struct.mustache_s** %1375, align 8
  %1377 = icmp ne %struct.mustache_s* %1376, null
  br i1 %1377, label %1381, label %1378

1378:                                             ; preds = %1355
  call void @perror(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  %1379 = call i32* @__errno_location() #8
  %1380 = load i32, i32* %1379, align 4
  call void @exit(i32 %1380) #9
  unreachable

1381:                                             ; preds = %1355
  %1382 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %1383 = load %struct.mustache_s*, %struct.mustache_s** %1382, align 8
  %1384 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1383, i64 1
  %1385 = bitcast %struct.mustache_s* %1384 to %struct.mustache__instruction_s*
  %1386 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %1387 = load %struct.mustache_s*, %struct.mustache_s** %1386, align 8
  %1388 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %1387, i32 0, i32 0
  %1389 = bitcast %union.anon* %1388 to %struct.anon*
  %1390 = getelementptr inbounds %struct.anon, %struct.anon* %1389, i32 0, i32 0
  %1391 = load i32, i32* %1390, align 8
  %1392 = zext i32 %1391 to i64
  %1393 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %1385, i64 %1392
  %1394 = bitcast %struct.mustache__instruction_s* %1393 to i8*
  %1395 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %1396 = load i8*, i8** %1395, align 8
  %1397 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 6
  %1398 = load i32, i32* %1397, align 4
  %1399 = zext i32 %1398 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1394, i8* align 1 %1396, i64 %1399, i1 false)
  %1400 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %1401 = load i8*, i8** %1400, align 8
  call void @free(i8* %1401) #1
  %1402 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 4
  %1403 = load i8*, i8** %1402, align 8
  call void @free(i8* %1403) #1
  %1404 = getelementptr inbounds %struct.mustache_load_args_s, %struct.mustache_load_args_s* %0, i32 0, i32 4
  %1405 = load i32*, i32** %1404, align 8
  store i32 0, i32* %1405, align 4
  %1406 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %1407 = load %struct.mustache_s*, %struct.mustache_s** %1406, align 8
  store %struct.mustache_s* %1407, %struct.mustache_s** %2, align 8
  br label %1416

1408:                                             ; preds = %1257, %1118, %1038, %949, %897, %871, %813, %790, %732, %615, %605, %525, %515, %444, %266, %111, %102
  %1409 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 3
  %1410 = load i8*, i8** %1409, align 8
  call void @free(i8* %1410) #1
  %1411 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 4
  %1412 = load i8*, i8** %1411, align 8
  call void @free(i8* %1412) #1
  %1413 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %4, i32 0, i32 0
  %1414 = load %struct.mustache_s*, %struct.mustache_s** %1413, align 8
  %1415 = bitcast %struct.mustache_s* %1414 to i8*
  call void @free(i8* %1415) #1
  store %struct.mustache_s* null, %struct.mustache_s** %2, align 8
  br label %1416

1416:                                             ; preds = %1408, %1381
  %1417 = load %struct.mustache_s*, %struct.mustache_s** %2, align 8
  ret %struct.mustache_s* %1417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mustache_s* @fiobj_mustache_new(%struct.mustache_load_args_s* byval(%struct.mustache_load_args_s) align 8) #0 {
  %2 = call %struct.mustache_s* @mustache_load(%struct.mustache_load_args_s* byval(%struct.mustache_load_args_s) align 8 %0)
  ret %struct.mustache_s* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_mustache_free(%struct.mustache_s*) #0 {
  %2 = alloca %struct.mustache_s*, align 8
  store %struct.mustache_s* %0, %struct.mustache_s** %2, align 8
  %3 = load %struct.mustache_s*, %struct.mustache_s** %2, align 8
  call void @mustache_free(%struct.mustache_s* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mustache_free(%struct.mustache_s*) #0 {
  %2 = alloca %struct.mustache_s*, align 8
  store %struct.mustache_s* %0, %struct.mustache_s** %2, align 8
  %3 = load %struct.mustache_s*, %struct.mustache_s** %2, align 8
  %4 = bitcast %struct.mustache_s* %3 to i8*
  call void @free(i8* %4) #1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_mustache_build2(i64, %struct.mustache_s*, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mustache_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mustache_build_args_s, align 8
  store i64 %0, i64* %4, align 8
  store %struct.mustache_s* %1, %struct.mustache_s** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %7, i32 0, i32 0
  %9 = load %struct.mustache_s*, %struct.mustache_s** %5, align 8
  store %struct.mustache_s* %9, %struct.mustache_s** %8, align 8
  %10 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %7, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %10, align 8
  %13 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %7, i32 0, i32 2
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %13, align 8
  %16 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %7, i32 0, i32 3
  store i32* null, i32** %16, align 8
  %17 = call i32 @mustache_build(%struct.mustache_build_args_s* byval(%struct.mustache_build_args_s) align 8 %7)
  %18 = load i64, i64* %4, align 8
  ret i64 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache_build(%struct.mustache_build_args_s* byval(%struct.mustache_build_args_s) align 8) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mustache__instruction_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mustache__builder_stack_s, align 8
  %7 = alloca %struct.mustache__section_stack_frame_s, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3
  store i32* %3, i32** %14, align 8
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 0
  %17 = load %struct.mustache_s*, %struct.mustache_s** %16, align 8
  %18 = icmp ne %struct.mustache_s* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %540

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 0
  %22 = load %struct.mustache_s*, %struct.mustache_s** %21, align 8
  %23 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %22, i64 1
  %24 = bitcast %struct.mustache_s* %23 to %struct.mustache__instruction_s*
  store %struct.mustache__instruction_s* %24, %struct.mustache__instruction_s** %4, align 8
  %25 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 0
  %26 = load %struct.mustache_s*, %struct.mustache_s** %25, align 8
  %27 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %26, i64 1
  %28 = bitcast %struct.mustache_s* %27 to %struct.mustache__instruction_s*
  %29 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 0
  %30 = load %struct.mustache_s*, %struct.mustache_s** %29, align 8
  %31 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %30, i32 0, i32 0
  %32 = bitcast %union.anon* %31 to %struct.anon*
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %28, i64 %35
  %37 = bitcast %struct.mustache__instruction_s* %36 to i8*
  store i8* %37, i8** %5, align 8
  %38 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 0
  %39 = load %struct.mustache_s*, %struct.mustache_s** %38, align 8
  %40 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 0
  store %struct.mustache_s* %39, %struct.mustache_s** %40, align 8
  %41 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  store i16 0, i16* %42, align 8
  %43 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 2
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %45 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %44, i64 0, i64 0
  %46 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %7, i32 0, i32 0
  %47 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %47, align 8
  %50 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %46, i32 0, i32 1
  %51 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %50, align 8
  %53 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %7, i32 0, i32 1
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %7, i32 0, i32 2
  %55 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %56 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %55, i64 0
  %57 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %54, align 4
  %60 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %7, i32 0, i32 3
  store i32 0, i32* %60, align 8
  %61 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %7, i32 0, i32 4
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %7, i32 0, i32 5
  store i16 0, i16* %62, align 8
  %63 = bitcast %struct.mustache__section_stack_frame_s* %45 to i8*
  %64 = bitcast %struct.mustache__section_stack_frame_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 40, i1 false)
  br label %65

65:                                               ; preds = %533, %20
  %66 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %67 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %66, i64 %69
  %71 = ptrtoint %struct.mustache__instruction_s* %70 to i64
  %72 = load i8*, i8** %5, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %75, label %537

75:                                               ; preds = %65
  %76 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %77 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %76, i64 %79
  %81 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
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
  ]

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %85 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %86 = load i16, i16* %85, align 8
  %87 = zext i16 %86 to i64
  %88 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %84, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %88, i32 0, i32 0
  %90 = load i8*, i8** %5, align 8
  %91 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %92 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %91, i64 %94
  %96 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %90, i64 %99
  %101 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %102 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %101, i64 %104
  %106 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %106, i32 0, i32 3
  %108 = load i16, i16* %107, align 4
  %109 = zext i16 %108 to i32
  %110 = call i32 @mustache_on_text(%struct.mustache_section_s* %89, i8* %100, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %83
  br label %540

113:                                              ; preds = %83
  br label %533

114:                                              ; preds = %75
  %115 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %116 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %117 = load i16, i16* %116, align 8
  %118 = zext i16 %117 to i64
  %119 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %115, i64 0, i64 %118
  %120 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %119, i32 0, i32 0
  %121 = load i8*, i8** %5, align 8
  %122 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %123 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %122, i64 %125
  %127 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %121, i64 %130
  %132 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %133 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %132, i64 %135
  %137 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %137, i32 0, i32 3
  %139 = load i16, i16* %138, align 4
  %140 = zext i16 %139 to i32
  %141 = call i32 @mustache_on_arg(%struct.mustache_section_s* %120, i8* %131, i32 %140, i8 zeroext 1)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %114
  br label %540

144:                                              ; preds = %114
  br label %533

145:                                              ; preds = %75
  %146 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %147 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %148 = load i16, i16* %147, align 8
  %149 = zext i16 %148 to i64
  %150 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %146, i64 0, i64 %149
  %151 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %150, i32 0, i32 0
  %152 = load i8*, i8** %5, align 8
  %153 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %154 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %153, i64 %156
  %158 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %152, i64 %161
  %163 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %164 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %163, i64 %166
  %168 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %168, i32 0, i32 3
  %170 = load i16, i16* %169, align 4
  %171 = zext i16 %170 to i32
  %172 = call i32 @mustache_on_arg(%struct.mustache_section_s* %151, i8* %162, i32 %171, i8 zeroext 0)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %145
  br label %540

175:                                              ; preds = %145
  br label %533

176:                                              ; preds = %75, %75, %75
  %177 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %178 = load i16, i16* %177, align 8
  %179 = zext i16 %178 to i32
  %180 = add nsw i32 %179, 1
  %181 = icmp sge i32 %180, 82
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  store i32 1, i32* %188, align 4
  br label %189

189:                                              ; preds = %186, %182
  br label %543

190:                                              ; preds = %176
  %191 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %192 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %193 = load i16, i16* %192, align 8
  %194 = zext i16 %193 to i32
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %191, i64 0, i64 %196
  %198 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %200 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %201 = load i16, i16* %200, align 8
  %202 = zext i16 %201 to i64
  %203 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %199, i64 0, i64 %202
  %204 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %203, i32 0, i32 0
  %205 = bitcast %struct.mustache_section_s* %198 to i8*
  %206 = bitcast %struct.mustache_section_s* %204 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %205, i8* align 8 %206, i64 16, i1 false)
  %207 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %208 = load i16, i16* %207, align 8
  %209 = add i16 %208, 1
  store i16 %209, i16* %207, align 8
  %210 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %211 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %210, i64 %213
  %215 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 6
  br i1 %217, label %218, label %227

218:                                              ; preds = %190
  %219 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %220 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %219, i64 %222
  %224 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  br label %230

227:                                              ; preds = %190
  %228 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  br label %230

230:                                              ; preds = %227, %218
  %231 = phi i32 [ %226, %218 ], [ %229, %227 ]
  %232 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %233 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %234 = load i16, i16* %233, align 8
  %235 = zext i16 %234 to i64
  %236 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %232, i64 0, i64 %235
  %237 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %236, i32 0, i32 1
  store i32 %231, i32* %237, align 8
  %238 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %239 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %238, i64 %241
  %243 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %247 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %248 = load i16, i16* %247, align 8
  %249 = zext i16 %248 to i64
  %250 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %246, i64 0, i64 %249
  %251 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %250, i32 0, i32 2
  store i32 %245, i32* %251, align 4
  %252 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %253 = load i16, i16* %252, align 8
  %254 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %255 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %256 = load i16, i16* %255, align 8
  %257 = zext i16 %256 to i64
  %258 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %254, i64 0, i64 %257
  %259 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %258, i32 0, i32 5
  store i16 %253, i16* %259, align 8
  %260 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %261 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %262 = load i16, i16* %261, align 8
  %263 = zext i16 %262 to i64
  %264 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %260, i64 0, i64 %263
  %265 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %264, i32 0, i32 3
  store i32 0, i32* %265, align 8
  %266 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %267 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %268 = load i16, i16* %267, align 8
  %269 = zext i16 %268 to i64
  %270 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %266, i64 0, i64 %269
  %271 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %270, i32 0, i32 4
  store i32 1, i32* %271, align 4
  %272 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %273 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %272, i64 %275
  %277 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %343

281:                                              ; preds = %230
  %282 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %283 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %284 = load i16, i16* %283, align 8
  %285 = zext i16 %284 to i64
  %286 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %282, i64 0, i64 %285
  %287 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %286, i32 0, i32 0
  %288 = load i8*, i8** %5, align 8
  %289 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %290 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %289, i64 %292
  %294 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %288, i64 %297
  %299 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %300 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %299, i64 %302
  %304 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %304, i32 0, i32 3
  %306 = load i16, i16* %305, align 4
  %307 = zext i16 %306 to i32
  %308 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %309 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %308, i64 %311
  %313 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = icmp eq i32 %314, 3
  %316 = zext i1 %315 to i32
  %317 = trunc i32 %316 to i8
  %318 = call i32 @mustache_on_section_test(%struct.mustache_section_s* %287, i8* %298, i32 %307, i8 zeroext %317)
  store i32 %318, i32* %8, align 4
  %319 = load i32, i32* %8, align 4
  %320 = icmp eq i32 %319, -1
  br i1 %320, label %321, label %322

321:                                              ; preds = %281
  br label %540

322:                                              ; preds = %281
  %323 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %324 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %323, i64 %326
  %328 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %329, 4
  br i1 %330, label %331, label %335

331:                                              ; preds = %322
  %332 = load i32, i32* %8, align 4
  %333 = icmp eq i32 %332, 0
  %334 = zext i1 %333 to i32
  store i32 %334, i32* %8, align 4
  br label %335

335:                                              ; preds = %331, %322
  %336 = load i32, i32* %8, align 4
  %337 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %338 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %339 = load i16, i16* %338, align 8
  %340 = zext i16 %339 to i64
  %341 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %337, i64 0, i64 %340
  %342 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %341, i32 0, i32 4
  store i32 %336, i32* %342, align 4
  br label %343

343:                                              ; preds = %335, %230
  br label %344

344:                                              ; preds = %75, %343
  %345 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %346 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %347 = load i16, i16* %346, align 8
  %348 = zext i16 %347 to i64
  %349 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %345, i64 0, i64 %348
  %350 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %353 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %354 = load i16, i16* %353, align 8
  %355 = zext i16 %354 to i64
  %356 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %352, i64 0, i64 %355
  %357 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 4
  %359 = icmp ult i32 %351, %358
  br i1 %359, label %360, label %453

360:                                              ; preds = %344
  %361 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %362 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %363 = load i16, i16* %362, align 8
  %364 = zext i16 %363 to i64
  %365 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %361, i64 0, i64 %364
  %366 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  store i32 %367, i32* %368, align 8
  %369 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %370 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %371 = load i16, i16* %370, align 8
  %372 = zext i16 %371 to i64
  %373 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %369, i64 0, i64 %372
  %374 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %376 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %377 = load i16, i16* %376, align 8
  %378 = zext i16 %377 to i32
  %379 = sub nsw i32 %378, 1
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %375, i64 0, i64 %380
  %382 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %381, i32 0, i32 0
  %383 = bitcast %struct.mustache_section_s* %374 to i8*
  %384 = bitcast %struct.mustache_section_s* %382 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %383, i8* align 8 %384, i64 16, i1 false)
  %385 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %386 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %387 = load i32, i32* %386, align 8
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %385, i64 %388
  %390 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %431

394:                                              ; preds = %360
  %395 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %396 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %397 = load i16, i16* %396, align 8
  %398 = zext i16 %397 to i64
  %399 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %395, i64 0, i64 %398
  %400 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %399, i32 0, i32 0
  %401 = load i8*, i8** %5, align 8
  %402 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %403 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %404 = load i32, i32* %403, align 8
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %402, i64 %405
  %407 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 4
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds i8, i8* %401, i64 %410
  %412 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %413 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %412, i64 %415
  %417 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %417, i32 0, i32 3
  %419 = load i16, i16* %418, align 4
  %420 = zext i16 %419 to i32
  %421 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %422 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %423 = load i16, i16* %422, align 8
  %424 = zext i16 %423 to i64
  %425 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %421, i64 0, i64 %424
  %426 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 8
  %428 = call i32 @mustache_on_section_start(%struct.mustache_section_s* %400, i8* %411, i32 %420, i32 %427)
  %429 = icmp eq i32 %428, -1
  br i1 %429, label %430, label %431

430:                                              ; preds = %394
  br label %540

431:                                              ; preds = %394, %360
  %432 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %433 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %434 = load i32, i32* %433, align 8
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %432, i64 %435
  %437 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = icmp eq i32 %438, 6
  br i1 %439, label %440, label %444

440:                                              ; preds = %431
  %441 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %442 = load i32, i32* %441, align 8
  %443 = add i32 %442, 1
  store i32 %443, i32* %441, align 8
  br label %444

444:                                              ; preds = %440, %431
  %445 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %446 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %447 = load i16, i16* %446, align 8
  %448 = zext i16 %447 to i64
  %449 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %445, i64 0, i64 %448
  %450 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 8
  %452 = add i32 %451, 1
  store i32 %452, i32* %450, align 8
  br label %533

453:                                              ; preds = %344
  %454 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %455 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %456 = load i16, i16* %455, align 8
  %457 = zext i16 %456 to i64
  %458 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %454, i64 0, i64 %457
  %459 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 4
  %461 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  store i32 %460, i32* %461, align 8
  %462 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %463 = load i16, i16* %462, align 8
  %464 = add i16 %463, -1
  store i16 %464, i16* %462, align 8
  br label %533

465:                                              ; preds = %75
  %466 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %467 = load i32, i32* %466, align 8
  %468 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 2
  store i32 %467, i32* %468, align 4
  br label %533

469:                                              ; preds = %75
  %470 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %471 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 2
  %472 = load i32, i32* %471, align 4
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %470, i64 %473
  %475 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 2
  store i32 %477, i32* %478, align 4
  br label %533

479:                                              ; preds = %75
  %480 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 2
  %481 = load i32, i32* %480, align 4
  store i32 %481, i32* %9, align 4
  br label %482

482:                                              ; preds = %514, %479
  %483 = load i32, i32* %9, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %522

485:                                              ; preds = %482
  %486 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 4
  %487 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 3
  %488 = load i16, i16* %487, align 8
  %489 = zext i16 %488 to i64
  %490 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %486, i64 0, i64 %489
  %491 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %490, i32 0, i32 0
  %492 = load i8*, i8** %5, align 8
  %493 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %494 = load i32, i32* %9, align 4
  %495 = zext i32 %494 to i64
  %496 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %493, i64 %495
  %497 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 4
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds i8, i8* %492, i64 %500
  %502 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %503 = load i32, i32* %9, align 4
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %502, i64 %504
  %506 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %506, i32 0, i32 3
  %508 = load i16, i16* %507, align 4
  %509 = zext i16 %508 to i32
  %510 = call i32 @mustache_on_text(%struct.mustache_section_s* %491, i8* %501, i32 %509)
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %513

512:                                              ; preds = %485
  br label %540

513:                                              ; preds = %485
  br label %514

514:                                              ; preds = %513
  %515 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %516 = load i32, i32* %9, align 4
  %517 = zext i32 %516 to i64
  %518 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %515, i64 %517
  %519 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 4
  store i32 %521, i32* %9, align 4
  br label %482

522:                                              ; preds = %482
  br label %533

523:                                              ; preds = %75
  %524 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %525 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %524, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0))
  %526 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3
  %527 = load i32*, i32** %526, align 8
  %528 = icmp ne i32* %527, null
  br i1 %528, label %529, label %532

529:                                              ; preds = %523
  %530 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3
  %531 = load i32*, i32** %530, align 8
  store i32 10, i32* %531, align 4
  br label %532

532:                                              ; preds = %529, %523
  br label %543

533:                                              ; preds = %522, %469, %465, %453, %444, %175, %144, %113
  %534 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %6, i32 0, i32 1
  %535 = load i32, i32* %534, align 8
  %536 = add i32 %535, 1
  store i32 %536, i32* %534, align 8
  br label %65

537:                                              ; preds = %65
  %538 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3
  %539 = load i32*, i32** %538, align 8
  store i32 0, i32* %539, align 4
  store i32 0, i32* %2, align 4
  br label %548

540:                                              ; preds = %512, %430, %321, %174, %143, %112, %19
  %541 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 3
  %542 = load i32*, i32** %541, align 8
  store i32 11, i32* %542, align 4
  br label %543

543:                                              ; preds = %540, %532, %189
  %544 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 1
  %545 = load i8*, i8** %544, align 8
  %546 = getelementptr inbounds %struct.mustache_build_args_s, %struct.mustache_build_args_s* %0, i32 0, i32 2
  %547 = load i8*, i8** %546, align 8
  call void @mustache_on_formatting_error(i8* %545, i8* %547)
  store i32 -1, i32* %2, align 4
  br label %548

548:                                              ; preds = %543, %537
  %549 = load i32, i32* %2, align 4
  ret i32 %549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_mustache_build(%struct.mustache_s*, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mustache_s*, align 8
  %5 = alloca i64, align 8
  store %struct.mustache_s* %0, %struct.mustache_s** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.mustache_s*, %struct.mustache_s** %4, align 8
  %7 = icmp ne %struct.mustache_s* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i64 0, i64* %3, align 8
  br label %20

9:                                                ; preds = %2
  %10 = load %struct.mustache_s*, %struct.mustache_s** %4, align 8
  %11 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %10, i32 0, i32 0
  %12 = bitcast %union.anon* %11 to %struct.anon*
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %14 to i64
  %16 = call i64 @fiobj_str_buf(i64 %15)
  %17 = load %struct.mustache_s*, %struct.mustache_s** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @fiobj_mustache_build2(i64 %16, %struct.mustache_s* %17, i64 %18)
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %9, %8
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

declare dso_local i64 @fiobj_str_buf(i64) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local void @perror(i8*) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mustache__load_data(%struct.mustache__loader_stack_s*, i8*, i64, i8*, i64) #0 {
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
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %17 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %11, align 8
  %22 = add i64 %20, %21
  %23 = icmp ugt i64 %22, 4294967295
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %274

25:                                               ; preds = %5
  %26 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %27 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %11, align 8
  %31 = add i64 %29, %30
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @mustache__data_segment_length(i64 %32)
  %34 = add i64 %31, %33
  %35 = add i64 %34, 1
  %36 = call i8* @realloc(i8* %28, i64 %35) #1
  %37 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %38 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %40 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %25
  call void @perror(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %44 = call i32* @__errno_location() #8
  %45 = load i32, i32* %44, align 4
  call void @exit(i32 %45) #9
  unreachable

46:                                               ; preds = %25
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %70, %46
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load i64, i64* %13, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %13, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 47
  br i1 %59, label %67, label %60

60:                                               ; preds = %51
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 92
  br i1 %66, label %67, label %70

67:                                               ; preds = %60, %51
  %68 = load i64, i64* %13, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %13, align 8
  br label %71

70:                                               ; preds = %60
  br label %48

71:                                               ; preds = %67, %48
  %72 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %73 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %14, i32 0, i32 0
  %78 = load i8*, i8** %8, align 8
  store i8* %78, i8** %77, align 8
  %79 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %14, i32 0, i32 1
  %80 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %81 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %80, i32 0, i32 0
  %82 = load %struct.mustache_s*, %struct.mustache_s** %81, align 8
  %83 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %82, i32 0, i32 0
  %84 = bitcast %union.anon* %83 to %struct.anon*
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %79, align 8
  %87 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %14, i32 0, i32 2
  %88 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %89 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* %11, align 8
  %93 = add i64 %91, %92
  %94 = load i64, i64* %9, align 8
  %95 = call i64 @mustache__data_segment_length(i64 %94)
  %96 = add i64 %93, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %87, align 4
  %98 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %14, i32 0, i32 3
  %99 = load i64, i64* %9, align 8
  %100 = trunc i64 %99 to i16
  store i16 %100, i16* %98, align 8
  %101 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %14, i32 0, i32 4
  %102 = load i64, i64* %13, align 8
  %103 = trunc i64 %102 to i16
  store i16 %103, i16* %101, align 2
  %104 = call i64 @mustache__data_segment_write(i8* %76, %struct.mustache__data_segment_s* byval(%struct.mustache__data_segment_s) align 8 %14)
  %105 = load i8*, i8** %10, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %71
  %108 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %109 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i64, i64* %9, align 8
  %114 = call i64 @mustache__data_segment_length(i64 %113)
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8*, i8** %10, align 8
  %117 = load i64, i64* %11, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %115, i8* align 1 %116, i64 %117, i1 false)
  br label %118

118:                                              ; preds = %107, %71
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i64 @mustache__data_segment_length(i64 %120)
  %122 = add i64 %119, %121
  %123 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %124 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  %127 = add i64 %126, %122
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 4
  %129 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %130 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %133 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %131, i64 %135
  store i8 0, i8* %136, align 1
  %137 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %138 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %141 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %140, i32 0, i32 0
  %142 = load %struct.mustache_s*, %struct.mustache_s** %141, align 8
  %143 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %142, i32 0, i32 0
  %144 = bitcast %union.anon* %143 to %struct.anon*
  %145 = getelementptr inbounds %struct.anon, %struct.anon* %144, i32 0, i32 1
  store i32 %139, i32* %145, align 4
  %146 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %147 = bitcast %struct.mustache__instruction_s* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %147, i8 0, i64 20, i1 false)
  %148 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %15, i32 0, i32 0
  store i32 3, i32* %148, align 4
  %149 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %146, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %15)
  %150 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %151 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %150, i32 0, i32 10
  %152 = load i16, i16* %151, align 8
  %153 = add i16 %152, 1
  store i16 %153, i16* %151, align 8
  %154 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %155 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %154, i32 0, i32 10
  %156 = load i16, i16* %155, align 8
  %157 = zext i16 %156 to i32
  %158 = icmp sge i32 %157, 82
  br i1 %158, label %159, label %160

159:                                              ; preds = %118
  br label %274

160:                                              ; preds = %118
  %161 = load i64, i64* %12, align 8
  %162 = load i64, i64* %9, align 8
  %163 = call i64 @mustache__data_segment_length(i64 %162)
  %164 = add i64 %161, %163
  %165 = trunc i64 %164 to i32
  %166 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %167 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %166, i32 0, i32 11
  %168 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %169 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %168, i32 0, i32 10
  %170 = load i16, i16* %169, align 8
  %171 = zext i16 %170 to i64
  %172 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %167, i64 0, i64 %171
  %173 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %172, i32 0, i32 1
  store i32 %165, i32* %173, align 4
  %174 = load i64, i64* %12, align 8
  %175 = trunc i64 %174 to i32
  %176 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %177 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %176, i32 0, i32 11
  %178 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %179 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %178, i32 0, i32 10
  %180 = load i16, i16* %179, align 8
  %181 = zext i16 %180 to i64
  %182 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %177, i64 0, i64 %181
  %183 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %182, i32 0, i32 0
  store i32 %175, i32* %183, align 4
  %184 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %185 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %188 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %187, i32 0, i32 11
  %189 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %190 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %189, i32 0, i32 10
  %191 = load i16, i16* %190, align 8
  %192 = zext i16 %191 to i64
  %193 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %188, i64 0, i64 %192
  %194 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %193, i32 0, i32 2
  store i32 %186, i32* %194, align 4
  %195 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %196 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %195, i32 0, i32 11
  %197 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %198 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %197, i32 0, i32 10
  %199 = load i16, i16* %198, align 8
  %200 = zext i16 %199 to i64
  %201 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %196, i64 0, i64 %200
  %202 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %201, i32 0, i32 6
  store i8 2, i8* %202, align 4
  %203 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %204 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %203, i32 0, i32 11
  %205 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %206 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %205, i32 0, i32 10
  %207 = load i16, i16* %206, align 8
  %208 = zext i16 %207 to i64
  %209 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %204, i64 0, i64 %208
  %210 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %209, i32 0, i32 7
  store i8 2, i8* %210, align 1
  %211 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %212 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %211, i32 0, i32 11
  %213 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %214 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %213, i32 0, i32 10
  %215 = load i16, i16* %214, align 8
  %216 = zext i16 %215 to i64
  %217 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %212, i64 0, i64 %216
  %218 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %217, i32 0, i32 4
  %219 = getelementptr inbounds [5 x i8], [5 x i8]* %218, i64 0, i64 1
  store i8 123, i8* %219, align 1
  %220 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %221 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %220, i32 0, i32 11
  %222 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %223 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %222, i32 0, i32 10
  %224 = load i16, i16* %223, align 8
  %225 = zext i16 %224 to i64
  %226 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %221, i64 0, i64 %225
  %227 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %226, i32 0, i32 4
  %228 = getelementptr inbounds [5 x i8], [5 x i8]* %227, i64 0, i64 0
  store i8 123, i8* %228, align 2
  %229 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %230 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %229, i32 0, i32 11
  %231 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %232 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %231, i32 0, i32 10
  %233 = load i16, i16* %232, align 8
  %234 = zext i16 %233 to i64
  %235 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %230, i64 0, i64 %234
  %236 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %235, i32 0, i32 4
  %237 = getelementptr inbounds [5 x i8], [5 x i8]* %236, i64 0, i64 2
  store i8 0, i8* %237, align 2
  %238 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %239 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %238, i32 0, i32 11
  %240 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %241 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %240, i32 0, i32 10
  %242 = load i16, i16* %241, align 8
  %243 = zext i16 %242 to i64
  %244 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %239, i64 0, i64 %243
  %245 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %244, i32 0, i32 5
  %246 = getelementptr inbounds [5 x i8], [5 x i8]* %245, i64 0, i64 1
  store i8 125, i8* %246, align 1
  %247 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %248 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %247, i32 0, i32 11
  %249 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %250 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %249, i32 0, i32 10
  %251 = load i16, i16* %250, align 8
  %252 = zext i16 %251 to i64
  %253 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %248, i64 0, i64 %252
  %254 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %253, i32 0, i32 5
  %255 = getelementptr inbounds [5 x i8], [5 x i8]* %254, i64 0, i64 0
  store i8 125, i8* %255, align 1
  %256 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %257 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %256, i32 0, i32 11
  %258 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %259 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %258, i32 0, i32 10
  %260 = load i16, i16* %259, align 8
  %261 = zext i16 %260 to i64
  %262 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %257, i64 0, i64 %261
  %263 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %262, i32 0, i32 5
  %264 = getelementptr inbounds [5 x i8], [5 x i8]* %263, i64 0, i64 2
  store i8 0, i8* %264, align 1
  %265 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %266 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %265, i32 0, i32 11
  %267 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %268 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %267, i32 0, i32 10
  %269 = load i16, i16* %268, align 8
  %270 = zext i16 %269 to i64
  %271 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %266, i64 0, i64 %270
  %272 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %271, i32 0, i32 3
  store i16 0, i16* %272, align 4
  %273 = load i64, i64* %11, align 8
  store i64 %273, i64* %6, align 8
  br label %278

274:                                              ; preds = %159, %24
  %275 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %7, align 8
  %276 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  store i32 1, i32* %277, align 4
  store i64 -1, i64* %6, align 8
  br label %278

278:                                              ; preds = %274, %160
  %279 = load i64, i64* %6, align 8
  ret i64 %279
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mustache__load_file(%struct.mustache__loader_stack_s*, i8*, i64) #0 {
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
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %20 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %19, i32 0, i32 10
  %21 = load i16, i16* %20, align 8
  store i16 %21, i16* %9, align 2
  store i32 0, i32* %10, align 4
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %350

25:                                               ; preds = %3
  %26 = load i64, i64* %7, align 8
  %27 = icmp uge i64 %26, 8192
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %354

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %211, %29
  %31 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %32 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %37 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %40 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %39, i32 0, i32 11
  %41 = load i16, i16* %9, align 2
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %40, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %38, i64 %46
  call void @mustache__data_segment_read(%struct.mustache__data_segment_s* sret %12, i8* %47)
  %48 = bitcast %struct.mustache__data_segment_s* %11 to i8*
  %49 = bitcast %struct.mustache__data_segment_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 24, i1 false)
  br label %55

50:                                               ; preds = %30
  %51 = bitcast %struct.mustache__data_segment_s* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %51, i8 0, i64 24, i1 false)
  %52 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %13, i32 0, i32 4
  store i16 0, i16* %52, align 2
  %53 = bitcast %struct.mustache__data_segment_s* %11 to i8*
  %54 = bitcast %struct.mustache__data_segment_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 24, i1 false)
  br label %55

55:                                               ; preds = %50, %35
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %66 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = call i32 @memcmp(i8* %67, i8* %69, i64 %71) #10
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  br label %211

75:                                               ; preds = %64, %58, %55
  %76 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  store i32 %78, i32* %10, align 4
  %79 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %80 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %79, i32 0, i32 9
  %81 = load i16, i16* %80, align 2
  %82 = zext i16 %81 to i64
  %83 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4
  %84 = load i16, i16* %83, align 2
  %85 = zext i16 %84 to i64
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %85, %86
  %88 = add i64 %87, 10
  %89 = icmp ult i64 %82, %88
  br i1 %89, label %90, label %120

90:                                               ; preds = %75
  %91 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %92 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %91, i32 0, i32 4
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4
  %95 = load i16, i16* %94, align 2
  %96 = zext i16 %95 to i64
  %97 = load i64, i64* %7, align 8
  %98 = add i64 %96, %97
  %99 = add i64 %98, 10
  %100 = call i8* @realloc(i8* %93, i64 %99) #1
  %101 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %102 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %104 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %90
  call void @perror(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %108 = call i32* @__errno_location() #8
  %109 = load i32, i32* %108, align 4
  call void @exit(i32 %109) #9
  unreachable

110:                                              ; preds = %90
  %111 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4
  %112 = load i16, i16* %111, align 2
  %113 = zext i16 %112 to i64
  %114 = load i64, i64* %7, align 8
  %115 = add i64 %113, %114
  %116 = add i64 %115, 10
  %117 = trunc i64 %116 to i16
  %118 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %119 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %118, i32 0, i32 9
  store i16 %117, i16* %119, align 2
  br label %120

120:                                              ; preds = %110, %75
  %121 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4
  %122 = load i16, i16* %121, align 2
  %123 = icmp ne i16 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  store i16 1, i16* %9, align 2
  br label %134

125:                                              ; preds = %120
  %126 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %127 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %126, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4
  %132 = load i16, i16* %131, align 2
  %133 = zext i16 %132 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %128, i8* align 1 %130, i64 %133, i1 false)
  br label %134

134:                                              ; preds = %125, %124
  %135 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %136 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %135, i32 0, i32 4
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4
  %139 = load i16, i16* %138, align 2
  %140 = zext i16 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %137, i64 %141
  %143 = load i8*, i8** %6, align 8
  %144 = load i64, i64* %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %142, i8* align 1 %143, i64 %144, i1 false)
  %145 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %146 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %145, i32 0, i32 4
  %147 = load i8*, i8** %146, align 8
  %148 = load i64, i64* %7, align 8
  %149 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4
  %150 = load i16, i16* %149, align 2
  %151 = zext i16 %150 to i64
  %152 = add i64 %148, %151
  %153 = getelementptr inbounds i8, i8* %147, i64 %152
  store i8 0, i8* %153, align 1
  %154 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %155 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %154, i32 0, i32 4
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @stat(i8* %156, %struct.stat* %8) #1
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %171, label %159

159:                                              ; preds = %134
  %160 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, 61440
  %163 = icmp eq i32 %162, 32768
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load i64, i64* %7, align 8
  %166 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4
  %167 = load i16, i16* %166, align 2
  %168 = zext i16 %167 to i64
  %169 = add i64 %165, %168
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %10, align 4
  br label %261

171:                                              ; preds = %159, %134
  %172 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %173 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %172, i32 0, i32 4
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4
  %176 = load i16, i16* %175, align 2
  %177 = zext i16 %176 to i32
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %174, i64 %178
  %180 = load i64, i64* %7, align 8
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %181, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 9, i1 false)
  %182 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %183 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %182, i32 0, i32 4
  %184 = load i8*, i8** %183, align 8
  %185 = load i64, i64* %7, align 8
  %186 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4
  %187 = load i16, i16* %186, align 2
  %188 = zext i16 %187 to i64
  %189 = add i64 %185, %188
  %190 = add i64 %189, 9
  %191 = getelementptr inbounds i8, i8* %184, i64 %190
  store i8 0, i8* %191, align 1
  %192 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %193 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %192, i32 0, i32 4
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @stat(i8* %194, %struct.stat* %8) #1
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %210, label %197

197:                                              ; preds = %171
  %198 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = and i32 %199, 61440
  %201 = icmp eq i32 %200, 32768
  br i1 %201, label %202, label %210

202:                                              ; preds = %197
  %203 = load i64, i64* %7, align 8
  %204 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %11, i32 0, i32 4
  %205 = load i16, i16* %204, align 2
  %206 = zext i16 %205 to i64
  %207 = add i64 %203, %206
  %208 = add i64 %207, 9
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %10, align 4
  br label %261

210:                                              ; preds = %197, %171
  br label %211

211:                                              ; preds = %210, %74
  %212 = load i16, i16* %9, align 2
  %213 = add i16 %212, -1
  store i16 %213, i16* %9, align 2
  %214 = icmp ne i16 %213, 0
  br i1 %214, label %30, label %215

215:                                              ; preds = %211
  %216 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %217 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %216, i32 0, i32 3
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %257

220:                                              ; preds = %215
  %221 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %222 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %221, i32 0, i32 3
  %223 = load i8*, i8** %222, align 8
  call void @mustache__data_segment_read(%struct.mustache__data_segment_s* sret %14, i8* %223)
  %224 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %14, i32 0, i32 3
  %225 = load i16, i16* %224, align 8
  %226 = zext i16 %225 to i64
  %227 = load i64, i64* %7, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %256

229:                                              ; preds = %220
  %230 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %14, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = load i8*, i8** %6, align 8
  %233 = load i64, i64* %7, align 8
  %234 = call i32 @memcmp(i8* %231, i8* %232, i64 %233) #10
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %256, label %236

236:                                              ; preds = %229
  %237 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %238 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %15, i32 0, i32 0
  store i32 6, i32* %238, align 4
  %239 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %15, i32 0, i32 1
  %240 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %239, i32 0, i32 0
  %241 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %242 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %241, i32 0, i32 0
  %243 = load %struct.mustache_s*, %struct.mustache_s** %242, align 8
  %244 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %243, i32 0, i32 0
  %245 = bitcast %union.anon* %244 to %struct.anon*
  %246 = getelementptr inbounds %struct.anon, %struct.anon* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  store i32 %247, i32* %240, align 4
  %248 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %239, i32 0, i32 1
  store i32 0, i32* %248, align 4
  %249 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %239, i32 0, i32 2
  store i32 0, i32* %249, align 4
  %250 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %239, i32 0, i32 3
  store i16 0, i16* %250, align 4
  %251 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %239, i32 0, i32 4
  store i16 0, i16* %251, align 2
  %252 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %237, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %15)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %236
  br label %366

255:                                              ; preds = %236
  store i64 0, i64* %4, align 8
  br label %367

256:                                              ; preds = %229, %220
  br label %257

257:                                              ; preds = %256, %215
  %258 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %259 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %258, i32 0, i32 2
  %260 = load i32*, i32** %259, align 8
  store i32 3, i32* %260, align 4
  store i64 -1, i64* %4, align 8
  br label %367

261:                                              ; preds = %202, %164
  %262 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %263 = load i64, i64* %262, align 8
  %264 = icmp sge i64 %263, 2147483647
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  br label %358

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %268 = load i64, i64* %267, align 8
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  store i64 0, i64* %4, align 8
  br label %367

271:                                              ; preds = %266
  %272 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %273 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %274 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %273, i32 0, i32 4
  %275 = load i8*, i8** %274, align 8
  %276 = load i32, i32* %10, align 4
  %277 = zext i32 %276 to i64
  %278 = call i32 @mustache__file_is_loaded(%struct.mustache__loader_stack_s* %272, i8* %275, i64 %277)
  store i32 %278, i32* %16, align 4
  %279 = load i32, i32* %16, align 4
  %280 = icmp ne i32 %279, -1
  br i1 %280, label %281, label %302

281:                                              ; preds = %271
  %282 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %283 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %17, i32 0, i32 0
  store i32 6, i32* %283, align 4
  %284 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %17, i32 0, i32 1
  %285 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %284, i32 0, i32 0
  %286 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %287 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %286, i32 0, i32 0
  %288 = load %struct.mustache_s*, %struct.mustache_s** %287, align 8
  %289 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %288, i32 0, i32 0
  %290 = bitcast %union.anon* %289 to %struct.anon*
  %291 = getelementptr inbounds %struct.anon, %struct.anon* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  store i32 %292, i32* %285, align 4
  %293 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %284, i32 0, i32 1
  %294 = load i32, i32* %16, align 4
  store i32 %294, i32* %293, align 4
  %295 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %284, i32 0, i32 2
  store i32 0, i32* %295, align 4
  %296 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %284, i32 0, i32 3
  store i16 0, i16* %296, align 4
  %297 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %284, i32 0, i32 4
  store i16 0, i16* %297, align 2
  %298 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %282, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %17)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %281
  br label %366

301:                                              ; preds = %281
  store i64 0, i64* %4, align 8
  br label %367

302:                                              ; preds = %271
  br label %303

303:                                              ; preds = %302
  br label %304

304:                                              ; preds = %303
  %305 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %306 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %307 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %306, i32 0, i32 4
  %308 = load i8*, i8** %307, align 8
  %309 = load i32, i32* %10, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %312 = load i64, i64* %311, align 8
  %313 = call i64 @mustache__load_data(%struct.mustache__loader_stack_s* %305, i8* %308, i64 %310, i8* null, i64 %312)
  %314 = icmp eq i64 %313, -1
  br i1 %314, label %315, label %316

315:                                              ; preds = %304
  br label %366

316:                                              ; preds = %304
  %317 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %318 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %317, i32 0, i32 4
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 (i8*, i32, ...) @open(i8* %319, i32 0)
  store i32 %320, i32* %18, align 4
  %321 = load i32, i32* %18, align 4
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %323, label %324

323:                                              ; preds = %316
  br label %362

324:                                              ; preds = %316
  %325 = load i32, i32* %18, align 4
  %326 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %327 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %326, i32 0, i32 3
  %328 = load i8*, i8** %327, align 8
  %329 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %330 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %329, i32 0, i32 6
  %331 = load i32, i32* %330, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %328, i64 %332
  %334 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %335 = load i64, i64* %334, align 8
  %336 = sub i64 0, %335
  %337 = getelementptr inbounds i8, i8* %333, i64 %336
  %338 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %339 = load i64, i64* %338, align 8
  %340 = call i64 @pread(i32 %325, i8* %337, i64 %339, i64 0)
  %341 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %340, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %324
  br label %362

345:                                              ; preds = %324
  %346 = load i32, i32* %18, align 4
  %347 = call i32 @close(i32 %346)
  %348 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %4, align 8
  br label %367

350:                                              ; preds = %24
  %351 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %352 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %351, i32 0, i32 2
  %353 = load i32*, i32** %352, align 8
  store i32 6, i32* %353, align 4
  store i64 -1, i64* %4, align 8
  br label %367

354:                                              ; preds = %28
  %355 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %356 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %355, i32 0, i32 2
  %357 = load i32*, i32** %356, align 8
  store i32 5, i32* %357, align 4
  store i64 -1, i64* %4, align 8
  br label %367

358:                                              ; preds = %265
  %359 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %360 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %359, i32 0, i32 2
  %361 = load i32*, i32** %360, align 8
  store i32 4, i32* %361, align 4
  store i64 -1, i64* %4, align 8
  br label %367

362:                                              ; preds = %344, %323
  %363 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %364 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %363, i32 0, i32 2
  %365 = load i32*, i32** %364, align 8
  store i32 10, i32* %365, align 4
  store i64 -1, i64* %4, align 8
  br label %367

366:                                              ; preds = %315, %300, %254
  store i64 -1, i64* %4, align 8
  br label %367

367:                                              ; preds = %366, %362, %358, %354, %350, %345, %301, %270, %257, %255
  %368 = load i64, i64* %4, align 8
  ret i64 %368
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache__push_text_instruction(%struct.mustache__loader_stack_s*, i32, i32) #0 {
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
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %14

14:                                               ; preds = %60, %3
  %15 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %16 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %15, i32 0, i32 3
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %8, align 8
  %21 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %22 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @memchr(i8* %26, i32 10, i64 %28) #10
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %14
  br label %71

33:                                               ; preds = %14
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %10, align 8
  %40 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %41 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %11, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %11, i32 0, i32 1
  %43 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %42, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %42, i32 0, i32 2
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %42, i32 0, i32 3
  %48 = load i64, i64* %10, align 8
  %49 = trunc i64 %48 to i16
  store i16 %49, i16* %47, align 4
  %50 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %42, i32 0, i32 4
  store i16 0, i16* %50, align 2
  %51 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %40, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %11)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %59, label %53

53:                                               ; preds = %33
  %54 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %55 = bitcast %struct.mustache__instruction_s* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %55, i8 0, i64 20, i1 false)
  %56 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %12, i32 0, i32 0
  store i32 9, i32* %56, align 4
  %57 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %54, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %12)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %33
  store i32 -1, i32* %4, align 4
  br label %88

60:                                               ; preds = %53
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = add i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = sub i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %7, align 4
  br label %14

71:                                               ; preds = %32
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %88

75:                                               ; preds = %71
  %76 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %77 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %13, i32 0, i32 0
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %13, i32 0, i32 1
  %79 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  %80 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %78, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %78, i32 0, i32 2
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %81, align 4
  %83 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %78, i32 0, i32 3
  %84 = load i32, i32* %7, align 4
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %83, align 4
  %86 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %78, i32 0, i32 4
  store i16 0, i16* %86, align 2
  %87 = call i32 @mustache__instruction_push(%struct.mustache__loader_stack_s* %76, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8 %13)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %75, %74, %59
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mustache__stand_alone_adjust(%struct.mustache__loader_stack_s*, i32) #0 {
  %3 = alloca %struct.mustache__loader_stack_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mustache__instruction_s*, align 8
  store %struct.mustache__loader_stack_s* %0, %struct.mustache__loader_stack_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %106

9:                                                ; preds = %2
  %10 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8
  %11 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %10, i32 0, i32 3
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8
  %14 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %13, i32 0, i32 11
  %15 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8
  %16 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %15, i32 0, i32 10
  %17 = load i16, i16* %16, align 8
  %18 = zext i16 %17 to i64
  %19 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %14, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %12, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 13
  %27 = zext i1 %26 to i32
  %28 = add nsw i32 1, %27
  %29 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8
  %30 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %29, i32 0, i32 11
  %31 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8
  %32 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %31, i32 0, i32 10
  %33 = load i16, i16* %32, align 8
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds [82 x %struct.anon.1], [82 x %struct.anon.1]* %30, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %37, %28
  store i32 %38, i32* %36, align 4
  %39 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8
  %40 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %39, i32 0, i32 0
  %41 = load %struct.mustache_s*, %struct.mustache_s** %40, align 8
  %42 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %41, i32 0, i32 0
  %43 = bitcast %union.anon* %42 to %struct.anon*
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %106

47:                                               ; preds = %9
  %48 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8
  %49 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %48, i32 0, i32 1
  %50 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %49, align 8
  %51 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8
  %52 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %51, i32 0, i32 0
  %53 = load %struct.mustache_s*, %struct.mustache_s** %52, align 8
  %54 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %53, i32 0, i32 0
  %55 = bitcast %union.anon* %54 to %struct.anon*
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub i32 %57, 1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %50, i64 %59
  %61 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %106

64:                                               ; preds = %47
  %65 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8
  %66 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %65, i32 0, i32 1
  %67 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %66, align 8
  %68 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8
  %69 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %68, i32 0, i32 0
  %70 = load %struct.mustache_s*, %struct.mustache_s** %69, align 8
  %71 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %70, i32 0, i32 0
  %72 = bitcast %union.anon* %71 to %struct.anon*
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %67, i64 %75
  %77 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %76, i64 -1
  store %struct.mustache__instruction_s* %77, %struct.mustache__instruction_s** %5, align 8
  %78 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %5, align 8
  %79 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %79, i32 0, i32 3
  %81 = load i16, i16* %80, align 4
  %82 = zext i16 %81 to i32
  %83 = load i32, i32* %4, align 4
  %84 = lshr i32 %83, 1
  %85 = icmp ule i32 %82, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %64
  %87 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %3, align 8
  %88 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %87, i32 0, i32 0
  %89 = load %struct.mustache_s*, %struct.mustache_s** %88, align 8
  %90 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %89, i32 0, i32 0
  %91 = bitcast %union.anon* %90 to %struct.anon*
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add i32 %93, -1
  store i32 %94, i32* %92, align 8
  br label %105

95:                                               ; preds = %64
  %96 = load i32, i32* %4, align 4
  %97 = lshr i32 %96, 1
  %98 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %5, align 8
  %99 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %99, i32 0, i32 3
  %101 = load i16, i16* %100, align 4
  %102 = zext i16 %101 to i32
  %103 = sub i32 %102, %97
  %104 = trunc i32 %103 to i16
  store i16 %104, i16* %100, align 4
  br label %105

105:                                              ; preds = %95, %86
  br label %106

106:                                              ; preds = %8, %105, %47, %9
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache__instruction_push(%struct.mustache__loader_stack_s*, %struct.mustache__instruction_s* byval(%struct.mustache__instruction_s) align 8) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mustache__loader_stack_s*, align 8
  store %struct.mustache__loader_stack_s* %0, %struct.mustache__loader_stack_s** %4, align 8
  %5 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8
  %6 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %5, i32 0, i32 0
  %7 = load %struct.mustache_s*, %struct.mustache_s** %6, align 8
  %8 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon*
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp uge i32 %11, 2147483647
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %84

14:                                               ; preds = %2
  %15 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8
  %16 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8
  %19 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %18, i32 0, i32 0
  %20 = load %struct.mustache_s*, %struct.mustache_s** %19, align 8
  %21 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %20, i32 0, i32 0
  %22 = bitcast %union.anon* %21 to %struct.anon*
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ule i32 %17, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %14
  %27 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8
  %28 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %27, i32 0, i32 0
  %29 = load %struct.mustache_s*, %struct.mustache_s** %28, align 8
  %30 = bitcast %struct.mustache_s* %29 to i8*
  %31 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8
  %32 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = add i32 %33, 32
  %35 = zext i32 %34 to i64
  %36 = mul i64 20, %35
  %37 = add i64 8, %36
  %38 = call i8* @realloc(i8* %30, i64 %37) #1
  %39 = bitcast i8* %38 to %struct.mustache_s*
  %40 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8
  %41 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %40, i32 0, i32 0
  store %struct.mustache_s* %39, %struct.mustache_s** %41, align 8
  %42 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8
  %43 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %42, i32 0, i32 0
  %44 = load %struct.mustache_s*, %struct.mustache_s** %43, align 8
  %45 = icmp ne %struct.mustache_s* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %26
  call void @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %47 = call i32* @__errno_location() #8
  %48 = load i32, i32* %47, align 4
  call void @exit(i32 %48) #9
  unreachable

49:                                               ; preds = %26
  %50 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8
  %51 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = add i32 %52, 32
  store i32 %53, i32* %51, align 8
  %54 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8
  %55 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %54, i32 0, i32 0
  %56 = load %struct.mustache_s*, %struct.mustache_s** %55, align 8
  %57 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %56, i64 1
  %58 = bitcast %struct.mustache_s* %57 to %struct.mustache__instruction_s*
  %59 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8
  %60 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %59, i32 0, i32 1
  store %struct.mustache__instruction_s* %58, %struct.mustache__instruction_s** %60, align 8
  br label %61

61:                                               ; preds = %49, %14
  %62 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8
  %63 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %62, i32 0, i32 1
  %64 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %63, align 8
  %65 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8
  %66 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %65, i32 0, i32 0
  %67 = load %struct.mustache_s*, %struct.mustache_s** %66, align 8
  %68 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %67, i32 0, i32 0
  %69 = bitcast %union.anon* %68 to %struct.anon*
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %64, i64 %72
  %74 = bitcast %struct.mustache__instruction_s* %73 to i8*
  %75 = bitcast %struct.mustache__instruction_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 8 %75, i64 20, i1 false)
  %76 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8
  %77 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %76, i32 0, i32 0
  %78 = load %struct.mustache_s*, %struct.mustache_s** %77, align 8
  %79 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %78, i32 0, i32 0
  %80 = bitcast %union.anon* %79 to %struct.anon*
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add i32 %82, 1
  store i32 %83, i32* %81, align 8
  store i32 0, i32* %3, align 4
  br label %88

84:                                               ; preds = %13
  %85 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %4, align 8
  %86 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  store i32 1, i32* %87, align 4
  store i32 -1, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %61
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mustache__data_segment_read(%struct.mustache__data_segment_s* noalias sret, i8*) #0 {
  %3 = alloca i8*, align 8
  store i8* %1, i8** %3, align 8
  %4 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %0, i32 0, i32 0
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 12
  store i8* %6, i8** %4, align 8
  %7 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %0, i32 0, i32 1
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl i32 %15, 1
  %17 = or i32 %11, %16
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 2
  %23 = or i32 %17, %22
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 3
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 3
  %29 = or i32 %23, %28
  store i32 %29, i32* %7, align 8
  %30 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %0, i32 0, i32 2
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 5
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 1
  %40 = or i32 %34, %39
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 6
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 2
  %46 = or i32 %40, %45
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 7
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 3
  %52 = or i32 %46, %51
  store i32 %52, i32* %30, align 4
  %53 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %0, i32 0, i32 3
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i16
  %58 = zext i16 %57 to i32
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 9
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i16
  %63 = zext i16 %62 to i32
  %64 = shl i32 %63, 1
  %65 = or i32 %58, %64
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %53, align 8
  %67 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %0, i32 0, i32 4
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 10
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i16
  %72 = zext i16 %71 to i32
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 11
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i16
  %77 = zext i16 %76 to i32
  %78 = shl i32 %77, 1
  %79 = or i32 %72, %78
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %67, align 2
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mustache__data_segment_length(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = add i64 13, %3
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mustache__data_segment_write(i8*, %struct.mustache__data_segment_s* byval(%struct.mustache__data_segment_s) align 8) #0 {
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = and i32 255, %5
  %7 = trunc i32 %6 to i8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 %7, i8* %9, align 1
  %10 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = lshr i32 %11, 1
  %13 = and i32 255, %12
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %14, i8* %16, align 1
  %17 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = lshr i32 %18, 2
  %20 = and i32 255, %19
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8 %21, i8* %23, align 1
  %24 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = lshr i32 %25, 3
  %27 = and i32 255, %26
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  store i8 %28, i8* %30, align 1
  %31 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = and i32 255, %32
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  store i8 %34, i8* %36, align 1
  %37 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = lshr i32 %38, 1
  %40 = and i32 255, %39
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 5
  store i8 %41, i8* %43, align 1
  %44 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = lshr i32 %45, 2
  %47 = and i32 255, %46
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 6
  store i8 %48, i8* %50, align 1
  %51 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = lshr i32 %52, 3
  %54 = and i32 255, %53
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 7
  store i8 %55, i8* %57, align 1
  %58 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 3
  %59 = load i16, i16* %58, align 8
  %60 = zext i16 %59 to i32
  %61 = and i32 255, %60
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 8
  store i8 %62, i8* %64, align 1
  %65 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 3
  %66 = load i16, i16* %65, align 8
  %67 = zext i16 %66 to i32
  %68 = ashr i32 %67, 1
  %69 = and i32 255, %68
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 9
  store i8 %70, i8* %72, align 1
  %73 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 4
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = and i32 255, %75
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 10
  store i8 %77, i8* %79, align 1
  %80 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 4
  %81 = load i16, i16* %80, align 2
  %82 = zext i16 %81 to i32
  %83 = ashr i32 %82, 1
  %84 = and i32 255, %83
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 11
  store i8 %85, i8* %87, align 1
  %88 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 3
  %89 = load i16, i16* %88, align 8
  %90 = icmp ne i16 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %2
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 12
  %94 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 3
  %97 = load i16, i16* %96, align 8
  %98 = zext i16 %97 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %93, i8* align 1 %95, i64 %98, i1 false)
  br label %99

99:                                               ; preds = %91, %2
  %100 = load i8*, i8** %3, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 12
  %102 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 3
  %103 = load i16, i16* %102, align 8
  %104 = zext i16 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  store i8 0, i8* %105, align 1
  %106 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %1, i32 0, i32 3
  %107 = load i16, i16* %106, align 8
  %108 = zext i16 %107 to i32
  %109 = add nsw i32 13, %108
  %110 = sext i32 %109 to i64
  ret i64 %110
}

; Function Attrs: nounwind
declare dso_local i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache__file_is_loaded(%struct.mustache__loader_stack_s*, i8*, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mustache__loader_stack_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mustache__data_segment_s, align 8
  store %struct.mustache__loader_stack_s* %0, %struct.mustache__loader_stack_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %12 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %11, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.mustache__loader_stack_s*, %struct.mustache__loader_stack_s** %5, align 8
  %16 = getelementptr inbounds %struct.mustache__loader_stack_s, %struct.mustache__loader_stack_s* %15, i32 0, i32 0
  %17 = load %struct.mustache_s*, %struct.mustache_s** %16, align 8
  %18 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %17, i32 0, i32 0
  %19 = bitcast %union.anon* %18 to %struct.anon*
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %14, i64 %22
  store i8* %23, i8** %9, align 8
  br label %24

24:                                               ; preds = %45, %3
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  call void @mustache__data_segment_read(%struct.mustache__data_segment_s* sret %10, i8* %29)
  %30 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %10, i32 0, i32 3
  %31 = load i16, i16* %30, align 8
  %32 = zext i16 %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %10, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @memcmp(i8* %37, i8* %38, i64 %39) #10
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %10, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %4, align 4
  br label %52

45:                                               ; preds = %35, %28
  %46 = getelementptr inbounds %struct.mustache__data_segment_s, %struct.mustache__data_segment_s* %10, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %8, align 8
  br label %24

51:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %42
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @open(i8*, i32, ...) #4

declare dso_local i64 @pread(i32, i8*, i64, i64) #4

declare dso_local i32 @close(i32) #4

; Function Attrs: nounwind readonly
declare dso_local i8* @memchr(i8*, i32, i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache_on_text(%struct.mustache_section_s*, i8*, i32) #0 {
  %4 = alloca %struct.mustache_section_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mustache_section_s*, %struct.mustache_section_s** %4, align 8
  %9 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = call i64 @fiobj_str_write(i64 %12, i8* %13, i64 %15)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache_on_arg(%struct.mustache_section_s*, i8*, i32, i8 zeroext) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mustache_section_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca %struct.fio_str_info_s, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  %12 = load %struct.mustache_section_s*, %struct.mustache_section_s** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @fiobj_mustache_find_obj(%struct.mustache_section_s* %12, i8* %13, i32 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %34

19:                                               ; preds = %4
  %20 = load i64, i64* %10, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %11, i64 %20)
  %21 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %34

25:                                               ; preds = %19
  %26 = load %struct.mustache_section_s*, %struct.mustache_section_s** %6, align 8
  %27 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i8, i8* %9, align 1
  %33 = call i32 @mustache_write_text(%struct.mustache_section_s* %26, i8* %28, i32 %31, i8 zeroext %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %25, %24, %18
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache_on_section_test(%struct.mustache_section_s*, i8*, i32, i8 zeroext) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mustache_section_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  %11 = load %struct.mustache_section_s*, %struct.mustache_section_s** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @fiobj_mustache_find_obj(%struct.mustache_section_s* %11, i8* %12, i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i64, i64* %10, align 8
  %19 = call i64 @fiobj_type_is(i64 %18, i8 zeroext 38)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %31

22:                                               ; preds = %17
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @fiobj_type_is(i64 %23, i8 zeroext 41)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @fiobj_ary_count(i64 %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %31

30:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %26, %21
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache_on_section_start(%struct.mustache_section_s*, i8*, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mustache_section_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.mustache_section_s*, %struct.mustache_section_s** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @fiobj_mustache_find_obj(%struct.mustache_section_s* %11, i8* %12, i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %36

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = call i64 @fiobj_type_is(i64 %19, i8 zeroext 41)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i64, i64* %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = call i64 @fiobj_ary_index(i64 %23, i64 %25)
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.mustache_section_s*, %struct.mustache_section_s** %6, align 8
  %29 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %35

30:                                               ; preds = %18
  %31 = load i64, i64* %10, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.mustache_section_s*, %struct.mustache_section_s** %6, align 8
  %34 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %30, %22
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %17
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mustache_on_formatting_error(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  ret void
}

declare dso_local i64 @fiobj_str_write(i64, i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_mustache_find_obj(%struct.mustache_section_s*, i8*, i32) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mustache_section_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mustache_section_s*, %struct.mustache_section_s** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @fiobj_mustache_find_obj_tree(%struct.mustache_section_s* %12, i8* %13, i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %4, align 8
  br label %119

20:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %35, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 46
  br label %33

33:                                               ; preds = %25, %21
  %34 = phi i1 [ false, %21 ], [ %32, %25 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, i32* %9, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %21

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 0, i64* %4, align 8
  br label %119

43:                                               ; preds = %38
  %44 = load %struct.mustache_section_s*, %struct.mustache_section_s** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @fiobj_mustache_find_obj_tree(%struct.mustache_section_s* %44, i8* %45, i32 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store i64 0, i64* %4, align 8
  br label %119

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %116, %51
  %55 = call i64 @fiobj_str_tmp()
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sub i32 %61, %62
  %64 = zext i32 %63 to i64
  %65 = call i64 @fiobj_str_write(i64 %56, i8* %60, i64 %64)
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i64 @fiobj_mustache_find_obj_absolute(i64 %66, i64 %67)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %54
  %72 = load i64, i64* %11, align 8
  store i64 %72, i64* %4, align 8
  br label %119

73:                                               ; preds = %54
  %74 = load i32, i32* %9, align 4
  %75 = load i8*, i8** %6, align 8
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sub i32 %79, %78
  store i32 %80, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %95, %73
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 46
  br label %93

93:                                               ; preds = %85, %81
  %94 = phi i1 [ false, %81 ], [ %92, %85 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %81

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i64 0, i64* %4, align 8
  br label %119

103:                                              ; preds = %98
  %104 = call i64 @fiobj_str_tmp()
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = call i64 @fiobj_str_write(i64 %105, i8* %106, i64 %108)
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i64 @fiobj_mustache_find_obj_absolute(i64 %110, i64 %111)
  store i64 %112, i64* %8, align 8
  %113 = load i64, i64* %8, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  store i64 0, i64* %4, align 8
  br label %119

116:                                              ; preds = %103
  %117 = load i32, i32* %9, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %54

119:                                              ; preds = %115, %102, %71, %50, %42, %18
  %120 = load i64, i64* %4, align 8
  ret i64 %120
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_obj2cstr(%struct.fio_str_info_s* noalias sret, i64) #0 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret to i8*), i64 24, i1 false)
  br label %37

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 1
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8
  %14 = ashr i64 %13, 1
  call void @fio_ltocstr(%struct.fio_str_info_s* sret %0, i64 %14)
  br label %37

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8
  %17 = and i64 %16, 6
  %18 = icmp eq i64 %17, 6
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = trunc i64 %20 to i8
  %22 = zext i8 %21 to i32
  switch i32 %22, label %29 [
    i32 6, label %23
    i32 38, label %25
    i32 22, label %27
  ]

23:                                               ; preds = %19
  %24 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.9 to i8*), i64 24, i1 false)
  br label %37

25:                                               ; preds = %19
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.11 to i8*), i64 24, i1 false)
  br label %37

27:                                               ; preds = %19
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.13 to i8*), i64 24, i1 false)
  br label %37

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i64, i64* %3, align 8
  %33 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %32)
  %34 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %33, i32 0, i32 6
  %35 = load void (%struct.fio_str_info_s*, i64)*, void (%struct.fio_str_info_s*, i64)** %34, align 8
  %36 = load i64, i64* %3, align 8
  call void %35(%struct.fio_str_info_s* sret %0, i64 %36)
  br label %37

37:                                               ; preds = %31, %27, %25, %23, %12, %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache_write_text(%struct.mustache_section_s*, i8*, i32, i8 zeroext) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mustache_section_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca %struct.mustache__builder_stack_s*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  %13 = load %struct.mustache_section_s*, %struct.mustache_section_s** %6, align 8
  %14 = call %struct.mustache__builder_stack_s* @mustache___section2stack(%struct.mustache_section_s* %13)
  store %struct.mustache__builder_stack_s* %14, %struct.mustache__builder_stack_s** %10, align 8
  %15 = load i8, i8* %9, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @mustache__write_escaped(%struct.mustache__builder_stack_s* %18, i8* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %89

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @memchr(i8* %23, i32 10, i64 %25) #10
  store i8* %26, i8** %11, align 8
  br label %27

27:                                               ; preds = %70, %22
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ false, %27 ], [ %32, %30 ]
  br i1 %34, label %35, label %71

35:                                               ; preds = %33
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %10, align 8
  %45 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %44, i32 0, i32 4
  %46 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %10, align 8
  %47 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %46, i32 0, i32 3
  %48 = load i16, i16* %47, align 8
  %49 = zext i16 %48 to i64
  %50 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %45, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %50, i32 0, i32 0
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @mustache_on_text(%struct.mustache_section_s* %51, i8* %52, i32 %53)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  br label %89

57:                                               ; preds = %35
  %58 = load i8*, i8** %11, align 8
  store i8* %58, i8** %7, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = call i8* @memchr(i8* %62, i32 10, i64 %64) #10
  store i8* %65, i8** %11, align 8
  %66 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %10, align 8
  %67 = call i32 @mustache__write_padding(%struct.mustache__builder_stack_s* %66)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %89

70:                                               ; preds = %57
  br label %27

71:                                               ; preds = %33
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %10, align 8
  %76 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %75, i32 0, i32 4
  %77 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %10, align 8
  %78 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %77, i32 0, i32 3
  %79 = load i16, i16* %78, align 8
  %80 = zext i16 %79 to i64
  %81 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %76, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %81, i32 0, i32 0
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @mustache_on_text(%struct.mustache_section_s* %82, i8* %83, i32 %84)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  store i32 -1, i32* %5, align 4
  br label %89

88:                                               ; preds = %74, %71
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %87, %69, %56, %17
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_mustache_find_obj_tree(%struct.mustache_section_s*, i8*, i32) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mustache_section_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i64 @fiobj_str_tmp()
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = call i64 @fiobj_str_write(i64 %11, i8* %12, i64 %14)
  br label %16

16:                                               ; preds = %28, %3
  %17 = load %struct.mustache_section_s*, %struct.mustache_section_s** %5, align 8
  %18 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @fiobj_mustache_find_obj_absolute(i64 %20, i64 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %4, align 8
  br label %33

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.mustache_section_s*, %struct.mustache_section_s** %5, align 8
  %30 = call %struct.mustache_section_s* @mustache_section_parent(%struct.mustache_section_s* %29)
  store %struct.mustache_section_s* %30, %struct.mustache_section_s** %5, align 8
  %31 = icmp ne %struct.mustache_section_s* %30, null
  br i1 %31, label %16, label %32

32:                                               ; preds = %28
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i64, i64* %4, align 8
  ret i64 %34
}

declare dso_local i64 @fiobj_str_tmp() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_mustache_find_obj_absolute(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @fiobj_type_is(i64 %7, i8 zeroext 42)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %16

11:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @fiobj_hash_get(i64 %12, i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %11, %10
  %17 = load i64, i64* %3, align 8
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mustache_section_s* @mustache_section_parent(%struct.mustache_section_s*) #0 {
  %2 = alloca %struct.mustache_section_s*, align 8
  %3 = alloca %struct.mustache_section_s*, align 8
  %4 = alloca %struct.mustache_section_s, align 8
  %5 = alloca %struct.mustache__section_stack_frame_s*, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %3, align 8
  %6 = load %struct.mustache_section_s*, %struct.mustache_section_s** %3, align 8
  %7 = bitcast %struct.mustache_section_s* %4 to i8*
  %8 = bitcast %struct.mustache_section_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = load %struct.mustache_section_s*, %struct.mustache_section_s** %3, align 8
  %10 = bitcast %struct.mustache_section_s* %9 to %struct.mustache__section_stack_frame_s*
  store %struct.mustache__section_stack_frame_s* %10, %struct.mustache__section_stack_frame_s** %5, align 8
  br label %11

11:                                               ; preds = %37, %1
  %12 = load %struct.mustache__section_stack_frame_s*, %struct.mustache__section_stack_frame_s** %5, align 8
  %13 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %12, i32 0, i32 5
  %14 = load i16, i16* %13, align 8
  %15 = icmp ne i16 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = load %struct.mustache__section_stack_frame_s*, %struct.mustache__section_stack_frame_s** %5, align 8
  %18 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %17, i32 -1
  store %struct.mustache__section_stack_frame_s* %18, %struct.mustache__section_stack_frame_s** %5, align 8
  %19 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %4, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.mustache__section_stack_frame_s*, %struct.mustache__section_stack_frame_s** %5, align 8
  %22 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %20, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %4, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.mustache__section_stack_frame_s*, %struct.mustache__section_stack_frame_s** %5, align 8
  %30 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.mustache_section_s, %struct.mustache_section_s* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26, %16
  %35 = load %struct.mustache__section_stack_frame_s*, %struct.mustache__section_stack_frame_s** %5, align 8
  %36 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %35, i32 0, i32 0
  store %struct.mustache_section_s* %36, %struct.mustache_section_s** %2, align 8
  br label %39

37:                                               ; preds = %26
  br label %11

38:                                               ; preds = %11
  store %struct.mustache_section_s* null, %struct.mustache_section_s** %2, align 8
  br label %39

39:                                               ; preds = %38, %34
  %40 = load %struct.mustache_section_s*, %struct.mustache_section_s** %2, align 8
  ret %struct.mustache_section_s* %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_type_is(i64, i8 zeroext) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
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
  ]

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = and i64 %9, 1
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 1
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi i1 [ true, %8 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %3, align 8
  br label %121

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @fiobj_null()
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ true, %23 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %3, align 8
  br label %121

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @fiobj_true()
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %3, align 8
  br label %121

40:                                               ; preds = %2
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @fiobj_false()
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %3, align 8
  br label %121

46:                                               ; preds = %2
  %47 = load i64, i64* %4, align 8
  %48 = and i64 %47, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = and i64 %51, 6
  %53 = icmp eq i64 %52, 2
  br i1 %53, label %55, label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i1 [ true, %50 ], [ false, %54 ]
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %3, align 8
  br label %121

59:                                               ; preds = %2
  %60 = load i64, i64* %4, align 8
  %61 = and i64 %60, 1
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8
  %65 = and i64 %64, 6
  %66 = icmp eq i64 %65, 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %3, align 8
  br label %121

71:                                               ; preds = %2, %2, %2, %2
  %72 = load i64, i64* %4, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load i64, i64* %4, align 8
  %76 = and i64 %75, 1
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load i64, i64* %4, align 8
  %80 = and i64 %79, 6
  %81 = icmp ne i64 %80, 6
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i64, i64* %4, align 8
  %84 = and i64 %83, -8
  %85 = inttoptr i64 %84 to i8*
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* %5, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %88, %90
  br label %92

92:                                               ; preds = %82, %78, %74, %71
  %93 = phi i1 [ false, %78 ], [ false, %74 ], [ false, %71 ], [ %91, %82 ]
  %94 = zext i1 %93 to i32
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %3, align 8
  br label %121

96:                                               ; preds = %2
  %97 = load i64, i64* %4, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = load i64, i64* %4, align 8
  %101 = and i64 %100, 1
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load i64, i64* %4, align 8
  %105 = and i64 %104, 6
  %106 = icmp ne i64 %105, 6
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load i64, i64* %4, align 8
  %109 = and i64 %108, -8
  %110 = inttoptr i64 %109 to i8*
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* %5, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %113, %115
  br label %117

117:                                              ; preds = %107, %103, %99, %96
  %118 = phi i1 [ false, %103 ], [ false, %99 ], [ false, %96 ], [ %116, %107 ]
  %119 = zext i1 %118 to i32
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %3, align 8
  br label %121

121:                                              ; preds = %117, %92, %67, %55, %40, %34, %30, %19
  %122 = load i64, i64* %3, align 8
  ret i64 %122
}

declare dso_local i64 @fiobj_hash_get(i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_null() #0 {
  ret i64 6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_true() #0 {
  ret i64 22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_false() #0 {
  ret i64 38
}

declare dso_local void @fio_ltocstr(%struct.fio_str_info_s* sret, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64) #0 {
  %2 = alloca %struct.fiobj_object_vtable_s*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call zeroext i8 @fiobj_type(i64 %4)
  %6 = zext i8 %5 to i32
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
  ]

7:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_NUMBER, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

8:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_FLOAT, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

9:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_STRING, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

10:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_ARRAY, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

11:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_HASH, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

12:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_DATA, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

13:                                               ; preds = %1, %1, %1, %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

14:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load %struct.fiobj_object_vtable_s*, %struct.fiobj_object_vtable_s** %2, align 8
  ret %struct.fiobj_object_vtable_s* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fiobj_type(i64) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8 6, i8* %2, align 1
  br label %35

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = and i64 %8, 1
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8 1, i8* %2, align 1
  br label %35

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, 6
  %15 = icmp eq i64 %14, 6
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  %18 = trunc i64 %17 to i8
  store i8 %18, i8* %2, align 1
  br label %35

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8
  %21 = and i64 %20, 6
  %22 = icmp eq i64 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i8 40, i8* %2, align 1
  br label %35

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8
  %26 = and i64 %25, 6
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i8 42, i8* %2, align 1
  br label %35

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8
  %31 = and i64 %30, -8
  %32 = inttoptr i64 %31 to i8*
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %2, align 1
  br label %35

35:                                               ; preds = %29, %28, %23, %16, %11, %6
  %36 = load i8, i8* %2, align 1
  ret i8 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mustache__builder_stack_s* @mustache___section2stack(%struct.mustache_section_s*) #0 {
  %2 = alloca %struct.mustache_section_s*, align 8
  %3 = alloca %struct.mustache__section_stack_frame_s*, align 8
  store %struct.mustache_section_s* %0, %struct.mustache_section_s** %2, align 8
  %4 = load %struct.mustache_section_s*, %struct.mustache_section_s** %2, align 8
  %5 = bitcast %struct.mustache_section_s* %4 to %struct.mustache__section_stack_frame_s*
  store %struct.mustache__section_stack_frame_s* %5, %struct.mustache__section_stack_frame_s** %3, align 8
  %6 = load %struct.mustache__section_stack_frame_s*, %struct.mustache__section_stack_frame_s** %3, align 8
  %7 = load %struct.mustache__section_stack_frame_s*, %struct.mustache__section_stack_frame_s** %3, align 8
  %8 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %7, i32 0, i32 5
  %9 = load i16, i16* %8, align 8
  %10 = zext i16 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = sub i64 0, %11
  %13 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %6, i64 %12
  %14 = ptrtoint %struct.mustache__section_stack_frame_s* %13 to i64
  %15 = sub i64 %14, ptrtoint ([82 x %struct.mustache__section_stack_frame_s]* getelementptr inbounds (%struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* null, i32 0, i32 4) to i64)
  %16 = inttoptr i64 %15 to %struct.mustache__builder_stack_s*
  ret %struct.mustache__builder_stack_s* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache__write_escaped(%struct.mustache__builder_stack_s*, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mustache__builder_stack_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.mustache__builder_stack_s* %0, %struct.mustache__builder_stack_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8* %14, i8** %10, align 8
  br label %15

15:                                               ; preds = %102, %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %19, label %105

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8
  %26 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %9, align 8
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %30
  store i8 10, i8* %32, align 1
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %33
  store i8 0, i8* %34, align 1
  %35 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8
  %36 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %35, i32 0, i32 4
  %37 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8
  %38 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %37, i32 0, i32 3
  %39 = load i16, i16* %38, align 8
  %40 = zext i16 %39 to i64
  %41 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %36, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %41, i32 0, i32 0
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %44 = load i64, i64* %9, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @mustache_on_text(%struct.mustache_section_s* %42, i8* %43, i32 %45)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %127

49:                                               ; preds = %29
  store i64 0, i64* %9, align 8
  %50 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8
  %51 = call i32 @mustache__write_padding(%struct.mustache__builder_stack_s* %50)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %127

54:                                               ; preds = %49
  br label %102

55:                                               ; preds = %24, %19
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds [256 x i8*], [256 x i8*]* @mustache__write_escaped.html_escape_strs, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* @mustache__write_escaped.html_escape_len, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %58, i8* align 1 %64, i64 %71, i1 false)
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* @mustache__write_escaped.html_escape_len, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i64
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp uge i64 %81, 4090
  br i1 %82, label %83, label %101

83:                                               ; preds = %55
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %84
  store i8 0, i8* %85, align 1
  %86 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8
  %87 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %86, i32 0, i32 4
  %88 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8
  %89 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %88, i32 0, i32 3
  %90 = load i16, i16* %89, align 8
  %91 = zext i16 %90 to i64
  %92 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %87, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %92, i32 0, i32 0
  %94 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %95 = load i64, i64* %9, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @mustache_on_text(%struct.mustache_section_s* %93, i8* %94, i32 %96)
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %83
  store i32 -1, i32* %4, align 4
  br label %127

100:                                              ; preds = %83
  store i64 0, i64* %9, align 8
  br label %101

101:                                              ; preds = %100, %55
  br label %102

102:                                              ; preds = %101, %54
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %6, align 8
  br label %15

105:                                              ; preds = %15
  %106 = load i64, i64* %9, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %105
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %109
  store i8 0, i8* %110, align 1
  %111 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8
  %112 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %111, i32 0, i32 4
  %113 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %5, align 8
  %114 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %113, i32 0, i32 3
  %115 = load i16, i16* %114, align 8
  %116 = zext i16 %115 to i64
  %117 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %112, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %117, i32 0, i32 0
  %119 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %120 = load i64, i64* %9, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @mustache_on_text(%struct.mustache_section_s* %118, i8* %119, i32 %121)
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %125

124:                                              ; preds = %108
  store i32 -1, i32* %4, align 4
  br label %127

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %105
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %124, %99, %53, %48
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustache__write_padding(%struct.mustache__builder_stack_s*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mustache__builder_stack_s*, align 8
  %4 = alloca %struct.mustache__instruction_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.mustache__builder_stack_s* %0, %struct.mustache__builder_stack_s** %3, align 8
  %7 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %3, align 8
  %8 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %7, i32 0, i32 0
  %9 = load %struct.mustache_s*, %struct.mustache_s** %8, align 8
  %10 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %9, i64 1
  %11 = bitcast %struct.mustache_s* %10 to %struct.mustache__instruction_s*
  store %struct.mustache__instruction_s* %11, %struct.mustache__instruction_s** %4, align 8
  %12 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %3, align 8
  %13 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %12, i32 0, i32 0
  %14 = load %struct.mustache_s*, %struct.mustache_s** %13, align 8
  %15 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %14, i64 1
  %16 = bitcast %struct.mustache_s* %15 to %struct.mustache__instruction_s*
  %17 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %3, align 8
  %18 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %17, i32 0, i32 0
  %19 = load %struct.mustache_s*, %struct.mustache_s** %18, align 8
  %20 = getelementptr inbounds %struct.mustache_s, %struct.mustache_s* %19, i32 0, i32 0
  %21 = bitcast %union.anon* %20 to %struct.anon*
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %16, i64 %24
  %26 = bitcast %struct.mustache__instruction_s* %25 to i8*
  store i8* %26, i8** %5, align 8
  %27 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %3, align 8
  %28 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %64, %1
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %30
  %34 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %3, align 8
  %35 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %34, i32 0, i32 4
  %36 = load %struct.mustache__builder_stack_s*, %struct.mustache__builder_stack_s** %3, align 8
  %37 = getelementptr inbounds %struct.mustache__builder_stack_s, %struct.mustache__builder_stack_s* %36, i32 0, i32 3
  %38 = load i16, i16* %37, align 8
  %39 = zext i16 %38 to i64
  %40 = getelementptr inbounds [82 x %struct.mustache__section_stack_frame_s], [82 x %struct.mustache__section_stack_frame_s]* %35, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.mustache__section_stack_frame_s, %struct.mustache__section_stack_frame_s* %40, i32 0, i32 0
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %43, i64 %45
  %47 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %42, i64 %50
  %52 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %52, i64 %54
  %56 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %56, i32 0, i32 3
  %58 = load i16, i16* %57, align 4
  %59 = zext i16 %58 to i32
  %60 = call i32 @mustache_on_text(%struct.mustache_section_s* %41, i8* %51, i32 %59)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  br label %73

63:                                               ; preds = %33
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.mustache__instruction_s*, %struct.mustache__instruction_s** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %65, i64 %67
  %69 = getelementptr inbounds %struct.mustache__instruction_s, %struct.mustache__instruction_s* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %6, align 4
  br label %30

72:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %62
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @fiobj_ary_count(i64) #4

declare dso_local i64 @fiobj_ary_index(i64, i64) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
