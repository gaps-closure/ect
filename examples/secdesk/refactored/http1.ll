; ModuleID = 'http1.c'
source_filename = "http1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.http_vtable_s = type { i32 (%struct.http_s*, i8*, i64)*, i32 (%struct.http_s*, i32, i64, i64)*, i32 (%struct.http_s*, i8*, i64)*, void (%struct.http_s*)*, i32 (%struct.http_s*, i8*, i64, i64)*, i32 (%struct.http_s*, %struct.websocket_settings_s*)*, i32 (%struct.http_s*, i64, i64)*, void (%struct.http_s*, %struct.http_fio_protocol_s*)*, void (%struct.http_s*, %struct.http_fio_protocol_s*)*, i64 (%struct.http_s*, %struct.fio_str_info_s*)*, i32 (%struct.http_s*, %struct.http_sse_s*)*, i32 (%struct.http_sse_s*, i64)*, i32 (%struct.http_sse_s*)* }
%struct.http_s = type { %struct.anon, %struct.timespec, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8* }
%struct.anon = type { i8*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.websocket_settings_s = type { void (%struct.ws_s*, %struct.fio_str_info_s*, i8)*, void (%struct.ws_s*)*, void (%struct.ws_s*)*, void (%struct.ws_s*)*, void (i64, i8*)*, i8* }
%struct.ws_s = type opaque
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.http_fio_protocol_s = type { %struct.fio_protocol_s, i64, %struct.http_settings_s* }
%struct.fio_protocol_s = type { void (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)*, i8 (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)*, i64 }
%struct.http_settings_s = type { void (%struct.http_s*)*, void (%struct.http_s*, i8*, i64)*, void (%struct.http_s*)*, void (%struct.http_settings_s*)*, i8*, i8*, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8, i8, i8, i8 }
%struct.http_sse_s = type { void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)*, i8* }
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.anon.2 = type { i8*, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.http1pr_s = type { %struct.http_fio_protocol_s, %struct.http1_parser_s, %struct.http_s, i64, i64, i64, i8, i8, i8, [0 x i8] }
%struct.http1_parser_s = type { %struct.http1_parser_protected_read_only_state_s }
%struct.http1_parser_protected_read_only_state_s = type { i64, i64, i8*, i8 }
%struct.http1_sse_fio_protocol_s = type { %struct.fio_protocol_s, %struct.http_sse_internal_s* }
%struct.http_sse_internal_s = type { %struct.http_sse_s, i64, %struct.http_vtable_s*, i64, %struct.fio_ls_s, i8, i64 }
%struct.fio_ls_s = type { %struct.fio_ls_s*, %struct.fio_ls_s*, i8* }
%struct.header_writer_s = type { i64, i64, i64 }
%struct.fio_write_args_s = type { %union.anon, %union.anon.0, i64, i64, i8 }
%union.anon = type { i8* }
%union.anon.0 = type { void (i8*)* }
%struct.fiobj_object_header_s = type { i8, i32 }
%struct.fio_sha1_s = type { i64, [64 x i8], %union.anon.1 }
%union.anon.1 = type { [5 x i32], [4 x i8] }
%struct.subscription_s = type opaque

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@HTTP1_VTABLE = dso_local global %struct.http_vtable_s { i32 (%struct.http_s*, i8*, i64)* @http1_send_body, i32 (%struct.http_s*, i32, i64, i64)* @http1_sendfile, i32 (%struct.http_s*, i8*, i64)* null, void (%struct.http_s*)* @htt1p_finish, i32 (%struct.http_s*, i8*, i64, i64)* @http1_push_data, i32 (%struct.http_s*, %struct.websocket_settings_s*)* @http1_http2websocket, i32 (%struct.http_s*, i64, i64)* @http1_push_file, void (%struct.http_s*, %struct.http_fio_protocol_s*)* @http1_on_pause, void (%struct.http_s*, %struct.http_fio_protocol_s*)* @http1_on_resume, i64 (%struct.http_s*, %struct.fio_str_info_s*)* @http1_hijack, i32 (%struct.http_s*, %struct.http_sse_s*)* @http1_upgrade2sse, i32 (%struct.http_sse_s*, i64)* @http1_sse_write, i32 (%struct.http_sse_s*)* @http1_sse_close }, align 8, !dbg !0
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4, !dbg !303
@.str.2 = private unnamed_addr constant [43 x i8] c"FATAL: memory allocation error http1.c:790\00", align 1
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1, !dbg !305
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1, !dbg !307
@headers2str.connection_hash = internal global i64 0, align 8, !dbg !309
@.str.3 = private unnamed_addr constant [11 x i8] c"connection\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"connection:keep-alive\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"connection:close\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" HTTP/1.1\0D\0A\00", align 1
@headers2str.host_hash = internal global i64 0, align 8, !dbg !315
@.str.10 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"host:\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@http1pr_status2str.status2str = internal global [412 x %struct.fio_str_info_s] [%struct.fio_str_info_s { i64 0, i64 23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.48, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.51, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.58, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.62, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.63, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.64, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.70, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.72, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.74, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.76, i32 0, i32 0) }], align 16, !dbg !317
@.str.13 = private unnamed_addr constant [24 x i8] c"HTTP/1.1 100 Continue\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"HTTP/1.1 101 Switching Protocols\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"HTTP/1.1 102 Processing\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"HTTP/1.1 103 Early Hints\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"HTTP/1.1 200 OK\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"HTTP/1.1 201 Created\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"HTTP/1.1 202 Accepted\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"HTTP/1.1 203 Non-Authoritative Information\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"HTTP/1.1 204 No Content\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"HTTP/1.1 205 Reset Content\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"HTTP/1.1 206 Partial Content\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"HTTP/1.1 207 Multi-Status\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"HTTP/1.1 208 Already Reported\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"HTTP/1.1 226 IM Used\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"HTTP/1.1 300 Multiple Choices\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"HTTP/1.1 301 Moved Permanently\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"HTTP/1.1 302 Found\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"HTTP/1.1 303 See Other\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"HTTP/1.1 304 Not Modified\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"HTTP/1.1 305 Use Proxy\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"HTTP/1.1 306 (Unused), \0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"HTTP/1.1 307 Temporary Redirect\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"HTTP/1.1 308 Permanent Redirect\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"HTTP/1.1 400 Bad Request\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"HTTP/1.1 401 Unauthorized\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"HTTP/1.1 402 Payment Required\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"HTTP/1.1 403 Forbidden\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"HTTP/1.1 404 Not Found\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"HTTP/1.1 405 Method Not Allowed\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"HTTP/1.1 406 Not Acceptable\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"HTTP/1.1 407 Proxy Authentication Required\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"HTTP/1.1 408 Request Timeout\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"HTTP/1.1 409 Conflict\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"HTTP/1.1 410 Gone\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"HTTP/1.1 411 Length Required\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"HTTP/1.1 412 Precondition Failed\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"HTTP/1.1 413 Payload Too Large\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"HTTP/1.1 414 URI Too Long\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"HTTP/1.1 415 Unsupported Media Type\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"HTTP/1.1 416 Range Not Satisfiable\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"HTTP/1.1 417 Expectation Failed\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"HTTP/1.1 421 Misdirected Request\0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"HTTP/1.1 422 Unprocessable Entity\0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"HTTP/1.1 423 Locked\0D\0A\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"HTTP/1.1 424 Failed Dependency\0D\0A\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"HTTP/1.1 425 Unassigned\0D\0A\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"HTTP/1.1 426 Upgrade Required\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"HTTP/1.1 427 Unassigned\0D\0A\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"HTTP/1.1 428 Precondition Required\0D\0A\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"HTTP/1.1 429 Too Many Requests\0D\0A\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"HTTP/1.1 430 Unassigned\0D\0A\00", align 1
@.str.64 = private unnamed_addr constant [47 x i8] c"HTTP/1.1 431 Request Header Fields Too Large\0D\0A\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"HTTP/1.1 500 Internal Server Error\0D\0A\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"HTTP/1.1 501 Not Implemented\0D\0A\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"HTTP/1.1 502 Bad Gateway\0D\0A\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"HTTP/1.1 503 Service Unavailable\0D\0A\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"HTTP/1.1 504 Gateway Timeout\0D\0A\00", align 1
@.str.70 = private unnamed_addr constant [42 x i8] c"HTTP/1.1 505 HTTP Version Not Supported\0D\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"HTTP/1.1 506 Variant Also Negotiates\0D\0A\00", align 1
@.str.72 = private unnamed_addr constant [36 x i8] c"HTTP/1.1 507 Insufficient Storage\0D\0A\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"HTTP/1.1 508 Loop Detected\0D\0A\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"HTTP/1.1 509 Unassigned\0D\0A\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"HTTP/1.1 510 Not Extended\0D\0A\00", align 1
@.str.76 = private unnamed_addr constant [47 x i8] c"HTTP/1.1 511 Network Authentication Required\0D\0A\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@__const.fiobj_obj2cstr.ret = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0) }, align 8
@__const.fiobj_obj2cstr.ret.78 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0) }, align 8
@.str.79 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const.fiobj_obj2cstr.ret.80 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0) }, align 8
@.str.81 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@__const.fiobj_obj2cstr.ret.82 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0) }, align 8
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_ARRAY = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_HASH = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_DATA = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@.str.83 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"http1.c\00", align 1
@__PRETTY_FUNCTION__.http1_http2websocket = private unnamed_addr constant [59 x i8] c"int http1_http2websocket(http_s *, websocket_settings_s *)\00", align 1
@http1_http2websocket_server.ws_key_accpt_str = internal global [37 x i8] c"258EAFA5-E914-47DA-95CA-C5AB0DC85B11\00", align 16, !dbg !325
@http1_http2websocket_server.sec_version = internal global i64 0, align 8, !dbg !331
@http1_http2websocket_server.sec_key = internal global i64 0, align 8, !dbg !333
@.str.86 = private unnamed_addr constant [22 x i8] c"sec-websocket-version\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"sec-websocket-key\00", align 1
@HTTP_HEADER_CONNECTION = external dso_local global i64, align 8
@HTTP_HVALUE_WS_UPGRADE = external dso_local global i64, align 8
@HTTP_HEADER_UPGRADE = external dso_local global i64, align 8
@HTTP_HVALUE_WEBSOCKET = external dso_local global i64, align 8
@HTTP_HEADER_WS_SEC_KEY = external dso_local global i64, align 8
@HTTP_HVALUE_WS_SEC_VERSION = external dso_local global i64, align 8
@HTTP_HVALUE_WS_VERSION = external dso_local global i64, align 8
@HTTP_HEADER_WS_SEC_CLIENT_KEY = external dso_local global i64, align 8
@HTTP_HEADER_CONTENT_TYPE = external dso_local global i64, align 8
@HTTP_HVALUE_SSE_MIME = external dso_local global i64, align 8
@HTTP_HEADER_CACHE_CONTROL = external dso_local global i64, align 8
@HTTP_HVALUE_NO_CACHE = external dso_local global i64, align 8
@HTTP_HEADER_CONTENT_ENCODING = external dso_local global i64, align 8
@.str.88 = private unnamed_addr constant [9 x i8] c"identity\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c": ping\0A\0A\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"PRI * HTTP/2.0\0D\0A\0D\0ASM\0D\0A\0D\0A\00", align 1
@.str.91 = private unnamed_addr constant [60 x i8] c"WARNING: client claimed unsupported HTTP/2 prior knowledge.\00", align 1
@.str.92 = private unnamed_addr constant [58 x i8] c"DEBUG (http1.c:718): (HTTP/1,1) throttling client at %.*s\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.94 = private unnamed_addr constant [70 x i8] c"ERROR: (http1 parse ordering error) missing HashMap for header %s: %s\00", align 1
@.str.95 = private unnamed_addr constant [56 x i8] c"WARNING: (HTTP) security alert - header flood detected.\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"server-timing\00", align 1
@__const.http1_consume_header_trailer.http1_trailer_white_list = private unnamed_addr constant [2 x %struct.anon.2] [%struct.anon.2 { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i32 0, i32 0), i64 13 }, %struct.anon.2 zeroinitializer], align 16
@.str.97 = private unnamed_addr constant [15 x i8] c"content-length\00", align 1
@.str.98 = private unnamed_addr constant [18 x i8] c"transfer-encoding\00", align 1
@.str.99 = private unnamed_addr constant [40 x i8] c"DEBUG (http1.c:670): HTTP parser error.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @FIO_LOG2STDERR(i8* %0, ...) #0 !dbg !339 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !342, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !344, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !349, metadata !DIExpression()), !dbg !363
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !364
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !364
  call void @llvm.va_start(i8* %7), !dbg !364
  call void @llvm.dbg.declare(metadata i32* %5, metadata !365, metadata !DIExpression()), !dbg !366
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !367
  %9 = load i8*, i8** %2, align 8, !dbg !368
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !369
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #2, !dbg !370
  store i32 %11, i32* %5, align 4, !dbg !366
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !371
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !371
  call void @llvm.va_end(i8* %13), !dbg !371
  %14 = load i32, i32* %5, align 4, !dbg !372
  %15 = icmp sle i32 %14, 0, !dbg !374
  br i1 %15, label %19, label %16, !dbg !375

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4, !dbg !376
  %18 = icmp sge i32 %17, 2046, !dbg !377
  br i1 %18, label %19, label %29, !dbg !378

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4, !dbg !379
  %21 = icmp sge i32 %20, 2046, !dbg !382
  br i1 %21, label %22, label %25, !dbg !383

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !384
  %24 = getelementptr inbounds i8, i8* %23, i64 2016, !dbg !386
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false), !dbg !387
  store i32 2041, i32* %5, align 4, !dbg !388
  br label %28, !dbg !389

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !390
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26), !dbg !392
  br label %42, !dbg !393

28:                                               ; preds = %22
  br label %29, !dbg !394

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4, !dbg !395
  %31 = add nsw i32 %30, 1, !dbg !395
  store i32 %31, i32* %5, align 4, !dbg !395
  %32 = sext i32 %30 to i64, !dbg !396
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32, !dbg !396
  store i8 10, i8* %33, align 1, !dbg !397
  %34 = load i32, i32* %5, align 4, !dbg !398
  %35 = sext i32 %34 to i64, !dbg !399
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35, !dbg !399
  store i8 48, i8* %36, align 1, !dbg !400
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !401
  %38 = load i32, i32* %5, align 4, !dbg !402
  %39 = sext i32 %38 to i64, !dbg !402
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !403
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40), !dbg !404
  br label %42, !dbg !405

42:                                               ; preds = %29, %25
  ret void, !dbg !405
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
define internal i32 @http1_send_body(%struct.http_s* %0, i8* %1, i64 %2) #0 !dbg !406 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %5, metadata !407, metadata !DIExpression()), !dbg !408
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !409, metadata !DIExpression()), !dbg !410
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata i64* %8, metadata !413, metadata !DIExpression()), !dbg !414
  %9 = load %struct.http_s*, %struct.http_s** %5, align 8, !dbg !415
  %10 = load i64, i64* %7, align 8, !dbg !416
  %11 = call i64 @headers2str(%struct.http_s* %9, i64 %10), !dbg !417
  store i64 %11, i64* %8, align 8, !dbg !414
  %12 = load i64, i64* %8, align 8, !dbg !418
  %13 = icmp ne i64 %12, 0, !dbg !418
  br i1 %13, label %16, label %14, !dbg !420

14:                                               ; preds = %3
  %15 = load %struct.http_s*, %struct.http_s** %5, align 8, !dbg !421
  call void @http1_after_finish(%struct.http_s* %15), !dbg !423
  store i32 -1, i32* %4, align 4, !dbg !424
  br label %32, !dbg !424

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8, !dbg !425
  %18 = load i8*, i8** %6, align 8, !dbg !426
  %19 = load i64, i64* %7, align 8, !dbg !427
  %20 = call i64 @fiobj_str_write(i64 %17, i8* %18, i64 %19), !dbg !428
  %21 = load %struct.http_s*, %struct.http_s** %5, align 8, !dbg !429
  %22 = getelementptr inbounds %struct.http_s, %struct.http_s* %21, i32 0, i32 0, !dbg !429
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 1, !dbg !429
  %24 = load i64, i64* %23, align 8, !dbg !429
  %25 = inttoptr i64 %24 to %struct.http1pr_s*, !dbg !429
  %26 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %25, i32 0, i32 0, !dbg !430
  %27 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %26, i32 0, i32 1, !dbg !431
  %28 = load i64, i64* %27, align 8, !dbg !431
  %29 = load i64, i64* %8, align 8, !dbg !432
  %30 = call i64 @fiobj_send_free(i64 %28, i64 %29), !dbg !433
  %31 = load %struct.http_s*, %struct.http_s** %5, align 8, !dbg !434
  call void @http1_after_finish(%struct.http_s* %31), !dbg !435
  store i32 0, i32* %4, align 4, !dbg !436
  br label %32, !dbg !436

32:                                               ; preds = %16, %14
  %33 = load i32, i32* %4, align 4, !dbg !437
  ret i32 %33, !dbg !437
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_sendfile(%struct.http_s* %0, i32 %1, i64 %2, i64 %3) #0 !dbg !438 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.http_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fio_str_info_s, align 8
  %12 = alloca %struct.fio_str_info_s, align 8
  %13 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %6, metadata !439, metadata !DIExpression()), !dbg !440
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !441, metadata !DIExpression()), !dbg !442
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !443, metadata !DIExpression()), !dbg !444
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !445, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.declare(metadata i64* %10, metadata !447, metadata !DIExpression()), !dbg !448
  %14 = load %struct.http_s*, %struct.http_s** %6, align 8, !dbg !449
  %15 = call i64 @headers2str(%struct.http_s* %14, i64 0), !dbg !450
  store i64 %15, i64* %10, align 8, !dbg !448
  %16 = load i64, i64* %10, align 8, !dbg !451
  %17 = icmp ne i64 %16, 0, !dbg !451
  br i1 %17, label %22, label %18, !dbg !453

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4, !dbg !454
  %20 = call i32 @close(i32 %19), !dbg !456
  %21 = load %struct.http_s*, %struct.http_s** %6, align 8, !dbg !457
  call void @http1_after_finish(%struct.http_s* %21), !dbg !458
  store i32 -1, i32* %5, align 4, !dbg !459
  br label %112, !dbg !459

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8, !dbg !460
  %24 = icmp ult i64 %23, 8192, !dbg !462
  br i1 %24, label %25, label %87, !dbg !463

25:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %11, metadata !464, metadata !DIExpression()), !dbg !466
  %26 = load i64, i64* %10, align 8, !dbg !467
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %11, i64 %26), !dbg !468
  %27 = load i64, i64* %10, align 8, !dbg !469
  %28 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 1, !dbg !470
  %29 = load i64, i64* %28, align 8, !dbg !470
  %30 = load i64, i64* %8, align 8, !dbg !471
  %31 = add i64 %29, %30, !dbg !472
  %32 = call i64 @fiobj_str_capa_assert(i64 %27, i64 %31), !dbg !473
  %33 = load i64, i64* %10, align 8, !dbg !474
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %12, i64 %33), !dbg !475
  %34 = bitcast %struct.fio_str_info_s* %11 to i8*, !dbg !475
  %35 = bitcast %struct.fio_str_info_s* %12 to i8*, !dbg !475
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 24, i1 false), !dbg !475
  call void @llvm.dbg.declare(metadata i64* %13, metadata !476, metadata !DIExpression()), !dbg !477
  %36 = load i32, i32* %7, align 4, !dbg !478
  %37 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 2, !dbg !479
  %38 = load i8*, i8** %37, align 8, !dbg !479
  %39 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 1, !dbg !480
  %40 = load i64, i64* %39, align 8, !dbg !480
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !481
  %42 = load i64, i64* %8, align 8, !dbg !482
  %43 = load i64, i64* %9, align 8, !dbg !483
  %44 = call i64 @pread(i32 %36, i8* %41, i64 %42, i64 %43), !dbg !484
  store i64 %44, i64* %13, align 8, !dbg !477
  %45 = load i64, i64* %13, align 8, !dbg !485
  %46 = icmp slt i64 %45, 0, !dbg !487
  br i1 %46, label %47, label %68, !dbg !488

47:                                               ; preds = %25
  %48 = load i32, i32* %7, align 4, !dbg !489
  %49 = call i32 @close(i32 %48), !dbg !491
  %50 = load %struct.http_s*, %struct.http_s** %6, align 8, !dbg !492
  %51 = getelementptr inbounds %struct.http_s, %struct.http_s* %50, i32 0, i32 0, !dbg !492
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 1, !dbg !492
  %53 = load i64, i64* %52, align 8, !dbg !492
  %54 = inttoptr i64 %53 to %struct.http1pr_s*, !dbg !492
  %55 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %54, i32 0, i32 0, !dbg !493
  %56 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %55, i32 0, i32 1, !dbg !494
  %57 = load i64, i64* %56, align 8, !dbg !494
  %58 = load i64, i64* %10, align 8, !dbg !495
  %59 = call i64 @fiobj_send_free(i64 %57, i64 %58), !dbg !496
  %60 = load %struct.http_s*, %struct.http_s** %6, align 8, !dbg !497
  %61 = getelementptr inbounds %struct.http_s, %struct.http_s* %60, i32 0, i32 0, !dbg !497
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 1, !dbg !497
  %63 = load i64, i64* %62, align 8, !dbg !497
  %64 = inttoptr i64 %63 to %struct.http1pr_s*, !dbg !497
  %65 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %64, i32 0, i32 0, !dbg !498
  %66 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %65, i32 0, i32 1, !dbg !499
  %67 = load i64, i64* %66, align 8, !dbg !499
  call void @fio_close(i64 %67), !dbg !500
  store i32 -1, i32* %5, align 4, !dbg !501
  br label %112, !dbg !501

68:                                               ; preds = %25
  %69 = load i32, i32* %7, align 4, !dbg !502
  %70 = call i32 @close(i32 %69), !dbg !503
  %71 = load i64, i64* %10, align 8, !dbg !504
  %72 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 1, !dbg !505
  %73 = load i64, i64* %72, align 8, !dbg !505
  %74 = load i64, i64* %13, align 8, !dbg !506
  %75 = add i64 %73, %74, !dbg !507
  call void @fiobj_str_resize(i64 %71, i64 %75), !dbg !508
  %76 = load %struct.http_s*, %struct.http_s** %6, align 8, !dbg !509
  %77 = getelementptr inbounds %struct.http_s, %struct.http_s* %76, i32 0, i32 0, !dbg !509
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %77, i32 0, i32 1, !dbg !509
  %79 = load i64, i64* %78, align 8, !dbg !509
  %80 = inttoptr i64 %79 to %struct.http1pr_s*, !dbg !509
  %81 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %80, i32 0, i32 0, !dbg !510
  %82 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %81, i32 0, i32 1, !dbg !511
  %83 = load i64, i64* %82, align 8, !dbg !511
  %84 = load i64, i64* %10, align 8, !dbg !512
  %85 = call i64 @fiobj_send_free(i64 %83, i64 %84), !dbg !513
  %86 = load %struct.http_s*, %struct.http_s** %6, align 8, !dbg !514
  call void @http1_after_finish(%struct.http_s* %86), !dbg !515
  store i32 0, i32* %5, align 4, !dbg !516
  br label %112, !dbg !516

87:                                               ; preds = %22
  %88 = load %struct.http_s*, %struct.http_s** %6, align 8, !dbg !517
  %89 = getelementptr inbounds %struct.http_s, %struct.http_s* %88, i32 0, i32 0, !dbg !517
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %89, i32 0, i32 1, !dbg !517
  %91 = load i64, i64* %90, align 8, !dbg !517
  %92 = inttoptr i64 %91 to %struct.http1pr_s*, !dbg !517
  %93 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %92, i32 0, i32 0, !dbg !518
  %94 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %93, i32 0, i32 1, !dbg !519
  %95 = load i64, i64* %94, align 8, !dbg !519
  %96 = load i64, i64* %10, align 8, !dbg !520
  %97 = call i64 @fiobj_send_free(i64 %95, i64 %96), !dbg !521
  %98 = load %struct.http_s*, %struct.http_s** %6, align 8, !dbg !522
  %99 = getelementptr inbounds %struct.http_s, %struct.http_s* %98, i32 0, i32 0, !dbg !522
  %100 = getelementptr inbounds %struct.anon, %struct.anon* %99, i32 0, i32 1, !dbg !522
  %101 = load i64, i64* %100, align 8, !dbg !522
  %102 = inttoptr i64 %101 to %struct.http1pr_s*, !dbg !522
  %103 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %102, i32 0, i32 0, !dbg !523
  %104 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %103, i32 0, i32 1, !dbg !524
  %105 = load i64, i64* %104, align 8, !dbg !524
  %106 = load i32, i32* %7, align 4, !dbg !525
  %107 = sext i32 %106 to i64, !dbg !525
  %108 = load i64, i64* %9, align 8, !dbg !526
  %109 = load i64, i64* %8, align 8, !dbg !527
  %110 = call i64 @fio_sendfile(i64 %105, i64 %107, i64 %108, i64 %109), !dbg !528
  %111 = load %struct.http_s*, %struct.http_s** %6, align 8, !dbg !529
  call void @http1_after_finish(%struct.http_s* %111), !dbg !530
  store i32 0, i32* %5, align 4, !dbg !531
  br label %112, !dbg !531

112:                                              ; preds = %87, %68, %47, %18
  %113 = load i32, i32* %5, align 4, !dbg !532
  ret i32 %113, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htt1p_finish(%struct.http_s* %0) #0 !dbg !533 {
  %2 = alloca %struct.http_s*, align 8
  %3 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %2, metadata !534, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.declare(metadata i64* %3, metadata !536, metadata !DIExpression()), !dbg !537
  %4 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !538
  %5 = call i64 @headers2str(%struct.http_s* %4, i64 0), !dbg !539
  store i64 %5, i64* %3, align 8, !dbg !537
  %6 = load i64, i64* %3, align 8, !dbg !540
  %7 = icmp ne i64 %6, 0, !dbg !540
  br i1 %7, label %8, label %19, !dbg !542

8:                                                ; preds = %1
  %9 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !543
  %10 = getelementptr inbounds %struct.http_s, %struct.http_s* %9, i32 0, i32 0, !dbg !543
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1, !dbg !543
  %12 = load i64, i64* %11, align 8, !dbg !543
  %13 = inttoptr i64 %12 to %struct.http1pr_s*, !dbg !543
  %14 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %13, i32 0, i32 0, !dbg !544
  %15 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %14, i32 0, i32 1, !dbg !545
  %16 = load i64, i64* %15, align 8, !dbg !545
  %17 = load i64, i64* %3, align 8, !dbg !546
  %18 = call i64 @fiobj_send_free(i64 %16, i64 %17), !dbg !547
  br label %20, !dbg !547

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %8
  %21 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !548
  call void @http1_after_finish(%struct.http_s* %21), !dbg !549
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_push_data(%struct.http_s* %0, i8* %1, i64 %2, i64 %3) #0 !dbg !551 {
  %5 = alloca %struct.http_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %5, metadata !552, metadata !DIExpression()), !dbg !553
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !554, metadata !DIExpression()), !dbg !555
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !556, metadata !DIExpression()), !dbg !557
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !558, metadata !DIExpression()), !dbg !559
  ret i32 -1, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_http2websocket(%struct.http_s* %0, %struct.websocket_settings_s* %1) #0 !dbg !561 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca %struct.websocket_settings_s*, align 8
  %6 = alloca %struct.http1pr_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %4, metadata !562, metadata !DIExpression()), !dbg !563
  store %struct.websocket_settings_s* %1, %struct.websocket_settings_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.websocket_settings_s** %5, metadata !564, metadata !DIExpression()), !dbg !565
  %7 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !566
  %8 = icmp ne %struct.http_s* %7, null, !dbg !566
  br i1 %8, label %9, label %10, !dbg !569

9:                                                ; preds = %2
  br label %11, !dbg !569

10:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0), i32 410, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.http1_http2websocket, i64 0, i64 0)) #10, !dbg !566
  unreachable, !dbg !566

11:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %6, metadata !570, metadata !DIExpression()), !dbg !571
  %12 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !572
  %13 = getelementptr inbounds %struct.http_s, %struct.http_s* %12, i32 0, i32 0, !dbg !572
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1, !dbg !572
  %15 = load i64, i64* %14, align 8, !dbg !572
  %16 = inttoptr i64 %15 to %struct.http1pr_s*, !dbg !572
  store %struct.http1pr_s* %16, %struct.http1pr_s** %6, align 8, !dbg !571
  %17 = load %struct.http1pr_s*, %struct.http1pr_s** %6, align 8, !dbg !573
  %18 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %17, i32 0, i32 7, !dbg !575
  %19 = load i8, i8* %18, align 1, !dbg !575
  %20 = zext i8 %19 to i32, !dbg !573
  %21 = icmp eq i32 %20, 0, !dbg !576
  br i1 %21, label %22, label %26, !dbg !577

22:                                               ; preds = %11
  %23 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !578
  %24 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %5, align 8, !dbg !580
  %25 = call i32 @http1_http2websocket_server(%struct.http_s* %23, %struct.websocket_settings_s* %24), !dbg !581
  store i32 %25, i32* %3, align 4, !dbg !582
  br label %30, !dbg !582

26:                                               ; preds = %11
  %27 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !583
  %28 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %5, align 8, !dbg !584
  %29 = call i32 @http1_http2websocket_client(%struct.http_s* %27, %struct.websocket_settings_s* %28), !dbg !585
  store i32 %29, i32* %3, align 4, !dbg !586
  br label %30, !dbg !586

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %3, align 4, !dbg !587
  ret i32 %31, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_push_file(%struct.http_s* %0, i64 %1, i64 %2) #0 !dbg !588 {
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %4, metadata !589, metadata !DIExpression()), !dbg !590
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !591, metadata !DIExpression()), !dbg !592
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !593, metadata !DIExpression()), !dbg !594
  ret i32 -1, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_on_pause(%struct.http_s* %0, %struct.http_fio_protocol_s* %1) #0 !dbg !596 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca %struct.http_fio_protocol_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %3, metadata !597, metadata !DIExpression()), !dbg !598
  store %struct.http_fio_protocol_s* %1, %struct.http_fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.http_fio_protocol_s** %4, metadata !599, metadata !DIExpression()), !dbg !600
  %5 = load %struct.http_fio_protocol_s*, %struct.http_fio_protocol_s** %4, align 8, !dbg !601
  %6 = bitcast %struct.http_fio_protocol_s* %5 to %struct.http1pr_s*, !dbg !602
  %7 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %6, i32 0, i32 8, !dbg !602
  store i8 1, i8* %7, align 2, !dbg !603
  %8 = load %struct.http_fio_protocol_s*, %struct.http_fio_protocol_s** %4, align 8, !dbg !604
  %9 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %8, i32 0, i32 1, !dbg !605
  %10 = load i64, i64* %9, align 8, !dbg !605
  call void @fio_suspend(i64 %10), !dbg !606
  %11 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !607
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_on_resume(%struct.http_s* %0, %struct.http_fio_protocol_s* %1) #0 !dbg !609 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca %struct.http_fio_protocol_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %3, metadata !610, metadata !DIExpression()), !dbg !611
  store %struct.http_fio_protocol_s* %1, %struct.http_fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.http_fio_protocol_s** %4, metadata !612, metadata !DIExpression()), !dbg !613
  %5 = load %struct.http_fio_protocol_s*, %struct.http_fio_protocol_s** %4, align 8, !dbg !614
  %6 = bitcast %struct.http_fio_protocol_s* %5 to %struct.http1pr_s*, !dbg !616
  %7 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %6, i32 0, i32 8, !dbg !616
  %8 = load i8, i8* %7, align 2, !dbg !616
  %9 = icmp ne i8 %8, 0, !dbg !617
  br i1 %9, label %14, label %10, !dbg !618

10:                                               ; preds = %2
  %11 = load %struct.http_fio_protocol_s*, %struct.http_fio_protocol_s** %4, align 8, !dbg !619
  %12 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %11, i32 0, i32 1, !dbg !621
  %13 = load i64, i64* %12, align 8, !dbg !621
  call void @fio_force_event(i64 %13, i32 0), !dbg !622
  br label %14, !dbg !623

14:                                               ; preds = %10, %2
  %15 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !624
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http1_hijack(%struct.http_s* %0, %struct.fio_str_info_s* %1) #0 !dbg !626 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca %struct.fio_str_info_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %3, metadata !627, metadata !DIExpression()), !dbg !628
  store %struct.fio_str_info_s* %1, %struct.fio_str_info_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s** %4, metadata !629, metadata !DIExpression()), !dbg !630
  %9 = load %struct.fio_str_info_s*, %struct.fio_str_info_s** %4, align 8, !dbg !631
  %10 = icmp ne %struct.fio_str_info_s* %9, null, !dbg !631
  br i1 %10, label %11, label %66, !dbg !633

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %5, metadata !634, metadata !DIExpression()), !dbg !636
  %12 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !637
  %13 = getelementptr inbounds %struct.http_s, %struct.http_s* %12, i32 0, i32 0, !dbg !637
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1, !dbg !637
  %15 = load i64, i64* %14, align 8, !dbg !637
  %16 = inttoptr i64 %15 to %struct.http1pr_s*, !dbg !637
  %17 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %16, i32 0, i32 3, !dbg !638
  %18 = load i64, i64* %17, align 8, !dbg !638
  %19 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !639
  %20 = getelementptr inbounds %struct.http_s, %struct.http_s* %19, i32 0, i32 0, !dbg !639
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1, !dbg !639
  %22 = load i64, i64* %21, align 8, !dbg !639
  %23 = inttoptr i64 %22 to %struct.http1pr_s*, !dbg !639
  %24 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %23, i32 0, i32 1, !dbg !640
  %25 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %24, i32 0, i32 0, !dbg !641
  %26 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %25, i32 0, i32 2, !dbg !642
  %27 = load i8*, i8** %26, align 8, !dbg !642
  %28 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !643
  %29 = getelementptr inbounds %struct.http_s, %struct.http_s* %28, i32 0, i32 0, !dbg !643
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 1, !dbg !643
  %31 = load i64, i64* %30, align 8, !dbg !643
  %32 = inttoptr i64 %31 to %struct.http1pr_s*, !dbg !643
  %33 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %32, i32 0, i32 9, !dbg !644
  %34 = getelementptr inbounds [0 x i8], [0 x i8]* %33, i64 0, i64 0, !dbg !643
  %35 = ptrtoint i8* %27 to i64, !dbg !645
  %36 = ptrtoint i8* %34 to i64, !dbg !645
  %37 = sub i64 %35, %36, !dbg !645
  %38 = sub i64 %18, %37, !dbg !646
  store i64 %38, i64* %5, align 8, !dbg !636
  %39 = load i64, i64* %5, align 8, !dbg !647
  %40 = icmp ne i64 %39, 0, !dbg !647
  br i1 %40, label %41, label %58, !dbg !649

41:                                               ; preds = %11
  %42 = load %struct.fio_str_info_s*, %struct.fio_str_info_s** %4, align 8, !dbg !650
  %43 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 0, !dbg !652
  store i64 0, i64* %43, align 8, !dbg !652
  %44 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1, !dbg !652
  %45 = load i64, i64* %5, align 8, !dbg !653
  store i64 %45, i64* %44, align 8, !dbg !652
  %46 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2, !dbg !652
  %47 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !654
  %48 = getelementptr inbounds %struct.http_s, %struct.http_s* %47, i32 0, i32 0, !dbg !654
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 1, !dbg !654
  %50 = load i64, i64* %49, align 8, !dbg !654
  %51 = inttoptr i64 %50 to %struct.http1pr_s*, !dbg !654
  %52 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %51, i32 0, i32 1, !dbg !655
  %53 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %52, i32 0, i32 0, !dbg !656
  %54 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %53, i32 0, i32 2, !dbg !657
  %55 = load i8*, i8** %54, align 8, !dbg !657
  store i8* %55, i8** %46, align 8, !dbg !652
  %56 = bitcast %struct.fio_str_info_s* %42 to i8*, !dbg !658
  %57 = bitcast %struct.fio_str_info_s* %6 to i8*, !dbg !658
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 24, i1 false), !dbg !658
  br label %65, !dbg !659

58:                                               ; preds = %11
  %59 = load %struct.fio_str_info_s*, %struct.fio_str_info_s** %4, align 8, !dbg !660
  %60 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 0, !dbg !662
  store i64 0, i64* %60, align 8, !dbg !662
  %61 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !662
  store i64 0, i64* %61, align 8, !dbg !662
  %62 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2, !dbg !662
  store i8* null, i8** %62, align 8, !dbg !662
  %63 = bitcast %struct.fio_str_info_s* %59 to i8*, !dbg !663
  %64 = bitcast %struct.fio_str_info_s* %7 to i8*, !dbg !663
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 24, i1 false), !dbg !663
  br label %65

65:                                               ; preds = %58, %41
  br label %66, !dbg !664

66:                                               ; preds = %65, %2
  %67 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !665
  %68 = getelementptr inbounds %struct.http_s, %struct.http_s* %67, i32 0, i32 0, !dbg !665
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 1, !dbg !665
  %70 = load i64, i64* %69, align 8, !dbg !665
  %71 = inttoptr i64 %70 to %struct.http1pr_s*, !dbg !665
  %72 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %71, i32 0, i32 8, !dbg !666
  store i8 3, i8* %72, align 2, !dbg !667
  call void @llvm.dbg.declare(metadata i64* %8, metadata !668, metadata !DIExpression()), !dbg !669
  %73 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !670
  %74 = getelementptr inbounds %struct.http_s, %struct.http_s* %73, i32 0, i32 0, !dbg !670
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %74, i32 0, i32 1, !dbg !670
  %76 = load i64, i64* %75, align 8, !dbg !670
  %77 = inttoptr i64 %76 to %struct.http1pr_s*, !dbg !670
  %78 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %77, i32 0, i32 0, !dbg !671
  %79 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %78, i32 0, i32 1, !dbg !672
  %80 = load i64, i64* %79, align 8, !dbg !672
  store i64 %80, i64* %8, align 8, !dbg !669
  %81 = load i64, i64* %8, align 8, !dbg !673
  call void @fio_attach(i64 %81, %struct.fio_protocol_s* null), !dbg !674
  %82 = load i64, i64* %8, align 8, !dbg !675
  ret i64 %82, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_upgrade2sse(%struct.http_s* %0, %struct.http_sse_s* %1) #0 !dbg !677 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca %struct.http_sse_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.http1_sse_fio_protocol_s*, align 8
  %8 = alloca %struct.http1_sse_fio_protocol_s, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %4, metadata !678, metadata !DIExpression()), !dbg !679
  store %struct.http_sse_s* %1, %struct.http_sse_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.http_sse_s** %5, metadata !680, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.declare(metadata i64* %6, metadata !682, metadata !DIExpression()), !dbg !684
  %9 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !685
  %10 = getelementptr inbounds %struct.http_s, %struct.http_s* %9, i32 0, i32 0, !dbg !685
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1, !dbg !685
  %12 = load i64, i64* %11, align 8, !dbg !685
  %13 = inttoptr i64 %12 to %struct.http1pr_s*, !dbg !685
  %14 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %13, i32 0, i32 0, !dbg !686
  %15 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %14, i32 0, i32 1, !dbg !687
  %16 = load i64, i64* %15, align 8, !dbg !687
  store i64 %16, i64* %6, align 8, !dbg !684
  %17 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !688
  %18 = getelementptr inbounds %struct.http_s, %struct.http_s* %17, i32 0, i32 5, !dbg !689
  store i64 200, i64* %18, align 8, !dbg !690
  %19 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !691
  %20 = load i64, i64* @HTTP_HEADER_CONTENT_TYPE, align 8, !dbg !692
  %21 = load i64, i64* @HTTP_HVALUE_SSE_MIME, align 8, !dbg !693
  %22 = call i64 @fiobj_dup(i64 %21), !dbg !694
  %23 = call i32 @http_set_header(%struct.http_s* %19, i64 %20, i64 %22), !dbg !695
  %24 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !696
  %25 = load i64, i64* @HTTP_HEADER_CACHE_CONTROL, align 8, !dbg !697
  %26 = load i64, i64* @HTTP_HVALUE_NO_CACHE, align 8, !dbg !698
  %27 = call i64 @fiobj_dup(i64 %26), !dbg !699
  %28 = call i32 @http_set_header(%struct.http_s* %24, i64 %25, i64 %27), !dbg !700
  %29 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !701
  %30 = load i64, i64* @HTTP_HEADER_CONTENT_ENCODING, align 8, !dbg !702
  %31 = call i64 @fiobj_str_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0), i64 8), !dbg !703
  %32 = call i32 @http_set_header(%struct.http_s* %29, i64 %30, i64 %31), !dbg !704
  %33 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !705
  %34 = getelementptr inbounds %struct.http_s, %struct.http_s* %33, i32 0, i32 0, !dbg !705
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 1, !dbg !705
  %36 = load i64, i64* %35, align 8, !dbg !705
  %37 = inttoptr i64 %36 to %struct.http1pr_s*, !dbg !705
  %38 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %37, i32 0, i32 8, !dbg !706
  store i8 1, i8* %38, align 2, !dbg !707
  %39 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !708
  call void @htt1p_finish(%struct.http_s* %39), !dbg !709
  call void @llvm.dbg.declare(metadata %struct.http1_sse_fio_protocol_s** %7, metadata !710, metadata !DIExpression()), !dbg !711
  %40 = call noalias i8* @fio_malloc(i64 56), !dbg !712
  %41 = ptrtoint i8* %40 to i64, !dbg !712
  %42 = and i64 %41, 15, !dbg !712
  %43 = icmp eq i64 %42, 0, !dbg !712
  call void @llvm.assume(i1 %43), !dbg !712
  %44 = bitcast i8* %40 to %struct.http1_sse_fio_protocol_s*, !dbg !712
  store %struct.http1_sse_fio_protocol_s* %44, %struct.http1_sse_fio_protocol_s** %7, align 8, !dbg !711
  %45 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %7, align 8, !dbg !713
  %46 = icmp ne %struct.http1_sse_fio_protocol_s* %45, null, !dbg !713
  br i1 %46, label %48, label %47, !dbg !716

47:                                               ; preds = %2
  br label %103, !dbg !717

48:                                               ; preds = %2
  %49 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %7, align 8, !dbg !718
  %50 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %8, i32 0, i32 0, !dbg !719
  %51 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %50, i32 0, i32 0, !dbg !720
  store void (i64, %struct.fio_protocol_s*)* null, void (i64, %struct.fio_protocol_s*)** %51, align 8, !dbg !720
  %52 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %50, i32 0, i32 1, !dbg !720
  store void (i64, %struct.fio_protocol_s*)* @http1_sse_on_ready, void (i64, %struct.fio_protocol_s*)** %52, align 8, !dbg !720
  %53 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %50, i32 0, i32 2, !dbg !720
  store i8 (i64, %struct.fio_protocol_s*)* @http1_sse_on_shutdown, i8 (i64, %struct.fio_protocol_s*)** %53, align 8, !dbg !720
  %54 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %50, i32 0, i32 3, !dbg !720
  store void (i64, %struct.fio_protocol_s*)* @http1_sse_on_close, void (i64, %struct.fio_protocol_s*)** %54, align 8, !dbg !720
  %55 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %50, i32 0, i32 4, !dbg !720
  store void (i64, %struct.fio_protocol_s*)* @http1_sse_ping, void (i64, %struct.fio_protocol_s*)** %55, align 8, !dbg !720
  %56 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %50, i32 0, i32 5, !dbg !720
  store i64 0, i64* %56, align 8, !dbg !720
  %57 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %8, i32 0, i32 1, !dbg !719
  %58 = call noalias i8* @fio_malloc(i64 104), !dbg !721
  %59 = ptrtoint i8* %58 to i64, !dbg !721
  %60 = and i64 %59, 15, !dbg !721
  %61 = icmp eq i64 %60, 0, !dbg !721
  call void @llvm.assume(i1 %61), !dbg !721
  %62 = bitcast i8* %58 to %struct.http_sse_internal_s*, !dbg !721
  store %struct.http_sse_internal_s* %62, %struct.http_sse_internal_s** %57, align 8, !dbg !719
  %63 = bitcast %struct.http1_sse_fio_protocol_s* %49 to i8*, !dbg !722
  %64 = bitcast %struct.http1_sse_fio_protocol_s* %8 to i8*, !dbg !722
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 56, i1 false), !dbg !722
  %65 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %7, align 8, !dbg !723
  %66 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %65, i32 0, i32 1, !dbg !725
  %67 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %66, align 8, !dbg !725
  %68 = icmp ne %struct.http_sse_internal_s* %67, null, !dbg !723
  br i1 %68, label %70, label %69, !dbg !726

69:                                               ; preds = %48
  br label %103, !dbg !727

70:                                               ; preds = %48
  %71 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %7, align 8, !dbg !728
  %72 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %71, i32 0, i32 1, !dbg !729
  %73 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %72, align 8, !dbg !729
  %74 = load i64, i64* %6, align 8, !dbg !730
  %75 = load %struct.http_sse_s*, %struct.http_sse_s** %5, align 8, !dbg !731
  call void @http_sse_init(%struct.http_sse_internal_s* %73, i64 %74, %struct.http_vtable_s* @HTTP1_VTABLE, %struct.http_sse_s* %75), !dbg !732
  %76 = load i64, i64* %6, align 8, !dbg !733
  %77 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !734
  %78 = getelementptr inbounds %struct.http_s, %struct.http_s* %77, i32 0, i32 0, !dbg !734
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %78, i32 0, i32 1, !dbg !734
  %80 = load i64, i64* %79, align 8, !dbg !734
  %81 = inttoptr i64 %80 to %struct.http1pr_s*, !dbg !734
  %82 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %81, i32 0, i32 0, !dbg !735
  %83 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %82, i32 0, i32 2, !dbg !736
  %84 = load %struct.http_settings_s*, %struct.http_settings_s** %83, align 8, !dbg !736
  %85 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %84, i32 0, i32 16, !dbg !737
  %86 = load i8, i8* %85, align 1, !dbg !737
  call void @fio_timeout_set(i64 %76, i8 zeroext %86), !dbg !738
  %87 = load %struct.http_sse_s*, %struct.http_sse_s** %5, align 8, !dbg !739
  %88 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %87, i32 0, i32 0, !dbg !741
  %89 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %88, align 8, !dbg !741
  %90 = icmp ne void (%struct.http_sse_s*)* %89, null, !dbg !739
  br i1 %90, label %91, label %99, !dbg !742

91:                                               ; preds = %70
  %92 = load %struct.http_sse_s*, %struct.http_sse_s** %5, align 8, !dbg !743
  %93 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %92, i32 0, i32 0, !dbg !744
  %94 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %93, align 8, !dbg !744
  %95 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %7, align 8, !dbg !745
  %96 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %95, i32 0, i32 1, !dbg !746
  %97 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %96, align 8, !dbg !746
  %98 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %97, i32 0, i32 0, !dbg !747
  call void %94(%struct.http_sse_s* %98), !dbg !743
  br label %99, !dbg !743

99:                                               ; preds = %91, %70
  %100 = load i64, i64* %6, align 8, !dbg !748
  %101 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %7, align 8, !dbg !749
  %102 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %101, i32 0, i32 0, !dbg !750
  call void @fio_attach(i64 %100, %struct.fio_protocol_s* %102), !dbg !751
  store i32 0, i32* %3, align 4, !dbg !752
  br label %122, !dbg !752

103:                                              ; preds = %69, %47
  call void @llvm.dbg.label(metadata !753), !dbg !754
  %104 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !755
  %105 = getelementptr inbounds %struct.http_s, %struct.http_s* %104, i32 0, i32 0, !dbg !755
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %105, i32 0, i32 1, !dbg !755
  %107 = load i64, i64* %106, align 8, !dbg !755
  %108 = inttoptr i64 %107 to %struct.http1pr_s*, !dbg !755
  %109 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %108, i32 0, i32 0, !dbg !756
  %110 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %109, i32 0, i32 1, !dbg !757
  %111 = load i64, i64* %110, align 8, !dbg !757
  call void @fio_close(i64 %111), !dbg !758
  %112 = load %struct.http_sse_s*, %struct.http_sse_s** %5, align 8, !dbg !759
  %113 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %112, i32 0, i32 3, !dbg !761
  %114 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %113, align 8, !dbg !761
  %115 = icmp ne void (%struct.http_sse_s*)* %114, null, !dbg !759
  br i1 %115, label %116, label %121, !dbg !762

116:                                              ; preds = %103
  %117 = load %struct.http_sse_s*, %struct.http_sse_s** %5, align 8, !dbg !763
  %118 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %117, i32 0, i32 3, !dbg !764
  %119 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %118, align 8, !dbg !764
  %120 = load %struct.http_sse_s*, %struct.http_sse_s** %5, align 8, !dbg !765
  call void %119(%struct.http_sse_s* %120), !dbg !763
  br label %121, !dbg !763

121:                                              ; preds = %116, %103
  store i32 -1, i32* %3, align 4, !dbg !766
  br label %122, !dbg !766

122:                                              ; preds = %121, %99
  %123 = load i32, i32* %3, align 4, !dbg !767
  ret i32 %123, !dbg !767
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_sse_write(%struct.http_sse_s* %0, i64 %1) #0 !dbg !768 {
  %3 = alloca %struct.http_sse_s*, align 8
  %4 = alloca i64, align 8
  store %struct.http_sse_s* %0, %struct.http_sse_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.http_sse_s** %3, metadata !769, metadata !DIExpression()), !dbg !770
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !771, metadata !DIExpression()), !dbg !772
  %5 = load %struct.http_sse_s*, %struct.http_sse_s** %3, align 8, !dbg !773
  %6 = bitcast %struct.http_sse_s* %5 to %struct.http_sse_internal_s*, !dbg !774
  %7 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %6, i32 0, i32 1, !dbg !774
  %8 = load i64, i64* %7, align 8, !dbg !774
  %9 = load i64, i64* %4, align 8, !dbg !775
  %10 = call i64 @fiobj_send_free(i64 %8, i64 %9), !dbg !776
  %11 = trunc i64 %10 to i32, !dbg !776
  ret i32 %11, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_sse_close(%struct.http_sse_s* %0) #0 !dbg !778 {
  %2 = alloca %struct.http_sse_s*, align 8
  store %struct.http_sse_s* %0, %struct.http_sse_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.http_sse_s** %2, metadata !779, metadata !DIExpression()), !dbg !780
  %3 = load %struct.http_sse_s*, %struct.http_sse_s** %2, align 8, !dbg !781
  %4 = bitcast %struct.http_sse_s* %3 to %struct.http_sse_internal_s*, !dbg !782
  %5 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %4, i32 0, i32 1, !dbg !782
  %6 = load i64, i64* %5, align 8, !dbg !782
  call void @fio_close(i64 %6), !dbg !783
  ret i32 0, !dbg !784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @http1_vtable() #0 !dbg !785 {
  ret i8* bitcast (%struct.http_vtable_s* @HTTP1_VTABLE to i8*), !dbg !788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fio_protocol_s* @http1_new(i64 %0, %struct.http_settings_s* %1, i8* %2, i64 %3) #0 !dbg !789 {
  %5 = alloca %struct.fio_protocol_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.http_settings_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.http1pr_s*, align 8
  %11 = alloca %struct.http1pr_s, align 8
  store i64 %0, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !792, metadata !DIExpression()), !dbg !793
  store %struct.http_settings_s* %1, %struct.http_settings_s** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.http_settings_s** %7, metadata !794, metadata !DIExpression()), !dbg !795
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !796, metadata !DIExpression()), !dbg !797
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !798, metadata !DIExpression()), !dbg !799
  %12 = load i8*, i8** %8, align 8, !dbg !800
  %13 = icmp ne i8* %12, null, !dbg !800
  br i1 %13, label %14, label %18, !dbg !802

14:                                               ; preds = %4
  %15 = load i64, i64* %9, align 8, !dbg !803
  %16 = icmp ugt i64 %15, 8192, !dbg !804
  br i1 %16, label %17, label %18, !dbg !805

17:                                               ; preds = %14
  store %struct.fio_protocol_s* null, %struct.fio_protocol_s** %5, align 8, !dbg !806
  br label %92, !dbg !806

18:                                               ; preds = %14, %4
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %10, metadata !807, metadata !DIExpression()), !dbg !808
  %19 = call noalias i8* @fio_malloc(i64 8448), !dbg !809
  %20 = ptrtoint i8* %19 to i64, !dbg !809
  %21 = and i64 %20, 15, !dbg !809
  %22 = icmp eq i64 %21, 0, !dbg !809
  call void @llvm.assume(i1 %22), !dbg !809
  %23 = bitcast i8* %19 to %struct.http1pr_s*, !dbg !809
  store %struct.http1pr_s* %23, %struct.http1pr_s** %10, align 8, !dbg !808
  %24 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8, !dbg !810
  %25 = icmp ne %struct.http1pr_s* %24, null, !dbg !810
  br i1 %25, label %36, label %26, !dbg !813

26:                                               ; preds = %18
  br label %27, !dbg !814

27:                                               ; preds = %26
  %28 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !816
  %29 = icmp sle i32 1, %28, !dbg !816
  br i1 %29, label %30, label %31, !dbg !819

30:                                               ; preds = %27
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)), !dbg !820
  br label %31, !dbg !820

31:                                               ; preds = %30, %27
  br label %32, !dbg !819

32:                                               ; preds = %31
  %33 = call i32 @kill(i32 0, i32 2) #2, !dbg !814
  %34 = call i32* @__errno_location() #11, !dbg !814
  %35 = load i32, i32* %34, align 4, !dbg !814
  call void @exit(i32 %35) #10, !dbg !814
  unreachable, !dbg !814

36:                                               ; preds = %18
  %37 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8, !dbg !822
  %38 = bitcast %struct.http1pr_s* %11 to i8*, !dbg !823
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 256, i1 false), !dbg !823
  %39 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %11, i32 0, i32 0, !dbg !824
  %40 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %39, i32 0, i32 0, !dbg !825
  %41 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %40, i32 0, i32 0, !dbg !826
  store void (i64, %struct.fio_protocol_s*)* @http1_on_data_first_time, void (i64, %struct.fio_protocol_s*)** %41, align 8, !dbg !826
  %42 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %40, i32 0, i32 1, !dbg !826
  store void (i64, %struct.fio_protocol_s*)* @http1_on_ready, void (i64, %struct.fio_protocol_s*)** %42, align 8, !dbg !826
  %43 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %40, i32 0, i32 3, !dbg !826
  store void (i64, %struct.fio_protocol_s*)* @http1_on_close, void (i64, %struct.fio_protocol_s*)** %43, align 8, !dbg !826
  %44 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %39, i32 0, i32 1, !dbg !825
  %45 = load i64, i64* %6, align 8, !dbg !827
  store i64 %45, i64* %44, align 8, !dbg !825
  %46 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %39, i32 0, i32 2, !dbg !825
  %47 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8, !dbg !828
  store %struct.http_settings_s* %47, %struct.http_settings_s** %46, align 8, !dbg !825
  %48 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %11, i32 0, i32 4, !dbg !824
  %49 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8, !dbg !829
  %50 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %49, i32 0, i32 7, !dbg !830
  %51 = load i64, i64* %50, align 8, !dbg !830
  store i64 %51, i64* %48, align 8, !dbg !824
  %52 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %11, i32 0, i32 7, !dbg !824
  %53 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8, !dbg !831
  %54 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %53, i32 0, i32 18, !dbg !832
  %55 = load i8, i8* %54, align 1, !dbg !832
  store i8 %55, i8* %52, align 1, !dbg !824
  %56 = bitcast %struct.http1pr_s* %37 to i8*, !dbg !823
  %57 = bitcast %struct.http1pr_s* %11 to i8*, !dbg !823
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 256, i1 false), !dbg !823
  %58 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8, !dbg !833
  %59 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %58, i32 0, i32 2, !dbg !834
  %60 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8, !dbg !835
  %61 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %60, i32 0, i32 0, !dbg !836
  call void @http_s_new(%struct.http_s* %59, %struct.http_fio_protocol_s* %61, %struct.http_vtable_s* @HTTP1_VTABLE), !dbg !837
  %62 = load i8*, i8** %8, align 8, !dbg !838
  %63 = icmp ne i8* %62, null, !dbg !838
  br i1 %63, label %64, label %76, !dbg !840

64:                                               ; preds = %36
  %65 = load i64, i64* %9, align 8, !dbg !841
  %66 = icmp ule i64 %65, 8192, !dbg !842
  br i1 %66, label %67, label %76, !dbg !843

67:                                               ; preds = %64
  %68 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8, !dbg !844
  %69 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %68, i32 0, i32 9, !dbg !846
  %70 = getelementptr inbounds [0 x i8], [0 x i8]* %69, i64 0, i64 0, !dbg !847
  %71 = load i8*, i8** %8, align 8, !dbg !848
  %72 = load i64, i64* %9, align 8, !dbg !849
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %70, i8* align 1 %71, i64 %72, i1 false), !dbg !847
  %73 = load i64, i64* %9, align 8, !dbg !850
  %74 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8, !dbg !851
  %75 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %74, i32 0, i32 3, !dbg !852
  store i64 %73, i64* %75, align 8, !dbg !853
  br label %76, !dbg !854

76:                                               ; preds = %67, %64, %36
  %77 = load i64, i64* %6, align 8, !dbg !855
  %78 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8, !dbg !856
  %79 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %78, i32 0, i32 0, !dbg !857
  %80 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %79, i32 0, i32 0, !dbg !858
  call void @fio_attach(i64 %77, %struct.fio_protocol_s* %80), !dbg !859
  %81 = load i8*, i8** %8, align 8, !dbg !860
  %82 = icmp ne i8* %81, null, !dbg !860
  br i1 %82, label %83, label %88, !dbg !862

83:                                               ; preds = %76
  %84 = load i64, i64* %9, align 8, !dbg !863
  %85 = icmp ule i64 %84, 8192, !dbg !864
  br i1 %85, label %86, label %88, !dbg !865

86:                                               ; preds = %83
  %87 = load i64, i64* %6, align 8, !dbg !866
  call void @fio_force_event(i64 %87, i32 0), !dbg !868
  br label %88, !dbg !869

88:                                               ; preds = %86, %83, %76
  %89 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8, !dbg !870
  %90 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %89, i32 0, i32 0, !dbg !871
  %91 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %90, i32 0, i32 0, !dbg !872
  store %struct.fio_protocol_s* %91, %struct.fio_protocol_s** %5, align 8, !dbg !873
  br label %92, !dbg !873

92:                                               ; preds = %88, %17
  %93 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %5, align 8, !dbg !874
  ret %struct.fio_protocol_s* %93, !dbg !874
}

declare dso_local noalias i8* @fio_malloc(i64) #5

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #7

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #8

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_on_data_first_time(i64 %0, %struct.fio_protocol_s* %1) #0 !dbg !875 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.http1pr_s*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !876, metadata !DIExpression()), !dbg !877
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %4, metadata !878, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %5, metadata !880, metadata !DIExpression()), !dbg !881
  %7 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !882
  %8 = bitcast %struct.fio_protocol_s* %7 to %struct.http1pr_s*, !dbg !883
  store %struct.http1pr_s* %8, %struct.http1pr_s** %5, align 8, !dbg !881
  call void @llvm.dbg.declare(metadata i64* %6, metadata !884, metadata !DIExpression()), !dbg !885
  %9 = load i64, i64* %3, align 8, !dbg !886
  %10 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !887
  %11 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %10, i32 0, i32 9, !dbg !888
  %12 = getelementptr inbounds [0 x i8], [0 x i8]* %11, i64 0, i64 0, !dbg !887
  %13 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !889
  %14 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %13, i32 0, i32 3, !dbg !890
  %15 = load i64, i64* %14, align 8, !dbg !890
  %16 = getelementptr inbounds i8, i8* %12, i64 %15, !dbg !891
  %17 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !892
  %18 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %17, i32 0, i32 3, !dbg !893
  %19 = load i64, i64* %18, align 8, !dbg !893
  %20 = sub i64 8192, %19, !dbg !894
  %21 = call i64 @fio_read(i64 %9, i8* %16, i64 %20), !dbg !895
  store i64 %21, i64* %6, align 8, !dbg !896
  %22 = load i64, i64* %6, align 8, !dbg !897
  %23 = icmp sle i64 %22, 0, !dbg !899
  br i1 %23, label %24, label %25, !dbg !900

24:                                               ; preds = %2
  br label %54, !dbg !901

25:                                               ; preds = %2
  %26 = load i64, i64* %6, align 8, !dbg !902
  %27 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !903
  %28 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %27, i32 0, i32 3, !dbg !904
  %29 = load i64, i64* %28, align 8, !dbg !905
  %30 = add i64 %29, %26, !dbg !905
  store i64 %30, i64* %28, align 8, !dbg !905
  %31 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !906
  %32 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %31, i32 0, i32 0, !dbg !907
  %33 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %32, i32 0, i32 0, !dbg !908
  %34 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %33, i32 0, i32 0, !dbg !909
  store void (i64, %struct.fio_protocol_s*)* @http1_on_data, void (i64, %struct.fio_protocol_s*)** %34, align 8, !dbg !910
  %35 = load i64, i64* %6, align 8, !dbg !911
  %36 = icmp sge i64 %35, 24, !dbg !913
  br i1 %36, label %37, label %51, !dbg !914

37:                                               ; preds = %25
  %38 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !915
  %39 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %38, i32 0, i32 9, !dbg !916
  %40 = getelementptr inbounds [0 x i8], [0 x i8]* %39, i64 0, i64 0, !dbg !915
  %41 = call i32 @memcmp(i8* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i64 0, i64 0), i64 24) #12, !dbg !917
  %42 = icmp ne i32 %41, 0, !dbg !917
  br i1 %42, label %51, label %43, !dbg !918

43:                                               ; preds = %37
  br label %44, !dbg !919

44:                                               ; preds = %43
  %45 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !921
  %46 = icmp sle i32 3, %45, !dbg !921
  br i1 %46, label %47, label %48, !dbg !924

47:                                               ; preds = %44
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.91, i64 0, i64 0)), !dbg !925
  br label %48, !dbg !925

48:                                               ; preds = %47, %44
  br label %49, !dbg !924

49:                                               ; preds = %48
  %50 = load i64, i64* %3, align 8, !dbg !927
  call void @fio_close(i64 %50), !dbg !928
  br label %54, !dbg !929

51:                                               ; preds = %37, %25
  %52 = load i64, i64* %3, align 8, !dbg !930
  %53 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !931
  call void @http1_consume_data(i64 %52, %struct.http1pr_s* %53), !dbg !932
  br label %54, !dbg !933

54:                                               ; preds = %51, %49, %24
  ret void, !dbg !933
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_on_ready(i64 %0, %struct.fio_protocol_s* %1) #0 !dbg !934 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.http1pr_s*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !935, metadata !DIExpression()), !dbg !936
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %4, metadata !937, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %5, metadata !939, metadata !DIExpression()), !dbg !940
  %6 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !941
  %7 = bitcast %struct.fio_protocol_s* %6 to %struct.http1pr_s*, !dbg !942
  store %struct.http1pr_s* %7, %struct.http1pr_s** %5, align 8, !dbg !940
  %8 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !943
  %9 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %8, i32 0, i32 8, !dbg !945
  %10 = load i8, i8* %9, align 2, !dbg !945
  %11 = zext i8 %10 to i32, !dbg !943
  %12 = and i32 %11, 4, !dbg !946
  %13 = icmp ne i32 %12, 0, !dbg !946
  br i1 %13, label %14, label %22, !dbg !947

14:                                               ; preds = %2
  %15 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !948
  %16 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %15, i32 0, i32 8, !dbg !950
  %17 = load i8, i8* %16, align 2, !dbg !951
  %18 = zext i8 %17 to i32, !dbg !951
  %19 = xor i32 %18, 4, !dbg !951
  %20 = trunc i32 %19 to i8, !dbg !951
  store i8 %20, i8* %16, align 2, !dbg !951
  %21 = load i64, i64* %3, align 8, !dbg !952
  call void @fio_force_event(i64 %21, i32 0), !dbg !953
  br label %22, !dbg !954

22:                                               ; preds = %14, %2
  %23 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !955
  ret void, !dbg !956
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_on_close(i64 %0, %struct.fio_protocol_s* %1) #0 !dbg !957 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !958, metadata !DIExpression()), !dbg !959
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %4, metadata !960, metadata !DIExpression()), !dbg !961
  %5 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !962
  call void @http1_destroy(%struct.fio_protocol_s* %5), !dbg !963
  %6 = load i64, i64* %3, align 8, !dbg !964
  ret void, !dbg !965
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_s_new(%struct.http_s* %0, %struct.http_fio_protocol_s* %1, %struct.http_vtable_s* %2) #0 !dbg !966 {
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca %struct.http_fio_protocol_s*, align 8
  %6 = alloca %struct.http_vtable_s*, align 8
  %7 = alloca %struct.http_s, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %4, metadata !969, metadata !DIExpression()), !dbg !970
  store %struct.http_fio_protocol_s* %1, %struct.http_fio_protocol_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.http_fio_protocol_s** %5, metadata !971, metadata !DIExpression()), !dbg !972
  store %struct.http_vtable_s* %2, %struct.http_vtable_s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.http_vtable_s** %6, metadata !973, metadata !DIExpression()), !dbg !974
  %8 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !975
  %9 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 0, !dbg !976
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0, !dbg !977
  %11 = load %struct.http_vtable_s*, %struct.http_vtable_s** %6, align 8, !dbg !978
  %12 = bitcast %struct.http_vtable_s* %11 to i8*, !dbg !978
  store i8* %12, i8** %10, align 8, !dbg !977
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1, !dbg !977
  %14 = load %struct.http_fio_protocol_s*, %struct.http_fio_protocol_s** %5, align 8, !dbg !979
  %15 = ptrtoint %struct.http_fio_protocol_s* %14 to i64, !dbg !980
  store i64 %15, i64* %13, align 8, !dbg !977
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 2, !dbg !977
  %17 = call i64 @fiobj_hash_new(), !dbg !981
  store i64 %17, i64* %16, align 8, !dbg !977
  %18 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 1, !dbg !976
  %19 = call { i64, i64 } @fio_last_tick(), !dbg !982
  %20 = bitcast %struct.timespec* %18 to { i64, i64 }*, !dbg !982
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0, !dbg !982
  %22 = extractvalue { i64, i64 } %19, 0, !dbg !982
  store i64 %22, i64* %21, align 8, !dbg !982
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1, !dbg !982
  %24 = extractvalue { i64, i64 } %19, 1, !dbg !982
  store i64 %24, i64* %23, align 8, !dbg !982
  %25 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 2, !dbg !976
  store i64 0, i64* %25, align 8, !dbg !976
  %26 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 3, !dbg !976
  store i64 0, i64* %26, align 8, !dbg !976
  %27 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 4, !dbg !976
  store i64 0, i64* %27, align 8, !dbg !976
  %28 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 5, !dbg !976
  store i64 200, i64* %28, align 8, !dbg !976
  %29 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 6, !dbg !976
  store i64 0, i64* %29, align 8, !dbg !976
  %30 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 7, !dbg !976
  store i64 0, i64* %30, align 8, !dbg !976
  %31 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 8, !dbg !976
  %32 = call i64 @fiobj_hash_new(), !dbg !983
  store i64 %32, i64* %31, align 8, !dbg !976
  %33 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 9, !dbg !976
  store i64 0, i64* %33, align 8, !dbg !976
  %34 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 10, !dbg !976
  store i64 0, i64* %34, align 8, !dbg !976
  %35 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 11, !dbg !976
  store i64 0, i64* %35, align 8, !dbg !976
  %36 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 12, !dbg !976
  store i8* null, i8** %36, align 8, !dbg !976
  %37 = bitcast %struct.http_s* %8 to i8*, !dbg !984
  %38 = bitcast %struct.http_s* %7 to i8*, !dbg !984
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 128, i1 false), !dbg !984
  ret void, !dbg !985
}

declare dso_local void @fio_attach(i64, %struct.fio_protocol_s*) #5

declare dso_local void @fio_force_event(i64, i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http1_destroy(%struct.fio_protocol_s* %0) #0 !dbg !986 {
  %2 = alloca %struct.fio_protocol_s*, align 8
  %3 = alloca %struct.http1pr_s*, align 8
  store %struct.fio_protocol_s* %0, %struct.fio_protocol_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %2, metadata !989, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %3, metadata !991, metadata !DIExpression()), !dbg !992
  %4 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %2, align 8, !dbg !993
  %5 = bitcast %struct.fio_protocol_s* %4 to %struct.http1pr_s*, !dbg !994
  store %struct.http1pr_s* %5, %struct.http1pr_s** %3, align 8, !dbg !992
  %6 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !995
  %7 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %6, i32 0, i32 2, !dbg !995
  %8 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 5, !dbg !996
  store i64 0, i64* %8, align 8, !dbg !997
  %9 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !998
  %10 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %9, i32 0, i32 2, !dbg !998
  call void @http_s_destroy(%struct.http_s* %10, i8 zeroext 0), !dbg !999
  %11 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !1000
  %12 = bitcast %struct.http1pr_s* %11 to i8*, !dbg !1000
  call void @fio_free(i8* %12), !dbg !1001
  ret void, !dbg !1002
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_s_destroy(%struct.http_s* %0, i8 zeroext %1) #0 !dbg !1003 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.http_s, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %3, metadata !1006, metadata !DIExpression()), !dbg !1007
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1008, metadata !DIExpression()), !dbg !1009
  %6 = load i8, i8* %4, align 1, !dbg !1010
  %7 = zext i8 %6 to i32, !dbg !1010
  %8 = icmp ne i32 %7, 0, !dbg !1010
  br i1 %8, label %9, label %21, !dbg !1012

9:                                                ; preds = %2
  %10 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1013
  %11 = getelementptr inbounds %struct.http_s, %struct.http_s* %10, i32 0, i32 5, !dbg !1014
  %12 = load i64, i64* %11, align 8, !dbg !1014
  %13 = icmp ne i64 %12, 0, !dbg !1013
  br i1 %13, label %14, label %21, !dbg !1015

14:                                               ; preds = %9
  %15 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1016
  %16 = getelementptr inbounds %struct.http_s, %struct.http_s* %15, i32 0, i32 3, !dbg !1017
  %17 = load i64, i64* %16, align 8, !dbg !1017
  %18 = icmp ne i64 %17, 0, !dbg !1016
  br i1 %18, label %21, label %19, !dbg !1018

19:                                               ; preds = %14
  %20 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1019
  call void @http_write_log(%struct.http_s* %20), !dbg !1021
  br label %21, !dbg !1022

21:                                               ; preds = %19, %14, %9, %2
  %22 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1023
  %23 = getelementptr inbounds %struct.http_s, %struct.http_s* %22, i32 0, i32 2, !dbg !1024
  %24 = load i64, i64* %23, align 8, !dbg !1024
  call void @fiobj_free(i64 %24), !dbg !1025
  %25 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1026
  %26 = getelementptr inbounds %struct.http_s, %struct.http_s* %25, i32 0, i32 3, !dbg !1027
  %27 = load i64, i64* %26, align 8, !dbg !1027
  call void @fiobj_free(i64 %27), !dbg !1028
  %28 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1029
  %29 = getelementptr inbounds %struct.http_s, %struct.http_s* %28, i32 0, i32 0, !dbg !1030
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 2, !dbg !1031
  %31 = load i64, i64* %30, align 8, !dbg !1031
  call void @fiobj_free(i64 %31), !dbg !1032
  %32 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1033
  %33 = getelementptr inbounds %struct.http_s, %struct.http_s* %32, i32 0, i32 8, !dbg !1034
  %34 = load i64, i64* %33, align 8, !dbg !1034
  call void @fiobj_free(i64 %34), !dbg !1035
  %35 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1036
  %36 = getelementptr inbounds %struct.http_s, %struct.http_s* %35, i32 0, i32 4, !dbg !1037
  %37 = load i64, i64* %36, align 8, !dbg !1037
  call void @fiobj_free(i64 %37), !dbg !1038
  %38 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1039
  %39 = getelementptr inbounds %struct.http_s, %struct.http_s* %38, i32 0, i32 7, !dbg !1040
  %40 = load i64, i64* %39, align 8, !dbg !1040
  call void @fiobj_free(i64 %40), !dbg !1041
  %41 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1042
  %42 = getelementptr inbounds %struct.http_s, %struct.http_s* %41, i32 0, i32 6, !dbg !1043
  %43 = load i64, i64* %42, align 8, !dbg !1043
  call void @fiobj_free(i64 %43), !dbg !1044
  %44 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1045
  %45 = getelementptr inbounds %struct.http_s, %struct.http_s* %44, i32 0, i32 9, !dbg !1046
  %46 = load i64, i64* %45, align 8, !dbg !1046
  call void @fiobj_free(i64 %46), !dbg !1047
  %47 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1048
  %48 = getelementptr inbounds %struct.http_s, %struct.http_s* %47, i32 0, i32 11, !dbg !1049
  %49 = load i64, i64* %48, align 8, !dbg !1049
  call void @fiobj_free(i64 %49), !dbg !1050
  %50 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1051
  %51 = getelementptr inbounds %struct.http_s, %struct.http_s* %50, i32 0, i32 10, !dbg !1052
  %52 = load i64, i64* %51, align 8, !dbg !1052
  call void @fiobj_free(i64 %52), !dbg !1053
  %53 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1054
  %54 = bitcast %struct.http_s* %5 to i8*, !dbg !1055
  call void @llvm.memset.p0i8.i64(i8* align 8 %54, i8 0, i64 128, i1 false), !dbg !1055
  %55 = getelementptr inbounds %struct.http_s, %struct.http_s* %5, i32 0, i32 0, !dbg !1056
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0, !dbg !1057
  %57 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1058
  %58 = getelementptr inbounds %struct.http_s, %struct.http_s* %57, i32 0, i32 0, !dbg !1059
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0, !dbg !1060
  %60 = load i8*, i8** %59, align 8, !dbg !1060
  store i8* %60, i8** %56, align 8, !dbg !1057
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 1, !dbg !1057
  %62 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1061
  %63 = getelementptr inbounds %struct.http_s, %struct.http_s* %62, i32 0, i32 0, !dbg !1062
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 1, !dbg !1063
  %65 = load i64, i64* %64, align 8, !dbg !1063
  store i64 %65, i64* %61, align 8, !dbg !1057
  %66 = bitcast %struct.http_s* %53 to i8*, !dbg !1055
  %67 = bitcast %struct.http_s* %5 to i8*, !dbg !1055
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 128, i1 false), !dbg !1055
  ret void, !dbg !1064
}

declare dso_local void @fio_free(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @headers2str(%struct.http_s* %0, i64 %1) #0 !dbg !311 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.header_writer_s, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.http1pr_s*, align 8
  %9 = alloca %struct.fio_str_info_s, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fio_str_info_s, align 8
  %12 = alloca %struct.fio_str_info_s, align 8
  %13 = alloca %struct.fio_str_info_s, align 8
  %14 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %4, metadata !1065, metadata !DIExpression()), !dbg !1066
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1067, metadata !DIExpression()), !dbg !1068
  %15 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1069
  %16 = getelementptr inbounds %struct.http_s, %struct.http_s* %15, i32 0, i32 2, !dbg !1071
  %17 = load i64, i64* %16, align 8, !dbg !1071
  %18 = icmp ne i64 %17, 0, !dbg !1069
  br i1 %18, label %25, label %19, !dbg !1072

19:                                               ; preds = %2
  %20 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1073
  %21 = getelementptr inbounds %struct.http_s, %struct.http_s* %20, i32 0, i32 3, !dbg !1074
  %22 = load i64, i64* %21, align 8, !dbg !1074
  %23 = icmp ne i64 %22, 0, !dbg !1073
  br i1 %23, label %24, label %25, !dbg !1075

24:                                               ; preds = %19
  store i64 0, i64* %3, align 8, !dbg !1076
  br label %287, !dbg !1076

25:                                               ; preds = %19, %2
  %26 = load i64, i64* @headers2str.connection_hash, align 8, !dbg !1077
  %27 = icmp ne i64 %26, 0, !dbg !1077
  br i1 %27, label %30, label %28, !dbg !1079

28:                                               ; preds = %25
  %29 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 10), !dbg !1080
  store i64 %29, i64* @headers2str.connection_hash, align 8, !dbg !1081
  br label %30, !dbg !1082

30:                                               ; preds = %28, %25
  call void @llvm.dbg.declare(metadata %struct.header_writer_s* %6, metadata !1083, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1090, metadata !DIExpression()), !dbg !1093
  %31 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1094
  %32 = getelementptr inbounds %struct.http_s, %struct.http_s* %31, i32 0, i32 0, !dbg !1095
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 2, !dbg !1096
  %34 = load i64, i64* %33, align 8, !dbg !1096
  %35 = call i64 @fiobj_hash_count(i64 %34), !dbg !1097
  %36 = mul i64 %35, 64, !dbg !1098
  store i64 %36, i64* %7, align 8, !dbg !1093
  %37 = load i64, i64* %7, align 8, !dbg !1099
  %38 = load i64, i64* %5, align 8, !dbg !1100
  %39 = add i64 %37, %38, !dbg !1101
  %40 = call i64 @fiobj_str_buf(i64 %39), !dbg !1102
  %41 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1103
  store i64 %40, i64* %41, align 8, !dbg !1104
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %8, metadata !1105, metadata !DIExpression()), !dbg !1106
  %42 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1107
  %43 = getelementptr inbounds %struct.http_s, %struct.http_s* %42, i32 0, i32 0, !dbg !1107
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 1, !dbg !1107
  %45 = load i64, i64* %44, align 8, !dbg !1107
  %46 = inttoptr i64 %45 to %struct.http1pr_s*, !dbg !1107
  store %struct.http1pr_s* %46, %struct.http1pr_s** %8, align 8, !dbg !1106
  %47 = load %struct.http1pr_s*, %struct.http1pr_s** %8, align 8, !dbg !1108
  %48 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %47, i32 0, i32 7, !dbg !1110
  %49 = load i8, i8* %48, align 1, !dbg !1110
  %50 = zext i8 %49 to i32, !dbg !1108
  %51 = icmp eq i32 %50, 0, !dbg !1111
  br i1 %51, label %52, label %188, !dbg !1112

52:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %9, metadata !1113, metadata !DIExpression()), !dbg !1115
  %53 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1116
  %54 = getelementptr inbounds %struct.http_s, %struct.http_s* %53, i32 0, i32 5, !dbg !1117
  %55 = load i64, i64* %54, align 8, !dbg !1117
  call void @http1pr_status2str(%struct.fio_str_info_s* sret %9, i64 %55), !dbg !1118
  %56 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1119
  %57 = load i64, i64* %56, align 8, !dbg !1119
  %58 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2, !dbg !1120
  %59 = load i8*, i8** %58, align 8, !dbg !1120
  %60 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 1, !dbg !1121
  %61 = load i64, i64* %60, align 8, !dbg !1121
  %62 = call i64 @fiobj_str_write(i64 %57, i8* %59, i64 %61), !dbg !1122
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1123, metadata !DIExpression()), !dbg !1124
  %63 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1125
  %64 = getelementptr inbounds %struct.http_s, %struct.http_s* %63, i32 0, i32 0, !dbg !1126
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 2, !dbg !1127
  %66 = load i64, i64* %65, align 8, !dbg !1127
  %67 = load i64, i64* @headers2str.connection_hash, align 8, !dbg !1128
  %68 = call i64 @fiobj_hash_get2(i64 %66, i64 %67), !dbg !1129
  store i64 %68, i64* %10, align 8, !dbg !1124
  %69 = load i64, i64* %10, align 8, !dbg !1130
  %70 = icmp ne i64 %69, 0, !dbg !1130
  br i1 %70, label %71, label %92, !dbg !1132

71:                                               ; preds = %52
  %72 = load i64, i64* %10, align 8, !dbg !1133
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %11, i64 %72), !dbg !1135
  %73 = bitcast %struct.fio_str_info_s* %9 to i8*, !dbg !1135
  %74 = bitcast %struct.fio_str_info_s* %11 to i8*, !dbg !1135
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 24, i1 false), !dbg !1135
  %75 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2, !dbg !1136
  %76 = load i8*, i8** %75, align 8, !dbg !1136
  %77 = getelementptr inbounds i8, i8* %76, i64 0, !dbg !1138
  %78 = load i8, i8* %77, align 1, !dbg !1138
  %79 = sext i8 %78 to i32, !dbg !1138
  %80 = icmp eq i32 %79, 99, !dbg !1139
  br i1 %80, label %88, label %81, !dbg !1140

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2, !dbg !1141
  %83 = load i8*, i8** %82, align 8, !dbg !1141
  %84 = getelementptr inbounds i8, i8* %83, i64 0, !dbg !1142
  %85 = load i8, i8* %84, align 1, !dbg !1142
  %86 = sext i8 %85 to i32, !dbg !1142
  %87 = icmp eq i32 %86, 67, !dbg !1143
  br i1 %87, label %88, label %91, !dbg !1144

88:                                               ; preds = %81, %71
  %89 = load %struct.http1pr_s*, %struct.http1pr_s** %8, align 8, !dbg !1145
  %90 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %89, i32 0, i32 6, !dbg !1146
  store i8 1, i8* %90, align 8, !dbg !1147
  br label %91, !dbg !1145

91:                                               ; preds = %88, %81
  br label %187, !dbg !1148

92:                                               ; preds = %52
  %93 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1149
  %94 = getelementptr inbounds %struct.http_s, %struct.http_s* %93, i32 0, i32 8, !dbg !1151
  %95 = load i64, i64* %94, align 8, !dbg !1151
  %96 = load i64, i64* @headers2str.connection_hash, align 8, !dbg !1152
  %97 = call i64 @fiobj_hash_get2(i64 %95, i64 %96), !dbg !1153
  store i64 %97, i64* %10, align 8, !dbg !1154
  %98 = load i64, i64* %10, align 8, !dbg !1155
  %99 = icmp ne i64 %98, 0, !dbg !1155
  br i1 %99, label %100, label %136, !dbg !1157

100:                                              ; preds = %92
  %101 = load i64, i64* %10, align 8, !dbg !1158
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %12, i64 %101), !dbg !1160
  %102 = bitcast %struct.fio_str_info_s* %9 to i8*, !dbg !1160
  %103 = bitcast %struct.fio_str_info_s* %12 to i8*, !dbg !1160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 24, i1 false), !dbg !1160
  %104 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2, !dbg !1161
  %105 = load i8*, i8** %104, align 8, !dbg !1161
  %106 = icmp ne i8* %105, null, !dbg !1163
  br i1 %106, label %107, label %125, !dbg !1164

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 1, !dbg !1165
  %109 = load i64, i64* %108, align 8, !dbg !1165
  %110 = icmp ne i64 %109, 0, !dbg !1166
  br i1 %110, label %111, label %125, !dbg !1167

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2, !dbg !1168
  %113 = load i8*, i8** %112, align 8, !dbg !1168
  %114 = getelementptr inbounds i8, i8* %113, i64 0, !dbg !1169
  %115 = load i8, i8* %114, align 1, !dbg !1169
  %116 = sext i8 %115 to i32, !dbg !1169
  %117 = icmp eq i32 %116, 107, !dbg !1170
  br i1 %117, label %125, label %118, !dbg !1171

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2, !dbg !1172
  %120 = load i8*, i8** %119, align 8, !dbg !1172
  %121 = getelementptr inbounds i8, i8* %120, i64 0, !dbg !1173
  %122 = load i8, i8* %121, align 1, !dbg !1173
  %123 = sext i8 %122 to i32, !dbg !1173
  %124 = icmp eq i32 %123, 75, !dbg !1174
  br i1 %124, label %125, label %129, !dbg !1175

125:                                              ; preds = %118, %111, %107, %100
  %126 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1176
  %127 = load i64, i64* %126, align 8, !dbg !1176
  %128 = call i64 @fiobj_str_write(i64 %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 23), !dbg !1177
  br label %135, !dbg !1177

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1178
  %131 = load i64, i64* %130, align 8, !dbg !1178
  %132 = call i64 @fiobj_str_write(i64 %131, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 18), !dbg !1180
  %133 = load %struct.http1pr_s*, %struct.http1pr_s** %8, align 8, !dbg !1181
  %134 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %133, i32 0, i32 6, !dbg !1182
  store i8 1, i8* %134, align 8, !dbg !1183
  br label %135

135:                                              ; preds = %129, %125
  br label %186, !dbg !1184

136:                                              ; preds = %92
  %137 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1185
  %138 = getelementptr inbounds %struct.http_s, %struct.http_s* %137, i32 0, i32 4, !dbg !1187
  %139 = load i64, i64* %138, align 8, !dbg !1187
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %13, i64 %139), !dbg !1188
  %140 = bitcast %struct.fio_str_info_s* %9 to i8*, !dbg !1188
  %141 = bitcast %struct.fio_str_info_s* %13 to i8*, !dbg !1188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 24, i1 false), !dbg !1188
  %142 = load %struct.http1pr_s*, %struct.http1pr_s** %8, align 8, !dbg !1189
  %143 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %142, i32 0, i32 6, !dbg !1191
  %144 = load i8, i8* %143, align 8, !dbg !1191
  %145 = icmp ne i8 %144, 0, !dbg !1189
  br i1 %145, label %179, label %146, !dbg !1192

146:                                              ; preds = %136
  %147 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 1, !dbg !1193
  %148 = load i64, i64* %147, align 8, !dbg !1193
  %149 = icmp ugt i64 %148, 7, !dbg !1194
  br i1 %149, label %150, label %179, !dbg !1195

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2, !dbg !1196
  %152 = load i8*, i8** %151, align 8, !dbg !1196
  %153 = icmp ne i8* %152, null, !dbg !1197
  br i1 %153, label %154, label %179, !dbg !1198

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2, !dbg !1199
  %156 = load i8*, i8** %155, align 8, !dbg !1199
  %157 = getelementptr inbounds i8, i8* %156, i64 5, !dbg !1200
  %158 = load i8, i8* %157, align 1, !dbg !1200
  %159 = sext i8 %158 to i32, !dbg !1200
  %160 = icmp eq i32 %159, 49, !dbg !1201
  br i1 %160, label %161, label %179, !dbg !1202

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2, !dbg !1203
  %163 = load i8*, i8** %162, align 8, !dbg !1203
  %164 = getelementptr inbounds i8, i8* %163, i64 6, !dbg !1204
  %165 = load i8, i8* %164, align 1, !dbg !1204
  %166 = sext i8 %165 to i32, !dbg !1204
  %167 = icmp eq i32 %166, 46, !dbg !1205
  br i1 %167, label %168, label %179, !dbg !1206

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2, !dbg !1207
  %170 = load i8*, i8** %169, align 8, !dbg !1207
  %171 = getelementptr inbounds i8, i8* %170, i64 7, !dbg !1208
  %172 = load i8, i8* %171, align 1, !dbg !1208
  %173 = sext i8 %172 to i32, !dbg !1208
  %174 = icmp eq i32 %173, 49, !dbg !1209
  br i1 %174, label %175, label %179, !dbg !1210

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1211
  %177 = load i64, i64* %176, align 8, !dbg !1211
  %178 = call i64 @fiobj_str_write(i64 %177, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 23), !dbg !1212
  br label %185, !dbg !1212

179:                                              ; preds = %168, %161, %154, %150, %146, %136
  %180 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1213
  %181 = load i64, i64* %180, align 8, !dbg !1213
  %182 = call i64 @fiobj_str_write(i64 %181, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 18), !dbg !1215
  %183 = load %struct.http1pr_s*, %struct.http1pr_s** %8, align 8, !dbg !1216
  %184 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %183, i32 0, i32 6, !dbg !1217
  store i8 1, i8* %184, align 8, !dbg !1218
  br label %185

185:                                              ; preds = %179, %175
  br label %186

186:                                              ; preds = %185, %135
  br label %187

187:                                              ; preds = %186, %91
  br label %275, !dbg !1219

188:                                              ; preds = %30
  %189 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1220
  %190 = getelementptr inbounds %struct.http_s, %struct.http_s* %189, i32 0, i32 2, !dbg !1223
  %191 = load i64, i64* %190, align 8, !dbg !1223
  %192 = icmp ne i64 %191, 0, !dbg !1220
  br i1 %192, label %193, label %203, !dbg !1224

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1225
  %195 = load i64, i64* %194, align 8, !dbg !1225
  %196 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1225
  %197 = getelementptr inbounds %struct.http_s, %struct.http_s* %196, i32 0, i32 2, !dbg !1225
  %198 = load i64, i64* %197, align 8, !dbg !1225
  %199 = call i64 @fiobj_str_concat(i64 %195, i64 %198), !dbg !1225
  %200 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1227
  %201 = load i64, i64* %200, align 8, !dbg !1227
  %202 = call i64 @fiobj_str_write(i64 %201, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64 1), !dbg !1228
  br label %207, !dbg !1229

203:                                              ; preds = %188
  %204 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1230
  %205 = load i64, i64* %204, align 8, !dbg !1230
  %206 = call i64 @fiobj_str_write(i64 %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 4), !dbg !1232
  br label %207

207:                                              ; preds = %203, %193
  %208 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1233
  %209 = load i64, i64* %208, align 8, !dbg !1233
  %210 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1233
  %211 = getelementptr inbounds %struct.http_s, %struct.http_s* %210, i32 0, i32 6, !dbg !1233
  %212 = load i64, i64* %211, align 8, !dbg !1233
  %213 = call i64 @fiobj_str_concat(i64 %209, i64 %212), !dbg !1233
  %214 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1234
  %215 = getelementptr inbounds %struct.http_s, %struct.http_s* %214, i32 0, i32 7, !dbg !1236
  %216 = load i64, i64* %215, align 8, !dbg !1236
  %217 = icmp ne i64 %216, 0, !dbg !1234
  br i1 %217, label %218, label %228, !dbg !1237

218:                                              ; preds = %207
  %219 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1238
  %220 = load i64, i64* %219, align 8, !dbg !1238
  %221 = call i64 @fiobj_str_write(i64 %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 1), !dbg !1240
  %222 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1241
  %223 = load i64, i64* %222, align 8, !dbg !1241
  %224 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1241
  %225 = getelementptr inbounds %struct.http_s, %struct.http_s* %224, i32 0, i32 7, !dbg !1241
  %226 = load i64, i64* %225, align 8, !dbg !1241
  %227 = call i64 @fiobj_str_concat(i64 %223, i64 %226), !dbg !1241
  br label %228, !dbg !1242

228:                                              ; preds = %218, %207
  %229 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1243
  %230 = load i64, i64* %229, align 8, !dbg !1243
  %231 = call i64 @fiobj_str_write(i64 %230, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 11), !dbg !1244
  %232 = load i64, i64* @headers2str.host_hash, align 8, !dbg !1245
  %233 = icmp ne i64 %232, 0, !dbg !1245
  br i1 %233, label %236, label %234, !dbg !1247

234:                                              ; preds = %228
  %235 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 4), !dbg !1248
  store i64 %235, i64* @headers2str.host_hash, align 8, !dbg !1249
  br label %236, !dbg !1250

236:                                              ; preds = %234, %228
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1251, metadata !DIExpression()), !dbg !1252
  %237 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1253
  %238 = getelementptr inbounds %struct.http_s, %struct.http_s* %237, i32 0, i32 0, !dbg !1255
  %239 = getelementptr inbounds %struct.anon, %struct.anon* %238, i32 0, i32 2, !dbg !1256
  %240 = load i64, i64* %239, align 8, !dbg !1256
  %241 = load i64, i64* @headers2str.host_hash, align 8, !dbg !1257
  %242 = call i64 @fiobj_hash_get2(i64 %240, i64 %241), !dbg !1258
  %243 = icmp ne i64 %242, 0, !dbg !1258
  br i1 %243, label %262, label %244, !dbg !1259

244:                                              ; preds = %236
  %245 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1260
  %246 = getelementptr inbounds %struct.http_s, %struct.http_s* %245, i32 0, i32 8, !dbg !1261
  %247 = load i64, i64* %246, align 8, !dbg !1261
  %248 = load i64, i64* @headers2str.host_hash, align 8, !dbg !1262
  %249 = call i64 @fiobj_hash_get2(i64 %247, i64 %248), !dbg !1263
  store i64 %249, i64* %14, align 8, !dbg !1264
  %250 = icmp ne i64 %249, 0, !dbg !1264
  br i1 %250, label %251, label %262, !dbg !1265

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1266
  %253 = load i64, i64* %252, align 8, !dbg !1266
  %254 = call i64 @fiobj_str_write(i64 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 5), !dbg !1268
  %255 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1269
  %256 = load i64, i64* %255, align 8, !dbg !1269
  %257 = load i64, i64* %14, align 8, !dbg !1269
  %258 = call i64 @fiobj_str_concat(i64 %256, i64 %257), !dbg !1269
  %259 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1270
  %260 = load i64, i64* %259, align 8, !dbg !1270
  %261 = call i64 @fiobj_str_write(i64 %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 2), !dbg !1271
  br label %262, !dbg !1272

262:                                              ; preds = %251, %244, %236
  %263 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1273
  %264 = getelementptr inbounds %struct.http_s, %struct.http_s* %263, i32 0, i32 0, !dbg !1275
  %265 = getelementptr inbounds %struct.anon, %struct.anon* %264, i32 0, i32 2, !dbg !1276
  %266 = load i64, i64* %265, align 8, !dbg !1276
  %267 = load i64, i64* @headers2str.connection_hash, align 8, !dbg !1277
  %268 = call i64 @fiobj_hash_get2(i64 %266, i64 %267), !dbg !1278
  %269 = icmp ne i64 %268, 0, !dbg !1278
  br i1 %269, label %274, label %270, !dbg !1279

270:                                              ; preds = %262
  %271 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1280
  %272 = load i64, i64* %271, align 8, !dbg !1280
  %273 = call i64 @fiobj_str_write(i64 %272, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 23), !dbg !1281
  br label %274, !dbg !1281

274:                                              ; preds = %270, %262
  br label %275

275:                                              ; preds = %274, %187
  %276 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1282
  %277 = getelementptr inbounds %struct.http_s, %struct.http_s* %276, i32 0, i32 0, !dbg !1283
  %278 = getelementptr inbounds %struct.anon, %struct.anon* %277, i32 0, i32 2, !dbg !1284
  %279 = load i64, i64* %278, align 8, !dbg !1284
  %280 = bitcast %struct.header_writer_s* %6 to i8*, !dbg !1285
  %281 = call i64 @fiobj_each1(i64 %279, i64 0, i32 (i64, i8*)* @write_header, i8* %280), !dbg !1286
  %282 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1287
  %283 = load i64, i64* %282, align 8, !dbg !1287
  %284 = call i64 @fiobj_str_write(i64 %283, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 2), !dbg !1288
  %285 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0, !dbg !1289
  %286 = load i64, i64* %285, align 8, !dbg !1289
  store i64 %286, i64* %3, align 8, !dbg !1290
  br label %287, !dbg !1290

287:                                              ; preds = %275, %24
  %288 = load i64, i64* %3, align 8, !dbg !1291
  ret i64 %288, !dbg !1291
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_after_finish(%struct.http_s* %0) #0 !dbg !1292 {
  %2 = alloca %struct.http_s*, align 8
  %3 = alloca %struct.http1pr_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %2, metadata !1293, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %3, metadata !1295, metadata !DIExpression()), !dbg !1296
  %4 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !1297
  %5 = getelementptr inbounds %struct.http_s, %struct.http_s* %4, i32 0, i32 0, !dbg !1297
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 1, !dbg !1297
  %7 = load i64, i64* %6, align 8, !dbg !1297
  %8 = inttoptr i64 %7 to %struct.http1pr_s*, !dbg !1297
  store %struct.http1pr_s* %8, %struct.http1pr_s** %3, align 8, !dbg !1296
  %9 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !1298
  %10 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %9, i32 0, i32 8, !dbg !1299
  %11 = load i8, i8* %10, align 2, !dbg !1299
  %12 = zext i8 %11 to i64, !dbg !1298
  %13 = and i64 %12, -2, !dbg !1300
  %14 = trunc i64 %13 to i8, !dbg !1298
  %15 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !1301
  %16 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %15, i32 0, i32 8, !dbg !1302
  store i8 %14, i8* %16, align 2, !dbg !1303
  %17 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !1304
  %18 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !1306
  %19 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %18, i32 0, i32 2, !dbg !1307
  %20 = icmp ne %struct.http_s* %17, %19, !dbg !1308
  br i1 %20, label %21, label %25, !dbg !1309

21:                                               ; preds = %1
  %22 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !1310
  call void @http_s_destroy(%struct.http_s* %22, i8 zeroext 0), !dbg !1312
  %23 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !1313
  %24 = bitcast %struct.http_s* %23 to i8*, !dbg !1313
  call void @fio_free(i8* %24), !dbg !1314
  br label %33, !dbg !1315

25:                                               ; preds = %1
  %26 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !1316
  %27 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !1318
  %28 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %27, i32 0, i32 0, !dbg !1319
  %29 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %28, i32 0, i32 2, !dbg !1320
  %30 = load %struct.http_settings_s*, %struct.http_settings_s** %29, align 8, !dbg !1320
  %31 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %30, i32 0, i32 17, !dbg !1321
  %32 = load i8, i8* %31, align 2, !dbg !1321
  call void @http_s_clear(%struct.http_s* %26, i8 zeroext %32), !dbg !1322
  br label %33

33:                                               ; preds = %25, %21
  %34 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !1323
  %35 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %34, i32 0, i32 6, !dbg !1325
  %36 = load i8, i8* %35, align 8, !dbg !1325
  %37 = icmp ne i8 %36, 0, !dbg !1323
  br i1 %37, label %38, label %43, !dbg !1326

38:                                               ; preds = %33
  %39 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !1327
  %40 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %39, i32 0, i32 0, !dbg !1328
  %41 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %40, i32 0, i32 1, !dbg !1329
  %42 = load i64, i64* %41, align 8, !dbg !1329
  call void @fio_close(i64 %42), !dbg !1330
  br label %43, !dbg !1330

43:                                               ; preds = %38, %33
  ret void, !dbg !1331
}

declare dso_local i64 @fiobj_str_write(i64, i8*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_send_free(i64 %0, i64 %1) #0 !dbg !1332 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_str_info_s, align 8
  %6 = alloca %struct.fio_write_args_s, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1336, metadata !DIExpression()), !dbg !1337
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1338, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %5, metadata !1340, metadata !DIExpression()), !dbg !1341
  %7 = load i64, i64* %4, align 8, !dbg !1342
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %5, i64 %7), !dbg !1343
  %8 = load i64, i64* %3, align 8, !dbg !1344
  %9 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 0, !dbg !1344
  %10 = bitcast %union.anon* %9 to i8**, !dbg !1344
  %11 = load i64, i64* %4, align 8, !dbg !1344
  %12 = inttoptr i64 %11 to i8*, !dbg !1344
  store i8* %12, i8** %10, align 8, !dbg !1344
  %13 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 1, !dbg !1344
  %14 = bitcast %union.anon.0* %13 to void (i8*)**, !dbg !1344
  store void (i8*)* @fiobj4sock_dealloc, void (i8*)** %14, align 8, !dbg !1344
  %15 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 2, !dbg !1344
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1, !dbg !1344
  %17 = load i64, i64* %16, align 8, !dbg !1344
  store i64 %17, i64* %15, align 8, !dbg !1344
  %18 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 3, !dbg !1344
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2, !dbg !1344
  %20 = load i8*, i8** %19, align 8, !dbg !1344
  %21 = ptrtoint i8* %20 to i64, !dbg !1344
  %22 = load i64, i64* %4, align 8, !dbg !1344
  %23 = sub nsw i64 %21, %22, !dbg !1344
  store i64 %23, i64* %18, align 8, !dbg !1344
  %24 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !1344
  %25 = load i8, i8* %24, align 8, !dbg !1344
  %26 = and i8 %25, -2, !dbg !1344
  store i8 %26, i8* %24, align 8, !dbg !1344
  %27 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !1344
  %28 = load i8, i8* %27, align 8, !dbg !1344
  %29 = and i8 %28, -3, !dbg !1344
  store i8 %29, i8* %27, align 8, !dbg !1344
  %30 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !1344
  %31 = load i8, i8* %30, align 8, !dbg !1344
  %32 = and i8 %31, -5, !dbg !1344
  store i8 %32, i8* %30, align 8, !dbg !1344
  %33 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4, !dbg !1344
  %34 = load i8, i8* %33, align 8, !dbg !1344
  %35 = and i8 %34, -9, !dbg !1344
  store i8 %35, i8* %33, align 8, !dbg !1344
  %36 = call i64 @fio_write2_fn(i64 %8, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %6), !dbg !1344
  ret i64 %36, !dbg !1345
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_hash_string(i8* %0, i64 %1) #0 !dbg !1346 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1349, metadata !DIExpression()), !dbg !1350
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1351, metadata !DIExpression()), !dbg !1352
  %5 = load i8*, i8** %3, align 8, !dbg !1353
  %6 = load i64, i64* %4, align 8, !dbg !1353
  %7 = call i64 @fio_siphash13(i8* %5, i64 %6, i64 ptrtoint (i64 (i64, i32 (i64, i8*)*, i8*)* @fiobj_each2 to i64), i64 ptrtoint (void (i64)* @fiobj_free_complex_object to i64)), !dbg !1353
  ret i64 %7, !dbg !1354
}

declare dso_local i64 @fiobj_hash_count(i64) #5

declare dso_local i64 @fiobj_str_buf(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1pr_status2str(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !319 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1355, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1357, metadata !DIExpression()), !dbg !1358
  %4 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1358
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 24, i1 false), !dbg !1358
  %5 = load i64, i64* %3, align 8, !dbg !1359
  %6 = icmp uge i64 %5, 100, !dbg !1361
  br i1 %6, label %7, label %17, !dbg !1362

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8, !dbg !1363
  %9 = sub i64 %8, 100, !dbg !1364
  %10 = icmp ult i64 %9, 412, !dbg !1365
  br i1 %10, label %11, label %17, !dbg !1366

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8, !dbg !1367
  %13 = sub i64 %12, 100, !dbg !1368
  %14 = getelementptr inbounds [412 x %struct.fio_str_info_s], [412 x %struct.fio_str_info_s]* @http1pr_status2str.status2str, i64 0, i64 %13, !dbg !1369
  %15 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1369
  %16 = bitcast %struct.fio_str_info_s* %14 to i8*, !dbg !1369
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false), !dbg !1369
  br label %17, !dbg !1370

17:                                               ; preds = %11, %7, %2
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1371
  %19 = load i8*, i8** %18, align 8, !dbg !1371
  %20 = icmp ne i8* %19, null, !dbg !1373
  br i1 %20, label %23, label %21, !dbg !1374

21:                                               ; preds = %17
  %22 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1375
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 16 bitcast (%struct.fio_str_info_s* getelementptr inbounds ([412 x %struct.fio_str_info_s], [412 x %struct.fio_str_info_s]* @http1pr_status2str.status2str, i64 0, i64 400) to i8*), i64 24, i1 false), !dbg !1375
  br label %23, !dbg !1377

23:                                               ; preds = %21, %17
  ret void, !dbg !1378
}

declare dso_local i64 @fiobj_hash_get2(i64, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_obj2cstr(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !1379 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1383, metadata !DIExpression()), !dbg !1384
  %4 = load i64, i64* %3, align 8, !dbg !1385
  %5 = icmp ne i64 %4, 0, !dbg !1385
  br i1 %5, label %8, label %6, !dbg !1387

6:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1388, metadata !DIExpression()), !dbg !1390
  %7 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret to i8*), i64 24, i1 false), !dbg !1390
  br label %37, !dbg !1391

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8, !dbg !1392
  %10 = and i64 %9, 1, !dbg !1394
  %11 = icmp ne i64 %10, 0, !dbg !1394
  br i1 %11, label %12, label %15, !dbg !1395

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8, !dbg !1396
  %14 = ashr i64 %13, 1, !dbg !1397
  call void @fio_ltocstr(%struct.fio_str_info_s* sret %0, i64 %14), !dbg !1398
  br label %37, !dbg !1399

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8, !dbg !1400
  %17 = and i64 %16, 6, !dbg !1402
  %18 = icmp eq i64 %17, 6, !dbg !1403
  br i1 %18, label %19, label %31, !dbg !1404

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8, !dbg !1405
  %21 = trunc i64 %20 to i8, !dbg !1407
  %22 = zext i8 %21 to i32, !dbg !1407
  switch i32 %22, label %29 [
    i32 6, label %23
    i32 38, label %25
    i32 22, label %27
  ], !dbg !1408

23:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1409, metadata !DIExpression()), !dbg !1412
  %24 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1412
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.78 to i8*), i64 24, i1 false), !dbg !1412
  br label %37, !dbg !1413

25:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1414, metadata !DIExpression()), !dbg !1416
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1416
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.80 to i8*), i64 24, i1 false), !dbg !1416
  br label %37, !dbg !1417

27:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1418, metadata !DIExpression()), !dbg !1420
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1420
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.82 to i8*), i64 24, i1 false), !dbg !1420
  br label %37, !dbg !1421

29:                                               ; preds = %19
  br label %30, !dbg !1422

30:                                               ; preds = %29
  br label %31, !dbg !1423

31:                                               ; preds = %30, %15
  %32 = load i64, i64* %3, align 8, !dbg !1424
  %33 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %32), !dbg !1424
  %34 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %33, i32 0, i32 6, !dbg !1425
  %35 = load void (%struct.fio_str_info_s*, i64)*, void (%struct.fio_str_info_s*, i64)** %34, align 8, !dbg !1425
  %36 = load i64, i64* %3, align 8, !dbg !1426
  call void %35(%struct.fio_str_info_s* sret %0, i64 %36), !dbg !1424
  br label %37, !dbg !1427

37:                                               ; preds = %31, %27, %25, %23, %12, %6
  ret void, !dbg !1428
}

declare dso_local i64 @fiobj_str_concat(i64, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_each1(i64 %0, i64 %1, i32 (i64, i8*)* %2, i8* %3) #0 !dbg !1429 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (i64, i8*)*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1435, metadata !DIExpression()), !dbg !1436
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1437, metadata !DIExpression()), !dbg !1438
  store i32 (i64, i8*)* %2, i32 (i64, i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata i32 (i64, i8*)** %8, metadata !1439, metadata !DIExpression()), !dbg !1440
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1441, metadata !DIExpression()), !dbg !1442
  %10 = load i64, i64* %6, align 8, !dbg !1443
  %11 = icmp ne i64 %10, 0, !dbg !1443
  br i1 %11, label %12, label %36, !dbg !1443

12:                                               ; preds = %4
  %13 = load i64, i64* %6, align 8, !dbg !1443
  %14 = and i64 %13, 1, !dbg !1443
  %15 = icmp eq i64 %14, 0, !dbg !1443
  br i1 %15, label %16, label %36, !dbg !1443

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8, !dbg !1443
  %18 = and i64 %17, 6, !dbg !1443
  %19 = icmp ne i64 %18, 6, !dbg !1443
  br i1 %19, label %20, label %36, !dbg !1445

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8, !dbg !1446
  %22 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %21), !dbg !1446
  %23 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %22, i32 0, i32 5, !dbg !1447
  %24 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %23, align 8, !dbg !1447
  %25 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %24, null, !dbg !1446
  br i1 %25, label %26, label %36, !dbg !1448

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8, !dbg !1449
  %28 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %27), !dbg !1449
  %29 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %28, i32 0, i32 5, !dbg !1450
  %30 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %29, align 8, !dbg !1450
  %31 = load i64, i64* %6, align 8, !dbg !1451
  %32 = load i64, i64* %7, align 8, !dbg !1452
  %33 = load i32 (i64, i8*)*, i32 (i64, i8*)** %8, align 8, !dbg !1453
  %34 = load i8*, i8** %9, align 8, !dbg !1454
  %35 = call i64 %30(i64 %31, i64 %32, i32 (i64, i8*)* %33, i8* %34), !dbg !1449
  store i64 %35, i64* %5, align 8, !dbg !1455
  br label %37, !dbg !1455

36:                                               ; preds = %20, %16, %12, %4
  store i64 0, i64* %5, align 8, !dbg !1456
  br label %37, !dbg !1456

37:                                               ; preds = %36, %26
  %38 = load i64, i64* %5, align 8, !dbg !1457
  ret i64 %38, !dbg !1457
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_header(i64 %0, i8* %1) #0 !dbg !1458 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.header_writer_s*, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1459, metadata !DIExpression()), !dbg !1460
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1461, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.declare(metadata %struct.header_writer_s** %6, metadata !1463, metadata !DIExpression()), !dbg !1465
  %9 = load i8*, i8** %5, align 8, !dbg !1466
  %10 = bitcast i8* %9 to %struct.header_writer_s*, !dbg !1466
  store %struct.header_writer_s* %10, %struct.header_writer_s** %6, align 8, !dbg !1465
  %11 = load i64, i64* %4, align 8, !dbg !1467
  %12 = icmp ne i64 %11, 0, !dbg !1467
  br i1 %12, label %14, label %13, !dbg !1469

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !1470
  br label %64, !dbg !1470

14:                                               ; preds = %2
  %15 = call i64 @fiobj_hash_key_in_loop(), !dbg !1471
  %16 = icmp ne i64 %15, 0, !dbg !1471
  br i1 %16, label %17, label %21, !dbg !1473

17:                                               ; preds = %14
  %18 = call i64 @fiobj_hash_key_in_loop(), !dbg !1474
  %19 = load %struct.header_writer_s*, %struct.header_writer_s** %6, align 8, !dbg !1476
  %20 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %19, i32 0, i32 1, !dbg !1477
  store i64 %18, i64* %20, align 8, !dbg !1478
  br label %21, !dbg !1479

21:                                               ; preds = %17, %14
  %22 = load i64, i64* %4, align 8, !dbg !1480
  %23 = call i64 @fiobj_type_is(i64 %22, i8 zeroext 41), !dbg !1480
  %24 = icmp ne i64 %23, 0, !dbg !1480
  br i1 %24, label %25, label %30, !dbg !1482

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8, !dbg !1483
  %27 = load %struct.header_writer_s*, %struct.header_writer_s** %6, align 8, !dbg !1485
  %28 = bitcast %struct.header_writer_s* %27 to i8*, !dbg !1485
  %29 = call i64 @fiobj_each1(i64 %26, i64 0, i32 (i64, i8*)* @write_header, i8* %28), !dbg !1486
  store i32 0, i32* %3, align 4, !dbg !1487
  br label %64, !dbg !1487

30:                                               ; preds = %21
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %7, metadata !1488, metadata !DIExpression()), !dbg !1489
  %31 = load %struct.header_writer_s*, %struct.header_writer_s** %6, align 8, !dbg !1490
  %32 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %31, i32 0, i32 1, !dbg !1491
  %33 = load i64, i64* %32, align 8, !dbg !1491
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %33), !dbg !1492
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %8, metadata !1493, metadata !DIExpression()), !dbg !1494
  %34 = load i64, i64* %4, align 8, !dbg !1495
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %8, i64 %34), !dbg !1496
  %35 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2, !dbg !1497
  %36 = load i8*, i8** %35, align 8, !dbg !1497
  %37 = icmp ne i8* %36, null, !dbg !1499
  br i1 %37, label %39, label %38, !dbg !1500

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4, !dbg !1501
  br label %64, !dbg !1501

39:                                               ; preds = %30
  %40 = load %struct.header_writer_s*, %struct.header_writer_s** %6, align 8, !dbg !1502
  %41 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %40, i32 0, i32 0, !dbg !1503
  %42 = load i64, i64* %41, align 8, !dbg !1503
  %43 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2, !dbg !1504
  %44 = load i8*, i8** %43, align 8, !dbg !1504
  %45 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !1505
  %46 = load i64, i64* %45, align 8, !dbg !1505
  %47 = call i64 @fiobj_str_write(i64 %42, i8* %44, i64 %46), !dbg !1506
  %48 = load %struct.header_writer_s*, %struct.header_writer_s** %6, align 8, !dbg !1507
  %49 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %48, i32 0, i32 0, !dbg !1508
  %50 = load i64, i64* %49, align 8, !dbg !1508
  %51 = call i64 @fiobj_str_write(i64 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i64 0, i64 0), i64 1), !dbg !1509
  %52 = load %struct.header_writer_s*, %struct.header_writer_s** %6, align 8, !dbg !1510
  %53 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %52, i32 0, i32 0, !dbg !1511
  %54 = load i64, i64* %53, align 8, !dbg !1511
  %55 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2, !dbg !1512
  %56 = load i8*, i8** %55, align 8, !dbg !1512
  %57 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1, !dbg !1513
  %58 = load i64, i64* %57, align 8, !dbg !1513
  %59 = call i64 @fiobj_str_write(i64 %54, i8* %56, i64 %58), !dbg !1514
  %60 = load %struct.header_writer_s*, %struct.header_writer_s** %6, align 8, !dbg !1515
  %61 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %60, i32 0, i32 0, !dbg !1516
  %62 = load i64, i64* %61, align 8, !dbg !1516
  %63 = call i64 @fiobj_str_write(i64 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 2), !dbg !1517
  store i32 0, i32* %3, align 4, !dbg !1518
  br label %64, !dbg !1518

64:                                               ; preds = %39, %38, %25, %13
  %65 = load i32, i32* %3, align 4, !dbg !1519
  ret i32 %65, !dbg !1519
}

declare dso_local i64 @fio_siphash13(i8*, i64, i64, i64) #5

declare dso_local i64 @fiobj_each2(i64, i32 (i64, i8*)*, i8*) #5

declare dso_local void @fiobj_free_complex_object(i64) #5

declare dso_local void @fio_ltocstr(%struct.fio_str_info_s* sret, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %0) #0 !dbg !1520 {
  %2 = alloca %struct.fiobj_object_vtable_s*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1569, metadata !DIExpression()), !dbg !1570
  %4 = load i64, i64* %3, align 8, !dbg !1571
  %5 = call zeroext i8 @fiobj_type(i64 %4), !dbg !1571
  %6 = zext i8 %5 to i32, !dbg !1571
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
  ], !dbg !1572

7:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_NUMBER, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1573
  br label %15, !dbg !1573

8:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_FLOAT, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1575
  br label %15, !dbg !1575

9:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_STRING, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1576
  br label %15, !dbg !1576

10:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_ARRAY, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1577
  br label %15, !dbg !1577

11:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_HASH, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1578
  br label %15, !dbg !1578

12:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_DATA, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1579
  br label %15, !dbg !1579

13:                                               ; preds = %1, %1, %1, %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1580
  br label %15, !dbg !1580

14:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1581
  br label %15, !dbg !1581

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load %struct.fiobj_object_vtable_s*, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1582
  ret %struct.fiobj_object_vtable_s* %16, !dbg !1582
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fiobj_type(i64 %0) #0 !dbg !1583 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1586, metadata !DIExpression()), !dbg !1587
  %4 = load i64, i64* %3, align 8, !dbg !1588
  %5 = icmp ne i64 %4, 0, !dbg !1588
  br i1 %5, label %7, label %6, !dbg !1590

6:                                                ; preds = %1
  store i8 6, i8* %2, align 1, !dbg !1591
  br label %35, !dbg !1591

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8, !dbg !1592
  %9 = and i64 %8, 1, !dbg !1594
  %10 = icmp ne i64 %9, 0, !dbg !1594
  br i1 %10, label %11, label %12, !dbg !1595

11:                                               ; preds = %7
  store i8 1, i8* %2, align 1, !dbg !1596
  br label %35, !dbg !1596

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8, !dbg !1597
  %14 = and i64 %13, 6, !dbg !1599
  %15 = icmp eq i64 %14, 6, !dbg !1600
  br i1 %15, label %16, label %19, !dbg !1601

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8, !dbg !1602
  %18 = trunc i64 %17 to i8, !dbg !1603
  store i8 %18, i8* %2, align 1, !dbg !1604
  br label %35, !dbg !1604

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8, !dbg !1605
  %21 = and i64 %20, 6, !dbg !1607
  %22 = icmp eq i64 %21, 2, !dbg !1608
  br i1 %22, label %23, label %24, !dbg !1609

23:                                               ; preds = %19
  store i8 40, i8* %2, align 1, !dbg !1610
  br label %35, !dbg !1610

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8, !dbg !1611
  %26 = and i64 %25, 6, !dbg !1613
  %27 = icmp eq i64 %26, 4, !dbg !1614
  br i1 %27, label %28, label %29, !dbg !1615

28:                                               ; preds = %24
  store i8 42, i8* %2, align 1, !dbg !1616
  br label %35, !dbg !1616

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8, !dbg !1617
  %31 = and i64 %30, -8, !dbg !1617
  %32 = inttoptr i64 %31 to i8*, !dbg !1617
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !1618
  %34 = load i8, i8* %33, align 1, !dbg !1618
  store i8 %34, i8* %2, align 1, !dbg !1619
  br label %35, !dbg !1619

35:                                               ; preds = %29, %28, %23, %16, %11, %6
  %36 = load i8, i8* %2, align 1, !dbg !1620
  ret i8 %36, !dbg !1620
}

declare dso_local i64 @fiobj_hash_key_in_loop() #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_type_is(i64 %0, i8 zeroext %1) #0 !dbg !1621 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1624, metadata !DIExpression()), !dbg !1625
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1626, metadata !DIExpression()), !dbg !1627
  %6 = load i8, i8* %5, align 1, !dbg !1628
  %7 = zext i8 %6 to i32, !dbg !1628
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
  ], !dbg !1629

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !1630
  %10 = and i64 %9, 1, !dbg !1632
  %11 = icmp ne i64 %10, 0, !dbg !1632
  br i1 %11, label %19, label %12, !dbg !1633

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8, !dbg !1634
  %14 = inttoptr i64 %13 to i8*, !dbg !1635
  %15 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !1636
  %16 = load i8, i8* %15, align 1, !dbg !1636
  %17 = zext i8 %16 to i32, !dbg !1636
  %18 = icmp eq i32 %17, 1, !dbg !1637
  br label %19, !dbg !1633

19:                                               ; preds = %12, %8
  %20 = phi i1 [ true, %8 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32, !dbg !1633
  %22 = sext i32 %21 to i64, !dbg !1638
  store i64 %22, i64* %3, align 8, !dbg !1639
  br label %121, !dbg !1639

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8, !dbg !1640
  %25 = icmp ne i64 %24, 0, !dbg !1640
  br i1 %25, label %26, label %30, !dbg !1641

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8, !dbg !1642
  %28 = call i64 @fiobj_null(), !dbg !1643
  %29 = icmp eq i64 %27, %28, !dbg !1644
  br label %30, !dbg !1641

30:                                               ; preds = %26, %23
  %31 = phi i1 [ true, %23 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32, !dbg !1641
  %33 = sext i32 %32 to i64, !dbg !1645
  store i64 %33, i64* %3, align 8, !dbg !1646
  br label %121, !dbg !1646

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8, !dbg !1647
  %36 = call i64 @fiobj_true(), !dbg !1648
  %37 = icmp eq i64 %35, %36, !dbg !1649
  %38 = zext i1 %37 to i32, !dbg !1649
  %39 = sext i32 %38 to i64, !dbg !1647
  store i64 %39, i64* %3, align 8, !dbg !1650
  br label %121, !dbg !1650

40:                                               ; preds = %2
  %41 = load i64, i64* %4, align 8, !dbg !1651
  %42 = call i64 @fiobj_false(), !dbg !1652
  %43 = icmp eq i64 %41, %42, !dbg !1653
  %44 = zext i1 %43 to i32, !dbg !1653
  %45 = sext i32 %44 to i64, !dbg !1651
  store i64 %45, i64* %3, align 8, !dbg !1654
  br label %121, !dbg !1654

46:                                               ; preds = %2
  %47 = load i64, i64* %4, align 8, !dbg !1655
  %48 = and i64 %47, 1, !dbg !1656
  %49 = icmp eq i64 %48, 0, !dbg !1657
  br i1 %49, label %50, label %54, !dbg !1658

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8, !dbg !1659
  %52 = and i64 %51, 6, !dbg !1660
  %53 = icmp eq i64 %52, 2, !dbg !1661
  br i1 %53, label %55, label %54, !dbg !1662

54:                                               ; preds = %50, %46
  br label %55, !dbg !1662

55:                                               ; preds = %54, %50
  %56 = phi i1 [ true, %50 ], [ false, %54 ]
  %57 = zext i1 %56 to i32, !dbg !1662
  %58 = sext i32 %57 to i64, !dbg !1663
  store i64 %58, i64* %3, align 8, !dbg !1664
  br label %121, !dbg !1664

59:                                               ; preds = %2
  %60 = load i64, i64* %4, align 8, !dbg !1665
  %61 = and i64 %60, 1, !dbg !1668
  %62 = icmp eq i64 %61, 0, !dbg !1669
  br i1 %62, label %63, label %67, !dbg !1670

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8, !dbg !1671
  %65 = and i64 %64, 6, !dbg !1672
  %66 = icmp eq i64 %65, 4, !dbg !1673
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ], !dbg !1674
  %69 = zext i1 %68 to i32, !dbg !1670
  %70 = sext i32 %69 to i64, !dbg !1675
  store i64 %70, i64* %3, align 8, !dbg !1676
  br label %121, !dbg !1676

71:                                               ; preds = %2, %2, %2, %2
  %72 = load i64, i64* %4, align 8, !dbg !1677
  %73 = icmp ne i64 %72, 0, !dbg !1677
  br i1 %73, label %74, label %92, !dbg !1677

74:                                               ; preds = %71
  %75 = load i64, i64* %4, align 8, !dbg !1677
  %76 = and i64 %75, 1, !dbg !1677
  %77 = icmp eq i64 %76, 0, !dbg !1677
  br i1 %77, label %78, label %92, !dbg !1677

78:                                               ; preds = %74
  %79 = load i64, i64* %4, align 8, !dbg !1677
  %80 = and i64 %79, 6, !dbg !1677
  %81 = icmp ne i64 %80, 6, !dbg !1677
  br i1 %81, label %82, label %92, !dbg !1678

82:                                               ; preds = %78
  %83 = load i64, i64* %4, align 8, !dbg !1679
  %84 = and i64 %83, -8, !dbg !1679
  %85 = inttoptr i64 %84 to i8*, !dbg !1679
  %86 = getelementptr inbounds i8, i8* %85, i64 0, !dbg !1680
  %87 = load i8, i8* %86, align 1, !dbg !1680
  %88 = zext i8 %87 to i32, !dbg !1680
  %89 = load i8, i8* %5, align 1, !dbg !1681
  %90 = zext i8 %89 to i32, !dbg !1681
  %91 = icmp eq i32 %88, %90, !dbg !1682
  br label %92

92:                                               ; preds = %82, %78, %74, %71
  %93 = phi i1 [ false, %78 ], [ false, %74 ], [ false, %71 ], [ %91, %82 ], !dbg !1683
  %94 = zext i1 %93 to i32, !dbg !1678
  %95 = sext i32 %94 to i64, !dbg !1677
  store i64 %95, i64* %3, align 8, !dbg !1684
  br label %121, !dbg !1684

96:                                               ; preds = %2
  %97 = load i64, i64* %4, align 8, !dbg !1685
  %98 = icmp ne i64 %97, 0, !dbg !1685
  br i1 %98, label %99, label %117, !dbg !1685

99:                                               ; preds = %96
  %100 = load i64, i64* %4, align 8, !dbg !1685
  %101 = and i64 %100, 1, !dbg !1685
  %102 = icmp eq i64 %101, 0, !dbg !1685
  br i1 %102, label %103, label %117, !dbg !1685

103:                                              ; preds = %99
  %104 = load i64, i64* %4, align 8, !dbg !1685
  %105 = and i64 %104, 6, !dbg !1685
  %106 = icmp ne i64 %105, 6, !dbg !1685
  br i1 %106, label %107, label %117, !dbg !1686

107:                                              ; preds = %103
  %108 = load i64, i64* %4, align 8, !dbg !1687
  %109 = and i64 %108, -8, !dbg !1687
  %110 = inttoptr i64 %109 to i8*, !dbg !1687
  %111 = getelementptr inbounds i8, i8* %110, i64 0, !dbg !1688
  %112 = load i8, i8* %111, align 1, !dbg !1688
  %113 = zext i8 %112 to i32, !dbg !1688
  %114 = load i8, i8* %5, align 1, !dbg !1689
  %115 = zext i8 %114 to i32, !dbg !1689
  %116 = icmp eq i32 %113, %115, !dbg !1690
  br label %117

117:                                              ; preds = %107, %103, %99, %96
  %118 = phi i1 [ false, %103 ], [ false, %99 ], [ false, %96 ], [ %116, %107 ], !dbg !1691
  %119 = zext i1 %118 to i32, !dbg !1686
  %120 = sext i32 %119 to i64, !dbg !1685
  store i64 %120, i64* %3, align 8, !dbg !1692
  br label %121, !dbg !1692

121:                                              ; preds = %117, %92, %67, %55, %40, %34, %30, %19
  %122 = load i64, i64* %3, align 8, !dbg !1693
  ret i64 %122, !dbg !1693
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_null() #0 !dbg !1694 {
  ret i64 6, !dbg !1697
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_true() #0 !dbg !1698 {
  ret i64 22, !dbg !1699
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_false() #0 !dbg !1700 {
  ret i64 38, !dbg !1701
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_s_clear(%struct.http_s* %0, i8 zeroext %1) #0 !dbg !1702 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca i8, align 1
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %3, metadata !1703, metadata !DIExpression()), !dbg !1704
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1705, metadata !DIExpression()), !dbg !1706
  %5 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1707
  %6 = load i8, i8* %4, align 1, !dbg !1708
  call void @http_s_destroy(%struct.http_s* %5, i8 zeroext %6), !dbg !1709
  %7 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1710
  %8 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1711
  %9 = getelementptr inbounds %struct.http_s, %struct.http_s* %8, i32 0, i32 0, !dbg !1712
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1, !dbg !1713
  %11 = load i64, i64* %10, align 8, !dbg !1713
  %12 = inttoptr i64 %11 to %struct.http_fio_protocol_s*, !dbg !1714
  %13 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1715
  %14 = getelementptr inbounds %struct.http_s, %struct.http_s* %13, i32 0, i32 0, !dbg !1716
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0, !dbg !1717
  %16 = load i8*, i8** %15, align 8, !dbg !1717
  %17 = bitcast i8* %16 to %struct.http_vtable_s*, !dbg !1715
  call void @http_s_new(%struct.http_s* %7, %struct.http_fio_protocol_s* %12, %struct.http_vtable_s* %17), !dbg !1718
  ret void, !dbg !1719
}

declare dso_local void @fio_close(i64) #5

declare dso_local i64 @fio_write2_fn(i64, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj4sock_dealloc(i8* %0) #0 !dbg !1720 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1723, metadata !DIExpression()), !dbg !1724
  %3 = load i8*, i8** %2, align 8, !dbg !1725
  %4 = ptrtoint i8* %3 to i64, !dbg !1726
  call void @fiobj_free(i64 %4), !dbg !1727
  ret void, !dbg !1728
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_free(i64 %0) #0 !dbg !1729 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1732, metadata !DIExpression()), !dbg !1733
  %5 = load i64, i64* %2, align 8, !dbg !1734
  %6 = icmp ne i64 %5, 0, !dbg !1734
  br i1 %6, label %7, label %15, !dbg !1734

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8, !dbg !1734
  %9 = and i64 %8, 1, !dbg !1734
  %10 = icmp eq i64 %9, 0, !dbg !1734
  br i1 %10, label %11, label %15, !dbg !1734

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8, !dbg !1734
  %13 = and i64 %12, 6, !dbg !1734
  %14 = icmp ne i64 %13, 6, !dbg !1734
  br i1 %14, label %16, label %15, !dbg !1736

15:                                               ; preds = %11, %7, %1
  br label %50, !dbg !1737

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8, !dbg !1738
  %18 = and i64 %17, -8, !dbg !1738
  %19 = inttoptr i64 %18 to i8*, !dbg !1738
  %20 = bitcast i8* %19 to %struct.fiobj_object_header_s*, !dbg !1738
  %21 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %20, i32 0, i32 1, !dbg !1738
  store i32 1, i32* %3, align 4, !dbg !1738
  %22 = load i32, i32* %3, align 4, !dbg !1738
  %23 = atomicrmw sub i32* %21, i32 %22 seq_cst, !dbg !1738
  %24 = sub i32 %23, %22, !dbg !1738
  store i32 %24, i32* %4, align 4, !dbg !1738
  %25 = load i32, i32* %4, align 4, !dbg !1738
  %26 = icmp ne i32 %25, 0, !dbg !1738
  br i1 %26, label %27, label %28, !dbg !1740

27:                                               ; preds = %16
  br label %50, !dbg !1741

28:                                               ; preds = %16
  %29 = load i64, i64* %2, align 8, !dbg !1742
  %30 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %29), !dbg !1742
  %31 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %30, i32 0, i32 5, !dbg !1744
  %32 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %31, align 8, !dbg !1744
  %33 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %32, null, !dbg !1742
  br i1 %33, label %34, label %44, !dbg !1745

34:                                               ; preds = %28
  %35 = load i64, i64* %2, align 8, !dbg !1746
  %36 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %35), !dbg !1746
  %37 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %36, i32 0, i32 2, !dbg !1747
  %38 = load i64 (i64)*, i64 (i64)** %37, align 8, !dbg !1747
  %39 = load i64, i64* %2, align 8, !dbg !1748
  %40 = call i64 %38(i64 %39), !dbg !1746
  %41 = icmp ne i64 %40, 0, !dbg !1746
  br i1 %41, label %42, label %44, !dbg !1749

42:                                               ; preds = %34
  %43 = load i64, i64* %2, align 8, !dbg !1750
  call void @fiobj_free_complex_object(i64 %43), !dbg !1751
  br label %50, !dbg !1751

44:                                               ; preds = %34, %28
  %45 = load i64, i64* %2, align 8, !dbg !1752
  %46 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %45), !dbg !1752
  %47 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %46, i32 0, i32 1, !dbg !1753
  %48 = load void (i64, void (i64, i8*)*, i8*)*, void (i64, void (i64, i8*)*, i8*)** %47, align 8, !dbg !1753
  %49 = load i64, i64* %2, align 8, !dbg !1754
  call void %48(i64 %49, void (i64, i8*)* null, i8* null), !dbg !1752
  br label %50

50:                                               ; preds = %15, %27, %44, %42
  ret void, !dbg !1755
}

declare dso_local i32 @close(i32) #5

declare dso_local i64 @fiobj_str_capa_assert(i64, i64) #5

declare dso_local i64 @pread(i32, i8*, i64, i64) #5

declare dso_local void @fiobj_str_resize(i64, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_sendfile(i64 %0, i64 %1, i64 %2, i64 %3) #0 !dbg !1756 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fio_write_args_s, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1761, metadata !DIExpression()), !dbg !1762
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1763, metadata !DIExpression()), !dbg !1764
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1765, metadata !DIExpression()), !dbg !1766
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1767, metadata !DIExpression()), !dbg !1768
  %10 = load i64, i64* %5, align 8, !dbg !1769
  %11 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 0, !dbg !1769
  %12 = bitcast %union.anon* %11 to i64*, !dbg !1769
  %13 = load i64, i64* %6, align 8, !dbg !1769
  store i64 %13, i64* %12, align 8, !dbg !1769
  %14 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 1, !dbg !1769
  %15 = bitcast %union.anon.0* %14 to i8*, !dbg !1769
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false), !dbg !1769
  %16 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 2, !dbg !1769
  %17 = load i64, i64* %8, align 8, !dbg !1769
  store i64 %17, i64* %16, align 8, !dbg !1769
  %18 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 3, !dbg !1769
  %19 = load i64, i64* %7, align 8, !dbg !1769
  store i64 %19, i64* %18, align 8, !dbg !1769
  %20 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4, !dbg !1769
  %21 = load i8, i8* %20, align 8, !dbg !1769
  %22 = and i8 %21, -2, !dbg !1769
  store i8 %22, i8* %20, align 8, !dbg !1769
  %23 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4, !dbg !1769
  %24 = load i8, i8* %23, align 8, !dbg !1769
  %25 = and i8 %24, -3, !dbg !1769
  %26 = or i8 %25, 2, !dbg !1769
  store i8 %26, i8* %23, align 8, !dbg !1769
  %27 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4, !dbg !1769
  %28 = load i8, i8* %27, align 8, !dbg !1769
  %29 = and i8 %28, -5, !dbg !1769
  store i8 %29, i8* %27, align 8, !dbg !1769
  %30 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4, !dbg !1769
  %31 = load i8, i8* %30, align 8, !dbg !1769
  %32 = and i8 %31, -9, !dbg !1769
  store i8 %32, i8* %30, align 8, !dbg !1769
  %33 = call i64 @fio_write2_fn(i64 %10, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %9), !dbg !1769
  ret i64 %33, !dbg !1770
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_http2websocket_server(%struct.http_s* %0, %struct.websocket_settings_s* %1) #0 !dbg !327 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca %struct.websocket_settings_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  %9 = alloca %struct.fio_sha1_s, align 8
  %10 = alloca %struct.fio_str_info_s, align 8
  %11 = alloca %struct.http1pr_s*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.http_settings_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %4, metadata !1771, metadata !DIExpression()), !dbg !1772
  store %struct.websocket_settings_s* %1, %struct.websocket_settings_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.websocket_settings_s** %5, metadata !1773, metadata !DIExpression()), !dbg !1774
  %14 = load i64, i64* @http1_http2websocket_server.sec_version, align 8, !dbg !1775
  %15 = icmp ne i64 %14, 0, !dbg !1775
  br i1 %15, label %18, label %16, !dbg !1777

16:                                               ; preds = %2
  %17 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i64 0, i64 0), i64 21), !dbg !1778
  store i64 %17, i64* @http1_http2websocket_server.sec_version, align 8, !dbg !1779
  br label %18, !dbg !1780

18:                                               ; preds = %16, %2
  %19 = load i64, i64* @http1_http2websocket_server.sec_key, align 8, !dbg !1781
  %20 = icmp ne i64 %19, 0, !dbg !1781
  br i1 %20, label %23, label %21, !dbg !1783

21:                                               ; preds = %18
  %22 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i64 0, i64 0), i64 17), !dbg !1784
  store i64 %22, i64* @http1_http2websocket_server.sec_key, align 8, !dbg !1785
  br label %23, !dbg !1786

23:                                               ; preds = %21, %18
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1787, metadata !DIExpression()), !dbg !1788
  %24 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1789
  %25 = getelementptr inbounds %struct.http_s, %struct.http_s* %24, i32 0, i32 8, !dbg !1790
  %26 = load i64, i64* %25, align 8, !dbg !1790
  %27 = load i64, i64* @http1_http2websocket_server.sec_version, align 8, !dbg !1791
  %28 = call i64 @fiobj_hash_get2(i64 %26, i64 %27), !dbg !1792
  store i64 %28, i64* %6, align 8, !dbg !1788
  %29 = load i64, i64* %6, align 8, !dbg !1793
  %30 = icmp ne i64 %29, 0, !dbg !1793
  br i1 %30, label %32, label %31, !dbg !1795

31:                                               ; preds = %23
  br label %142, !dbg !1796

32:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %7, metadata !1797, metadata !DIExpression()), !dbg !1798
  %33 = load i64, i64* %6, align 8, !dbg !1799
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %33), !dbg !1800
  %34 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !1801
  %35 = load i64, i64* %34, align 8, !dbg !1801
  %36 = icmp ne i64 %35, 2, !dbg !1803
  br i1 %36, label %51, label %37, !dbg !1804

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2, !dbg !1805
  %39 = load i8*, i8** %38, align 8, !dbg !1805
  %40 = getelementptr inbounds i8, i8* %39, i64 0, !dbg !1806
  %41 = load i8, i8* %40, align 1, !dbg !1806
  %42 = sext i8 %41 to i32, !dbg !1806
  %43 = icmp ne i32 %42, 49, !dbg !1807
  br i1 %43, label %51, label %44, !dbg !1808

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2, !dbg !1809
  %46 = load i8*, i8** %45, align 8, !dbg !1809
  %47 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !1810
  %48 = load i8, i8* %47, align 1, !dbg !1810
  %49 = sext i8 %48 to i32, !dbg !1810
  %50 = icmp ne i32 %49, 51, !dbg !1811
  br i1 %50, label %51, label %52, !dbg !1812

51:                                               ; preds = %44, %37, %32
  br label %142, !dbg !1813

52:                                               ; preds = %44
  %53 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1814
  %54 = getelementptr inbounds %struct.http_s, %struct.http_s* %53, i32 0, i32 8, !dbg !1815
  %55 = load i64, i64* %54, align 8, !dbg !1815
  %56 = load i64, i64* @http1_http2websocket_server.sec_key, align 8, !dbg !1816
  %57 = call i64 @fiobj_hash_get2(i64 %55, i64 %56), !dbg !1817
  store i64 %57, i64* %6, align 8, !dbg !1818
  %58 = load i64, i64* %6, align 8, !dbg !1819
  %59 = icmp ne i64 %58, 0, !dbg !1819
  br i1 %59, label %61, label %60, !dbg !1821

60:                                               ; preds = %52
  br label %142, !dbg !1822

61:                                               ; preds = %52
  %62 = load i64, i64* %6, align 8, !dbg !1823
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %8, i64 %62), !dbg !1824
  %63 = bitcast %struct.fio_str_info_s* %7 to i8*, !dbg !1824
  %64 = bitcast %struct.fio_str_info_s* %8 to i8*, !dbg !1824
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 24, i1 false), !dbg !1824
  call void @llvm.dbg.declare(metadata %struct.fio_sha1_s* %9, metadata !1825, metadata !DIExpression()), !dbg !1845
  call void @fio_sha1_init(%struct.fio_sha1_s* sret %9), !dbg !1846
  %65 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2, !dbg !1847
  %66 = load i8*, i8** %65, align 8, !dbg !1847
  %67 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !1848
  %68 = load i64, i64* %67, align 8, !dbg !1848
  call void @fio_sha1_write(%struct.fio_sha1_s* %9, i8* %66, i64 %68), !dbg !1849
  call void @fio_sha1_write(%struct.fio_sha1_s* %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @http1_http2websocket_server.ws_key_accpt_str, i64 0, i64 0), i64 36), !dbg !1850
  %69 = call i64 @fiobj_str_buf(i64 32), !dbg !1851
  store i64 %69, i64* %6, align 8, !dbg !1852
  %70 = load i64, i64* %6, align 8, !dbg !1853
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %10, i64 %70), !dbg !1854
  %71 = bitcast %struct.fio_str_info_s* %7 to i8*, !dbg !1854
  %72 = bitcast %struct.fio_str_info_s* %10 to i8*, !dbg !1854
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 24, i1 false), !dbg !1854
  %73 = load i64, i64* %6, align 8, !dbg !1855
  %74 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2, !dbg !1856
  %75 = load i8*, i8** %74, align 8, !dbg !1856
  %76 = call i8* @fio_sha1_result(%struct.fio_sha1_s* %9), !dbg !1857
  %77 = call i32 @fio_base64_encode(i8* %75, i8* %76, i32 20), !dbg !1858
  %78 = sext i32 %77 to i64, !dbg !1858
  call void @fiobj_str_resize(i64 %73, i64 %78), !dbg !1859
  %79 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1860
  %80 = load i64, i64* @HTTP_HEADER_CONNECTION, align 8, !dbg !1861
  %81 = load i64, i64* @HTTP_HVALUE_WS_UPGRADE, align 8, !dbg !1862
  %82 = call i64 @fiobj_dup(i64 %81), !dbg !1863
  %83 = call i32 @http_set_header(%struct.http_s* %79, i64 %80, i64 %82), !dbg !1864
  %84 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1865
  %85 = load i64, i64* @HTTP_HEADER_UPGRADE, align 8, !dbg !1866
  %86 = load i64, i64* @HTTP_HVALUE_WEBSOCKET, align 8, !dbg !1867
  %87 = call i64 @fiobj_dup(i64 %86), !dbg !1868
  %88 = call i32 @http_set_header(%struct.http_s* %84, i64 %85, i64 %87), !dbg !1869
  %89 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1870
  %90 = load i64, i64* @HTTP_HEADER_WS_SEC_KEY, align 8, !dbg !1871
  %91 = load i64, i64* %6, align 8, !dbg !1872
  %92 = call i32 @http_set_header(%struct.http_s* %89, i64 %90, i64 %91), !dbg !1873
  %93 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1874
  %94 = getelementptr inbounds %struct.http_s, %struct.http_s* %93, i32 0, i32 5, !dbg !1875
  store i64 101, i64* %94, align 8, !dbg !1876
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %11, metadata !1877, metadata !DIExpression()), !dbg !1878
  %95 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1879
  %96 = getelementptr inbounds %struct.http_s, %struct.http_s* %95, i32 0, i32 0, !dbg !1879
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 1, !dbg !1879
  %98 = load i64, i64* %97, align 8, !dbg !1879
  %99 = inttoptr i64 %98 to %struct.http1pr_s*, !dbg !1879
  store %struct.http1pr_s* %99, %struct.http1pr_s** %11, align 8, !dbg !1878
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1880, metadata !DIExpression()), !dbg !1881
  %100 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1882
  %101 = getelementptr inbounds %struct.http_s, %struct.http_s* %100, i32 0, i32 0, !dbg !1882
  %102 = getelementptr inbounds %struct.anon, %struct.anon* %101, i32 0, i32 1, !dbg !1882
  %103 = load i64, i64* %102, align 8, !dbg !1882
  %104 = inttoptr i64 %103 to %struct.http1pr_s*, !dbg !1882
  %105 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %104, i32 0, i32 0, !dbg !1883
  %106 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %105, i32 0, i32 1, !dbg !1884
  %107 = load i64, i64* %106, align 8, !dbg !1884
  store i64 %107, i64* %12, align 8, !dbg !1881
  call void @llvm.dbg.declare(metadata %struct.http_settings_s** %13, metadata !1885, metadata !DIExpression()), !dbg !1886
  %108 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1887
  %109 = getelementptr inbounds %struct.http_s, %struct.http_s* %108, i32 0, i32 0, !dbg !1887
  %110 = getelementptr inbounds %struct.anon, %struct.anon* %109, i32 0, i32 1, !dbg !1887
  %111 = load i64, i64* %110, align 8, !dbg !1887
  %112 = inttoptr i64 %111 to %struct.http1pr_s*, !dbg !1887
  %113 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %112, i32 0, i32 0, !dbg !1888
  %114 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %113, i32 0, i32 2, !dbg !1889
  %115 = load %struct.http_settings_s*, %struct.http_settings_s** %114, align 8, !dbg !1889
  store %struct.http_settings_s* %115, %struct.http_settings_s** %13, align 8, !dbg !1886
  %116 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1890
  call void @http_finish(%struct.http_s* %116), !dbg !1891
  %117 = load %struct.http1pr_s*, %struct.http1pr_s** %11, align 8, !dbg !1892
  %118 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %117, i32 0, i32 8, !dbg !1893
  store i8 1, i8* %118, align 2, !dbg !1894
  %119 = load i64, i64* %12, align 8, !dbg !1895
  %120 = load %struct.http_settings_s*, %struct.http_settings_s** %13, align 8, !dbg !1896
  %121 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %5, align 8, !dbg !1897
  %122 = load %struct.http1pr_s*, %struct.http1pr_s** %11, align 8, !dbg !1898
  %123 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %122, i32 0, i32 1, !dbg !1899
  %124 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %123, i32 0, i32 0, !dbg !1900
  %125 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %124, i32 0, i32 2, !dbg !1901
  %126 = load i8*, i8** %125, align 8, !dbg !1901
  %127 = load %struct.http1pr_s*, %struct.http1pr_s** %11, align 8, !dbg !1902
  %128 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %127, i32 0, i32 3, !dbg !1903
  %129 = load i64, i64* %128, align 8, !dbg !1903
  %130 = load %struct.http1pr_s*, %struct.http1pr_s** %11, align 8, !dbg !1904
  %131 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %130, i32 0, i32 1, !dbg !1905
  %132 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %131, i32 0, i32 0, !dbg !1906
  %133 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %132, i32 0, i32 2, !dbg !1907
  %134 = load i8*, i8** %133, align 8, !dbg !1907
  %135 = load %struct.http1pr_s*, %struct.http1pr_s** %11, align 8, !dbg !1908
  %136 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %135, i32 0, i32 9, !dbg !1909
  %137 = getelementptr inbounds [0 x i8], [0 x i8]* %136, i64 0, i64 0, !dbg !1908
  %138 = ptrtoint i8* %134 to i64, !dbg !1910
  %139 = ptrtoint i8* %137 to i64, !dbg !1910
  %140 = sub i64 %138, %139, !dbg !1910
  %141 = sub i64 %129, %140, !dbg !1911
  call void @websocket_attach(i64 %119, %struct.http_settings_s* %120, %struct.websocket_settings_s* %121, i8* %126, i64 %141), !dbg !1912
  store i32 0, i32* %3, align 4, !dbg !1913
  br label %157, !dbg !1913

142:                                              ; preds = %60, %51, %31
  call void @llvm.dbg.label(metadata !1914), !dbg !1915
  %143 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !1916
  %144 = call i32 @http_send_error(%struct.http_s* %143, i64 400), !dbg !1917
  %145 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %5, align 8, !dbg !1918
  %146 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %145, i32 0, i32 4, !dbg !1920
  %147 = load void (i64, i8*)*, void (i64, i8*)** %146, align 8, !dbg !1920
  %148 = icmp ne void (i64, i8*)* %147, null, !dbg !1918
  br i1 %148, label %149, label %156, !dbg !1921

149:                                              ; preds = %142
  %150 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %5, align 8, !dbg !1922
  %151 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %150, i32 0, i32 4, !dbg !1923
  %152 = load void (i64, i8*)*, void (i64, i8*)** %151, align 8, !dbg !1923
  %153 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %5, align 8, !dbg !1924
  %154 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %153, i32 0, i32 5, !dbg !1925
  %155 = load i8*, i8** %154, align 8, !dbg !1925
  call void %152(i64 0, i8* %155), !dbg !1922
  br label %156, !dbg !1922

156:                                              ; preds = %149, %142
  store i32 -1, i32* %3, align 4, !dbg !1926
  br label %157, !dbg !1926

157:                                              ; preds = %156, %61
  %158 = load i32, i32* %3, align 4, !dbg !1927
  ret i32 %158, !dbg !1927
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_http2websocket_client(%struct.http_s* %0, %struct.websocket_settings_s* %1) #0 !dbg !1928 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca %struct.websocket_settings_s*, align 8
  %5 = alloca %struct.http1pr_s*, align 8
  %6 = alloca [2 x i64], align 16
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fio_str_info_s, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %3, metadata !1929, metadata !DIExpression()), !dbg !1930
  store %struct.websocket_settings_s* %1, %struct.websocket_settings_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.websocket_settings_s** %4, metadata !1931, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %5, metadata !1933, metadata !DIExpression()), !dbg !1934
  %11 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1935
  %12 = getelementptr inbounds %struct.http_s, %struct.http_s* %11, i32 0, i32 0, !dbg !1935
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1, !dbg !1935
  %14 = load i64, i64* %13, align 8, !dbg !1935
  %15 = inttoptr i64 %14 to %struct.http1pr_s*, !dbg !1935
  store %struct.http1pr_s* %15, %struct.http1pr_s** %5, align 8, !dbg !1934
  %16 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !1936
  %17 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %16, i32 0, i32 0, !dbg !1938
  %18 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %17, i32 0, i32 2, !dbg !1939
  %19 = load %struct.http_settings_s*, %struct.http_settings_s** %18, align 8, !dbg !1939
  %20 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %19, i32 0, i32 3, !dbg !1940
  %21 = load void (%struct.http_settings_s*)*, void (%struct.http_settings_s*)** %20, align 8, !dbg !1940
  %22 = icmp ne void (%struct.http_settings_s*)* %21, null, !dbg !1936
  br i1 %22, label %23, label %34, !dbg !1941

23:                                               ; preds = %2
  %24 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !1942
  %25 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %24, i32 0, i32 0, !dbg !1943
  %26 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %25, i32 0, i32 2, !dbg !1944
  %27 = load %struct.http_settings_s*, %struct.http_settings_s** %26, align 8, !dbg !1944
  %28 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %27, i32 0, i32 3, !dbg !1945
  %29 = load void (%struct.http_settings_s*)*, void (%struct.http_settings_s*)** %28, align 8, !dbg !1945
  %30 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !1946
  %31 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %30, i32 0, i32 0, !dbg !1947
  %32 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %31, i32 0, i32 2, !dbg !1948
  %33 = load %struct.http_settings_s*, %struct.http_settings_s** %32, align 8, !dbg !1948
  call void %29(%struct.http_settings_s* %33), !dbg !1942
  br label %34, !dbg !1942

34:                                               ; preds = %23, %2
  %35 = call noalias i8* @fio_malloc(i64 48), !dbg !1949
  %36 = ptrtoint i8* %35 to i64, !dbg !1949
  %37 = and i64 %36, 15, !dbg !1949
  %38 = icmp eq i64 %37, 0, !dbg !1949
  call void @llvm.assume(i1 %38), !dbg !1949
  %39 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !1950
  %40 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %39, i32 0, i32 0, !dbg !1952
  %41 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %40, i32 0, i32 2, !dbg !1953
  %42 = load %struct.http_settings_s*, %struct.http_settings_s** %41, align 8, !dbg !1953
  %43 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %42, i32 0, i32 4, !dbg !1954
  store i8* %35, i8** %43, align 8, !dbg !1955
  %44 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !1956
  %45 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %44, i32 0, i32 0, !dbg !1957
  %46 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %45, i32 0, i32 2, !dbg !1958
  %47 = load %struct.http_settings_s*, %struct.http_settings_s** %46, align 8, !dbg !1958
  %48 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %47, i32 0, i32 4, !dbg !1959
  %49 = load i8*, i8** %48, align 8, !dbg !1959
  %50 = bitcast i8* %49 to %struct.websocket_settings_s*, !dbg !1960
  %51 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %50, i64 0, !dbg !1961
  %52 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %4, align 8, !dbg !1962
  %53 = bitcast %struct.websocket_settings_s* %51 to i8*, !dbg !1963
  %54 = bitcast %struct.websocket_settings_s* %52 to i8*, !dbg !1963
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 48, i1 false), !dbg !1963
  %55 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !1964
  %56 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %55, i32 0, i32 0, !dbg !1965
  %57 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %56, i32 0, i32 2, !dbg !1966
  %58 = load %struct.http_settings_s*, %struct.http_settings_s** %57, align 8, !dbg !1966
  %59 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %58, i32 0, i32 3, !dbg !1967
  store void (%struct.http_settings_s*)* @http1_websocket_client_on_hangup, void (%struct.http_settings_s*)** %59, align 8, !dbg !1968
  %60 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !1969
  %61 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %60, i32 0, i32 0, !dbg !1970
  %62 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %61, i32 0, i32 2, !dbg !1971
  %63 = load %struct.http_settings_s*, %struct.http_settings_s** %62, align 8, !dbg !1971
  %64 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %63, i32 0, i32 1, !dbg !1972
  store void (%struct.http_s*, i8*, i64)* @http1_websocket_client_on_upgrade, void (%struct.http_s*, i8*, i64)** %64, align 8, !dbg !1973
  %65 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !1974
  %66 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %65, i32 0, i32 0, !dbg !1975
  %67 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %66, i32 0, i32 2, !dbg !1976
  %68 = load %struct.http_settings_s*, %struct.http_settings_s** %67, align 8, !dbg !1976
  %69 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %68, i32 0, i32 2, !dbg !1977
  store void (%struct.http_s*)* @http1_websocket_client_on_failed, void (%struct.http_s*)** %69, align 8, !dbg !1978
  %70 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !1979
  %71 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %70, i32 0, i32 0, !dbg !1980
  %72 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %71, i32 0, i32 2, !dbg !1981
  %73 = load %struct.http_settings_s*, %struct.http_settings_s** %72, align 8, !dbg !1981
  %74 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %73, i32 0, i32 0, !dbg !1982
  store void (%struct.http_s*)* @http1_websocket_client_on_failed, void (%struct.http_s*)** %74, align 8, !dbg !1983
  %75 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1984
  %76 = load i64, i64* @HTTP_HEADER_CONNECTION, align 8, !dbg !1985
  %77 = load i64, i64* @HTTP_HVALUE_WS_UPGRADE, align 8, !dbg !1986
  %78 = call i64 @fiobj_dup(i64 %77), !dbg !1987
  %79 = call i32 @http_set_header(%struct.http_s* %75, i64 %76, i64 %78), !dbg !1988
  %80 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1989
  %81 = load i64, i64* @HTTP_HEADER_UPGRADE, align 8, !dbg !1990
  %82 = load i64, i64* @HTTP_HVALUE_WEBSOCKET, align 8, !dbg !1991
  %83 = call i64 @fiobj_dup(i64 %82), !dbg !1992
  %84 = call i32 @http_set_header(%struct.http_s* %80, i64 %81, i64 %83), !dbg !1993
  %85 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !1994
  %86 = load i64, i64* @HTTP_HVALUE_WS_SEC_VERSION, align 8, !dbg !1995
  %87 = load i64, i64* @HTTP_HVALUE_WS_VERSION, align 8, !dbg !1996
  %88 = call i64 @fiobj_dup(i64 %87), !dbg !1997
  %89 = call i32 @http_set_header(%struct.http_s* %85, i64 %86, i64 %88), !dbg !1998
  call void @llvm.dbg.declare(metadata [2 x i64]* %6, metadata !1999, metadata !DIExpression()), !dbg !2003
  %90 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !2004
  %91 = ptrtoint %struct.http_s* %90 to i64, !dbg !2005
  %92 = call { i64, i64 } @fio_last_tick(), !dbg !2006
  %93 = bitcast %struct.timespec* %7 to { i64, i64 }*, !dbg !2006
  %94 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %93, i32 0, i32 0, !dbg !2006
  %95 = extractvalue { i64, i64 } %92, 0, !dbg !2006
  store i64 %95, i64* %94, align 8, !dbg !2006
  %96 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %93, i32 0, i32 1, !dbg !2006
  %97 = extractvalue { i64, i64 } %92, 1, !dbg !2006
  store i64 %97, i64* %96, align 8, !dbg !2006
  %98 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0, !dbg !2007
  %99 = load i64, i64* %98, align 8, !dbg !2007
  %100 = xor i64 %91, %99, !dbg !2008
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0, !dbg !2009
  store i64 %100, i64* %101, align 16, !dbg !2010
  %102 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %4, align 8, !dbg !2011
  %103 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %102, i32 0, i32 5, !dbg !2012
  %104 = load i8*, i8** %103, align 8, !dbg !2012
  %105 = ptrtoint i8* %104 to i64, !dbg !2013
  %106 = call { i64, i64 } @fio_last_tick(), !dbg !2014
  %107 = bitcast %struct.timespec* %8 to { i64, i64 }*, !dbg !2014
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 0, !dbg !2014
  %109 = extractvalue { i64, i64 } %106, 0, !dbg !2014
  store i64 %109, i64* %108, align 8, !dbg !2014
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 1, !dbg !2014
  %111 = extractvalue { i64, i64 } %106, 1, !dbg !2014
  store i64 %111, i64* %110, align 8, !dbg !2014
  %112 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1, !dbg !2015
  %113 = load i64, i64* %112, align 8, !dbg !2015
  %114 = xor i64 %105, %113, !dbg !2016
  %115 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1, !dbg !2017
  store i64 %114, i64* %115, align 8, !dbg !2018
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2019, metadata !DIExpression()), !dbg !2020
  %116 = call i64 @fiobj_str_buf(i64 26), !dbg !2021
  store i64 %116, i64* %9, align 8, !dbg !2020
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %10, metadata !2022, metadata !DIExpression()), !dbg !2023
  %117 = load i64, i64* %9, align 8, !dbg !2024
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %10, i64 %117), !dbg !2025
  %118 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 2, !dbg !2026
  %119 = load i8*, i8** %118, align 8, !dbg !2026
  %120 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0, !dbg !2027
  %121 = bitcast i64* %120 to i8*, !dbg !2028
  %122 = call i32 @fio_base64_encode(i8* %119, i8* %121, i32 16), !dbg !2029
  %123 = sext i32 %122 to i64, !dbg !2029
  %124 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 1, !dbg !2030
  store i64 %123, i64* %124, align 8, !dbg !2031
  %125 = load i64, i64* %9, align 8, !dbg !2032
  %126 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 1, !dbg !2033
  %127 = load i64, i64* %126, align 8, !dbg !2033
  call void @fiobj_str_resize(i64 %125, i64 %127), !dbg !2034
  %128 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !2035
  %129 = load i64, i64* @HTTP_HEADER_WS_SEC_CLIENT_KEY, align 8, !dbg !2036
  %130 = load i64, i64* %9, align 8, !dbg !2037
  %131 = call i32 @http_set_header(%struct.http_s* %128, i64 %129, i64 %130), !dbg !2038
  %132 = load %struct.http_s*, %struct.http_s** %3, align 8, !dbg !2039
  call void @http_finish(%struct.http_s* %132), !dbg !2040
  ret i32 0, !dbg !2041
}

declare dso_local void @fio_sha1_init(%struct.fio_sha1_s* sret) #5

declare dso_local void @fio_sha1_write(%struct.fio_sha1_s*, i8*, i64) #5

declare dso_local i32 @fio_base64_encode(i8*, i8*, i32) #5

declare dso_local i8* @fio_sha1_result(%struct.fio_sha1_s*) #5

declare dso_local i32 @http_set_header(%struct.http_s*, i64, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_dup(i64 %0) #0 !dbg !2042 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2045, metadata !DIExpression()), !dbg !2046
  %5 = load i64, i64* %2, align 8, !dbg !2047
  %6 = icmp ne i64 %5, 0, !dbg !2047
  br i1 %6, label %7, label %25, !dbg !2047

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8, !dbg !2047
  %9 = and i64 %8, 1, !dbg !2047
  %10 = icmp eq i64 %9, 0, !dbg !2047
  br i1 %10, label %11, label %25, !dbg !2047

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8, !dbg !2047
  %13 = and i64 %12, 6, !dbg !2047
  %14 = icmp ne i64 %13, 6, !dbg !2047
  br i1 %14, label %15, label %25, !dbg !2049

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8, !dbg !2050
  %17 = and i64 %16, -8, !dbg !2050
  %18 = inttoptr i64 %17 to i8*, !dbg !2050
  %19 = bitcast i8* %18 to %struct.fiobj_object_header_s*, !dbg !2050
  %20 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %19, i32 0, i32 1, !dbg !2050
  store i32 1, i32* %3, align 4, !dbg !2050
  %21 = load i32, i32* %3, align 4, !dbg !2050
  %22 = atomicrmw add i32* %20, i32 %21 seq_cst, !dbg !2050
  %23 = add i32 %22, %21, !dbg !2050
  store i32 %23, i32* %4, align 4, !dbg !2050
  %24 = load i32, i32* %4, align 4, !dbg !2050
  br label %25, !dbg !2050

25:                                               ; preds = %15, %11, %7, %1
  %26 = load i64, i64* %2, align 8, !dbg !2051
  ret i64 %26, !dbg !2052
}

declare dso_local void @http_finish(%struct.http_s*) #5

declare dso_local void @websocket_attach(i64, %struct.http_settings_s*, %struct.websocket_settings_s*, i8*, i64) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local i32 @http_send_error(%struct.http_s*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_websocket_client_on_hangup(%struct.http_settings_s* %0) #0 !dbg !2053 {
  %2 = alloca %struct.http_settings_s*, align 8
  %3 = alloca %struct.websocket_settings_s*, align 8
  store %struct.http_settings_s* %0, %struct.http_settings_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.http_settings_s** %2, metadata !2056, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.declare(metadata %struct.websocket_settings_s** %3, metadata !2058, metadata !DIExpression()), !dbg !2059
  %4 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8, !dbg !2060
  %5 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %4, i32 0, i32 4, !dbg !2061
  %6 = load i8*, i8** %5, align 8, !dbg !2061
  %7 = bitcast i8* %6 to %struct.websocket_settings_s*, !dbg !2060
  store %struct.websocket_settings_s* %7, %struct.websocket_settings_s** %3, align 8, !dbg !2059
  %8 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8, !dbg !2062
  %9 = icmp ne %struct.websocket_settings_s* %8, null, !dbg !2062
  br i1 %9, label %10, label %28, !dbg !2064

10:                                               ; preds = %1
  %11 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8, !dbg !2065
  %12 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %11, i32 0, i32 4, !dbg !2068
  %13 = load void (i64, i8*)*, void (i64, i8*)** %12, align 8, !dbg !2068
  %14 = icmp ne void (i64, i8*)* %13, null, !dbg !2065
  br i1 %14, label %15, label %22, !dbg !2069

15:                                               ; preds = %10
  %16 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8, !dbg !2070
  %17 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %16, i32 0, i32 4, !dbg !2071
  %18 = load void (i64, i8*)*, void (i64, i8*)** %17, align 8, !dbg !2071
  %19 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8, !dbg !2072
  %20 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %19, i32 0, i32 5, !dbg !2073
  %21 = load i8*, i8** %20, align 8, !dbg !2073
  call void %18(i64 0, i8* %21), !dbg !2070
  br label %22, !dbg !2070

22:                                               ; preds = %15, %10
  %23 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8, !dbg !2074
  %24 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %23, i32 0, i32 4, !dbg !2075
  %25 = load i8*, i8** %24, align 8, !dbg !2075
  call void @fio_free(i8* %25), !dbg !2076
  %26 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8, !dbg !2077
  %27 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %26, i32 0, i32 4, !dbg !2078
  store i8* null, i8** %27, align 8, !dbg !2079
  br label %28, !dbg !2080

28:                                               ; preds = %22, %1
  ret void, !dbg !2081
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_websocket_client_on_upgrade(%struct.http_s* %0, i8* %1, i64 %2) #0 !dbg !2082 {
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.http1pr_s*, align 8
  %8 = alloca %struct.websocket_settings_s*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.http_settings_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %4, metadata !2083, metadata !DIExpression()), !dbg !2084
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2085, metadata !DIExpression()), !dbg !2086
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2087, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %7, metadata !2089, metadata !DIExpression()), !dbg !2090
  %11 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !2091
  %12 = getelementptr inbounds %struct.http_s, %struct.http_s* %11, i32 0, i32 0, !dbg !2091
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1, !dbg !2091
  %14 = load i64, i64* %13, align 8, !dbg !2091
  %15 = inttoptr i64 %14 to %struct.http1pr_s*, !dbg !2091
  store %struct.http1pr_s* %15, %struct.http1pr_s** %7, align 8, !dbg !2090
  call void @llvm.dbg.declare(metadata %struct.websocket_settings_s** %8, metadata !2092, metadata !DIExpression()), !dbg !2093
  %16 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !2094
  %17 = getelementptr inbounds %struct.http_s, %struct.http_s* %16, i32 0, i32 12, !dbg !2095
  %18 = load i8*, i8** %17, align 8, !dbg !2095
  %19 = bitcast i8* %18 to %struct.websocket_settings_s*, !dbg !2094
  store %struct.websocket_settings_s* %19, %struct.websocket_settings_s** %8, align 8, !dbg !2093
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2096, metadata !DIExpression()), !dbg !2097
  %20 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !2098
  %21 = getelementptr inbounds %struct.http_s, %struct.http_s* %20, i32 0, i32 0, !dbg !2098
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1, !dbg !2098
  %23 = load i64, i64* %22, align 8, !dbg !2098
  %24 = inttoptr i64 %23 to %struct.http1pr_s*, !dbg !2098
  %25 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %24, i32 0, i32 0, !dbg !2099
  %26 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %25, i32 0, i32 1, !dbg !2100
  %27 = load i64, i64* %26, align 8, !dbg !2100
  store i64 %27, i64* %9, align 8, !dbg !2097
  call void @llvm.dbg.declare(metadata %struct.http_settings_s** %10, metadata !2101, metadata !DIExpression()), !dbg !2102
  %28 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !2103
  %29 = getelementptr inbounds %struct.http_s, %struct.http_s* %28, i32 0, i32 0, !dbg !2103
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 1, !dbg !2103
  %31 = load i64, i64* %30, align 8, !dbg !2103
  %32 = inttoptr i64 %31 to %struct.http1pr_s*, !dbg !2103
  %33 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %32, i32 0, i32 0, !dbg !2104
  %34 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %33, i32 0, i32 2, !dbg !2105
  %35 = load %struct.http_settings_s*, %struct.http_settings_s** %34, align 8, !dbg !2105
  store %struct.http_settings_s* %35, %struct.http_settings_s** %10, align 8, !dbg !2102
  %36 = load %struct.http_settings_s*, %struct.http_settings_s** %10, align 8, !dbg !2106
  %37 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %36, i32 0, i32 4, !dbg !2107
  store i8* null, i8** %37, align 8, !dbg !2108
  %38 = load %struct.http_s*, %struct.http_s** %4, align 8, !dbg !2109
  call void @http_finish(%struct.http_s* %38), !dbg !2110
  %39 = load %struct.http1pr_s*, %struct.http1pr_s** %7, align 8, !dbg !2111
  %40 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %39, i32 0, i32 8, !dbg !2112
  store i8 1, i8* %40, align 2, !dbg !2113
  %41 = load i64, i64* %9, align 8, !dbg !2114
  %42 = load %struct.http_settings_s*, %struct.http_settings_s** %10, align 8, !dbg !2115
  %43 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8, !dbg !2116
  %44 = load %struct.http1pr_s*, %struct.http1pr_s** %7, align 8, !dbg !2117
  %45 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %44, i32 0, i32 1, !dbg !2118
  %46 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %45, i32 0, i32 0, !dbg !2119
  %47 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %46, i32 0, i32 2, !dbg !2120
  %48 = load i8*, i8** %47, align 8, !dbg !2120
  %49 = load %struct.http1pr_s*, %struct.http1pr_s** %7, align 8, !dbg !2121
  %50 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %49, i32 0, i32 3, !dbg !2122
  %51 = load i64, i64* %50, align 8, !dbg !2122
  %52 = load %struct.http1pr_s*, %struct.http1pr_s** %7, align 8, !dbg !2123
  %53 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %52, i32 0, i32 1, !dbg !2124
  %54 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %53, i32 0, i32 0, !dbg !2125
  %55 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %54, i32 0, i32 2, !dbg !2126
  %56 = load i8*, i8** %55, align 8, !dbg !2126
  %57 = load %struct.http1pr_s*, %struct.http1pr_s** %7, align 8, !dbg !2127
  %58 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %57, i32 0, i32 9, !dbg !2128
  %59 = getelementptr inbounds [0 x i8], [0 x i8]* %58, i64 0, i64 0, !dbg !2127
  %60 = ptrtoint i8* %56 to i64, !dbg !2129
  %61 = ptrtoint i8* %59 to i64, !dbg !2129
  %62 = sub i64 %60, %61, !dbg !2129
  %63 = sub i64 %51, %62, !dbg !2130
  call void @websocket_attach(i64 %41, %struct.http_settings_s* %42, %struct.websocket_settings_s* %43, i8* %48, i64 %63), !dbg !2131
  %64 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8, !dbg !2132
  %65 = bitcast %struct.websocket_settings_s* %64 to i8*, !dbg !2132
  call void @fio_free(i8* %65), !dbg !2133
  %66 = load i8*, i8** %5, align 8, !dbg !2134
  %67 = load i64, i64* %6, align 8, !dbg !2135
  ret void, !dbg !2136
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_websocket_client_on_failed(%struct.http_s* %0) #0 !dbg !2137 {
  %2 = alloca %struct.http_s*, align 8
  %3 = alloca %struct.websocket_settings_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.http_s** %2, metadata !2138, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.declare(metadata %struct.websocket_settings_s** %3, metadata !2140, metadata !DIExpression()), !dbg !2141
  %4 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !2142
  %5 = getelementptr inbounds %struct.http_s, %struct.http_s* %4, i32 0, i32 12, !dbg !2143
  %6 = load i8*, i8** %5, align 8, !dbg !2143
  %7 = bitcast i8* %6 to %struct.websocket_settings_s*, !dbg !2142
  store %struct.websocket_settings_s* %7, %struct.websocket_settings_s** %3, align 8, !dbg !2141
  %8 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8, !dbg !2144
  %9 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %8, i32 0, i32 4, !dbg !2146
  %10 = load void (i64, i8*)*, void (i64, i8*)** %9, align 8, !dbg !2146
  %11 = icmp ne void (i64, i8*)* %10, null, !dbg !2144
  br i1 %11, label %12, label %19, !dbg !2147

12:                                               ; preds = %1
  %13 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8, !dbg !2148
  %14 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %13, i32 0, i32 4, !dbg !2149
  %15 = load void (i64, i8*)*, void (i64, i8*)** %14, align 8, !dbg !2149
  %16 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8, !dbg !2150
  %17 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %16, i32 0, i32 5, !dbg !2151
  %18 = load i8*, i8** %17, align 8, !dbg !2151
  call void %15(i64 0, i8* %18), !dbg !2148
  br label %19, !dbg !2148

19:                                               ; preds = %12, %1
  %20 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !2152
  %21 = getelementptr inbounds %struct.http_s, %struct.http_s* %20, i32 0, i32 12, !dbg !2153
  %22 = load i8*, i8** %21, align 8, !dbg !2153
  call void @fio_free(i8* %22), !dbg !2154
  %23 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !2155
  %24 = call %struct.http_settings_s* @http_settings(%struct.http_s* %23), !dbg !2156
  %25 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %24, i32 0, i32 4, !dbg !2157
  store i8* null, i8** %25, align 8, !dbg !2158
  %26 = load %struct.http_s*, %struct.http_s** %2, align 8, !dbg !2159
  %27 = getelementptr inbounds %struct.http_s, %struct.http_s* %26, i32 0, i32 12, !dbg !2160
  store i8* null, i8** %27, align 8, !dbg !2161
  ret void, !dbg !2162
}

declare dso_local { i64, i64 } @fio_last_tick() #5

declare dso_local %struct.http_settings_s* @http_settings(%struct.http_s*) #5

declare dso_local void @fio_suspend(i64) #5

declare dso_local i64 @fiobj_str_new(i8*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_sse_on_ready(i64 %0, %struct.fio_protocol_s* %1) #0 !dbg !2163 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.http1_sse_fio_protocol_s*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2164, metadata !DIExpression()), !dbg !2165
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %4, metadata !2166, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.declare(metadata %struct.http1_sse_fio_protocol_s** %5, metadata !2168, metadata !DIExpression()), !dbg !2169
  %6 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !2170
  %7 = bitcast %struct.fio_protocol_s* %6 to %struct.http1_sse_fio_protocol_s*, !dbg !2171
  store %struct.http1_sse_fio_protocol_s* %7, %struct.http1_sse_fio_protocol_s** %5, align 8, !dbg !2169
  %8 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8, !dbg !2172
  %9 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %8, i32 0, i32 1, !dbg !2174
  %10 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %9, align 8, !dbg !2174
  %11 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %10, i32 0, i32 0, !dbg !2175
  %12 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %11, i32 0, i32 1, !dbg !2176
  %13 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %12, align 8, !dbg !2176
  %14 = icmp ne void (%struct.http_sse_s*)* %13, null, !dbg !2172
  br i1 %14, label %15, label %26, !dbg !2177

15:                                               ; preds = %2
  %16 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8, !dbg !2178
  %17 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %16, i32 0, i32 1, !dbg !2179
  %18 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %17, align 8, !dbg !2179
  %19 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %18, i32 0, i32 0, !dbg !2180
  %20 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %19, i32 0, i32 1, !dbg !2181
  %21 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %20, align 8, !dbg !2181
  %22 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8, !dbg !2182
  %23 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %22, i32 0, i32 1, !dbg !2183
  %24 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %23, align 8, !dbg !2183
  %25 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %24, i32 0, i32 0, !dbg !2184
  call void %21(%struct.http_sse_s* %25), !dbg !2178
  br label %26, !dbg !2178

26:                                               ; preds = %15, %2
  %27 = load i64, i64* %3, align 8, !dbg !2185
  ret void, !dbg !2186
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @http1_sse_on_shutdown(i64 %0, %struct.fio_protocol_s* %1) #0 !dbg !2187 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.http1_sse_fio_protocol_s*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2188, metadata !DIExpression()), !dbg !2189
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %4, metadata !2190, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.declare(metadata %struct.http1_sse_fio_protocol_s** %5, metadata !2192, metadata !DIExpression()), !dbg !2193
  %6 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !2194
  %7 = bitcast %struct.fio_protocol_s* %6 to %struct.http1_sse_fio_protocol_s*, !dbg !2195
  store %struct.http1_sse_fio_protocol_s* %7, %struct.http1_sse_fio_protocol_s** %5, align 8, !dbg !2193
  %8 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8, !dbg !2196
  %9 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %8, i32 0, i32 1, !dbg !2198
  %10 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %9, align 8, !dbg !2198
  %11 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %10, i32 0, i32 0, !dbg !2199
  %12 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %11, i32 0, i32 2, !dbg !2200
  %13 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %12, align 8, !dbg !2200
  %14 = icmp ne void (%struct.http_sse_s*)* %13, null, !dbg !2196
  br i1 %14, label %15, label %26, !dbg !2201

15:                                               ; preds = %2
  %16 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8, !dbg !2202
  %17 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %16, i32 0, i32 1, !dbg !2203
  %18 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %17, align 8, !dbg !2203
  %19 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %18, i32 0, i32 0, !dbg !2204
  %20 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %19, i32 0, i32 2, !dbg !2205
  %21 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %20, align 8, !dbg !2205
  %22 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8, !dbg !2206
  %23 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %22, i32 0, i32 1, !dbg !2207
  %24 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %23, align 8, !dbg !2207
  %25 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %24, i32 0, i32 0, !dbg !2208
  call void %21(%struct.http_sse_s* %25), !dbg !2202
  br label %26, !dbg !2202

26:                                               ; preds = %15, %2
  ret i8 0, !dbg !2209
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_sse_on_close(i64 %0, %struct.fio_protocol_s* %1) #0 !dbg !2210 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.http1_sse_fio_protocol_s*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2211, metadata !DIExpression()), !dbg !2212
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %4, metadata !2213, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.declare(metadata %struct.http1_sse_fio_protocol_s** %5, metadata !2215, metadata !DIExpression()), !dbg !2216
  %6 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !2217
  %7 = bitcast %struct.fio_protocol_s* %6 to %struct.http1_sse_fio_protocol_s*, !dbg !2218
  store %struct.http1_sse_fio_protocol_s* %7, %struct.http1_sse_fio_protocol_s** %5, align 8, !dbg !2216
  %8 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8, !dbg !2219
  %9 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %8, i32 0, i32 1, !dbg !2220
  %10 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %9, align 8, !dbg !2220
  call void @http_sse_destroy(%struct.http_sse_internal_s* %10), !dbg !2221
  %11 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8, !dbg !2222
  %12 = bitcast %struct.http1_sse_fio_protocol_s* %11 to i8*, !dbg !2222
  call void @fio_free(i8* %12), !dbg !2223
  %13 = load i64, i64* %3, align 8, !dbg !2224
  ret void, !dbg !2225
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_sse_ping(i64 %0, %struct.fio_protocol_s* %1) #0 !dbg !2226 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.fio_write_args_s, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2227, metadata !DIExpression()), !dbg !2228
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %4, metadata !2229, metadata !DIExpression()), !dbg !2230
  %6 = load i64, i64* %3, align 8, !dbg !2231
  %7 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 0, !dbg !2231
  %8 = bitcast %union.anon* %7 to i8**, !dbg !2231
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i64 0, i64 0), i8** %8, align 8, !dbg !2231
  %9 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 1, !dbg !2231
  %10 = bitcast %union.anon.0* %9 to void (i8*)**, !dbg !2231
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %10, align 8, !dbg !2231
  %11 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 2, !dbg !2231
  store i64 8, i64* %11, align 8, !dbg !2231
  %12 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 3, !dbg !2231
  store i64 0, i64* %12, align 8, !dbg !2231
  %13 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4, !dbg !2231
  %14 = load i8, i8* %13, align 8, !dbg !2231
  %15 = and i8 %14, -2, !dbg !2231
  store i8 %15, i8* %13, align 8, !dbg !2231
  %16 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4, !dbg !2231
  %17 = load i8, i8* %16, align 8, !dbg !2231
  %18 = and i8 %17, -3, !dbg !2231
  store i8 %18, i8* %16, align 8, !dbg !2231
  %19 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4, !dbg !2231
  %20 = load i8, i8* %19, align 8, !dbg !2231
  %21 = and i8 %20, -5, !dbg !2231
  store i8 %21, i8* %19, align 8, !dbg !2231
  %22 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4, !dbg !2231
  %23 = load i8, i8* %22, align 8, !dbg !2231
  %24 = and i8 %23, -9, !dbg !2231
  store i8 %24, i8* %22, align 8, !dbg !2231
  %25 = call i64 @fio_write2_fn(i64 %6, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %5), !dbg !2231
  %26 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !2232
  ret void, !dbg !2233
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_sse_init(%struct.http_sse_internal_s* %0, i64 %1, %struct.http_vtable_s* %2, %struct.http_sse_s* %3) #0 !dbg !2234 {
  %5 = alloca %struct.http_sse_internal_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.http_vtable_s*, align 8
  %8 = alloca %struct.http_sse_s*, align 8
  %9 = alloca %struct.http_sse_internal_s, align 8
  store %struct.http_sse_internal_s* %0, %struct.http_sse_internal_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.http_sse_internal_s** %5, metadata !2237, metadata !DIExpression()), !dbg !2238
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2239, metadata !DIExpression()), !dbg !2240
  store %struct.http_vtable_s* %2, %struct.http_vtable_s** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.http_vtable_s** %7, metadata !2241, metadata !DIExpression()), !dbg !2242
  store %struct.http_sse_s* %3, %struct.http_sse_s** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.http_sse_s** %8, metadata !2243, metadata !DIExpression()), !dbg !2244
  %10 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8, !dbg !2245
  %11 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %9, i32 0, i32 0, !dbg !2246
  %12 = load %struct.http_sse_s*, %struct.http_sse_s** %8, align 8, !dbg !2247
  %13 = bitcast %struct.http_sse_s* %11 to i8*, !dbg !2248
  %14 = bitcast %struct.http_sse_s* %12 to i8*, !dbg !2248
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 40, i1 false), !dbg !2248
  %15 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %9, i32 0, i32 1, !dbg !2246
  %16 = load i64, i64* %6, align 8, !dbg !2249
  store i64 %16, i64* %15, align 8, !dbg !2246
  %17 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %9, i32 0, i32 2, !dbg !2246
  %18 = load %struct.http_vtable_s*, %struct.http_vtable_s** %7, align 8, !dbg !2250
  store %struct.http_vtable_s* %18, %struct.http_vtable_s** %17, align 8, !dbg !2246
  %19 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %9, i32 0, i32 3, !dbg !2246
  store i64 0, i64* %19, align 8, !dbg !2246
  %20 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %9, i32 0, i32 4, !dbg !2246
  %21 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %20, i32 0, i32 0, !dbg !2251
  %22 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8, !dbg !2251
  %23 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %22, i32 0, i32 4, !dbg !2251
  store %struct.fio_ls_s* %23, %struct.fio_ls_s** %21, align 8, !dbg !2251
  %24 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %20, i32 0, i32 1, !dbg !2251
  %25 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8, !dbg !2251
  %26 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %25, i32 0, i32 4, !dbg !2251
  store %struct.fio_ls_s* %26, %struct.fio_ls_s** %24, align 8, !dbg !2251
  %27 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %20, i32 0, i32 2, !dbg !2251
  store i8* null, i8** %27, align 8, !dbg !2251
  %28 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %9, i32 0, i32 5, !dbg !2246
  store volatile i8 0, i8* %28, align 8, !dbg !2246
  %29 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %9, i32 0, i32 6, !dbg !2246
  store i64 1, i64* %29, align 8, !dbg !2246
  %30 = bitcast %struct.http_sse_internal_s* %10 to i8*, !dbg !2252
  %31 = bitcast %struct.http_sse_internal_s* %9 to i8*, !dbg !2252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 104, i1 true), !dbg !2252
  ret void, !dbg !2253
}

declare dso_local void @fio_timeout_set(i64, i8 zeroext) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_sse_destroy(%struct.http_sse_internal_s* %0) #0 !dbg !2254 {
  %2 = alloca %struct.http_sse_internal_s*, align 8
  %3 = alloca i8*, align 8
  store %struct.http_sse_internal_s* %0, %struct.http_sse_internal_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.http_sse_internal_s** %2, metadata !2257, metadata !DIExpression()), !dbg !2258
  br label %4, !dbg !2259

4:                                                ; preds = %9, %1
  %5 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8, !dbg !2260
  %6 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %5, i32 0, i32 4, !dbg !2261
  %7 = call i32 @fio_ls_any(%struct.fio_ls_s* %6), !dbg !2262
  %8 = icmp ne i32 %7, 0, !dbg !2259
  br i1 %8, label %9, label %15, !dbg !2259

9:                                                ; preds = %4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2263, metadata !DIExpression()), !dbg !2265
  %10 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8, !dbg !2266
  %11 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %10, i32 0, i32 4, !dbg !2267
  %12 = call i8* @fio_ls_pop(%struct.fio_ls_s* %11), !dbg !2268
  store i8* %12, i8** %3, align 8, !dbg !2265
  %13 = load i8*, i8** %3, align 8, !dbg !2269
  %14 = bitcast i8* %13 to %struct.subscription_s*, !dbg !2269
  call void @fio_unsubscribe(%struct.subscription_s* %14), !dbg !2270
  br label %4, !dbg !2259, !llvm.loop !2271

15:                                               ; preds = %4
  %16 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8, !dbg !2273
  %17 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %16, i32 0, i32 0, !dbg !2275
  %18 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %17, i32 0, i32 3, !dbg !2276
  %19 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %18, align 8, !dbg !2276
  %20 = icmp ne void (%struct.http_sse_s*)* %19, null, !dbg !2273
  br i1 %20, label %21, label %28, !dbg !2277

21:                                               ; preds = %15
  %22 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8, !dbg !2278
  %23 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %22, i32 0, i32 0, !dbg !2279
  %24 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %23, i32 0, i32 3, !dbg !2280
  %25 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %24, align 8, !dbg !2280
  %26 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8, !dbg !2281
  %27 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %26, i32 0, i32 0, !dbg !2282
  call void %25(%struct.http_sse_s* %27), !dbg !2278
  br label %28, !dbg !2278

28:                                               ; preds = %21, %15
  %29 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8, !dbg !2283
  %30 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %29, i32 0, i32 1, !dbg !2284
  store i64 -1, i64* %30, align 8, !dbg !2285
  %31 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8, !dbg !2286
  call void @http_sse_try_free(%struct.http_sse_internal_s* %31), !dbg !2287
  ret void, !dbg !2288
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ls_any(%struct.fio_ls_s* %0) #0 !dbg !2289 {
  %2 = alloca %struct.fio_ls_s*, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ls_s** %2, metadata !2293, metadata !DIExpression()), !dbg !2294
  %3 = load %struct.fio_ls_s*, %struct.fio_ls_s** %2, align 8, !dbg !2295
  %4 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %3, i32 0, i32 1, !dbg !2296
  %5 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8, !dbg !2296
  %6 = load %struct.fio_ls_s*, %struct.fio_ls_s** %2, align 8, !dbg !2297
  %7 = icmp ne %struct.fio_ls_s* %5, %6, !dbg !2298
  %8 = zext i1 %7 to i32, !dbg !2298
  ret i32 %8, !dbg !2299
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fio_ls_pop(%struct.fio_ls_s* %0) #0 !dbg !2300 {
  %2 = alloca %struct.fio_ls_s*, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ls_s** %2, metadata !2303, metadata !DIExpression()), !dbg !2304
  %3 = load %struct.fio_ls_s*, %struct.fio_ls_s** %2, align 8, !dbg !2305
  %4 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %3, i32 0, i32 0, !dbg !2306
  %5 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8, !dbg !2306
  %6 = call i8* @fio_ls_remove(%struct.fio_ls_s* %5), !dbg !2307
  ret i8* %6, !dbg !2308
}

declare dso_local void @fio_unsubscribe(%struct.subscription_s*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_sse_try_free(%struct.http_sse_internal_s* %0) #0 !dbg !2309 {
  %2 = alloca %struct.http_sse_internal_s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.http_sse_internal_s* %0, %struct.http_sse_internal_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.http_sse_internal_s** %2, metadata !2310, metadata !DIExpression()), !dbg !2311
  %5 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8, !dbg !2312
  %6 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %5, i32 0, i32 6, !dbg !2312
  store i64 1, i64* %3, align 8, !dbg !2312
  %7 = load i64, i64* %3, align 8, !dbg !2312
  %8 = atomicrmw sub i64* %6, i64 %7 seq_cst, !dbg !2312
  %9 = sub i64 %8, %7, !dbg !2312
  store i64 %9, i64* %4, align 8, !dbg !2312
  %10 = load i64, i64* %4, align 8, !dbg !2312
  %11 = icmp ne i64 %10, 0, !dbg !2312
  br i1 %11, label %12, label %13, !dbg !2314

12:                                               ; preds = %1
  br label %16, !dbg !2315

13:                                               ; preds = %1
  %14 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8, !dbg !2316
  %15 = bitcast %struct.http_sse_internal_s* %14 to i8*, !dbg !2316
  call void @fio_free(i8* %15), !dbg !2317
  br label %16, !dbg !2318

16:                                               ; preds = %13, %12
  ret void, !dbg !2318
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fio_ls_remove(%struct.fio_ls_s* %0) #0 !dbg !2319 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fio_ls_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ls_s** %3, metadata !2320, metadata !DIExpression()), !dbg !2321
  %5 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !2322
  %6 = icmp ne %struct.fio_ls_s* %5, null, !dbg !2322
  br i1 %6, label %7, label %13, !dbg !2324

7:                                                ; preds = %1
  %8 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !2325
  %9 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %8, i32 0, i32 1, !dbg !2326
  %10 = load %struct.fio_ls_s*, %struct.fio_ls_s** %9, align 8, !dbg !2326
  %11 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !2327
  %12 = icmp eq %struct.fio_ls_s* %10, %11, !dbg !2328
  br i1 %12, label %13, label %14, !dbg !2329

13:                                               ; preds = %7, %1
  store i8* null, i8** %2, align 8, !dbg !2330
  br label %35, !dbg !2330

14:                                               ; preds = %7
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2332, metadata !DIExpression()), !dbg !2333
  %15 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !2334
  %16 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %15, i32 0, i32 2, !dbg !2335
  %17 = load i8*, i8** %16, align 8, !dbg !2335
  store i8* %17, i8** %4, align 8, !dbg !2333
  %18 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !2336
  %19 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %18, i32 0, i32 0, !dbg !2337
  %20 = load %struct.fio_ls_s*, %struct.fio_ls_s** %19, align 8, !dbg !2337
  %21 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !2338
  %22 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %21, i32 0, i32 1, !dbg !2339
  %23 = load %struct.fio_ls_s*, %struct.fio_ls_s** %22, align 8, !dbg !2339
  %24 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %23, i32 0, i32 0, !dbg !2340
  store %struct.fio_ls_s* %20, %struct.fio_ls_s** %24, align 8, !dbg !2341
  %25 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !2342
  %26 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %25, i32 0, i32 1, !dbg !2343
  %27 = load %struct.fio_ls_s*, %struct.fio_ls_s** %26, align 8, !dbg !2343
  %28 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !2344
  %29 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %28, i32 0, i32 0, !dbg !2345
  %30 = load %struct.fio_ls_s*, %struct.fio_ls_s** %29, align 8, !dbg !2345
  %31 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %30, i32 0, i32 1, !dbg !2346
  store %struct.fio_ls_s* %27, %struct.fio_ls_s** %31, align 8, !dbg !2347
  %32 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8, !dbg !2348
  %33 = bitcast %struct.fio_ls_s* %32 to i8*, !dbg !2348
  call void @free(i8* %33) #2, !dbg !2349
  %34 = load i8*, i8** %4, align 8, !dbg !2350
  store i8* %34, i8** %2, align 8, !dbg !2351
  br label %35, !dbg !2351

35:                                               ; preds = %14, %13
  %36 = load i8*, i8** %2, align 8, !dbg !2352
  ret i8* %36, !dbg !2352
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

declare dso_local void @FIO_DEALLOC_NOOP(i8*) #5

declare dso_local i64 @fio_read(i64, i8*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_on_data(i64 %0, %struct.fio_protocol_s* %1) #0 !dbg !2353 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.http1pr_s*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2354, metadata !DIExpression()), !dbg !2355
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_protocol_s** %4, metadata !2356, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %5, metadata !2358, metadata !DIExpression()), !dbg !2359
  %7 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8, !dbg !2360
  %8 = bitcast %struct.fio_protocol_s* %7 to %struct.http1pr_s*, !dbg !2361
  store %struct.http1pr_s* %8, %struct.http1pr_s** %5, align 8, !dbg !2359
  %9 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !2362
  %10 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %9, i32 0, i32 8, !dbg !2364
  %11 = load i8, i8* %10, align 2, !dbg !2364
  %12 = icmp ne i8 %11, 0, !dbg !2362
  br i1 %12, label %13, label %15, !dbg !2365

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8, !dbg !2366
  call void @fio_suspend(i64 %14), !dbg !2368
  br label %47, !dbg !2369

15:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2370, metadata !DIExpression()), !dbg !2371
  store i64 0, i64* %6, align 8, !dbg !2371
  %16 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !2372
  %17 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %16, i32 0, i32 3, !dbg !2374
  %18 = load i64, i64* %17, align 8, !dbg !2374
  %19 = sub i64 8192, %18, !dbg !2375
  %20 = icmp ne i64 %19, 0, !dbg !2375
  br i1 %20, label %21, label %35, !dbg !2376

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8, !dbg !2377
  %23 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !2378
  %24 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %23, i32 0, i32 9, !dbg !2379
  %25 = getelementptr inbounds [0 x i8], [0 x i8]* %24, i64 0, i64 0, !dbg !2378
  %26 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !2380
  %27 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %26, i32 0, i32 3, !dbg !2381
  %28 = load i64, i64* %27, align 8, !dbg !2381
  %29 = getelementptr inbounds i8, i8* %25, i64 %28, !dbg !2382
  %30 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !2383
  %31 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %30, i32 0, i32 3, !dbg !2384
  %32 = load i64, i64* %31, align 8, !dbg !2384
  %33 = sub i64 8192, %32, !dbg !2385
  %34 = call i64 @fio_read(i64 %22, i8* %29, i64 %33), !dbg !2386
  store i64 %34, i64* %6, align 8, !dbg !2387
  br label %35, !dbg !2388

35:                                               ; preds = %21, %15
  %36 = load i64, i64* %6, align 8, !dbg !2389
  %37 = icmp sgt i64 %36, 0, !dbg !2391
  br i1 %37, label %38, label %44, !dbg !2392

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8, !dbg !2393
  %40 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !2395
  %41 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %40, i32 0, i32 3, !dbg !2396
  %42 = load i64, i64* %41, align 8, !dbg !2397
  %43 = add i64 %42, %39, !dbg !2397
  store i64 %43, i64* %41, align 8, !dbg !2397
  br label %44, !dbg !2398

44:                                               ; preds = %38, %35
  %45 = load i64, i64* %3, align 8, !dbg !2399
  %46 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8, !dbg !2400
  call void @http1_consume_data(i64 %45, %struct.http1pr_s* %46), !dbg !2401
  br label %47, !dbg !2402

47:                                               ; preds = %44, %13
  ret void, !dbg !2402
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_consume_data(i64 %0, %struct.http1pr_s* %1) #0 !dbg !2403 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.http1pr_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fio_str_info_s, align 8
  %9 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2406, metadata !DIExpression()), !dbg !2407
  store %struct.http1pr_s* %1, %struct.http1pr_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %4, metadata !2408, metadata !DIExpression()), !dbg !2409
  %10 = load i64, i64* %3, align 8, !dbg !2410
  %11 = call i64 @fio_pending(i64 %10), !dbg !2412
  %12 = icmp ugt i64 %11, 4, !dbg !2413
  br i1 %12, label %13, label %14, !dbg !2414

13:                                               ; preds = %2
  br label %123, !dbg !2415

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2417, metadata !DIExpression()), !dbg !2418
  store i64 0, i64* %5, align 8, !dbg !2418
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2419, metadata !DIExpression()), !dbg !2420
  %15 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2421
  %16 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %15, i32 0, i32 3, !dbg !2422
  %17 = load i64, i64* %16, align 8, !dbg !2422
  store i64 %17, i64* %6, align 8, !dbg !2420
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2423, metadata !DIExpression()), !dbg !2424
  store i32 8, i32* %7, align 4, !dbg !2424
  %18 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2425
  %19 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %18, i32 0, i32 3, !dbg !2427
  %20 = load i64, i64* %19, align 8, !dbg !2427
  %21 = icmp ne i64 %20, 0, !dbg !2425
  br i1 %21, label %23, label %22, !dbg !2428

22:                                               ; preds = %14
  br label %143, !dbg !2429

23:                                               ; preds = %14
  br label %24, !dbg !2430

24:                                               ; preds = %64, %23
  %25 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2431
  %26 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %25, i32 0, i32 1, !dbg !2433
  %27 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2434
  %28 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %27, i32 0, i32 9, !dbg !2435
  %29 = getelementptr inbounds [0 x i8], [0 x i8]* %28, i64 0, i64 0, !dbg !2434
  %30 = load i64, i64* %6, align 8, !dbg !2436
  %31 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2437
  %32 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %31, i32 0, i32 3, !dbg !2438
  %33 = load i64, i64* %32, align 8, !dbg !2438
  %34 = sub i64 %30, %33, !dbg !2439
  %35 = getelementptr inbounds i8, i8* %29, i64 %34, !dbg !2440
  %36 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2441
  %37 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %36, i32 0, i32 3, !dbg !2442
  %38 = load i64, i64* %37, align 8, !dbg !2442
  %39 = call i64 @http1_parse(%struct.http1_parser_s* %26, i8* %35, i64 %38), !dbg !2443
  store i64 %39, i64* %5, align 8, !dbg !2444
  %40 = load i64, i64* %5, align 8, !dbg !2445
  %41 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2446
  %42 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %41, i32 0, i32 3, !dbg !2447
  %43 = load i64, i64* %42, align 8, !dbg !2448
  %44 = sub i64 %43, %40, !dbg !2448
  store i64 %44, i64* %42, align 8, !dbg !2448
  %45 = load i32, i32* %7, align 4, !dbg !2449
  %46 = add nsw i32 %45, -1, !dbg !2449
  store i32 %46, i32* %7, align 4, !dbg !2449
  br label %47, !dbg !2450

47:                                               ; preds = %24
  %48 = load i64, i64* %5, align 8, !dbg !2451
  %49 = icmp ne i64 %48, 0, !dbg !2451
  br i1 %49, label %50, label %64, !dbg !2452

50:                                               ; preds = %47
  %51 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2453
  %52 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %51, i32 0, i32 3, !dbg !2454
  %53 = load i64, i64* %52, align 8, !dbg !2454
  %54 = icmp ne i64 %53, 0, !dbg !2453
  br i1 %54, label %55, label %64, !dbg !2455

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4, !dbg !2456
  %57 = icmp ne i32 %56, 0, !dbg !2456
  br i1 %57, label %58, label %64, !dbg !2457

58:                                               ; preds = %55
  %59 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2458
  %60 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %59, i32 0, i32 8, !dbg !2459
  %61 = load i8, i8* %60, align 2, !dbg !2459
  %62 = icmp ne i8 %61, 0, !dbg !2460
  %63 = xor i1 %62, true, !dbg !2460
  br label %64

64:                                               ; preds = %58, %55, %50, %47
  %65 = phi i1 [ false, %55 ], [ false, %50 ], [ false, %47 ], [ %63, %58 ], !dbg !2461
  br i1 %65, label %24, label %66, !dbg !2450, !llvm.loop !2462

66:                                               ; preds = %64
  %67 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2464
  %68 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %67, i32 0, i32 3, !dbg !2466
  %69 = load i64, i64* %68, align 8, !dbg !2466
  %70 = icmp ne i64 %69, 0, !dbg !2464
  br i1 %70, label %71, label %93, !dbg !2467

71:                                               ; preds = %66
  %72 = load i64, i64* %6, align 8, !dbg !2468
  %73 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2469
  %74 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %73, i32 0, i32 3, !dbg !2470
  %75 = load i64, i64* %74, align 8, !dbg !2470
  %76 = icmp ne i64 %72, %75, !dbg !2471
  br i1 %76, label %77, label %93, !dbg !2472

77:                                               ; preds = %71
  %78 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2473
  %79 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %78, i32 0, i32 9, !dbg !2475
  %80 = getelementptr inbounds [0 x i8], [0 x i8]* %79, i64 0, i64 0, !dbg !2476
  %81 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2477
  %82 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %81, i32 0, i32 9, !dbg !2478
  %83 = getelementptr inbounds [0 x i8], [0 x i8]* %82, i64 0, i64 0, !dbg !2477
  %84 = load i64, i64* %6, align 8, !dbg !2479
  %85 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2480
  %86 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %85, i32 0, i32 3, !dbg !2481
  %87 = load i64, i64* %86, align 8, !dbg !2481
  %88 = sub i64 %84, %87, !dbg !2482
  %89 = getelementptr inbounds i8, i8* %83, i64 %88, !dbg !2483
  %90 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2484
  %91 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %90, i32 0, i32 3, !dbg !2485
  %92 = load i64, i64* %91, align 8, !dbg !2485
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %80, i8* align 1 %89, i64 %92, i1 false), !dbg !2476
  br label %93, !dbg !2486

93:                                               ; preds = %77, %71, %66
  %94 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2487
  %95 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %94, i32 0, i32 3, !dbg !2489
  %96 = load i64, i64* %95, align 8, !dbg !2489
  %97 = icmp eq i64 %96, 8192, !dbg !2490
  br i1 %97, label %98, label %117, !dbg !2491

98:                                               ; preds = %93
  %99 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2492
  %100 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %99, i32 0, i32 2, !dbg !2495
  %101 = getelementptr inbounds %struct.http_s, %struct.http_s* %100, i32 0, i32 2, !dbg !2496
  %102 = load i64, i64* %101, align 8, !dbg !2496
  %103 = icmp ne i64 %102, 0, !dbg !2492
  br i1 %103, label %104, label %108, !dbg !2497

104:                                              ; preds = %98
  %105 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2498
  %106 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %105, i32 0, i32 2, !dbg !2499
  %107 = call i32 @http_send_error(%struct.http_s* %106, i64 413), !dbg !2500
  br label %116, !dbg !2500

108:                                              ; preds = %98
  %109 = call i64 @fiobj_str_tmp(), !dbg !2501
  %110 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2503
  %111 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %110, i32 0, i32 2, !dbg !2504
  %112 = getelementptr inbounds %struct.http_s, %struct.http_s* %111, i32 0, i32 2, !dbg !2505
  store i64 %109, i64* %112, align 8, !dbg !2506
  %113 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2507
  %114 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %113, i32 0, i32 2, !dbg !2508
  %115 = call i32 @http_send_error(%struct.http_s* %114, i64 413), !dbg !2509
  br label %116

116:                                              ; preds = %108, %104
  br label %117, !dbg !2510

117:                                              ; preds = %116, %93
  %118 = load i32, i32* %7, align 4, !dbg !2511
  %119 = icmp ne i32 %118, 0, !dbg !2511
  br i1 %119, label %122, label %120, !dbg !2513

120:                                              ; preds = %117
  %121 = load i64, i64* %3, align 8, !dbg !2514
  call void @fio_force_event(i64 %121, i32 0), !dbg !2516
  br label %122, !dbg !2517

122:                                              ; preds = %120, %117
  br label %143, !dbg !2518

123:                                              ; preds = %13
  call void @llvm.dbg.label(metadata !2519), !dbg !2520
  %124 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8, !dbg !2521
  %125 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %124, i32 0, i32 8, !dbg !2522
  %126 = load i8, i8* %125, align 2, !dbg !2523
  %127 = zext i8 %126 to i32, !dbg !2523
  %128 = or i32 %127, 4, !dbg !2523
  %129 = trunc i32 %128 to i8, !dbg !2523
  store i8 %129, i8* %125, align 2, !dbg !2523
  %130 = load i64, i64* %3, align 8, !dbg !2524
  call void @fio_suspend(i64 %130), !dbg !2525
  br label %131, !dbg !2526

131:                                              ; preds = %123
  %132 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !2527
  %133 = icmp sle i32 5, %132, !dbg !2527
  br i1 %133, label %134, label %142, !dbg !2530

134:                                              ; preds = %131
  %135 = load i64, i64* %3, align 8, !dbg !2531
  call void @fio_peer_addr(%struct.fio_str_info_s* sret %8, i64 %135), !dbg !2531
  %136 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1, !dbg !2531
  %137 = load i64, i64* %136, align 8, !dbg !2531
  %138 = trunc i64 %137 to i32, !dbg !2531
  %139 = load i64, i64* %3, align 8, !dbg !2531
  call void @fio_peer_addr(%struct.fio_str_info_s* sret %9, i64 %139), !dbg !2531
  %140 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2, !dbg !2531
  %141 = load i8*, i8** %140, align 8, !dbg !2531
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.92, i64 0, i64 0), i32 %138, i8* %141), !dbg !2531
  br label %142, !dbg !2531

142:                                              ; preds = %134, %131
  br label %143, !dbg !2530

143:                                              ; preds = %22, %122, %142
  ret void, !dbg !2533
}

declare dso_local i64 @fio_pending(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http1_parse(%struct.http1_parser_s* %0, i8* %1, i64 %2) #0 !dbg !2534 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.http1_parser_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.http1_parser_protected_read_only_state_s, align 8
  %14 = alloca %struct.http1_parser_protected_read_only_state_s, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %5, metadata !2538, metadata !DIExpression()), !dbg !2539
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2540, metadata !DIExpression()), !dbg !2541
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2542, metadata !DIExpression()), !dbg !2543
  %15 = load i64, i64* %7, align 8, !dbg !2544
  %16 = icmp ne i64 %15, 0, !dbg !2544
  br i1 %16, label %18, label %17, !dbg !2546

17:                                               ; preds = %3
  store i64 0, i64* %4, align 8, !dbg !2547
  br label %290, !dbg !2547

18:                                               ; preds = %3
  %19 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2548
  %20 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %19, i32 0, i32 0, !dbg !2549
  %21 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %20, i32 0, i32 2, !dbg !2550
  store i8* null, i8** %21, align 8, !dbg !2551
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2552, metadata !DIExpression()), !dbg !2553
  %22 = load i8*, i8** %6, align 8, !dbg !2554
  store i8* %22, i8** %8, align 8, !dbg !2553
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2555, metadata !DIExpression()), !dbg !2556
  %23 = load i8*, i8** %8, align 8, !dbg !2557
  store i8* %23, i8** %9, align 8, !dbg !2556
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2558, metadata !DIExpression()), !dbg !2560
  %24 = load i8*, i8** %8, align 8, !dbg !2561
  %25 = load i64, i64* %7, align 8, !dbg !2562
  %26 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !2563
  store i8* %26, i8** %10, align 8, !dbg !2560
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2564, metadata !DIExpression()), !dbg !2565
  store i8 0, i8* %11, align 1, !dbg !2565
  br label %27, !dbg !2566

27:                                               ; preds = %239, %18
  call void @llvm.dbg.label(metadata !2567), !dbg !2568
  %28 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2569
  %29 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %28, i32 0, i32 0, !dbg !2570
  %30 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %29, i32 0, i32 3, !dbg !2571
  %31 = load i8, i8* %30, align 8, !dbg !2571
  %32 = zext i8 %31 to i32, !dbg !2569
  %33 = and i32 %32, 7, !dbg !2572
  switch i32 %33, label %241 [
    i32 0, label %34
    i32 1, label %155
    i32 3, label %232
  ], !dbg !2573

34:                                               ; preds = %27
  br label %35, !dbg !2574

35:                                               ; preds = %63, %34
  %36 = load i8*, i8** %8, align 8, !dbg !2576
  %37 = load i8*, i8** %10, align 8, !dbg !2577
  %38 = icmp ult i8* %36, %37, !dbg !2578
  br i1 %38, label %39, label %61, !dbg !2579

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8, !dbg !2580
  %41 = load i8, i8* %40, align 1, !dbg !2581
  %42 = zext i8 %41 to i32, !dbg !2581
  %43 = icmp eq i32 %42, 13, !dbg !2582
  br i1 %43, label %59, label %44, !dbg !2583

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8, !dbg !2584
  %46 = load i8, i8* %45, align 1, !dbg !2585
  %47 = zext i8 %46 to i32, !dbg !2585
  %48 = icmp eq i32 %47, 10, !dbg !2586
  br i1 %48, label %59, label %49, !dbg !2587

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8, !dbg !2588
  %51 = load i8, i8* %50, align 1, !dbg !2589
  %52 = zext i8 %51 to i32, !dbg !2589
  %53 = icmp eq i32 %52, 32, !dbg !2590
  br i1 %53, label %59, label %54, !dbg !2591

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8, !dbg !2592
  %56 = load i8, i8* %55, align 1, !dbg !2593
  %57 = zext i8 %56 to i32, !dbg !2593
  %58 = icmp eq i32 %57, 0, !dbg !2594
  br label %59, !dbg !2591

59:                                               ; preds = %54, %49, %44, %39
  %60 = phi i1 [ true, %49 ], [ true, %44 ], [ true, %39 ], [ %58, %54 ]
  br label %61

61:                                               ; preds = %59, %35
  %62 = phi i1 [ false, %35 ], [ %60, %59 ], !dbg !2595
  br i1 %62, label %63, label %66, !dbg !2574

63:                                               ; preds = %61
  %64 = load i8*, i8** %8, align 8, !dbg !2596
  %65 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !2596
  store i8* %65, i8** %8, align 8, !dbg !2596
  br label %35, !dbg !2574, !llvm.loop !2598

66:                                               ; preds = %61
  %67 = load i8*, i8** %8, align 8, !dbg !2600
  store i8* %67, i8** %9, align 8, !dbg !2601
  %68 = load i8*, i8** %10, align 8, !dbg !2602
  %69 = call zeroext i8 @seek2eol(i8** %9, i8* %68), !dbg !2604
  store i8 %69, i8* %11, align 1, !dbg !2605
  %70 = icmp ne i8 %69, 0, !dbg !2605
  br i1 %70, label %77, label %71, !dbg !2606

71:                                               ; preds = %66
  %72 = load i8*, i8** %8, align 8, !dbg !2607
  %73 = ptrtoint i8* %72 to i64, !dbg !2607
  %74 = load i8*, i8** %6, align 8, !dbg !2607
  %75 = ptrtoint i8* %74 to i64, !dbg !2607
  %76 = sub i64 %73, %75, !dbg !2607
  store i64 %76, i64* %4, align 8, !dbg !2608
  br label %290, !dbg !2608

77:                                               ; preds = %66
  %78 = load i8*, i8** %8, align 8, !dbg !2609
  %79 = getelementptr inbounds i8, i8* %78, i64 0, !dbg !2609
  %80 = load i8, i8* %79, align 1, !dbg !2609
  %81 = zext i8 %80 to i32, !dbg !2609
  %82 = icmp eq i32 %81, 72, !dbg !2611
  br i1 %82, label %83, label %115, !dbg !2612

83:                                               ; preds = %77
  %84 = load i8*, i8** %8, align 8, !dbg !2613
  %85 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !2613
  %86 = load i8, i8* %85, align 1, !dbg !2613
  %87 = zext i8 %86 to i32, !dbg !2613
  %88 = icmp eq i32 %87, 84, !dbg !2614
  br i1 %88, label %89, label %115, !dbg !2615

89:                                               ; preds = %83
  %90 = load i8*, i8** %8, align 8, !dbg !2616
  %91 = getelementptr inbounds i8, i8* %90, i64 2, !dbg !2616
  %92 = load i8, i8* %91, align 1, !dbg !2616
  %93 = zext i8 %92 to i32, !dbg !2616
  %94 = icmp eq i32 %93, 84, !dbg !2617
  br i1 %94, label %95, label %115, !dbg !2618

95:                                               ; preds = %89
  %96 = load i8*, i8** %8, align 8, !dbg !2619
  %97 = getelementptr inbounds i8, i8* %96, i64 3, !dbg !2619
  %98 = load i8, i8* %97, align 1, !dbg !2619
  %99 = zext i8 %98 to i32, !dbg !2619
  %100 = icmp eq i32 %99, 80, !dbg !2620
  br i1 %100, label %101, label %115, !dbg !2621

101:                                              ; preds = %95
  %102 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2622
  %103 = load i8*, i8** %8, align 8, !dbg !2625
  %104 = load i8*, i8** %9, align 8, !dbg !2626
  %105 = load i8, i8* %11, align 1, !dbg !2627
  %106 = zext i8 %105 to i32, !dbg !2627
  %107 = sext i32 %106 to i64, !dbg !2628
  %108 = sub i64 0, %107, !dbg !2628
  %109 = getelementptr inbounds i8, i8* %104, i64 %108, !dbg !2628
  %110 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !2629
  %111 = call i32 @http1_consume_response_line(%struct.http1_parser_s* %102, i8* %103, i8* %110), !dbg !2630
  %112 = icmp ne i32 %111, 0, !dbg !2630
  br i1 %112, label %113, label %114, !dbg !2631

113:                                              ; preds = %101
  br label %280, !dbg !2632

114:                                              ; preds = %101
  br label %145, !dbg !2633

115:                                              ; preds = %95, %89, %83, %77
  %116 = load i8*, i8** %8, align 8, !dbg !2634
  %117 = getelementptr inbounds i8, i8* %116, i64 0, !dbg !2634
  %118 = load i8, i8* %117, align 1, !dbg !2634
  %119 = call zeroext i8 @http_tolower(i8 zeroext %118), !dbg !2636
  %120 = zext i8 %119 to i32, !dbg !2636
  %121 = icmp sge i32 %120, 97, !dbg !2637
  br i1 %121, label %122, label %143, !dbg !2638

122:                                              ; preds = %115
  %123 = load i8*, i8** %8, align 8, !dbg !2639
  %124 = getelementptr inbounds i8, i8* %123, i64 0, !dbg !2639
  %125 = load i8, i8* %124, align 1, !dbg !2639
  %126 = call zeroext i8 @http_tolower(i8 zeroext %125), !dbg !2640
  %127 = zext i8 %126 to i32, !dbg !2640
  %128 = icmp sle i32 %127, 122, !dbg !2641
  br i1 %128, label %129, label %143, !dbg !2642

129:                                              ; preds = %122
  %130 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2643
  %131 = load i8*, i8** %8, align 8, !dbg !2646
  %132 = load i8*, i8** %9, align 8, !dbg !2647
  %133 = load i8, i8* %11, align 1, !dbg !2648
  %134 = zext i8 %133 to i32, !dbg !2648
  %135 = sext i32 %134 to i64, !dbg !2649
  %136 = sub i64 0, %135, !dbg !2649
  %137 = getelementptr inbounds i8, i8* %132, i64 %136, !dbg !2649
  %138 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !2650
  %139 = call i32 @http1_consume_request_line(%struct.http1_parser_s* %130, i8* %131, i8* %138), !dbg !2651
  %140 = icmp ne i32 %139, 0, !dbg !2651
  br i1 %140, label %141, label %142, !dbg !2652

141:                                              ; preds = %129
  br label %280, !dbg !2653

142:                                              ; preds = %129
  br label %144, !dbg !2654

143:                                              ; preds = %122, %115
  br label %280, !dbg !2655

144:                                              ; preds = %142
  br label %145

145:                                              ; preds = %144, %114
  %146 = load i8*, i8** %9, align 8, !dbg !2656
  %147 = getelementptr inbounds i8, i8* %146, i64 1, !dbg !2657
  store i8* %147, i8** %8, align 8, !dbg !2658
  store i8* %147, i8** %9, align 8, !dbg !2659
  %148 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2660
  %149 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %148, i32 0, i32 0, !dbg !2661
  %150 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %149, i32 0, i32 3, !dbg !2662
  %151 = load i8, i8* %150, align 8, !dbg !2663
  %152 = zext i8 %151 to i32, !dbg !2663
  %153 = or i32 %152, 1, !dbg !2663
  %154 = trunc i32 %153 to i8, !dbg !2663
  store i8 %154, i8* %150, align 8, !dbg !2663
  br label %155, !dbg !2660

155:                                              ; preds = %27, %145
  br label %156, !dbg !2664

156:                                              ; preds = %204, %155
  %157 = load i8*, i8** %8, align 8, !dbg !2665
  %158 = load i8*, i8** %10, align 8, !dbg !2668
  %159 = icmp uge i8* %157, %158, !dbg !2669
  br i1 %159, label %160, label %166, !dbg !2670

160:                                              ; preds = %156
  %161 = load i8*, i8** %8, align 8, !dbg !2671
  %162 = ptrtoint i8* %161 to i64, !dbg !2671
  %163 = load i8*, i8** %6, align 8, !dbg !2671
  %164 = ptrtoint i8* %163 to i64, !dbg !2671
  %165 = sub i64 %162, %164, !dbg !2671
  store i64 %165, i64* %4, align 8, !dbg !2672
  br label %290, !dbg !2672

166:                                              ; preds = %156
  %167 = load i8*, i8** %8, align 8, !dbg !2673
  %168 = load i8, i8* %167, align 1, !dbg !2675
  %169 = zext i8 %168 to i32, !dbg !2675
  %170 = icmp eq i32 %169, 13, !dbg !2676
  br i1 %170, label %176, label %171, !dbg !2677

171:                                              ; preds = %166
  %172 = load i8*, i8** %8, align 8, !dbg !2678
  %173 = load i8, i8* %172, align 1, !dbg !2679
  %174 = zext i8 %173 to i32, !dbg !2679
  %175 = icmp eq i32 %174, 10, !dbg !2680
  br i1 %175, label %176, label %177, !dbg !2681

176:                                              ; preds = %171, %166
  br label %213, !dbg !2682

177:                                              ; preds = %171
  %178 = load i8*, i8** %8, align 8, !dbg !2684
  store i8* %178, i8** %9, align 8, !dbg !2685
  %179 = load i8*, i8** %10, align 8, !dbg !2686
  %180 = call zeroext i8 @seek2eol(i8** %9, i8* %179), !dbg !2688
  store i8 %180, i8* %11, align 1, !dbg !2689
  %181 = icmp ne i8 %180, 0, !dbg !2689
  br i1 %181, label %188, label %182, !dbg !2690

182:                                              ; preds = %177
  %183 = load i8*, i8** %8, align 8, !dbg !2691
  %184 = ptrtoint i8* %183 to i64, !dbg !2691
  %185 = load i8*, i8** %6, align 8, !dbg !2691
  %186 = ptrtoint i8* %185 to i64, !dbg !2691
  %187 = sub i64 %184, %186, !dbg !2691
  store i64 %187, i64* %4, align 8, !dbg !2692
  br label %290, !dbg !2692

188:                                              ; preds = %177
  %189 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2693
  %190 = load i8*, i8** %8, align 8, !dbg !2695
  %191 = load i8*, i8** %9, align 8, !dbg !2696
  %192 = load i8, i8* %11, align 1, !dbg !2697
  %193 = zext i8 %192 to i32, !dbg !2697
  %194 = sext i32 %193 to i64, !dbg !2698
  %195 = sub i64 0, %194, !dbg !2698
  %196 = getelementptr inbounds i8, i8* %191, i64 %195, !dbg !2698
  %197 = getelementptr inbounds i8, i8* %196, i64 1, !dbg !2699
  %198 = call i32 @http1_consume_header(%struct.http1_parser_s* %189, i8* %190, i8* %197), !dbg !2700
  %199 = icmp ne i32 %198, 0, !dbg !2700
  br i1 %199, label %200, label %201, !dbg !2701

200:                                              ; preds = %188
  br label %280, !dbg !2702

201:                                              ; preds = %188
  %202 = load i8*, i8** %9, align 8, !dbg !2703
  %203 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !2704
  store i8* %203, i8** %8, align 8, !dbg !2705
  store i8* %203, i8** %9, align 8, !dbg !2706
  br label %204, !dbg !2707

204:                                              ; preds = %201
  %205 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2708
  %206 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %205, i32 0, i32 0, !dbg !2709
  %207 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %206, i32 0, i32 3, !dbg !2710
  %208 = load i8, i8* %207, align 8, !dbg !2710
  %209 = zext i8 %208 to i32, !dbg !2708
  %210 = and i32 %209, 2, !dbg !2711
  %211 = icmp eq i32 %210, 0, !dbg !2712
  br i1 %211, label %156, label %212, !dbg !2707, !llvm.loop !2713

212:                                              ; preds = %204
  br label %213, !dbg !2707

213:                                              ; preds = %212, %176
  call void @llvm.dbg.label(metadata !2715), !dbg !2716
  %214 = load i8*, i8** %8, align 8, !dbg !2717
  %215 = getelementptr inbounds i8, i8* %214, i32 1, !dbg !2717
  store i8* %215, i8** %8, align 8, !dbg !2717
  %216 = load i8*, i8** %8, align 8, !dbg !2718
  %217 = load i8, i8* %216, align 1, !dbg !2720
  %218 = zext i8 %217 to i32, !dbg !2720
  %219 = icmp eq i32 %218, 10, !dbg !2721
  br i1 %219, label %220, label %223, !dbg !2722

220:                                              ; preds = %213
  %221 = load i8*, i8** %8, align 8, !dbg !2723
  %222 = getelementptr inbounds i8, i8* %221, i32 1, !dbg !2723
  store i8* %222, i8** %8, align 8, !dbg !2723
  br label %223, !dbg !2723

223:                                              ; preds = %220, %213
  %224 = load i8*, i8** %8, align 8, !dbg !2724
  store i8* %224, i8** %9, align 8, !dbg !2725
  %225 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2726
  %226 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %225, i32 0, i32 0, !dbg !2727
  %227 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %226, i32 0, i32 3, !dbg !2728
  %228 = load i8, i8* %227, align 8, !dbg !2729
  %229 = zext i8 %228 to i32, !dbg !2729
  %230 = or i32 %229, 2, !dbg !2729
  %231 = trunc i32 %230 to i8, !dbg !2729
  store i8 %231, i8* %227, align 8, !dbg !2729
  br label %232, !dbg !2726

232:                                              ; preds = %27, %223
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2730, metadata !DIExpression()), !dbg !2732
  %233 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2733
  %234 = load i8*, i8** %6, align 8, !dbg !2734
  %235 = load i64, i64* %7, align 8, !dbg !2735
  %236 = call i32 @http1_consume_body(%struct.http1_parser_s* %233, i8* %234, i64 %235, i8** %8), !dbg !2736
  store i32 %236, i32* %12, align 4, !dbg !2732
  %237 = load i32, i32* %12, align 4, !dbg !2737
  switch i32 %237, label %240 [
    i32 -1, label %238
    i32 -2, label %239
  ], !dbg !2738

238:                                              ; preds = %232
  br label %280, !dbg !2739

239:                                              ; preds = %232
  br label %27, !dbg !2741

240:                                              ; preds = %232
  br label %241, !dbg !2742

241:                                              ; preds = %27, %240
  %242 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2743
  %243 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %242, i32 0, i32 0, !dbg !2745
  %244 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %243, i32 0, i32 3, !dbg !2746
  %245 = load i8, i8* %244, align 8, !dbg !2746
  %246 = zext i8 %245 to i32, !dbg !2743
  %247 = and i32 %246, 4, !dbg !2747
  %248 = icmp ne i32 %247, 0, !dbg !2747
  br i1 %248, label %249, label %274, !dbg !2748

249:                                              ; preds = %241
  %250 = load i8*, i8** %8, align 8, !dbg !2749
  %251 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2751
  %252 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %251, i32 0, i32 0, !dbg !2752
  %253 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %252, i32 0, i32 2, !dbg !2753
  store i8* %250, i8** %253, align 8, !dbg !2754
  %254 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2755
  %255 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %254, i32 0, i32 0, !dbg !2757
  %256 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %255, i32 0, i32 3, !dbg !2758
  %257 = load i8, i8* %256, align 8, !dbg !2758
  %258 = zext i8 %257 to i32, !dbg !2755
  %259 = and i32 %258, 128, !dbg !2759
  %260 = icmp ne i32 %259, 0, !dbg !2760
  %261 = zext i1 %260 to i64, !dbg !2760
  %262 = select i1 %260, i32 (%struct.http1_parser_s*)* @http1_on_response, i32 (%struct.http1_parser_s*)* @http1_on_request, !dbg !2760
  %263 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2761
  %264 = call i32 %262(%struct.http1_parser_s* %263), !dbg !2762
  %265 = icmp ne i32 %264, 0, !dbg !2762
  br i1 %265, label %266, label %267, !dbg !2763

266:                                              ; preds = %249
  br label %280, !dbg !2764

267:                                              ; preds = %249
  %268 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2765
  %269 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %268, i32 0, i32 0, !dbg !2766
  %270 = bitcast %struct.http1_parser_protected_read_only_state_s* %13 to i8*, !dbg !2767
  call void @llvm.memset.p0i8.i64(i8* align 8 %270, i8 0, i64 32, i1 false), !dbg !2767
  %271 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %13, i32 0, i32 0, !dbg !2768
  store i64 0, i64* %271, align 8, !dbg !2768
  %272 = bitcast %struct.http1_parser_protected_read_only_state_s* %269 to i8*, !dbg !2767
  %273 = bitcast %struct.http1_parser_protected_read_only_state_s* %13 to i8*, !dbg !2767
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %272, i8* align 8 %273, i64 32, i1 false), !dbg !2767
  br label %274, !dbg !2769

274:                                              ; preds = %267, %241
  %275 = load i8*, i8** %8, align 8, !dbg !2770
  %276 = ptrtoint i8* %275 to i64, !dbg !2770
  %277 = load i8*, i8** %6, align 8, !dbg !2770
  %278 = ptrtoint i8* %277 to i64, !dbg !2770
  %279 = sub i64 %276, %278, !dbg !2770
  store i64 %279, i64* %4, align 8, !dbg !2771
  br label %290, !dbg !2771

280:                                              ; preds = %266, %238, %200, %143, %141, %113
  call void @llvm.dbg.label(metadata !2772), !dbg !2773
  %281 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2774
  %282 = call i32 @http1_on_error(%struct.http1_parser_s* %281), !dbg !2775
  %283 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2776
  %284 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %283, i32 0, i32 0, !dbg !2777
  %285 = bitcast %struct.http1_parser_protected_read_only_state_s* %14 to i8*, !dbg !2778
  call void @llvm.memset.p0i8.i64(i8* align 8 %285, i8 0, i64 32, i1 false), !dbg !2778
  %286 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %14, i32 0, i32 0, !dbg !2779
  store i64 0, i64* %286, align 8, !dbg !2779
  %287 = bitcast %struct.http1_parser_protected_read_only_state_s* %284 to i8*, !dbg !2778
  %288 = bitcast %struct.http1_parser_protected_read_only_state_s* %14 to i8*, !dbg !2778
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %287, i8* align 8 %288, i64 32, i1 false), !dbg !2778
  %289 = load i64, i64* %7, align 8, !dbg !2780
  store i64 %289, i64* %4, align 8, !dbg !2781
  br label %290, !dbg !2781

290:                                              ; preds = %280, %274, %182, %160, %71, %17
  %291 = load i64, i64* %4, align 8, !dbg !2782
  ret i64 %291, !dbg !2782
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #4

declare dso_local i64 @fiobj_str_tmp() #5

declare dso_local void @fio_peer_addr(%struct.fio_str_info_s* sret, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @seek2eol(i8** %0, i8* %1) #0 !dbg !2783 {
  %3 = alloca i8, align 1
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !2787, metadata !DIExpression()), !dbg !2788
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2789, metadata !DIExpression()), !dbg !2790
  %6 = load i8**, i8*** %4, align 8, !dbg !2791
  %7 = load i8*, i8** %5, align 8, !dbg !2793
  %8 = call zeroext i8 @seek2ch(i8** %6, i8* %7, i8 zeroext 10), !dbg !2794
  %9 = icmp ne i8 %8, 0, !dbg !2794
  br i1 %9, label %11, label %10, !dbg !2795

10:                                               ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !2796
  br label %20, !dbg !2796

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8, !dbg !2797
  %13 = load i8*, i8** %12, align 8, !dbg !2799
  %14 = getelementptr inbounds i8, i8* %13, i64 -1, !dbg !2800
  %15 = load i8, i8* %14, align 1, !dbg !2800
  %16 = zext i8 %15 to i32, !dbg !2800
  %17 = icmp eq i32 %16, 13, !dbg !2801
  br i1 %17, label %18, label %19, !dbg !2802

18:                                               ; preds = %11
  store i8 2, i8* %3, align 1, !dbg !2803
  br label %20, !dbg !2803

19:                                               ; preds = %11
  store i8 1, i8* %3, align 1, !dbg !2805
  br label %20, !dbg !2805

20:                                               ; preds = %19, %18, %10
  %21 = load i8, i8* %3, align 1, !dbg !2806
  ret i8 %21, !dbg !2806
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_response_line(%struct.http1_parser_s* %0, i8* %1, i8* %2) #0 !dbg !2807 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http1_parser_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %5, metadata !2810, metadata !DIExpression()), !dbg !2811
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2812, metadata !DIExpression()), !dbg !2813
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2814, metadata !DIExpression()), !dbg !2815
  %9 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2816
  %10 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %9, i32 0, i32 0, !dbg !2817
  %11 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %10, i32 0, i32 3, !dbg !2818
  %12 = load i8, i8* %11, align 8, !dbg !2819
  %13 = zext i8 %12 to i32, !dbg !2819
  %14 = or i32 %13, 128, !dbg !2819
  %15 = trunc i32 %14 to i8, !dbg !2819
  store i8 %15, i8* %11, align 8, !dbg !2819
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2820, metadata !DIExpression()), !dbg !2821
  %16 = load i8*, i8** %6, align 8, !dbg !2822
  store i8* %16, i8** %8, align 8, !dbg !2821
  %17 = load i8*, i8** %7, align 8, !dbg !2823
  %18 = call zeroext i8 @seek2ch(i8** %8, i8* %17, i8 zeroext 32), !dbg !2825
  %19 = icmp ne i8 %18, 0, !dbg !2825
  br i1 %19, label %21, label %20, !dbg !2826

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !2827
  br label %54, !dbg !2827

21:                                               ; preds = %3
  %22 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2828
  %23 = load i8*, i8** %6, align 8, !dbg !2830
  %24 = load i8*, i8** %8, align 8, !dbg !2831
  %25 = load i8*, i8** %6, align 8, !dbg !2832
  %26 = ptrtoint i8* %24 to i64, !dbg !2833
  %27 = ptrtoint i8* %25 to i64, !dbg !2833
  %28 = sub i64 %26, %27, !dbg !2833
  %29 = call i32 @http1_on_version(%struct.http1_parser_s* %22, i8* %23, i64 %28), !dbg !2834
  %30 = icmp ne i32 %29, 0, !dbg !2834
  br i1 %30, label %31, label %32, !dbg !2835

31:                                               ; preds = %21
  store i32 -1, i32* %4, align 4, !dbg !2836
  br label %54, !dbg !2836

32:                                               ; preds = %21
  %33 = load i8*, i8** %8, align 8, !dbg !2837
  %34 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !2838
  store i8* %34, i8** %6, align 8, !dbg !2839
  store i8* %34, i8** %8, align 8, !dbg !2840
  %35 = load i8*, i8** %7, align 8, !dbg !2841
  %36 = call zeroext i8 @seek2ch(i8** %8, i8* %35, i8 zeroext 32), !dbg !2843
  %37 = icmp ne i8 %36, 0, !dbg !2843
  br i1 %37, label %39, label %38, !dbg !2844

38:                                               ; preds = %32
  store i32 -1, i32* %4, align 4, !dbg !2845
  br label %54, !dbg !2845

39:                                               ; preds = %32
  %40 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2846
  %41 = load i8*, i8** %6, align 8, !dbg !2848
  %42 = call i64 @http1_atol(i8* %41, i8** null), !dbg !2849
  %43 = load i8*, i8** %8, align 8, !dbg !2850
  %44 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !2851
  %45 = load i8*, i8** %7, align 8, !dbg !2852
  %46 = load i8*, i8** %8, align 8, !dbg !2853
  %47 = ptrtoint i8* %45 to i64, !dbg !2854
  %48 = ptrtoint i8* %46 to i64, !dbg !2854
  %49 = sub i64 %47, %48, !dbg !2854
  %50 = call i32 @http1_on_status(%struct.http1_parser_s* %40, i64 %42, i8* %44, i64 %49), !dbg !2855
  %51 = icmp ne i32 %50, 0, !dbg !2855
  br i1 %51, label %52, label %53, !dbg !2856

52:                                               ; preds = %39
  store i32 -1, i32* %4, align 4, !dbg !2857
  br label %54, !dbg !2857

53:                                               ; preds = %39
  store i32 0, i32* %4, align 4, !dbg !2858
  br label %54, !dbg !2858

54:                                               ; preds = %53, %52, %38, %31, %20
  %55 = load i32, i32* %4, align 4, !dbg !2859
  ret i32 %55, !dbg !2859
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @http_tolower(i8 zeroext %0) #0 !dbg !2860 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !2863, metadata !DIExpression()), !dbg !2864
  %3 = load i8, i8* %2, align 1, !dbg !2865
  %4 = zext i8 %3 to i32, !dbg !2865
  %5 = icmp sge i32 %4, 65, !dbg !2867
  br i1 %5, label %6, label %15, !dbg !2868

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1, !dbg !2869
  %8 = zext i8 %7 to i32, !dbg !2869
  %9 = icmp sle i32 %8, 90, !dbg !2870
  br i1 %9, label %10, label %15, !dbg !2871

10:                                               ; preds = %6
  %11 = load i8, i8* %2, align 1, !dbg !2872
  %12 = zext i8 %11 to i32, !dbg !2872
  %13 = or i32 %12, 32, !dbg !2872
  %14 = trunc i32 %13 to i8, !dbg !2872
  store i8 %14, i8* %2, align 1, !dbg !2872
  br label %15, !dbg !2873

15:                                               ; preds = %10, %6, %1
  %16 = load i8, i8* %2, align 1, !dbg !2874
  ret i8 %16, !dbg !2875
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_request_line(%struct.http1_parser_s* %0, i8* %1, i8* %2) #0 !dbg !2876 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http1_parser_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %5, metadata !2877, metadata !DIExpression()), !dbg !2878
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2879, metadata !DIExpression()), !dbg !2880
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2881, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2883, metadata !DIExpression()), !dbg !2884
  %11 = load i8*, i8** %6, align 8, !dbg !2885
  store i8* %11, i8** %8, align 8, !dbg !2884
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2886, metadata !DIExpression()), !dbg !2887
  store i8* null, i8** %9, align 8, !dbg !2887
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2888, metadata !DIExpression()), !dbg !2889
  store i8* null, i8** %10, align 8, !dbg !2889
  %12 = load i8*, i8** %7, align 8, !dbg !2890
  %13 = call zeroext i8 @seek2ch(i8** %8, i8* %12, i8 zeroext 32), !dbg !2892
  %14 = icmp ne i8 %13, 0, !dbg !2892
  br i1 %14, label %16, label %15, !dbg !2893

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !2894
  br label %219, !dbg !2894

16:                                               ; preds = %3
  %17 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2895
  %18 = load i8*, i8** %6, align 8, !dbg !2897
  %19 = load i8*, i8** %8, align 8, !dbg !2898
  %20 = load i8*, i8** %6, align 8, !dbg !2899
  %21 = ptrtoint i8* %19 to i64, !dbg !2900
  %22 = ptrtoint i8* %20 to i64, !dbg !2900
  %23 = sub i64 %21, %22, !dbg !2900
  %24 = call i32 @http1_on_method(%struct.http1_parser_s* %17, i8* %18, i64 %23), !dbg !2901
  %25 = icmp ne i32 %24, 0, !dbg !2901
  br i1 %25, label %26, label %27, !dbg !2902

26:                                               ; preds = %16
  store i32 -1, i32* %4, align 4, !dbg !2903
  br label %219, !dbg !2903

27:                                               ; preds = %16
  %28 = load i8*, i8** %8, align 8, !dbg !2904
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !2905
  store i8* %29, i8** %6, align 8, !dbg !2906
  store i8* %29, i8** %8, align 8, !dbg !2907
  %30 = load i8*, i8** %6, align 8, !dbg !2908
  %31 = getelementptr inbounds i8, i8* %30, i64 0, !dbg !2908
  %32 = load i8, i8* %31, align 1, !dbg !2908
  %33 = zext i8 %32 to i32, !dbg !2908
  %34 = icmp eq i32 %33, 104, !dbg !2910
  br i1 %34, label %35, label %123, !dbg !2911

35:                                               ; preds = %27
  %36 = load i8*, i8** %6, align 8, !dbg !2912
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !2912
  %38 = load i8, i8* %37, align 1, !dbg !2912
  %39 = zext i8 %38 to i32, !dbg !2912
  %40 = icmp eq i32 %39, 116, !dbg !2913
  br i1 %40, label %41, label %123, !dbg !2914

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8, !dbg !2915
  %43 = getelementptr inbounds i8, i8* %42, i64 2, !dbg !2915
  %44 = load i8, i8* %43, align 1, !dbg !2915
  %45 = zext i8 %44 to i32, !dbg !2915
  %46 = icmp eq i32 %45, 116, !dbg !2916
  br i1 %46, label %47, label %123, !dbg !2917

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8, !dbg !2918
  %49 = getelementptr inbounds i8, i8* %48, i64 3, !dbg !2918
  %50 = load i8, i8* %49, align 1, !dbg !2918
  %51 = zext i8 %50 to i32, !dbg !2918
  %52 = icmp eq i32 %51, 112, !dbg !2919
  br i1 %52, label %53, label %123, !dbg !2920

53:                                               ; preds = %47
  %54 = load i8*, i8** %6, align 8, !dbg !2921
  %55 = getelementptr inbounds i8, i8* %54, i64 4, !dbg !2921
  %56 = load i8, i8* %55, align 1, !dbg !2921
  %57 = zext i8 %56 to i32, !dbg !2921
  %58 = icmp eq i32 %57, 58, !dbg !2924
  br i1 %58, label %59, label %74, !dbg !2925

59:                                               ; preds = %53
  %60 = load i8*, i8** %6, align 8, !dbg !2926
  %61 = getelementptr inbounds i8, i8* %60, i64 5, !dbg !2926
  %62 = load i8, i8* %61, align 1, !dbg !2926
  %63 = zext i8 %62 to i32, !dbg !2926
  %64 = icmp eq i32 %63, 47, !dbg !2927
  br i1 %64, label %65, label %74, !dbg !2928

65:                                               ; preds = %59
  %66 = load i8*, i8** %6, align 8, !dbg !2929
  %67 = getelementptr inbounds i8, i8* %66, i64 6, !dbg !2929
  %68 = load i8, i8* %67, align 1, !dbg !2929
  %69 = zext i8 %68 to i32, !dbg !2929
  %70 = icmp eq i32 %69, 47, !dbg !2930
  br i1 %70, label %71, label %74, !dbg !2931

71:                                               ; preds = %65
  %72 = load i8*, i8** %6, align 8, !dbg !2932
  %73 = getelementptr inbounds i8, i8* %72, i64 7, !dbg !2932
  store i8* %73, i8** %6, align 8, !dbg !2932
  store i8* %73, i8** %9, align 8, !dbg !2934
  store i8* %73, i8** %10, align 8, !dbg !2935
  store i8* %73, i8** %8, align 8, !dbg !2936
  br label %103, !dbg !2937

74:                                               ; preds = %65, %59, %53
  %75 = load i8*, i8** %6, align 8, !dbg !2938
  %76 = getelementptr inbounds i8, i8* %75, i64 4, !dbg !2938
  %77 = load i8, i8* %76, align 1, !dbg !2938
  %78 = zext i8 %77 to i32, !dbg !2938
  %79 = icmp eq i32 %78, 115, !dbg !2940
  br i1 %79, label %80, label %101, !dbg !2941

80:                                               ; preds = %74
  %81 = load i8*, i8** %6, align 8, !dbg !2942
  %82 = getelementptr inbounds i8, i8* %81, i64 5, !dbg !2942
  %83 = load i8, i8* %82, align 1, !dbg !2942
  %84 = zext i8 %83 to i32, !dbg !2942
  %85 = icmp eq i32 %84, 58, !dbg !2943
  br i1 %85, label %86, label %101, !dbg !2944

86:                                               ; preds = %80
  %87 = load i8*, i8** %6, align 8, !dbg !2945
  %88 = getelementptr inbounds i8, i8* %87, i64 6, !dbg !2945
  %89 = load i8, i8* %88, align 1, !dbg !2945
  %90 = zext i8 %89 to i32, !dbg !2945
  %91 = icmp eq i32 %90, 47, !dbg !2946
  br i1 %91, label %92, label %101, !dbg !2947

92:                                               ; preds = %86
  %93 = load i8*, i8** %6, align 8, !dbg !2948
  %94 = getelementptr inbounds i8, i8* %93, i64 7, !dbg !2948
  %95 = load i8, i8* %94, align 1, !dbg !2948
  %96 = zext i8 %95 to i32, !dbg !2948
  %97 = icmp eq i32 %96, 47, !dbg !2949
  br i1 %97, label %98, label %101, !dbg !2950

98:                                               ; preds = %92
  %99 = load i8*, i8** %6, align 8, !dbg !2951
  %100 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !2951
  store i8* %100, i8** %6, align 8, !dbg !2951
  store i8* %100, i8** %9, align 8, !dbg !2953
  store i8* %100, i8** %10, align 8, !dbg !2954
  store i8* %100, i8** %8, align 8, !dbg !2955
  br label %102, !dbg !2956

101:                                              ; preds = %92, %86, %80, %74
  br label %124, !dbg !2957

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %71
  %104 = load i8*, i8** %7, align 8, !dbg !2958
  %105 = call zeroext i8 @seek2ch(i8** %8, i8* %104, i8 zeroext 32), !dbg !2960
  %106 = icmp ne i8 %105, 0, !dbg !2960
  br i1 %106, label %108, label %107, !dbg !2961

107:                                              ; preds = %103
  store i32 -1, i32* %4, align 4, !dbg !2962
  br label %219, !dbg !2962

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8, !dbg !2963
  store i8 32, i8* %109, align 1, !dbg !2964
  %110 = load i8*, i8** %8, align 8, !dbg !2965
  %111 = call zeroext i8 @seek2ch(i8** %10, i8* %110, i8 zeroext 47), !dbg !2967
  %112 = icmp ne i8 %111, 0, !dbg !2967
  br i1 %112, label %119, label %113, !dbg !2968

113:                                              ; preds = %108
  %114 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2969
  %115 = call i32 @http1_on_path(%struct.http1_parser_s* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i64 0, i64 0), i64 1), !dbg !2972
  %116 = icmp ne i32 %115, 0, !dbg !2972
  br i1 %116, label %117, label %118, !dbg !2973

117:                                              ; preds = %113
  store i32 -1, i32* %4, align 4, !dbg !2974
  br label %219, !dbg !2974

118:                                              ; preds = %113
  br label %185, !dbg !2975

119:                                              ; preds = %108
  %120 = load i8*, i8** %10, align 8, !dbg !2976
  %121 = getelementptr inbounds i8, i8* %120, i64 0, !dbg !2976
  store i8 47, i8* %121, align 1, !dbg !2977
  %122 = load i8*, i8** %10, align 8, !dbg !2978
  store i8* %122, i8** %6, align 8, !dbg !2979
  br label %123, !dbg !2980

123:                                              ; preds = %119, %47, %41, %35, %27
  br label %124, !dbg !2981

124:                                              ; preds = %123, %101
  call void @llvm.dbg.label(metadata !2982), !dbg !2983
  %125 = load i8*, i8** %6, align 8, !dbg !2984
  store i8* %125, i8** %8, align 8, !dbg !2985
  %126 = load i8*, i8** %7, align 8, !dbg !2986
  %127 = call zeroext i8 @seek2ch(i8** %8, i8* %126, i8 zeroext 63), !dbg !2988
  %128 = icmp ne i8 %127, 0, !dbg !2988
  br i1 %128, label %129, label %166, !dbg !2989

129:                                              ; preds = %124
  %130 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !2990
  %131 = load i8*, i8** %6, align 8, !dbg !2993
  %132 = load i8*, i8** %8, align 8, !dbg !2994
  %133 = load i8*, i8** %6, align 8, !dbg !2995
  %134 = ptrtoint i8* %132 to i64, !dbg !2996
  %135 = ptrtoint i8* %133 to i64, !dbg !2996
  %136 = sub i64 %134, %135, !dbg !2996
  %137 = call i32 @http1_on_path(%struct.http1_parser_s* %130, i8* %131, i64 %136), !dbg !2997
  %138 = icmp ne i32 %137, 0, !dbg !2997
  br i1 %138, label %139, label %140, !dbg !2998

139:                                              ; preds = %129
  store i32 -1, i32* %4, align 4, !dbg !2999
  br label %219, !dbg !2999

140:                                              ; preds = %129
  %141 = load i8*, i8** %8, align 8, !dbg !3000
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3001
  store i8* %142, i8** %6, align 8, !dbg !3002
  store i8* %142, i8** %8, align 8, !dbg !3003
  %143 = load i8*, i8** %7, align 8, !dbg !3004
  %144 = call zeroext i8 @seek2ch(i8** %8, i8* %143, i8 zeroext 32), !dbg !3006
  %145 = icmp ne i8 %144, 0, !dbg !3006
  br i1 %145, label %147, label %146, !dbg !3007

146:                                              ; preds = %140
  store i32 -1, i32* %4, align 4, !dbg !3008
  br label %219, !dbg !3008

147:                                              ; preds = %140
  %148 = load i8*, i8** %8, align 8, !dbg !3009
  %149 = load i8*, i8** %6, align 8, !dbg !3011
  %150 = ptrtoint i8* %148 to i64, !dbg !3012
  %151 = ptrtoint i8* %149 to i64, !dbg !3012
  %152 = sub i64 %150, %151, !dbg !3012
  %153 = icmp sgt i64 %152, 0, !dbg !3013
  br i1 %153, label %154, label %165, !dbg !3014

154:                                              ; preds = %147
  %155 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !3015
  %156 = load i8*, i8** %6, align 8, !dbg !3016
  %157 = load i8*, i8** %8, align 8, !dbg !3017
  %158 = load i8*, i8** %6, align 8, !dbg !3018
  %159 = ptrtoint i8* %157 to i64, !dbg !3019
  %160 = ptrtoint i8* %158 to i64, !dbg !3019
  %161 = sub i64 %159, %160, !dbg !3019
  %162 = call i32 @http1_on_query(%struct.http1_parser_s* %155, i8* %156, i64 %161), !dbg !3020
  %163 = icmp ne i32 %162, 0, !dbg !3020
  br i1 %163, label %164, label %165, !dbg !3021

164:                                              ; preds = %154
  store i32 -1, i32* %4, align 4, !dbg !3022
  br label %219, !dbg !3022

165:                                              ; preds = %154, %147
  br label %184, !dbg !3023

166:                                              ; preds = %124
  %167 = load i8*, i8** %6, align 8, !dbg !3024
  store i8* %167, i8** %8, align 8, !dbg !3026
  %168 = load i8*, i8** %7, align 8, !dbg !3027
  %169 = call zeroext i8 @seek2ch(i8** %8, i8* %168, i8 zeroext 32), !dbg !3029
  %170 = icmp ne i8 %169, 0, !dbg !3029
  br i1 %170, label %172, label %171, !dbg !3030

171:                                              ; preds = %166
  store i32 -1, i32* %4, align 4, !dbg !3031
  br label %219, !dbg !3031

172:                                              ; preds = %166
  %173 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !3032
  %174 = load i8*, i8** %6, align 8, !dbg !3034
  %175 = load i8*, i8** %8, align 8, !dbg !3035
  %176 = load i8*, i8** %6, align 8, !dbg !3036
  %177 = ptrtoint i8* %175 to i64, !dbg !3037
  %178 = ptrtoint i8* %176 to i64, !dbg !3037
  %179 = sub i64 %177, %178, !dbg !3037
  %180 = call i32 @http1_on_path(%struct.http1_parser_s* %173, i8* %174, i64 %179), !dbg !3038
  %181 = icmp ne i32 %180, 0, !dbg !3038
  br i1 %181, label %182, label %183, !dbg !3039

182:                                              ; preds = %172
  store i32 -1, i32* %4, align 4, !dbg !3040
  br label %219, !dbg !3040

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183, %165
  br label %185, !dbg !3041

185:                                              ; preds = %184, %118
  call void @llvm.dbg.label(metadata !3042), !dbg !3043
  %186 = load i8*, i8** %8, align 8, !dbg !3044
  %187 = getelementptr inbounds i8, i8* %186, i64 1, !dbg !3045
  store i8* %187, i8** %6, align 8, !dbg !3046
  %188 = load i8*, i8** %6, align 8, !dbg !3047
  %189 = getelementptr inbounds i8, i8* %188, i64 5, !dbg !3049
  %190 = load i8*, i8** %7, align 8, !dbg !3050
  %191 = icmp uge i8* %189, %190, !dbg !3051
  br i1 %191, label %192, label %193, !dbg !3052

192:                                              ; preds = %185
  store i32 -1, i32* %4, align 4, !dbg !3053
  br label %219, !dbg !3053

193:                                              ; preds = %185
  %194 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !3054
  %195 = load i8*, i8** %6, align 8, !dbg !3056
  %196 = load i8*, i8** %7, align 8, !dbg !3057
  %197 = load i8*, i8** %6, align 8, !dbg !3058
  %198 = ptrtoint i8* %196 to i64, !dbg !3059
  %199 = ptrtoint i8* %197 to i64, !dbg !3059
  %200 = sub i64 %198, %199, !dbg !3059
  %201 = call i32 @http1_on_version(%struct.http1_parser_s* %194, i8* %195, i64 %200), !dbg !3060
  %202 = icmp ne i32 %201, 0, !dbg !3060
  br i1 %202, label %203, label %204, !dbg !3061

203:                                              ; preds = %193
  store i32 -1, i32* %4, align 4, !dbg !3062
  br label %219, !dbg !3062

204:                                              ; preds = %193
  %205 = load i8*, i8** %9, align 8, !dbg !3063
  %206 = icmp ne i8* %205, null, !dbg !3063
  br i1 %206, label %207, label %218, !dbg !3065

207:                                              ; preds = %204
  %208 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !3066
  %209 = load i8*, i8** %9, align 8, !dbg !3067
  %210 = load i8*, i8** %10, align 8, !dbg !3068
  %211 = load i8*, i8** %9, align 8, !dbg !3069
  %212 = ptrtoint i8* %210 to i64, !dbg !3070
  %213 = ptrtoint i8* %211 to i64, !dbg !3070
  %214 = sub i64 %212, %213, !dbg !3070
  %215 = call i32 @http1_on_header(%struct.http1_parser_s* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 4, i8* %209, i64 %214), !dbg !3071
  %216 = icmp ne i32 %215, 0, !dbg !3071
  br i1 %216, label %217, label %218, !dbg !3072

217:                                              ; preds = %207
  store i32 -1, i32* %4, align 4, !dbg !3073
  br label %219, !dbg !3073

218:                                              ; preds = %207, %204
  store i32 0, i32* %4, align 4, !dbg !3074
  br label %219, !dbg !3074

219:                                              ; preds = %218, %217, %203, %192, %182, %171, %164, %146, %139, %117, %107, %26, %15
  %220 = load i32, i32* %4, align 4, !dbg !3075
  ret i32 %220, !dbg !3075
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_header(%struct.http1_parser_s* %0, i8* %1, i8* %2) #0 !dbg !3076 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http1_parser_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %5, metadata !3077, metadata !DIExpression()), !dbg !3078
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3079, metadata !DIExpression()), !dbg !3080
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3081, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3083, metadata !DIExpression()), !dbg !3084
  %11 = load i8*, i8** %6, align 8, !dbg !3085
  store i8* %11, i8** %8, align 8, !dbg !3084
  %12 = load i8*, i8** %7, align 8, !dbg !3086
  %13 = call zeroext i8 @seek2ch(i8** %8, i8* %12, i8 zeroext 58), !dbg !3088
  %14 = icmp ne i8 %13, 0, !dbg !3088
  br i1 %14, label %16, label %15, !dbg !3089

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !3090
  br label %83, !dbg !3090

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8, !dbg !3091
  %18 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !3091
  %19 = load i8, i8* %18, align 1, !dbg !3091
  %20 = zext i8 %19 to i32, !dbg !3091
  %21 = icmp eq i32 %20, 32, !dbg !3093
  br i1 %21, label %28, label %22, !dbg !3094

22:                                               ; preds = %16
  %23 = load i8*, i8** %8, align 8, !dbg !3095
  %24 = getelementptr inbounds i8, i8* %23, i64 -1, !dbg !3095
  %25 = load i8, i8* %24, align 1, !dbg !3095
  %26 = zext i8 %25 to i32, !dbg !3095
  %27 = icmp eq i32 %26, 9, !dbg !3096
  br i1 %27, label %28, label %29, !dbg !3097

28:                                               ; preds = %22, %16
  store i32 -1, i32* %4, align 4, !dbg !3098
  br label %83, !dbg !3098

29:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3099, metadata !DIExpression()), !dbg !3101
  %30 = load i8*, i8** %6, align 8, !dbg !3102
  store i8* %30, i8** %9, align 8, !dbg !3101
  br label %31, !dbg !3103

31:                                               ; preds = %40, %29
  %32 = load i8*, i8** %9, align 8, !dbg !3104
  %33 = load i8*, i8** %8, align 8, !dbg !3106
  %34 = icmp ult i8* %32, %33, !dbg !3107
  br i1 %34, label %35, label %43, !dbg !3108

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8, !dbg !3109
  %37 = load i8, i8* %36, align 1, !dbg !3111
  %38 = call zeroext i8 @http_tolower(i8 zeroext %37), !dbg !3112
  %39 = load i8*, i8** %9, align 8, !dbg !3113
  store i8 %38, i8* %39, align 1, !dbg !3114
  br label %40, !dbg !3115

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8, !dbg !3116
  %42 = getelementptr inbounds i8, i8* %41, i32 1, !dbg !3116
  store i8* %42, i8** %9, align 8, !dbg !3116
  br label %31, !dbg !3117, !llvm.loop !3118

43:                                               ; preds = %31
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3120, metadata !DIExpression()), !dbg !3121
  %44 = load i8*, i8** %8, align 8, !dbg !3122
  %45 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !3123
  store i8* %45, i8** %10, align 8, !dbg !3121
  br label %46, !dbg !3124

46:                                               ; preds = %66, %43
  %47 = load i8*, i8** %10, align 8, !dbg !3125
  %48 = load i8*, i8** %7, align 8, !dbg !3126
  %49 = icmp ult i8* %47, %48, !dbg !3127
  br i1 %49, label %50, label %64, !dbg !3128

50:                                               ; preds = %46
  %51 = load i8*, i8** %10, align 8, !dbg !3129
  %52 = getelementptr inbounds i8, i8* %51, i64 0, !dbg !3129
  %53 = load i8, i8* %52, align 1, !dbg !3129
  %54 = zext i8 %53 to i32, !dbg !3129
  %55 = icmp eq i32 %54, 32, !dbg !3130
  br i1 %55, label %62, label %56, !dbg !3131

56:                                               ; preds = %50
  %57 = load i8*, i8** %10, align 8, !dbg !3132
  %58 = getelementptr inbounds i8, i8* %57, i64 0, !dbg !3132
  %59 = load i8, i8* %58, align 1, !dbg !3132
  %60 = zext i8 %59 to i32, !dbg !3132
  %61 = icmp eq i32 %60, 9, !dbg !3133
  br label %62, !dbg !3131

62:                                               ; preds = %56, %50
  %63 = phi i1 [ true, %50 ], [ %61, %56 ]
  br label %64

64:                                               ; preds = %62, %46
  %65 = phi i1 [ false, %46 ], [ %63, %62 ], !dbg !3134
  br i1 %65, label %66, label %69, !dbg !3124

66:                                               ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3135
  %68 = getelementptr inbounds i8, i8* %67, i32 1, !dbg !3135
  store i8* %68, i8** %10, align 8, !dbg !3135
  br label %46, !dbg !3124, !llvm.loop !3137

69:                                               ; preds = %64
  %70 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !3139
  %71 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %70, i32 0, i32 0, !dbg !3140
  %72 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %71, i32 0, i32 1, !dbg !3141
  %73 = load i64, i64* %72, align 8, !dbg !3141
  %74 = icmp ne i64 %73, 0, !dbg !3139
  %75 = zext i1 %74 to i64, !dbg !3139
  %76 = select i1 %74, i32 (%struct.http1_parser_s*, i8*, i8*, i8*, i8*)* @http1_consume_header_trailer, i32 (%struct.http1_parser_s*, i8*, i8*, i8*, i8*)* @http1_consume_header_top, !dbg !3139
  %77 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !3142
  %78 = load i8*, i8** %6, align 8, !dbg !3143
  %79 = load i8*, i8** %8, align 8, !dbg !3144
  %80 = load i8*, i8** %10, align 8, !dbg !3145
  %81 = load i8*, i8** %7, align 8, !dbg !3146
  %82 = call i32 %76(%struct.http1_parser_s* %77, i8* %78, i8* %79, i8* %80, i8* %81), !dbg !3147
  store i32 %82, i32* %4, align 4, !dbg !3148
  br label %83, !dbg !3148

83:                                               ; preds = %69, %28, %15
  %84 = load i32, i32* %4, align 4, !dbg !3149
  ret i32 %84, !dbg !3149
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_body(%struct.http1_parser_s* %0, i8* %1, i64 %2, i8** %3) #0 !dbg !3150 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.http1_parser_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %6, metadata !3153, metadata !DIExpression()), !dbg !3154
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3155, metadata !DIExpression()), !dbg !3156
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3157, metadata !DIExpression()), !dbg !3158
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !3159, metadata !DIExpression()), !dbg !3160
  %10 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !3161
  %11 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %10, i32 0, i32 0, !dbg !3163
  %12 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %11, i32 0, i32 0, !dbg !3164
  %13 = load i64, i64* %12, align 8, !dbg !3164
  %14 = icmp sgt i64 %13, 0, !dbg !3165
  br i1 %14, label %15, label %31, !dbg !3166

15:                                               ; preds = %4
  %16 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !3167
  %17 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %16, i32 0, i32 0, !dbg !3168
  %18 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %17, i32 0, i32 0, !dbg !3169
  %19 = load i64, i64* %18, align 8, !dbg !3169
  %20 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !3170
  %21 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %20, i32 0, i32 0, !dbg !3171
  %22 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %21, i32 0, i32 1, !dbg !3172
  %23 = load i64, i64* %22, align 8, !dbg !3172
  %24 = icmp sgt i64 %19, %23, !dbg !3173
  br i1 %24, label %25, label %31, !dbg !3174

25:                                               ; preds = %15
  %26 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !3175
  %27 = load i8*, i8** %7, align 8, !dbg !3177
  %28 = load i64, i64* %8, align 8, !dbg !3178
  %29 = load i8**, i8*** %9, align 8, !dbg !3179
  %30 = call i32 @http1_consume_body_streamed(%struct.http1_parser_s* %26, i8* %27, i64 %28, i8** %29), !dbg !3180
  store i32 %30, i32* %5, align 4, !dbg !3181
  br label %61, !dbg !3181

31:                                               ; preds = %15, %4
  %32 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !3182
  %33 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %32, i32 0, i32 0, !dbg !3184
  %34 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %33, i32 0, i32 0, !dbg !3185
  %35 = load i64, i64* %34, align 8, !dbg !3185
  %36 = icmp sle i64 %35, 0, !dbg !3186
  br i1 %36, label %37, label %51, !dbg !3187

37:                                               ; preds = %31
  %38 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !3188
  %39 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %38, i32 0, i32 0, !dbg !3189
  %40 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %39, i32 0, i32 3, !dbg !3190
  %41 = load i8, i8* %40, align 8, !dbg !3190
  %42 = zext i8 %41 to i32, !dbg !3188
  %43 = and i32 %42, 64, !dbg !3191
  %44 = icmp ne i32 %43, 0, !dbg !3191
  br i1 %44, label %45, label %51, !dbg !3192

45:                                               ; preds = %37
  %46 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !3193
  %47 = load i8*, i8** %7, align 8, !dbg !3195
  %48 = load i64, i64* %8, align 8, !dbg !3196
  %49 = load i8**, i8*** %9, align 8, !dbg !3197
  %50 = call i32 @http1_consume_body_chunked(%struct.http1_parser_s* %46, i8* %47, i64 %48, i8** %49), !dbg !3198
  store i32 %50, i32* %5, align 4, !dbg !3199
  br label %61, !dbg !3199

51:                                               ; preds = %37, %31
  %52 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !3200
  %53 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %52, i32 0, i32 0, !dbg !3202
  %54 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %53, i32 0, i32 3, !dbg !3203
  %55 = load i8, i8* %54, align 8, !dbg !3204
  %56 = zext i8 %55 to i32, !dbg !3204
  %57 = or i32 %56, 4, !dbg !3204
  %58 = trunc i32 %57 to i8, !dbg !3204
  store i8 %58, i8* %54, align 8, !dbg !3204
  br label %59

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  store i32 0, i32* %5, align 4, !dbg !3205
  br label %61, !dbg !3205

61:                                               ; preds = %60, %45, %25
  %62 = load i32, i32* %5, align 4, !dbg !3206
  ret i32 %62, !dbg !3206
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_response(%struct.http1_parser_s* %0) #0 !dbg !3207 {
  %2 = alloca %struct.http1_parser_s*, align 8
  %3 = alloca %struct.http1pr_s*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %2, metadata !3210, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %3, metadata !3212, metadata !DIExpression()), !dbg !3213
  %4 = load %struct.http1_parser_s*, %struct.http1_parser_s** %2, align 8, !dbg !3214
  %5 = ptrtoint %struct.http1_parser_s* %4 to i64, !dbg !3214
  %6 = sub i64 %5, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3214
  %7 = inttoptr i64 %6 to %struct.http1pr_s*, !dbg !3214
  store %struct.http1pr_s* %7, %struct.http1pr_s** %3, align 8, !dbg !3213
  %8 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !3215
  %9 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %8, i32 0, i32 2, !dbg !3215
  %10 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !3216
  %11 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %10, i32 0, i32 0, !dbg !3217
  %12 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %11, i32 0, i32 2, !dbg !3218
  %13 = load %struct.http_settings_s*, %struct.http_settings_s** %12, align 8, !dbg !3218
  call void @http_on_response_handler______internal(%struct.http_s* %9, %struct.http_settings_s* %13), !dbg !3219
  %14 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !3220
  %15 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %14, i32 0, i32 2, !dbg !3222
  %16 = getelementptr inbounds %struct.http_s, %struct.http_s* %15, i32 0, i32 3, !dbg !3223
  %17 = load i64, i64* %16, align 8, !dbg !3223
  %18 = icmp ne i64 %17, 0, !dbg !3220
  br i1 %18, label %19, label %27, !dbg !3224

19:                                               ; preds = %1
  %20 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !3225
  %21 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %20, i32 0, i32 8, !dbg !3226
  %22 = load i8, i8* %21, align 2, !dbg !3226
  %23 = icmp ne i8 %22, 0, !dbg !3225
  br i1 %23, label %27, label %24, !dbg !3227

24:                                               ; preds = %19
  %25 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !3228
  %26 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %25, i32 0, i32 2, !dbg !3229
  call void @http_finish(%struct.http_s* %26), !dbg !3230
  br label %27, !dbg !3230

27:                                               ; preds = %24, %19, %1
  %28 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !3231
  call void @h1_reset(%struct.http1pr_s* %28), !dbg !3232
  %29 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !3233
  %30 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %29, i32 0, i32 0, !dbg !3234
  %31 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %30, i32 0, i32 1, !dbg !3235
  %32 = load i64, i64* %31, align 8, !dbg !3235
  %33 = call i32 @fio_is_closed(i64 %32), !dbg !3236
  ret i32 %33, !dbg !3237
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_request(%struct.http1_parser_s* %0) #0 !dbg !3238 {
  %2 = alloca %struct.http1_parser_s*, align 8
  %3 = alloca %struct.http1pr_s*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %2, metadata !3239, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %3, metadata !3241, metadata !DIExpression()), !dbg !3242
  %4 = load %struct.http1_parser_s*, %struct.http1_parser_s** %2, align 8, !dbg !3243
  %5 = ptrtoint %struct.http1_parser_s* %4 to i64, !dbg !3243
  %6 = sub i64 %5, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3243
  %7 = inttoptr i64 %6 to %struct.http1pr_s*, !dbg !3243
  store %struct.http1pr_s* %7, %struct.http1pr_s** %3, align 8, !dbg !3242
  %8 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !3244
  %9 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %8, i32 0, i32 2, !dbg !3244
  %10 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !3245
  %11 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %10, i32 0, i32 0, !dbg !3246
  %12 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %11, i32 0, i32 2, !dbg !3247
  %13 = load %struct.http_settings_s*, %struct.http_settings_s** %12, align 8, !dbg !3247
  call void @http_on_request_handler______internal(%struct.http_s* %9, %struct.http_settings_s* %13), !dbg !3248
  %14 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !3249
  %15 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %14, i32 0, i32 2, !dbg !3251
  %16 = getelementptr inbounds %struct.http_s, %struct.http_s* %15, i32 0, i32 2, !dbg !3252
  %17 = load i64, i64* %16, align 8, !dbg !3252
  %18 = icmp ne i64 %17, 0, !dbg !3249
  br i1 %18, label %19, label %27, !dbg !3253

19:                                               ; preds = %1
  %20 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !3254
  %21 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %20, i32 0, i32 8, !dbg !3255
  %22 = load i8, i8* %21, align 2, !dbg !3255
  %23 = icmp ne i8 %22, 0, !dbg !3254
  br i1 %23, label %27, label %24, !dbg !3256

24:                                               ; preds = %19
  %25 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !3257
  %26 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %25, i32 0, i32 2, !dbg !3258
  call void @http_finish(%struct.http_s* %26), !dbg !3259
  br label %27, !dbg !3259

27:                                               ; preds = %24, %19, %1
  %28 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !3260
  call void @h1_reset(%struct.http1pr_s* %28), !dbg !3261
  %29 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8, !dbg !3262
  %30 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %29, i32 0, i32 0, !dbg !3263
  %31 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %30, i32 0, i32 1, !dbg !3264
  %32 = load i64, i64* %31, align 8, !dbg !3264
  %33 = call i32 @fio_is_closed(i64 %32), !dbg !3265
  ret i32 %33, !dbg !3266
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_error(%struct.http1_parser_s* %0) #0 !dbg !3267 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.http1_parser_s*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %3, metadata !3268, metadata !DIExpression()), !dbg !3269
  %4 = load %struct.http1_parser_s*, %struct.http1_parser_s** %3, align 8, !dbg !3270
  %5 = ptrtoint %struct.http1_parser_s* %4 to i64, !dbg !3270
  %6 = sub i64 %5, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3270
  %7 = inttoptr i64 %6 to %struct.http1pr_s*, !dbg !3270
  %8 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %7, i32 0, i32 6, !dbg !3272
  %9 = load i8, i8* %8, align 8, !dbg !3272
  %10 = icmp ne i8 %9, 0, !dbg !3270
  br i1 %10, label %11, label %12, !dbg !3273

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !3274
  br label %26, !dbg !3274

12:                                               ; preds = %1
  br label %13, !dbg !3275

13:                                               ; preds = %12
  %14 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !3276
  %15 = icmp sle i32 5, %14, !dbg !3276
  br i1 %15, label %16, label %17, !dbg !3279

16:                                               ; preds = %13
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.99, i64 0, i64 0)), !dbg !3280
  br label %17, !dbg !3280

17:                                               ; preds = %16, %13
  br label %18, !dbg !3279

18:                                               ; preds = %17
  %19 = load %struct.http1_parser_s*, %struct.http1_parser_s** %3, align 8, !dbg !3282
  %20 = ptrtoint %struct.http1_parser_s* %19 to i64, !dbg !3282
  %21 = sub i64 %20, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3282
  %22 = inttoptr i64 %21 to %struct.http1pr_s*, !dbg !3282
  %23 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %22, i32 0, i32 0, !dbg !3283
  %24 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %23, i32 0, i32 1, !dbg !3284
  %25 = load i64, i64* %24, align 8, !dbg !3284
  call void @fio_close(i64 %25), !dbg !3285
  store i32 -1, i32* %2, align 4, !dbg !3286
  br label %26, !dbg !3286

26:                                               ; preds = %18, %11
  %27 = load i32, i32* %2, align 4, !dbg !3287
  ret i32 %27, !dbg !3287
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @seek2ch(i8** %0, i8* %1, i8 zeroext %2) #0 !dbg !3288 {
  %4 = alloca i8, align 1
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !3291, metadata !DIExpression()), !dbg !3292
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3293, metadata !DIExpression()), !dbg !3294
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !3295, metadata !DIExpression()), !dbg !3296
  %9 = load i8**, i8*** %5, align 8, !dbg !3297
  %10 = load i8*, i8** %9, align 8, !dbg !3299
  %11 = load i8*, i8** %6, align 8, !dbg !3300
  %12 = icmp uge i8* %10, %11, !dbg !3301
  br i1 %12, label %13, label %14, !dbg !3302

13:                                               ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !3303
  br label %43, !dbg !3303

14:                                               ; preds = %3
  %15 = load i8**, i8*** %5, align 8, !dbg !3304
  %16 = load i8*, i8** %15, align 8, !dbg !3306
  %17 = load i8, i8* %16, align 1, !dbg !3307
  %18 = zext i8 %17 to i32, !dbg !3307
  %19 = load i8, i8* %7, align 1, !dbg !3308
  %20 = zext i8 %19 to i32, !dbg !3308
  %21 = icmp eq i32 %18, %20, !dbg !3309
  br i1 %21, label %22, label %23, !dbg !3310

22:                                               ; preds = %14
  store i8 1, i8* %4, align 1, !dbg !3311
  br label %43, !dbg !3311

23:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3313, metadata !DIExpression()), !dbg !3314
  %24 = load i8**, i8*** %5, align 8, !dbg !3315
  %25 = load i8*, i8** %24, align 8, !dbg !3316
  %26 = load i8, i8* %7, align 1, !dbg !3317
  %27 = zext i8 %26 to i32, !dbg !3317
  %28 = load i8*, i8** %6, align 8, !dbg !3318
  %29 = load i8**, i8*** %5, align 8, !dbg !3319
  %30 = load i8*, i8** %29, align 8, !dbg !3320
  %31 = ptrtoint i8* %28 to i64, !dbg !3321
  %32 = ptrtoint i8* %30 to i64, !dbg !3321
  %33 = sub i64 %31, %32, !dbg !3321
  %34 = call i8* @memchr(i8* %25, i32 %27, i64 %33) #12, !dbg !3322
  store i8* %34, i8** %8, align 8, !dbg !3314
  %35 = load i8*, i8** %8, align 8, !dbg !3323
  %36 = icmp ne i8* %35, null, !dbg !3323
  br i1 %36, label %37, label %40, !dbg !3325

37:                                               ; preds = %23
  %38 = load i8*, i8** %8, align 8, !dbg !3326
  %39 = load i8**, i8*** %5, align 8, !dbg !3328
  store i8* %38, i8** %39, align 8, !dbg !3329
  store i8 1, i8* %4, align 1, !dbg !3330
  br label %43, !dbg !3330

40:                                               ; preds = %23
  %41 = load i8*, i8** %6, align 8, !dbg !3331
  %42 = load i8**, i8*** %5, align 8, !dbg !3332
  store i8* %41, i8** %42, align 8, !dbg !3333
  store i8 0, i8* %4, align 1, !dbg !3334
  br label %43, !dbg !3334

43:                                               ; preds = %40, %37, %22, %13
  %44 = load i8, i8* %4, align 1, !dbg !3335
  ret i8 %44, !dbg !3335
}

; Function Attrs: nounwind readonly
declare dso_local i8* @memchr(i8*, i32, i64) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_version(%struct.http1_parser_s* %0, i8* %1, i64 %2) #0 !dbg !3336 {
  %4 = alloca %struct.http1_parser_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %4, metadata !3339, metadata !DIExpression()), !dbg !3340
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3341, metadata !DIExpression()), !dbg !3342
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3343, metadata !DIExpression()), !dbg !3344
  %8 = load i8*, i8** %5, align 8, !dbg !3345
  %9 = load i64, i64* %6, align 8, !dbg !3346
  %10 = call i64 @fiobj_str_new(i8* %8, i64 %9), !dbg !3347
  %11 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8, !dbg !3348
  %12 = ptrtoint %struct.http1_parser_s* %11 to i64, !dbg !3348
  %13 = sub i64 %12, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3348
  %14 = inttoptr i64 %13 to %struct.http1pr_s*, !dbg !3348
  %15 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %14, i32 0, i32 2, !dbg !3348
  %16 = getelementptr inbounds %struct.http_s, %struct.http_s* %15, i32 0, i32 4, !dbg !3349
  store i64 %10, i64* %16, align 8, !dbg !3350
  %17 = load i64, i64* %6, align 8, !dbg !3351
  %18 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8, !dbg !3352
  %19 = ptrtoint %struct.http1_parser_s* %18 to i64, !dbg !3352
  %20 = sub i64 %19, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3352
  %21 = inttoptr i64 %20 to %struct.http1pr_s*, !dbg !3352
  %22 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %21, i32 0, i32 5, !dbg !3353
  %23 = load i64, i64* %22, align 8, !dbg !3354
  %24 = add i64 %23, %17, !dbg !3354
  store i64 %24, i64* %22, align 8, !dbg !3354
  %25 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8, !dbg !3355
  %26 = ptrtoint %struct.http1_parser_s* %25 to i64, !dbg !3355
  %27 = sub i64 %26, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3355
  %28 = inttoptr i64 %27 to %struct.http1pr_s*, !dbg !3355
  %29 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %28, i32 0, i32 2, !dbg !3355
  %30 = getelementptr inbounds %struct.http_s, %struct.http_s* %29, i32 0, i32 1, !dbg !3356
  %31 = call { i64, i64 } @fio_last_tick(), !dbg !3357
  %32 = bitcast %struct.timespec* %7 to { i64, i64 }*, !dbg !3357
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0, !dbg !3357
  %34 = extractvalue { i64, i64 } %31, 0, !dbg !3357
  store i64 %34, i64* %33, align 8, !dbg !3357
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1, !dbg !3357
  %36 = extractvalue { i64, i64 } %31, 1, !dbg !3357
  store i64 %36, i64* %35, align 8, !dbg !3357
  %37 = bitcast %struct.timespec* %30 to i8*, !dbg !3357
  %38 = bitcast %struct.timespec* %7 to i8*, !dbg !3357
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false), !dbg !3357
  ret i32 0, !dbg !3358
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_status(%struct.http1_parser_s* %0, i64 %1, i8* %2, i64 %3) #0 !dbg !3359 {
  %5 = alloca %struct.http1_parser_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %5, metadata !3362, metadata !DIExpression()), !dbg !3363
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3364, metadata !DIExpression()), !dbg !3365
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3366, metadata !DIExpression()), !dbg !3367
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3368, metadata !DIExpression()), !dbg !3369
  %9 = load i8*, i8** %7, align 8, !dbg !3370
  %10 = load i64, i64* %8, align 8, !dbg !3371
  %11 = call i64 @fiobj_str_new(i8* %9, i64 %10), !dbg !3372
  %12 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !3373
  %13 = ptrtoint %struct.http1_parser_s* %12 to i64, !dbg !3373
  %14 = sub i64 %13, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3373
  %15 = inttoptr i64 %14 to %struct.http1pr_s*, !dbg !3373
  %16 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %15, i32 0, i32 2, !dbg !3373
  %17 = getelementptr inbounds %struct.http_s, %struct.http_s* %16, i32 0, i32 3, !dbg !3374
  store i64 %11, i64* %17, align 8, !dbg !3375
  %18 = load i64, i64* %6, align 8, !dbg !3376
  %19 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !3377
  %20 = ptrtoint %struct.http1_parser_s* %19 to i64, !dbg !3377
  %21 = sub i64 %20, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3377
  %22 = inttoptr i64 %21 to %struct.http1pr_s*, !dbg !3377
  %23 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %22, i32 0, i32 2, !dbg !3377
  %24 = getelementptr inbounds %struct.http_s, %struct.http_s* %23, i32 0, i32 5, !dbg !3378
  store i64 %18, i64* %24, align 8, !dbg !3379
  %25 = load i64, i64* %8, align 8, !dbg !3380
  %26 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !3381
  %27 = ptrtoint %struct.http1_parser_s* %26 to i64, !dbg !3381
  %28 = sub i64 %27, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3381
  %29 = inttoptr i64 %28 to %struct.http1pr_s*, !dbg !3381
  %30 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %29, i32 0, i32 5, !dbg !3382
  %31 = load i64, i64* %30, align 8, !dbg !3383
  %32 = add i64 %31, %25, !dbg !3383
  store i64 %32, i64* %30, align 8, !dbg !3383
  ret i32 0, !dbg !3384
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http1_atol(i8* %0, i8** %1) #0 !dbg !3385 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3388, metadata !DIExpression()), !dbg !3389
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3392, metadata !DIExpression()), !dbg !3394
  store i64 0, i64* %5, align 8, !dbg !3394
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3395, metadata !DIExpression()), !dbg !3396
  store i8 0, i8* %6, align 1, !dbg !3396
  br label %7, !dbg !3397

7:                                                ; preds = %24, %2
  %8 = load i8*, i8** %3, align 8, !dbg !3398
  %9 = load i8, i8* %8, align 1, !dbg !3399
  %10 = zext i8 %9 to i32, !dbg !3399
  %11 = icmp eq i32 %10, 32, !dbg !3400
  br i1 %11, label %22, label %12, !dbg !3401

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8, !dbg !3402
  %14 = load i8, i8* %13, align 1, !dbg !3403
  %15 = zext i8 %14 to i32, !dbg !3403
  %16 = icmp eq i32 %15, 9, !dbg !3404
  br i1 %16, label %22, label %17, !dbg !3405

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8, !dbg !3406
  %19 = load i8, i8* %18, align 1, !dbg !3407
  %20 = zext i8 %19 to i32, !dbg !3407
  %21 = icmp eq i32 %20, 12, !dbg !3408
  br label %22, !dbg !3405

22:                                               ; preds = %17, %12, %7
  %23 = phi i1 [ true, %12 ], [ true, %7 ], [ %21, %17 ]
  br i1 %23, label %24, label %27, !dbg !3397

24:                                               ; preds = %22
  %25 = load i8*, i8** %3, align 8, !dbg !3409
  %26 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !3409
  store i8* %26, i8** %3, align 8, !dbg !3409
  br label %7, !dbg !3397, !llvm.loop !3410

27:                                               ; preds = %22
  br label %28, !dbg !3412

28:                                               ; preds = %40, %27
  %29 = load i8*, i8** %3, align 8, !dbg !3413
  %30 = load i8, i8* %29, align 1, !dbg !3414
  %31 = zext i8 %30 to i32, !dbg !3414
  %32 = icmp eq i32 %31, 45, !dbg !3415
  br i1 %32, label %38, label %33, !dbg !3416

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8, !dbg !3417
  %35 = load i8, i8* %34, align 1, !dbg !3418
  %36 = zext i8 %35 to i32, !dbg !3418
  %37 = icmp eq i32 %36, 43, !dbg !3419
  br label %38, !dbg !3416

38:                                               ; preds = %33, %28
  %39 = phi i1 [ true, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %51, !dbg !3412

40:                                               ; preds = %38
  %41 = load i8*, i8** %3, align 8, !dbg !3420
  %42 = getelementptr inbounds i8, i8* %41, i32 1, !dbg !3420
  store i8* %42, i8** %3, align 8, !dbg !3420
  %43 = load i8, i8* %41, align 1, !dbg !3421
  %44 = zext i8 %43 to i32, !dbg !3421
  %45 = icmp eq i32 %44, 45, !dbg !3422
  %46 = zext i1 %45 to i32, !dbg !3422
  %47 = load i8, i8* %6, align 1, !dbg !3423
  %48 = zext i8 %47 to i32, !dbg !3423
  %49 = xor i32 %48, %46, !dbg !3423
  %50 = trunc i32 %49 to i8, !dbg !3423
  store i8 %50, i8* %6, align 1, !dbg !3423
  br label %28, !dbg !3412, !llvm.loop !3424

51:                                               ; preds = %38
  br label %52, !dbg !3426

52:                                               ; preds = %67, %51
  %53 = load i64, i64* %5, align 8, !dbg !3427
  %54 = icmp ule i64 %53, 922337203685477580, !dbg !3428
  br i1 %54, label %55, label %65, !dbg !3429

55:                                               ; preds = %52
  %56 = load i8*, i8** %3, align 8, !dbg !3430
  %57 = load i8, i8* %56, align 1, !dbg !3431
  %58 = zext i8 %57 to i32, !dbg !3431
  %59 = icmp sge i32 %58, 48, !dbg !3432
  br i1 %59, label %60, label %65, !dbg !3433

60:                                               ; preds = %55
  %61 = load i8*, i8** %3, align 8, !dbg !3434
  %62 = load i8, i8* %61, align 1, !dbg !3435
  %63 = zext i8 %62 to i32, !dbg !3435
  %64 = icmp sle i32 %63, 57, !dbg !3436
  br label %65

65:                                               ; preds = %60, %55, %52
  %66 = phi i1 [ false, %55 ], [ false, %52 ], [ %64, %60 ], !dbg !3437
  br i1 %66, label %67, label %79, !dbg !3426

67:                                               ; preds = %65
  %68 = load i64, i64* %5, align 8, !dbg !3438
  %69 = mul i64 %68, 10, !dbg !3440
  store i64 %69, i64* %5, align 8, !dbg !3441
  %70 = load i8*, i8** %3, align 8, !dbg !3442
  %71 = load i8, i8* %70, align 1, !dbg !3443
  %72 = zext i8 %71 to i32, !dbg !3443
  %73 = sub nsw i32 %72, 48, !dbg !3444
  %74 = sext i32 %73 to i64, !dbg !3443
  %75 = load i64, i64* %5, align 8, !dbg !3445
  %76 = add i64 %75, %74, !dbg !3445
  store i64 %76, i64* %5, align 8, !dbg !3445
  %77 = load i8*, i8** %3, align 8, !dbg !3446
  %78 = getelementptr inbounds i8, i8* %77, i32 1, !dbg !3446
  store i8* %78, i8** %3, align 8, !dbg !3446
  br label %52, !dbg !3426, !llvm.loop !3447

79:                                               ; preds = %65
  %80 = load i64, i64* %5, align 8, !dbg !3449
  %81 = icmp uge i64 %80, -9223372036854775808, !dbg !3451
  br i1 %81, label %92, label %82, !dbg !3452

82:                                               ; preds = %79
  %83 = load i8*, i8** %3, align 8, !dbg !3453
  %84 = load i8, i8* %83, align 1, !dbg !3454
  %85 = zext i8 %84 to i32, !dbg !3454
  %86 = icmp sge i32 %85, 48, !dbg !3455
  br i1 %86, label %87, label %93, !dbg !3456

87:                                               ; preds = %82
  %88 = load i8*, i8** %3, align 8, !dbg !3457
  %89 = load i8, i8* %88, align 1, !dbg !3458
  %90 = zext i8 %89 to i32, !dbg !3458
  %91 = icmp sle i32 %90, 57, !dbg !3459
  br i1 %91, label %92, label %93, !dbg !3460

92:                                               ; preds = %87, %79
  store i64 9223372036854775807, i64* %5, align 8, !dbg !3461
  br label %93, !dbg !3462

93:                                               ; preds = %92, %87, %82
  %94 = load i8, i8* %6, align 1, !dbg !3463
  %95 = icmp ne i8 %94, 0, !dbg !3463
  br i1 %95, label %96, label %99, !dbg !3465

96:                                               ; preds = %93
  %97 = load i64, i64* %5, align 8, !dbg !3466
  %98 = sub i64 0, %97, !dbg !3467
  store i64 %98, i64* %5, align 8, !dbg !3468
  br label %99, !dbg !3469

99:                                               ; preds = %96, %93
  %100 = load i8**, i8*** %4, align 8, !dbg !3470
  %101 = icmp ne i8** %100, null, !dbg !3470
  br i1 %101, label %102, label %105, !dbg !3472

102:                                              ; preds = %99
  %103 = load i8*, i8** %3, align 8, !dbg !3473
  %104 = load i8**, i8*** %4, align 8, !dbg !3474
  store i8* %103, i8** %104, align 8, !dbg !3475
  br label %105, !dbg !3476

105:                                              ; preds = %102, %99
  %106 = load i64, i64* %5, align 8, !dbg !3477
  ret i64 %106, !dbg !3478
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_method(%struct.http1_parser_s* %0, i8* %1, i64 %2) #0 !dbg !3479 {
  %4 = alloca %struct.http1_parser_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %4, metadata !3480, metadata !DIExpression()), !dbg !3481
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3482, metadata !DIExpression()), !dbg !3483
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3484, metadata !DIExpression()), !dbg !3485
  %7 = load i8*, i8** %5, align 8, !dbg !3486
  %8 = load i64, i64* %6, align 8, !dbg !3487
  %9 = call i64 @fiobj_str_new(i8* %7, i64 %8), !dbg !3488
  %10 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8, !dbg !3489
  %11 = ptrtoint %struct.http1_parser_s* %10 to i64, !dbg !3489
  %12 = sub i64 %11, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3489
  %13 = inttoptr i64 %12 to %struct.http1pr_s*, !dbg !3489
  %14 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %13, i32 0, i32 2, !dbg !3489
  %15 = getelementptr inbounds %struct.http_s, %struct.http_s* %14, i32 0, i32 2, !dbg !3490
  store i64 %9, i64* %15, align 8, !dbg !3491
  %16 = load i64, i64* %6, align 8, !dbg !3492
  %17 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8, !dbg !3493
  %18 = ptrtoint %struct.http1_parser_s* %17 to i64, !dbg !3493
  %19 = sub i64 %18, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3493
  %20 = inttoptr i64 %19 to %struct.http1pr_s*, !dbg !3493
  %21 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %20, i32 0, i32 5, !dbg !3494
  %22 = load i64, i64* %21, align 8, !dbg !3495
  %23 = add i64 %22, %16, !dbg !3495
  store i64 %23, i64* %21, align 8, !dbg !3495
  ret i32 0, !dbg !3496
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_path(%struct.http1_parser_s* %0, i8* %1, i64 %2) #0 !dbg !3497 {
  %4 = alloca %struct.http1_parser_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %4, metadata !3498, metadata !DIExpression()), !dbg !3499
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3500, metadata !DIExpression()), !dbg !3501
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3502, metadata !DIExpression()), !dbg !3503
  %7 = load i8*, i8** %5, align 8, !dbg !3504
  %8 = load i64, i64* %6, align 8, !dbg !3505
  %9 = call i64 @fiobj_str_new(i8* %7, i64 %8), !dbg !3506
  %10 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8, !dbg !3507
  %11 = ptrtoint %struct.http1_parser_s* %10 to i64, !dbg !3507
  %12 = sub i64 %11, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3507
  %13 = inttoptr i64 %12 to %struct.http1pr_s*, !dbg !3507
  %14 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %13, i32 0, i32 2, !dbg !3507
  %15 = getelementptr inbounds %struct.http_s, %struct.http_s* %14, i32 0, i32 6, !dbg !3508
  store i64 %9, i64* %15, align 8, !dbg !3509
  %16 = load i64, i64* %6, align 8, !dbg !3510
  %17 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8, !dbg !3511
  %18 = ptrtoint %struct.http1_parser_s* %17 to i64, !dbg !3511
  %19 = sub i64 %18, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3511
  %20 = inttoptr i64 %19 to %struct.http1pr_s*, !dbg !3511
  %21 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %20, i32 0, i32 5, !dbg !3512
  %22 = load i64, i64* %21, align 8, !dbg !3513
  %23 = add i64 %22, %16, !dbg !3513
  store i64 %23, i64* %21, align 8, !dbg !3513
  ret i32 0, !dbg !3514
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_query(%struct.http1_parser_s* %0, i8* %1, i64 %2) #0 !dbg !3515 {
  %4 = alloca %struct.http1_parser_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %4, metadata !3516, metadata !DIExpression()), !dbg !3517
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3518, metadata !DIExpression()), !dbg !3519
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3520, metadata !DIExpression()), !dbg !3521
  %7 = load i8*, i8** %5, align 8, !dbg !3522
  %8 = load i64, i64* %6, align 8, !dbg !3523
  %9 = call i64 @fiobj_str_new(i8* %7, i64 %8), !dbg !3524
  %10 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8, !dbg !3525
  %11 = ptrtoint %struct.http1_parser_s* %10 to i64, !dbg !3525
  %12 = sub i64 %11, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3525
  %13 = inttoptr i64 %12 to %struct.http1pr_s*, !dbg !3525
  %14 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %13, i32 0, i32 2, !dbg !3525
  %15 = getelementptr inbounds %struct.http_s, %struct.http_s* %14, i32 0, i32 7, !dbg !3526
  store i64 %9, i64* %15, align 8, !dbg !3527
  %16 = load i64, i64* %6, align 8, !dbg !3528
  %17 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8, !dbg !3529
  %18 = ptrtoint %struct.http1_parser_s* %17 to i64, !dbg !3529
  %19 = sub i64 %18, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3529
  %20 = inttoptr i64 %19 to %struct.http1pr_s*, !dbg !3529
  %21 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %20, i32 0, i32 5, !dbg !3530
  %22 = load i64, i64* %21, align 8, !dbg !3531
  %23 = add i64 %22, %16, !dbg !3531
  store i64 %23, i64* %21, align 8, !dbg !3531
  ret i32 0, !dbg !3532
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_header(%struct.http1_parser_s* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 !dbg !3533 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.http1_parser_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %7, metadata !3536, metadata !DIExpression()), !dbg !3537
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3538, metadata !DIExpression()), !dbg !3539
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3540, metadata !DIExpression()), !dbg !3541
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3542, metadata !DIExpression()), !dbg !3543
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3544, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3546, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3548, metadata !DIExpression()), !dbg !3549
  %14 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3550
  %15 = ptrtoint %struct.http1_parser_s* %14 to i64, !dbg !3550
  %16 = sub i64 %15, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3550
  %17 = inttoptr i64 %16 to %struct.http1pr_s*, !dbg !3550
  %18 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %17, i32 0, i32 2, !dbg !3550
  %19 = getelementptr inbounds %struct.http_s, %struct.http_s* %18, i32 0, i32 8, !dbg !3552
  %20 = load i64, i64* %19, align 8, !dbg !3552
  %21 = icmp ne i64 %20, 0, !dbg !3550
  br i1 %21, label %46, label %22, !dbg !3553

22:                                               ; preds = %5
  br label %23, !dbg !3554

23:                                               ; preds = %22
  %24 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !3556
  %25 = icmp sle i32 2, %24, !dbg !3556
  br i1 %25, label %26, label %29, !dbg !3559

26:                                               ; preds = %23
  %27 = load i8*, i8** %8, align 8, !dbg !3560
  %28 = load i8*, i8** %10, align 8, !dbg !3560
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.94, i64 0, i64 0), i8* %27, i8* %28), !dbg !3560
  br label %29, !dbg !3560

29:                                               ; preds = %26, %23
  br label %30, !dbg !3559

30:                                               ; preds = %29
  %31 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3562
  %32 = ptrtoint %struct.http1_parser_s* %31 to i64, !dbg !3562
  %33 = sub i64 %32, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3562
  %34 = inttoptr i64 %33 to %struct.http1pr_s*, !dbg !3562
  %35 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %34, i32 0, i32 0, !dbg !3563
  %36 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %35, i32 0, i32 1, !dbg !3564
  %37 = load i64, i64* %36, align 8, !dbg !3564
  %38 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3565
  %39 = ptrtoint %struct.http1_parser_s* %38 to i64, !dbg !3565
  %40 = sub i64 %39, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3565
  %41 = inttoptr i64 %40 to %struct.http1pr_s*, !dbg !3565
  %42 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %41, i32 0, i32 0, !dbg !3566
  %43 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %42, i32 0, i32 2, !dbg !3567
  %44 = load %struct.http_settings_s*, %struct.http_settings_s** %43, align 8, !dbg !3567
  %45 = call i32 @http_send_error2(i64 500, i64 %37, %struct.http_settings_s* %44), !dbg !3568
  store i32 -1, i32* %6, align 4, !dbg !3569
  br label %122, !dbg !3569

46:                                               ; preds = %5
  %47 = load i64, i64* %9, align 8, !dbg !3570
  %48 = load i64, i64* %11, align 8, !dbg !3571
  %49 = add i64 %47, %48, !dbg !3572
  %50 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3573
  %51 = ptrtoint %struct.http1_parser_s* %50 to i64, !dbg !3573
  %52 = sub i64 %51, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3573
  %53 = inttoptr i64 %52 to %struct.http1pr_s*, !dbg !3573
  %54 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %53, i32 0, i32 5, !dbg !3574
  %55 = load i64, i64* %54, align 8, !dbg !3575
  %56 = add i64 %55, %49, !dbg !3575
  store i64 %56, i64* %54, align 8, !dbg !3575
  %57 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3576
  %58 = ptrtoint %struct.http1_parser_s* %57 to i64, !dbg !3576
  %59 = sub i64 %58, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3576
  %60 = inttoptr i64 %59 to %struct.http1pr_s*, !dbg !3576
  %61 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %60, i32 0, i32 5, !dbg !3578
  %62 = load i64, i64* %61, align 8, !dbg !3578
  %63 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3579
  %64 = ptrtoint %struct.http1_parser_s* %63 to i64, !dbg !3579
  %65 = sub i64 %64, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3579
  %66 = inttoptr i64 %65 to %struct.http1pr_s*, !dbg !3579
  %67 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %66, i32 0, i32 4, !dbg !3580
  %68 = load i64, i64* %67, align 8, !dbg !3580
  %69 = icmp uge i64 %62, %68, !dbg !3581
  br i1 %69, label %80, label %70, !dbg !3582

70:                                               ; preds = %46
  %71 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3583
  %72 = ptrtoint %struct.http1_parser_s* %71 to i64, !dbg !3583
  %73 = sub i64 %72, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3583
  %74 = inttoptr i64 %73 to %struct.http1pr_s*, !dbg !3583
  %75 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %74, i32 0, i32 2, !dbg !3583
  %76 = getelementptr inbounds %struct.http_s, %struct.http_s* %75, i32 0, i32 8, !dbg !3584
  %77 = load i64, i64* %76, align 8, !dbg !3584
  %78 = call i64 @fiobj_hash_count(i64 %77), !dbg !3585
  %79 = icmp ugt i64 %78, 128, !dbg !3586
  br i1 %79, label %80, label %105, !dbg !3587

80:                                               ; preds = %70, %46
  %81 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3588
  %82 = ptrtoint %struct.http1_parser_s* %81 to i64, !dbg !3588
  %83 = sub i64 %82, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3588
  %84 = inttoptr i64 %83 to %struct.http1pr_s*, !dbg !3588
  %85 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %84, i32 0, i32 0, !dbg !3591
  %86 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %85, i32 0, i32 2, !dbg !3592
  %87 = load %struct.http_settings_s*, %struct.http_settings_s** %86, align 8, !dbg !3592
  %88 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %87, i32 0, i32 17, !dbg !3593
  %89 = load i8, i8* %88, align 2, !dbg !3593
  %90 = icmp ne i8 %89, 0, !dbg !3588
  br i1 %90, label %91, label %98, !dbg !3594

91:                                               ; preds = %80
  br label %92, !dbg !3595

92:                                               ; preds = %91
  %93 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !3597
  %94 = icmp sle i32 3, %93, !dbg !3597
  br i1 %94, label %95, label %96, !dbg !3600

95:                                               ; preds = %92
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.95, i64 0, i64 0)), !dbg !3601
  br label %96, !dbg !3601

96:                                               ; preds = %95, %92
  br label %97, !dbg !3600

97:                                               ; preds = %96
  br label %98, !dbg !3603

98:                                               ; preds = %97, %80
  %99 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3604
  %100 = ptrtoint %struct.http1_parser_s* %99 to i64, !dbg !3604
  %101 = sub i64 %100, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3604
  %102 = inttoptr i64 %101 to %struct.http1pr_s*, !dbg !3604
  %103 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %102, i32 0, i32 2, !dbg !3604
  %104 = call i32 @http_send_error(%struct.http_s* %103, i64 413), !dbg !3605
  store i32 -1, i32* %6, align 4, !dbg !3606
  br label %122, !dbg !3606

105:                                              ; preds = %70
  %106 = load i8*, i8** %8, align 8, !dbg !3607
  %107 = load i64, i64* %9, align 8, !dbg !3608
  %108 = call i64 @fiobj_str_new(i8* %106, i64 %107), !dbg !3609
  store i64 %108, i64* %12, align 8, !dbg !3610
  %109 = load i8*, i8** %10, align 8, !dbg !3611
  %110 = load i64, i64* %11, align 8, !dbg !3612
  %111 = call i64 @fiobj_str_new(i8* %109, i64 %110), !dbg !3613
  store i64 %111, i64* %13, align 8, !dbg !3614
  %112 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3615
  %113 = ptrtoint %struct.http1_parser_s* %112 to i64, !dbg !3615
  %114 = sub i64 %113, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !3615
  %115 = inttoptr i64 %114 to %struct.http1pr_s*, !dbg !3615
  %116 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %115, i32 0, i32 2, !dbg !3615
  %117 = getelementptr inbounds %struct.http_s, %struct.http_s* %116, i32 0, i32 8, !dbg !3616
  %118 = load i64, i64* %117, align 8, !dbg !3616
  %119 = load i64, i64* %12, align 8, !dbg !3617
  %120 = load i64, i64* %13, align 8, !dbg !3618
  call void @set_header_add(i64 %118, i64 %119, i64 %120), !dbg !3619
  %121 = load i64, i64* %12, align 8, !dbg !3620
  call void @fiobj_free(i64 %121), !dbg !3621
  store i32 0, i32* %6, align 4, !dbg !3622
  br label %122, !dbg !3622

122:                                              ; preds = %105, %98, %30
  %123 = load i32, i32* %6, align 4, !dbg !3623
  ret i32 %123, !dbg !3623
}

declare dso_local i32 @http_send_error2(i64, i64, %struct.http_settings_s*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_header_add(i64 %0, i64 %1, i64 %2) #0 !dbg !3624 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3627, metadata !DIExpression()), !dbg !3628
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3629, metadata !DIExpression()), !dbg !3630
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3631, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3633, metadata !DIExpression()), !dbg !3634
  %10 = load i64, i64* %4, align 8, !dbg !3635
  %11 = load i64, i64* %5, align 8, !dbg !3636
  %12 = load i64, i64* %6, align 8, !dbg !3637
  %13 = call i64 @fiobj_hash_replace(i64 %10, i64 %11, i64 %12), !dbg !3638
  store i64 %13, i64* %7, align 8, !dbg !3634
  %14 = load i64, i64* %7, align 8, !dbg !3639
  %15 = icmp ne i64 %14, 0, !dbg !3639
  br i1 %15, label %17, label %16, !dbg !3641

16:                                               ; preds = %3
  br label %62, !dbg !3642

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8, !dbg !3643
  %19 = icmp ne i64 %18, 0, !dbg !3643
  br i1 %19, label %22, label %20, !dbg !3645

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8, !dbg !3646
  call void @fiobj_free(i64 %21), !dbg !3648
  br label %62, !dbg !3649

22:                                               ; preds = %17
  %23 = load i64, i64* %7, align 8, !dbg !3650
  %24 = call i64 @fiobj_type_is(i64 %23, i8 zeroext 41), !dbg !3650
  %25 = icmp ne i64 %24, 0, !dbg !3650
  br i1 %25, label %31, label %26, !dbg !3652

26:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3653, metadata !DIExpression()), !dbg !3655
  %27 = call i64 @fiobj_ary_new(), !dbg !3656
  store i64 %27, i64* %8, align 8, !dbg !3655
  %28 = load i64, i64* %8, align 8, !dbg !3657
  %29 = load i64, i64* %7, align 8, !dbg !3658
  call void @fiobj_ary_push(i64 %28, i64 %29), !dbg !3659
  %30 = load i64, i64* %8, align 8, !dbg !3660
  store i64 %30, i64* %7, align 8, !dbg !3661
  br label %31, !dbg !3662

31:                                               ; preds = %26, %22
  %32 = load i64, i64* %6, align 8, !dbg !3663
  %33 = call i64 @fiobj_type_is(i64 %32, i8 zeroext 41), !dbg !3663
  %34 = icmp ne i64 %33, 0, !dbg !3663
  br i1 %34, label %35, label %55, !dbg !3665

35:                                               ; preds = %31
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3666, metadata !DIExpression()), !dbg !3669
  store i64 0, i64* %9, align 8, !dbg !3669
  br label %36, !dbg !3670

36:                                               ; preds = %47, %35
  %37 = load i64, i64* %9, align 8, !dbg !3671
  %38 = load i64, i64* %6, align 8, !dbg !3673
  %39 = call i64 @fiobj_ary_count(i64 %38), !dbg !3674
  %40 = icmp ult i64 %37, %39, !dbg !3675
  br i1 %40, label %41, label %50, !dbg !3676

41:                                               ; preds = %36
  %42 = load i64, i64* %7, align 8, !dbg !3677
  %43 = load i64, i64* %6, align 8, !dbg !3679
  %44 = load i64, i64* %9, align 8, !dbg !3680
  %45 = call i64 @fiobj_ary_index(i64 %43, i64 %44), !dbg !3681
  %46 = call i64 @fiobj_dup(i64 %45), !dbg !3682
  call void @fiobj_ary_push(i64 %42, i64 %46), !dbg !3683
  br label %47, !dbg !3684

47:                                               ; preds = %41
  %48 = load i64, i64* %9, align 8, !dbg !3685
  %49 = add i64 %48, 1, !dbg !3685
  store i64 %49, i64* %9, align 8, !dbg !3685
  br label %36, !dbg !3686, !llvm.loop !3687

50:                                               ; preds = %36
  %51 = load i64, i64* %4, align 8, !dbg !3689
  %52 = load i64, i64* %5, align 8, !dbg !3690
  %53 = load i64, i64* %7, align 8, !dbg !3691
  %54 = call i32 @fiobj_hash_set(i64 %51, i64 %52, i64 %53), !dbg !3692
  br label %62, !dbg !3693

55:                                               ; preds = %31
  %56 = load i64, i64* %7, align 8, !dbg !3694
  %57 = load i64, i64* %6, align 8, !dbg !3695
  call void @fiobj_ary_push(i64 %56, i64 %57), !dbg !3696
  %58 = load i64, i64* %4, align 8, !dbg !3697
  %59 = load i64, i64* %5, align 8, !dbg !3698
  %60 = load i64, i64* %7, align 8, !dbg !3699
  %61 = call i64 @fiobj_hash_replace(i64 %58, i64 %59, i64 %60), !dbg !3700
  br label %62, !dbg !3701

62:                                               ; preds = %55, %50, %20, %16
  ret void, !dbg !3701
}

declare dso_local i64 @fiobj_hash_replace(i64, i64, i64) #5

declare dso_local i64 @fiobj_ary_new() #5

declare dso_local void @fiobj_ary_push(i64, i64) #5

declare dso_local i64 @fiobj_ary_count(i64) #5

declare dso_local i64 @fiobj_ary_index(i64, i64) #5

declare dso_local i32 @fiobj_hash_set(i64, i64, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_header_trailer(%struct.http1_parser_s* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 !dbg !3702 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.http1_parser_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [2 x %struct.anon.2], align 16
  %13 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %7, metadata !3705, metadata !DIExpression()), !dbg !3706
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3707, metadata !DIExpression()), !dbg !3708
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3709, metadata !DIExpression()), !dbg !3710
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3711, metadata !DIExpression()), !dbg !3712
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3713, metadata !DIExpression()), !dbg !3714
  %14 = load i8*, i8** %9, align 8, !dbg !3715
  %15 = load i8*, i8** %8, align 8, !dbg !3717
  %16 = ptrtoint i8* %14 to i64, !dbg !3718
  %17 = ptrtoint i8* %15 to i64, !dbg !3718
  %18 = sub i64 %16, %17, !dbg !3718
  %19 = icmp sgt i64 %18, 1, !dbg !3719
  br i1 %19, label %20, label %27, !dbg !3720

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8, !dbg !3721
  %22 = getelementptr inbounds i8, i8* %21, i64 0, !dbg !3721
  %23 = load i8, i8* %22, align 1, !dbg !3721
  %24 = zext i8 %23 to i32, !dbg !3721
  %25 = icmp eq i32 %24, 120, !dbg !3722
  br i1 %25, label %26, label %27, !dbg !3723

26:                                               ; preds = %20
  br label %64, !dbg !3724

27:                                               ; preds = %20, %5
  call void @llvm.dbg.declare(metadata [2 x %struct.anon.2]* %12, metadata !3726, metadata !DIExpression()), !dbg !3733
  %28 = bitcast [2 x %struct.anon.2]* %12 to i8*, !dbg !3733
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([2 x %struct.anon.2]* @__const.http1_consume_header_trailer.http1_trailer_white_list to i8*), i64 32, i1 false), !dbg !3733
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3734, metadata !DIExpression()), !dbg !3736
  store i64 0, i64* %13, align 8, !dbg !3736
  br label %29, !dbg !3737

29:                                               ; preds = %60, %27
  %30 = load i64, i64* %13, align 8, !dbg !3738
  %31 = getelementptr inbounds [2 x %struct.anon.2], [2 x %struct.anon.2]* %12, i64 0, i64 %30, !dbg !3740
  %32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %31, i32 0, i32 0, !dbg !3741
  %33 = load i8*, i8** %32, align 16, !dbg !3741
  %34 = icmp ne i8* %33, null, !dbg !3742
  br i1 %34, label %35, label %63, !dbg !3742

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 8, !dbg !3743
  %37 = load i8*, i8** %8, align 8, !dbg !3746
  %38 = ptrtoint i8* %36 to i64, !dbg !3747
  %39 = ptrtoint i8* %37 to i64, !dbg !3747
  %40 = sub i64 %38, %39, !dbg !3747
  %41 = load i64, i64* %13, align 8, !dbg !3748
  %42 = getelementptr inbounds [2 x %struct.anon.2], [2 x %struct.anon.2]* %12, i64 0, i64 %41, !dbg !3749
  %43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 1, !dbg !3750
  %44 = load i64, i64* %43, align 8, !dbg !3750
  %45 = icmp eq i64 %40, %44, !dbg !3751
  br i1 %45, label %46, label %59, !dbg !3752

46:                                               ; preds = %35
  %47 = load i8*, i8** %8, align 8, !dbg !3753
  %48 = load i64, i64* %13, align 8, !dbg !3753
  %49 = getelementptr inbounds [2 x %struct.anon.2], [2 x %struct.anon.2]* %12, i64 0, i64 %48, !dbg !3753
  %50 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %49, i32 0, i32 0, !dbg !3753
  %51 = load i8*, i8** %50, align 16, !dbg !3753
  %52 = load i64, i64* %13, align 8, !dbg !3753
  %53 = getelementptr inbounds [2 x %struct.anon.2], [2 x %struct.anon.2]* %12, i64 0, i64 %52, !dbg !3753
  %54 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %53, i32 0, i32 1, !dbg !3753
  %55 = load i64, i64* %54, align 8, !dbg !3753
  %56 = call i32 @memcmp(i8* %47, i8* %51, i64 %55) #12, !dbg !3753
  %57 = icmp ne i32 %56, 0, !dbg !3753
  br i1 %57, label %59, label %58, !dbg !3754

58:                                               ; preds = %46
  br label %64, !dbg !3755

59:                                               ; preds = %46, %35
  br label %60, !dbg !3757

60:                                               ; preds = %59
  %61 = load i64, i64* %13, align 8, !dbg !3758
  %62 = add i64 %61, 1, !dbg !3758
  store i64 %62, i64* %13, align 8, !dbg !3758
  br label %29, !dbg !3759, !llvm.loop !3760

63:                                               ; preds = %29
  store i32 0, i32* %6, align 4, !dbg !3762
  br label %82, !dbg !3762

64:                                               ; preds = %58, %26
  call void @llvm.dbg.label(metadata !3763), !dbg !3764
  %65 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3765
  %66 = load i8*, i8** %8, align 8, !dbg !3767
  %67 = load i8*, i8** %9, align 8, !dbg !3768
  %68 = load i8*, i8** %8, align 8, !dbg !3769
  %69 = ptrtoint i8* %67 to i64, !dbg !3770
  %70 = ptrtoint i8* %68 to i64, !dbg !3770
  %71 = sub i64 %69, %70, !dbg !3770
  %72 = load i8*, i8** %10, align 8, !dbg !3771
  %73 = load i8*, i8** %11, align 8, !dbg !3772
  %74 = load i8*, i8** %10, align 8, !dbg !3773
  %75 = ptrtoint i8* %73 to i64, !dbg !3774
  %76 = ptrtoint i8* %74 to i64, !dbg !3774
  %77 = sub i64 %75, %76, !dbg !3774
  %78 = call i32 @http1_on_header(%struct.http1_parser_s* %65, i8* %66, i64 %71, i8* %72, i64 %77), !dbg !3775
  %79 = icmp ne i32 %78, 0, !dbg !3775
  br i1 %79, label %80, label %81, !dbg !3776

80:                                               ; preds = %64
  store i32 -1, i32* %6, align 4, !dbg !3777
  br label %82, !dbg !3777

81:                                               ; preds = %64
  store i32 0, i32* %6, align 4, !dbg !3778
  br label %82, !dbg !3778

82:                                               ; preds = %81, %80, %63
  %83 = load i32, i32* %6, align 4, !dbg !3779
  ret i32 %83, !dbg !3779
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_header_top(%struct.http1_parser_s* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 !dbg !3780 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.http1_parser_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %7, metadata !3781, metadata !DIExpression()), !dbg !3782
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3783, metadata !DIExpression()), !dbg !3784
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3785, metadata !DIExpression()), !dbg !3786
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3787, metadata !DIExpression()), !dbg !3788
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3789, metadata !DIExpression()), !dbg !3790
  %13 = load i8*, i8** %9, align 8, !dbg !3791
  %14 = load i8*, i8** %8, align 8, !dbg !3793
  %15 = ptrtoint i8* %13 to i64, !dbg !3794
  %16 = ptrtoint i8* %14 to i64, !dbg !3794
  %17 = sub i64 %15, %16, !dbg !3794
  %18 = icmp eq i64 %17, 14, !dbg !3795
  br i1 %18, label %19, label %65, !dbg !3796

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8, !dbg !3797
  %21 = call i32 @memcmp(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i64 0, i64 0), i64 14) #12, !dbg !3797
  %22 = icmp ne i32 %21, 0, !dbg !3797
  br i1 %22, label %65, label %23, !dbg !3798

23:                                               ; preds = %19
  %24 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3799
  %25 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %24, i32 0, i32 0, !dbg !3802
  %26 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %25, i32 0, i32 3, !dbg !3803
  %27 = load i8, i8* %26, align 8, !dbg !3803
  %28 = zext i8 %27 to i32, !dbg !3799
  %29 = and i32 %28, 64, !dbg !3804
  %30 = icmp ne i32 %29, 0, !dbg !3804
  br i1 %30, label %31, label %32, !dbg !3805

31:                                               ; preds = %23
  store i32 0, i32* %6, align 4, !dbg !3806
  br label %115, !dbg !3806

32:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3807, metadata !DIExpression()), !dbg !3808
  %33 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3809
  %34 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %33, i32 0, i32 0, !dbg !3810
  %35 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %34, i32 0, i32 0, !dbg !3811
  %36 = load i64, i64* %35, align 8, !dbg !3811
  store i64 %36, i64* %12, align 8, !dbg !3808
  %37 = load i8*, i8** %10, align 8, !dbg !3812
  %38 = call i64 @http1_atol(i8* %37, i8** null), !dbg !3813
  %39 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3814
  %40 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %39, i32 0, i32 0, !dbg !3815
  %41 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %40, i32 0, i32 0, !dbg !3816
  store i64 %38, i64* %41, align 8, !dbg !3817
  %42 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3818
  %43 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %42, i32 0, i32 0, !dbg !3820
  %44 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %43, i32 0, i32 3, !dbg !3821
  %45 = load i8, i8* %44, align 8, !dbg !3821
  %46 = zext i8 %45 to i32, !dbg !3818
  %47 = and i32 %46, 8, !dbg !3822
  %48 = icmp ne i32 %47, 0, !dbg !3822
  br i1 %48, label %49, label %57, !dbg !3823

49:                                               ; preds = %32
  %50 = load i64, i64* %12, align 8, !dbg !3824
  %51 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3825
  %52 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %51, i32 0, i32 0, !dbg !3826
  %53 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %52, i32 0, i32 0, !dbg !3827
  %54 = load i64, i64* %53, align 8, !dbg !3827
  %55 = icmp ne i64 %50, %54, !dbg !3828
  br i1 %55, label %56, label %57, !dbg !3829

56:                                               ; preds = %49
  store i32 -1, i32* %6, align 4, !dbg !3830
  br label %115, !dbg !3830

57:                                               ; preds = %49, %32
  %58 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3832
  %59 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %58, i32 0, i32 0, !dbg !3833
  %60 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %59, i32 0, i32 3, !dbg !3834
  %61 = load i8, i8* %60, align 8, !dbg !3835
  %62 = zext i8 %61 to i32, !dbg !3835
  %63 = or i32 %62, 8, !dbg !3835
  %64 = trunc i32 %63 to i8, !dbg !3835
  store i8 %64, i8* %60, align 8, !dbg !3835
  br label %97, !dbg !3836

65:                                               ; preds = %19, %5
  %66 = load i8*, i8** %9, align 8, !dbg !3837
  %67 = load i8*, i8** %8, align 8, !dbg !3839
  %68 = ptrtoint i8* %66 to i64, !dbg !3840
  %69 = ptrtoint i8* %67 to i64, !dbg !3840
  %70 = sub i64 %68, %69, !dbg !3840
  %71 = icmp eq i64 %70, 17, !dbg !3841
  br i1 %71, label %72, label %96, !dbg !3842

72:                                               ; preds = %65
  %73 = load i8*, i8** %11, align 8, !dbg !3843
  %74 = load i8*, i8** %10, align 8, !dbg !3844
  %75 = ptrtoint i8* %73 to i64, !dbg !3845
  %76 = ptrtoint i8* %74 to i64, !dbg !3845
  %77 = sub i64 %75, %76, !dbg !3845
  %78 = icmp sge i64 %77, 7, !dbg !3846
  br i1 %78, label %79, label %96, !dbg !3847

79:                                               ; preds = %72
  %80 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3848
  %81 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %80, i32 0, i32 0, !dbg !3849
  %82 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %81, i32 0, i32 0, !dbg !3850
  %83 = load i64, i64* %82, align 8, !dbg !3850
  %84 = icmp ne i64 %83, 0, !dbg !3848
  br i1 %84, label %96, label %85, !dbg !3851

85:                                               ; preds = %79
  %86 = load i8*, i8** %8, align 8, !dbg !3852
  %87 = call i32 @memcmp(i8* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.98, i64 0, i64 0), i64 17) #12, !dbg !3852
  %88 = icmp ne i32 %87, 0, !dbg !3852
  br i1 %88, label %96, label %89, !dbg !3853

89:                                               ; preds = %85
  %90 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3854
  %91 = load i8*, i8** %8, align 8, !dbg !3856
  %92 = load i8*, i8** %9, align 8, !dbg !3857
  %93 = load i8*, i8** %10, align 8, !dbg !3858
  %94 = load i8*, i8** %11, align 8, !dbg !3859
  %95 = call i32 @http1_consume_header_transfer_encoding(%struct.http1_parser_s* %90, i8* %91, i8* %92, i8* %93, i8* %94), !dbg !3860
  store i32 %95, i32* %6, align 4, !dbg !3861
  br label %115, !dbg !3861

96:                                               ; preds = %85, %79, %72, %65
  br label %97

97:                                               ; preds = %96, %57
  %98 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3862
  %99 = load i8*, i8** %8, align 8, !dbg !3864
  %100 = load i8*, i8** %9, align 8, !dbg !3865
  %101 = load i8*, i8** %8, align 8, !dbg !3866
  %102 = ptrtoint i8* %100 to i64, !dbg !3867
  %103 = ptrtoint i8* %101 to i64, !dbg !3867
  %104 = sub i64 %102, %103, !dbg !3867
  %105 = load i8*, i8** %10, align 8, !dbg !3868
  %106 = load i8*, i8** %11, align 8, !dbg !3869
  %107 = load i8*, i8** %10, align 8, !dbg !3870
  %108 = ptrtoint i8* %106 to i64, !dbg !3871
  %109 = ptrtoint i8* %107 to i64, !dbg !3871
  %110 = sub i64 %108, %109, !dbg !3871
  %111 = call i32 @http1_on_header(%struct.http1_parser_s* %98, i8* %99, i64 %104, i8* %105, i64 %110), !dbg !3872
  %112 = icmp ne i32 %111, 0, !dbg !3872
  br i1 %112, label %113, label %114, !dbg !3873

113:                                              ; preds = %97
  store i32 -1, i32* %6, align 4, !dbg !3874
  br label %115, !dbg !3874

114:                                              ; preds = %97
  store i32 0, i32* %6, align 4, !dbg !3875
  br label %115, !dbg !3875

115:                                              ; preds = %114, %113, %89, %56, %31
  %116 = load i32, i32* %6, align 4, !dbg !3876
  ret i32 %116, !dbg !3876
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_header_transfer_encoding(%struct.http1_parser_s* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 !dbg !3877 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.http1_parser_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %7, metadata !3878, metadata !DIExpression()), !dbg !3879
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3880, metadata !DIExpression()), !dbg !3881
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3882, metadata !DIExpression()), !dbg !3883
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3884, metadata !DIExpression()), !dbg !3885
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3886, metadata !DIExpression()), !dbg !3887
  br label %12, !dbg !3888

12:                                               ; preds = %32, %5
  %13 = load i8*, i8** %10, align 8, !dbg !3889
  %14 = load i8*, i8** %11, align 8, !dbg !3890
  %15 = icmp ult i8* %13, %14, !dbg !3891
  br i1 %15, label %16, label %30, !dbg !3892

16:                                               ; preds = %12
  %17 = load i8*, i8** %11, align 8, !dbg !3893
  %18 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !3893
  %19 = load i8, i8* %18, align 1, !dbg !3893
  %20 = zext i8 %19 to i32, !dbg !3893
  %21 = icmp eq i32 %20, 44, !dbg !3894
  br i1 %21, label %28, label %22, !dbg !3895

22:                                               ; preds = %16
  %23 = load i8*, i8** %11, align 8, !dbg !3896
  %24 = getelementptr inbounds i8, i8* %23, i64 -1, !dbg !3896
  %25 = load i8, i8* %24, align 1, !dbg !3896
  %26 = zext i8 %25 to i32, !dbg !3896
  %27 = icmp eq i32 %26, 32, !dbg !3897
  br label %28, !dbg !3895

28:                                               ; preds = %22, %16
  %29 = phi i1 [ true, %16 ], [ %27, %22 ]
  br label %30

30:                                               ; preds = %28, %12
  %31 = phi i1 [ false, %12 ], [ %29, %28 ], !dbg !3898
  br i1 %31, label %32, label %35, !dbg !3888

32:                                               ; preds = %30
  %33 = load i8*, i8** %11, align 8, !dbg !3899
  %34 = getelementptr inbounds i8, i8* %33, i32 -1, !dbg !3899
  store i8* %34, i8** %11, align 8, !dbg !3899
  br label %12, !dbg !3888, !llvm.loop !3900

35:                                               ; preds = %30
  %36 = load i8*, i8** %11, align 8, !dbg !3902
  %37 = load i8*, i8** %10, align 8, !dbg !3904
  %38 = ptrtoint i8* %36 to i64, !dbg !3905
  %39 = ptrtoint i8* %37 to i64, !dbg !3905
  %40 = sub i64 %38, %39, !dbg !3905
  %41 = icmp eq i64 %40, 7, !dbg !3906
  br i1 %41, label %42, label %134, !dbg !3907

42:                                               ; preds = %35
  %43 = load i8*, i8** %10, align 8, !dbg !3908
  %44 = getelementptr inbounds i8, i8* %43, i64 0, !dbg !3908
  %45 = load i8, i8* %44, align 1, !dbg !3908
  %46 = zext i8 %45 to i32, !dbg !3908
  %47 = or i32 %46, 32, !dbg !3909
  %48 = icmp eq i32 %47, 99, !dbg !3910
  br i1 %48, label %49, label %134, !dbg !3911

49:                                               ; preds = %42
  %50 = load i8*, i8** %10, align 8, !dbg !3912
  %51 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !3912
  %52 = load i8, i8* %51, align 1, !dbg !3912
  %53 = zext i8 %52 to i32, !dbg !3912
  %54 = or i32 %53, 32, !dbg !3913
  %55 = icmp eq i32 %54, 104, !dbg !3914
  br i1 %55, label %56, label %134, !dbg !3915

56:                                               ; preds = %49
  %57 = load i8*, i8** %10, align 8, !dbg !3916
  %58 = getelementptr inbounds i8, i8* %57, i64 2, !dbg !3916
  %59 = load i8, i8* %58, align 1, !dbg !3916
  %60 = zext i8 %59 to i32, !dbg !3916
  %61 = or i32 %60, 32, !dbg !3917
  %62 = icmp eq i32 %61, 117, !dbg !3918
  br i1 %62, label %63, label %134, !dbg !3919

63:                                               ; preds = %56
  %64 = load i8*, i8** %10, align 8, !dbg !3920
  %65 = getelementptr inbounds i8, i8* %64, i64 3, !dbg !3920
  %66 = load i8, i8* %65, align 1, !dbg !3920
  %67 = zext i8 %66 to i32, !dbg !3920
  %68 = or i32 %67, 32, !dbg !3921
  %69 = icmp eq i32 %68, 110, !dbg !3922
  br i1 %69, label %70, label %134, !dbg !3923

70:                                               ; preds = %63
  %71 = load i8*, i8** %10, align 8, !dbg !3924
  %72 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !3924
  %73 = load i8, i8* %72, align 1, !dbg !3924
  %74 = zext i8 %73 to i32, !dbg !3924
  %75 = or i32 %74, 32, !dbg !3925
  %76 = icmp eq i32 %75, 107, !dbg !3926
  br i1 %76, label %77, label %134, !dbg !3927

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8, !dbg !3928
  %79 = getelementptr inbounds i8, i8* %78, i64 5, !dbg !3928
  %80 = load i8, i8* %79, align 1, !dbg !3928
  %81 = zext i8 %80 to i32, !dbg !3928
  %82 = or i32 %81, 32, !dbg !3929
  %83 = icmp eq i32 %82, 101, !dbg !3930
  br i1 %83, label %84, label %134, !dbg !3931

84:                                               ; preds = %77
  %85 = load i8*, i8** %10, align 8, !dbg !3932
  %86 = getelementptr inbounds i8, i8* %85, i64 6, !dbg !3932
  %87 = load i8, i8* %86, align 1, !dbg !3932
  %88 = zext i8 %87 to i32, !dbg !3932
  %89 = or i32 %88, 32, !dbg !3933
  %90 = icmp eq i32 %89, 100, !dbg !3934
  br i1 %90, label %91, label %134, !dbg !3935

91:                                               ; preds = %84
  %92 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3936
  %93 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %92, i32 0, i32 0, !dbg !3938
  %94 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %93, i32 0, i32 3, !dbg !3939
  %95 = load i8, i8* %94, align 8, !dbg !3940
  %96 = zext i8 %95 to i32, !dbg !3940
  %97 = or i32 %96, 64, !dbg !3940
  %98 = trunc i32 %97 to i8, !dbg !3940
  store i8 %98, i8* %94, align 8, !dbg !3940
  %99 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !3941
  %100 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %99, i32 0, i32 0, !dbg !3942
  %101 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %100, i32 0, i32 0, !dbg !3943
  store i64 0, i64* %101, align 8, !dbg !3944
  %102 = load i8*, i8** %10, align 8, !dbg !3945
  %103 = getelementptr inbounds i8, i8* %102, i64 7, !dbg !3945
  store i8* %103, i8** %10, align 8, !dbg !3945
  br label %104, !dbg !3946

104:                                              ; preds = %122, %91
  %105 = load i8*, i8** %10, align 8, !dbg !3947
  %106 = load i8*, i8** %11, align 8, !dbg !3948
  %107 = icmp ult i8* %105, %106, !dbg !3949
  br i1 %107, label %108, label %120, !dbg !3950

108:                                              ; preds = %104
  %109 = load i8*, i8** %10, align 8, !dbg !3951
  %110 = load i8, i8* %109, align 1, !dbg !3952
  %111 = zext i8 %110 to i32, !dbg !3952
  %112 = icmp eq i32 %111, 44, !dbg !3953
  br i1 %112, label %118, label %113, !dbg !3954

113:                                              ; preds = %108
  %114 = load i8*, i8** %10, align 8, !dbg !3955
  %115 = load i8, i8* %114, align 1, !dbg !3956
  %116 = zext i8 %115 to i32, !dbg !3956
  %117 = icmp eq i32 %116, 32, !dbg !3957
  br label %118, !dbg !3954

118:                                              ; preds = %113, %108
  %119 = phi i1 [ true, %108 ], [ %117, %113 ]
  br label %120

120:                                              ; preds = %118, %104
  %121 = phi i1 [ false, %104 ], [ %119, %118 ], !dbg !3958
  br i1 %121, label %122, label %125, !dbg !3946

122:                                              ; preds = %120
  %123 = load i8*, i8** %10, align 8, !dbg !3959
  %124 = getelementptr inbounds i8, i8* %123, i32 1, !dbg !3959
  store i8* %124, i8** %10, align 8, !dbg !3959
  br label %104, !dbg !3946, !llvm.loop !3960

125:                                              ; preds = %120
  %126 = load i8*, i8** %11, align 8, !dbg !3962
  %127 = load i8*, i8** %10, align 8, !dbg !3964
  %128 = ptrtoint i8* %126 to i64, !dbg !3965
  %129 = ptrtoint i8* %127 to i64, !dbg !3965
  %130 = sub i64 %128, %129, !dbg !3965
  %131 = icmp ne i64 %130, 0, !dbg !3965
  br i1 %131, label %133, label %132, !dbg !3966

132:                                              ; preds = %125
  store i32 0, i32* %6, align 4, !dbg !3967
  br label %254, !dbg !3967

133:                                              ; preds = %125
  br label %236, !dbg !3968

134:                                              ; preds = %84, %77, %70, %63, %56, %49, %42, %35
  %135 = load i8*, i8** %11, align 8, !dbg !3969
  %136 = load i8*, i8** %10, align 8, !dbg !3971
  %137 = ptrtoint i8* %135 to i64, !dbg !3972
  %138 = ptrtoint i8* %136 to i64, !dbg !3972
  %139 = sub i64 %137, %138, !dbg !3972
  %140 = icmp sgt i64 %139, 7, !dbg !3973
  br i1 %140, label %141, label %235, !dbg !3974

141:                                              ; preds = %134
  %142 = load i8*, i8** %11, align 8, !dbg !3975
  %143 = getelementptr inbounds i8, i8* %142, i64 -7, !dbg !3975
  %144 = load i8, i8* %143, align 1, !dbg !3975
  %145 = zext i8 %144 to i32, !dbg !3975
  %146 = or i32 %145, 32, !dbg !3976
  %147 = icmp eq i32 %146, 99, !dbg !3977
  br i1 %147, label %148, label %235, !dbg !3978

148:                                              ; preds = %141
  %149 = load i8*, i8** %11, align 8, !dbg !3979
  %150 = getelementptr inbounds i8, i8* %149, i64 -6, !dbg !3979
  %151 = load i8, i8* %150, align 1, !dbg !3979
  %152 = zext i8 %151 to i32, !dbg !3979
  %153 = or i32 %152, 32, !dbg !3980
  %154 = icmp eq i32 %153, 104, !dbg !3981
  br i1 %154, label %155, label %235, !dbg !3982

155:                                              ; preds = %148
  %156 = load i8*, i8** %11, align 8, !dbg !3983
  %157 = getelementptr inbounds i8, i8* %156, i64 -5, !dbg !3983
  %158 = load i8, i8* %157, align 1, !dbg !3983
  %159 = zext i8 %158 to i32, !dbg !3983
  %160 = or i32 %159, 32, !dbg !3984
  %161 = icmp eq i32 %160, 117, !dbg !3985
  br i1 %161, label %162, label %235, !dbg !3986

162:                                              ; preds = %155
  %163 = load i8*, i8** %11, align 8, !dbg !3987
  %164 = getelementptr inbounds i8, i8* %163, i64 -4, !dbg !3987
  %165 = load i8, i8* %164, align 1, !dbg !3987
  %166 = zext i8 %165 to i32, !dbg !3987
  %167 = or i32 %166, 32, !dbg !3988
  %168 = icmp eq i32 %167, 110, !dbg !3989
  br i1 %168, label %169, label %235, !dbg !3990

169:                                              ; preds = %162
  %170 = load i8*, i8** %11, align 8, !dbg !3991
  %171 = getelementptr inbounds i8, i8* %170, i64 -3, !dbg !3991
  %172 = load i8, i8* %171, align 1, !dbg !3991
  %173 = zext i8 %172 to i32, !dbg !3991
  %174 = or i32 %173, 32, !dbg !3992
  %175 = icmp eq i32 %174, 107, !dbg !3993
  br i1 %175, label %176, label %235, !dbg !3994

176:                                              ; preds = %169
  %177 = load i8*, i8** %11, align 8, !dbg !3995
  %178 = getelementptr inbounds i8, i8* %177, i64 -2, !dbg !3995
  %179 = load i8, i8* %178, align 1, !dbg !3995
  %180 = zext i8 %179 to i32, !dbg !3995
  %181 = or i32 %180, 32, !dbg !3996
  %182 = icmp eq i32 %181, 101, !dbg !3997
  br i1 %182, label %183, label %235, !dbg !3998

183:                                              ; preds = %176
  %184 = load i8*, i8** %11, align 8, !dbg !3999
  %185 = getelementptr inbounds i8, i8* %184, i64 -1, !dbg !3999
  %186 = load i8, i8* %185, align 1, !dbg !3999
  %187 = zext i8 %186 to i32, !dbg !3999
  %188 = or i32 %187, 32, !dbg !4000
  %189 = icmp eq i32 %188, 100, !dbg !4001
  br i1 %189, label %190, label %235, !dbg !4002

190:                                              ; preds = %183
  %191 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !4003
  %192 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %191, i32 0, i32 0, !dbg !4005
  %193 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %192, i32 0, i32 3, !dbg !4006
  %194 = load i8, i8* %193, align 8, !dbg !4007
  %195 = zext i8 %194 to i32, !dbg !4007
  %196 = or i32 %195, 64, !dbg !4007
  %197 = trunc i32 %196 to i8, !dbg !4007
  store i8 %197, i8* %193, align 8, !dbg !4007
  %198 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !4008
  %199 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %198, i32 0, i32 0, !dbg !4009
  %200 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %199, i32 0, i32 0, !dbg !4010
  store i64 0, i64* %200, align 8, !dbg !4011
  %201 = load i8*, i8** %11, align 8, !dbg !4012
  %202 = getelementptr inbounds i8, i8* %201, i64 -7, !dbg !4012
  store i8* %202, i8** %11, align 8, !dbg !4012
  br label %203, !dbg !4013

203:                                              ; preds = %223, %190
  %204 = load i8*, i8** %10, align 8, !dbg !4014
  %205 = load i8*, i8** %11, align 8, !dbg !4015
  %206 = icmp ult i8* %204, %205, !dbg !4016
  br i1 %206, label %207, label %221, !dbg !4017

207:                                              ; preds = %203
  %208 = load i8*, i8** %11, align 8, !dbg !4018
  %209 = getelementptr inbounds i8, i8* %208, i64 -1, !dbg !4018
  %210 = load i8, i8* %209, align 1, !dbg !4018
  %211 = zext i8 %210 to i32, !dbg !4018
  %212 = icmp eq i32 %211, 44, !dbg !4019
  br i1 %212, label %219, label %213, !dbg !4020

213:                                              ; preds = %207
  %214 = load i8*, i8** %11, align 8, !dbg !4021
  %215 = getelementptr inbounds i8, i8* %214, i64 -1, !dbg !4021
  %216 = load i8, i8* %215, align 1, !dbg !4021
  %217 = zext i8 %216 to i32, !dbg !4021
  %218 = icmp eq i32 %217, 32, !dbg !4022
  br label %219, !dbg !4020

219:                                              ; preds = %213, %207
  %220 = phi i1 [ true, %207 ], [ %218, %213 ]
  br label %221

221:                                              ; preds = %219, %203
  %222 = phi i1 [ false, %203 ], [ %220, %219 ], !dbg !4023
  br i1 %222, label %223, label %226, !dbg !4013

223:                                              ; preds = %221
  %224 = load i8*, i8** %11, align 8, !dbg !4024
  %225 = getelementptr inbounds i8, i8* %224, i32 -1, !dbg !4024
  store i8* %225, i8** %11, align 8, !dbg !4024
  br label %203, !dbg !4013, !llvm.loop !4025

226:                                              ; preds = %221
  %227 = load i8*, i8** %11, align 8, !dbg !4027
  %228 = load i8*, i8** %10, align 8, !dbg !4029
  %229 = ptrtoint i8* %227 to i64, !dbg !4030
  %230 = ptrtoint i8* %228 to i64, !dbg !4030
  %231 = sub i64 %229, %230, !dbg !4030
  %232 = icmp ne i64 %231, 0, !dbg !4030
  br i1 %232, label %234, label %233, !dbg !4031

233:                                              ; preds = %226
  store i32 0, i32* %6, align 4, !dbg !4032
  br label %254, !dbg !4032

234:                                              ; preds = %226
  br label %235, !dbg !4033

235:                                              ; preds = %234, %183, %176, %169, %162, %155, %148, %141, %134
  br label %236

236:                                              ; preds = %235, %133
  %237 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8, !dbg !4034
  %238 = load i8*, i8** %8, align 8, !dbg !4036
  %239 = load i8*, i8** %9, align 8, !dbg !4037
  %240 = load i8*, i8** %8, align 8, !dbg !4038
  %241 = ptrtoint i8* %239 to i64, !dbg !4039
  %242 = ptrtoint i8* %240 to i64, !dbg !4039
  %243 = sub i64 %241, %242, !dbg !4039
  %244 = load i8*, i8** %10, align 8, !dbg !4040
  %245 = load i8*, i8** %11, align 8, !dbg !4041
  %246 = load i8*, i8** %10, align 8, !dbg !4042
  %247 = ptrtoint i8* %245 to i64, !dbg !4043
  %248 = ptrtoint i8* %246 to i64, !dbg !4043
  %249 = sub i64 %247, %248, !dbg !4043
  %250 = call i32 @http1_on_header(%struct.http1_parser_s* %237, i8* %238, i64 %243, i8* %244, i64 %249), !dbg !4044
  %251 = icmp ne i32 %250, 0, !dbg !4044
  br i1 %251, label %252, label %253, !dbg !4045

252:                                              ; preds = %236
  store i32 -1, i32* %6, align 4, !dbg !4046
  br label %254, !dbg !4046

253:                                              ; preds = %236
  store i32 0, i32* %6, align 4, !dbg !4047
  br label %254, !dbg !4047

254:                                              ; preds = %253, %252, %233, %132
  %255 = load i32, i32* %6, align 4, !dbg !4048
  ret i32 %255, !dbg !4048
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_body_streamed(%struct.http1_parser_s* %0, i8* %1, i64 %2, i8** %3) #0 !dbg !4049 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.http1_parser_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %6, metadata !4050, metadata !DIExpression()), !dbg !4051
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4052, metadata !DIExpression()), !dbg !4053
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4054, metadata !DIExpression()), !dbg !4055
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !4056, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4058, metadata !DIExpression()), !dbg !4059
  %12 = load i8**, i8*** %9, align 8, !dbg !4060
  %13 = load i8*, i8** %12, align 8, !dbg !4061
  %14 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4062
  %15 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %14, i32 0, i32 0, !dbg !4063
  %16 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %15, i32 0, i32 0, !dbg !4064
  %17 = load i64, i64* %16, align 8, !dbg !4064
  %18 = getelementptr inbounds i8, i8* %13, i64 %17, !dbg !4065
  %19 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4066
  %20 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %19, i32 0, i32 0, !dbg !4067
  %21 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %20, i32 0, i32 1, !dbg !4068
  %22 = load i64, i64* %21, align 8, !dbg !4068
  %23 = sub i64 0, %22, !dbg !4069
  %24 = getelementptr inbounds i8, i8* %18, i64 %23, !dbg !4069
  store i8* %24, i8** %10, align 8, !dbg !4059
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4070, metadata !DIExpression()), !dbg !4071
  %25 = load i8*, i8** %7, align 8, !dbg !4072
  %26 = load i64, i64* %8, align 8, !dbg !4073
  %27 = getelementptr inbounds i8, i8* %25, i64 %26, !dbg !4074
  store i8* %27, i8** %11, align 8, !dbg !4071
  %28 = load i8*, i8** %10, align 8, !dbg !4075
  %29 = load i8*, i8** %11, align 8, !dbg !4077
  %30 = icmp ugt i8* %28, %29, !dbg !4078
  br i1 %30, label %31, label %33, !dbg !4079

31:                                               ; preds = %4
  %32 = load i8*, i8** %11, align 8, !dbg !4080
  store i8* %32, i8** %10, align 8, !dbg !4081
  br label %33, !dbg !4082

33:                                               ; preds = %31, %4
  %34 = load i8*, i8** %10, align 8, !dbg !4083
  %35 = load i8**, i8*** %9, align 8, !dbg !4085
  %36 = load i8*, i8** %35, align 8, !dbg !4086
  %37 = icmp ugt i8* %34, %36, !dbg !4087
  br i1 %37, label %38, label %51, !dbg !4088

38:                                               ; preds = %33
  %39 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4089
  %40 = load i8**, i8*** %9, align 8, !dbg !4090
  %41 = load i8*, i8** %40, align 8, !dbg !4091
  %42 = load i8*, i8** %10, align 8, !dbg !4092
  %43 = load i8**, i8*** %9, align 8, !dbg !4093
  %44 = load i8*, i8** %43, align 8, !dbg !4094
  %45 = ptrtoint i8* %42 to i64, !dbg !4095
  %46 = ptrtoint i8* %44 to i64, !dbg !4095
  %47 = sub i64 %45, %46, !dbg !4095
  %48 = call i32 @http1_on_body_chunk(%struct.http1_parser_s* %39, i8* %41, i64 %47), !dbg !4096
  %49 = icmp ne i32 %48, 0, !dbg !4096
  br i1 %49, label %50, label %51, !dbg !4097

50:                                               ; preds = %38
  store i32 -1, i32* %5, align 4, !dbg !4098
  br label %83, !dbg !4098

51:                                               ; preds = %38, %33
  %52 = load i8*, i8** %10, align 8, !dbg !4099
  %53 = load i8**, i8*** %9, align 8, !dbg !4100
  %54 = load i8*, i8** %53, align 8, !dbg !4101
  %55 = ptrtoint i8* %52 to i64, !dbg !4102
  %56 = ptrtoint i8* %54 to i64, !dbg !4102
  %57 = sub i64 %55, %56, !dbg !4102
  %58 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4103
  %59 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %58, i32 0, i32 0, !dbg !4104
  %60 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %59, i32 0, i32 1, !dbg !4105
  %61 = load i64, i64* %60, align 8, !dbg !4106
  %62 = add nsw i64 %61, %57, !dbg !4106
  store i64 %62, i64* %60, align 8, !dbg !4106
  %63 = load i8*, i8** %10, align 8, !dbg !4107
  %64 = load i8**, i8*** %9, align 8, !dbg !4108
  store i8* %63, i8** %64, align 8, !dbg !4109
  %65 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4110
  %66 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %65, i32 0, i32 0, !dbg !4112
  %67 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %66, i32 0, i32 0, !dbg !4113
  %68 = load i64, i64* %67, align 8, !dbg !4113
  %69 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4114
  %70 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %69, i32 0, i32 0, !dbg !4115
  %71 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %70, i32 0, i32 1, !dbg !4116
  %72 = load i64, i64* %71, align 8, !dbg !4116
  %73 = icmp sle i64 %68, %72, !dbg !4117
  br i1 %73, label %74, label %82, !dbg !4118

74:                                               ; preds = %51
  %75 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4119
  %76 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %75, i32 0, i32 0, !dbg !4120
  %77 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %76, i32 0, i32 3, !dbg !4121
  %78 = load i8, i8* %77, align 8, !dbg !4122
  %79 = zext i8 %78 to i32, !dbg !4122
  %80 = or i32 %79, 4, !dbg !4122
  %81 = trunc i32 %80 to i8, !dbg !4122
  store i8 %81, i8* %77, align 8, !dbg !4122
  br label %82, !dbg !4119

82:                                               ; preds = %74, %51
  store i32 0, i32* %5, align 4, !dbg !4123
  br label %83, !dbg !4123

83:                                               ; preds = %82, %50
  %84 = load i32, i32* %5, align 4, !dbg !4124
  ret i32 %84, !dbg !4124
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_body_chunked(%struct.http1_parser_s* %0, i8* %1, i64 %2, i8** %3) #0 !dbg !4125 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.http1_parser_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [512 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %6, metadata !4126, metadata !DIExpression()), !dbg !4127
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4128, metadata !DIExpression()), !dbg !4129
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4130, metadata !DIExpression()), !dbg !4131
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !4132, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4134, metadata !DIExpression()), !dbg !4135
  %17 = load i8*, i8** %7, align 8, !dbg !4136
  %18 = load i64, i64* %8, align 8, !dbg !4137
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !4138
  store i8* %19, i8** %10, align 8, !dbg !4135
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4139, metadata !DIExpression()), !dbg !4140
  %20 = load i8**, i8*** %9, align 8, !dbg !4141
  %21 = load i8*, i8** %20, align 8, !dbg !4142
  store i8* %21, i8** %11, align 8, !dbg !4140
  br label %22, !dbg !4143

22:                                               ; preds = %238, %4
  %23 = load i8**, i8*** %9, align 8, !dbg !4144
  %24 = load i8*, i8** %23, align 8, !dbg !4145
  %25 = load i8*, i8** %10, align 8, !dbg !4146
  %26 = icmp ult i8* %24, %25, !dbg !4147
  br i1 %26, label %27, label %263, !dbg !4143

27:                                               ; preds = %22
  %28 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4148
  %29 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %28, i32 0, i32 0, !dbg !4151
  %30 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %29, i32 0, i32 0, !dbg !4152
  %31 = load i64, i64* %30, align 8, !dbg !4152
  %32 = icmp eq i64 %31, 0, !dbg !4153
  br i1 %32, label %33, label %206, !dbg !4154

33:                                               ; preds = %27
  %34 = load i8*, i8** %11, align 8, !dbg !4155
  %35 = getelementptr inbounds i8, i8* %34, i64 2, !dbg !4158
  %36 = load i8*, i8** %10, align 8, !dbg !4159
  %37 = icmp uge i8* %35, %36, !dbg !4160
  br i1 %37, label %38, label %39, !dbg !4161

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4, !dbg !4162
  br label %264, !dbg !4162

39:                                               ; preds = %33
  %40 = load i8*, i8** %11, align 8, !dbg !4163
  %41 = getelementptr inbounds i8, i8* %40, i64 0, !dbg !4163
  %42 = load i8, i8* %41, align 1, !dbg !4163
  %43 = zext i8 %42 to i32, !dbg !4163
  %44 = icmp eq i32 %43, 13, !dbg !4165
  br i1 %44, label %45, label %62, !dbg !4166

45:                                               ; preds = %39
  %46 = load i8*, i8** %11, align 8, !dbg !4167
  %47 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !4167
  %48 = load i8, i8* %47, align 1, !dbg !4167
  %49 = zext i8 %48 to i32, !dbg !4167
  %50 = icmp eq i32 %49, 10, !dbg !4168
  br i1 %50, label %51, label %62, !dbg !4169

51:                                               ; preds = %45
  %52 = load i8*, i8** %11, align 8, !dbg !4170
  %53 = getelementptr inbounds i8, i8* %52, i64 2, !dbg !4170
  store i8* %53, i8** %11, align 8, !dbg !4170
  %54 = load i8*, i8** %11, align 8, !dbg !4172
  %55 = load i8**, i8*** %9, align 8, !dbg !4173
  store i8* %54, i8** %55, align 8, !dbg !4174
  %56 = load i8*, i8** %11, align 8, !dbg !4175
  %57 = getelementptr inbounds i8, i8* %56, i64 2, !dbg !4177
  %58 = load i8*, i8** %10, align 8, !dbg !4178
  %59 = icmp uge i8* %57, %58, !dbg !4179
  br i1 %59, label %60, label %61, !dbg !4180

60:                                               ; preds = %51
  store i32 0, i32* %5, align 4, !dbg !4181
  br label %264, !dbg !4181

61:                                               ; preds = %51
  br label %62, !dbg !4182

62:                                               ; preds = %61, %45, %39
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4183, metadata !DIExpression()), !dbg !4184
  %63 = load i8*, i8** %11, align 8, !dbg !4185
  %64 = call i64 @http1_atol16(i8* %63, i8** %11), !dbg !4186
  store i64 %64, i64* %12, align 8, !dbg !4184
  %65 = load i8*, i8** %11, align 8, !dbg !4187
  %66 = getelementptr inbounds i8, i8* %65, i64 2, !dbg !4189
  %67 = load i8*, i8** %10, align 8, !dbg !4190
  %68 = icmp ugt i8* %66, %67, !dbg !4191
  br i1 %68, label %69, label %70, !dbg !4192

69:                                               ; preds = %62
  store i32 0, i32* %5, align 4, !dbg !4193
  br label %264, !dbg !4193

70:                                               ; preds = %62
  %71 = load i8*, i8** %11, align 8, !dbg !4194
  %72 = getelementptr inbounds i8, i8* %71, i64 0, !dbg !4194
  %73 = load i8, i8* %72, align 1, !dbg !4194
  %74 = zext i8 %73 to i32, !dbg !4194
  %75 = icmp ne i32 %74, 13, !dbg !4196
  br i1 %75, label %82, label %76, !dbg !4197

76:                                               ; preds = %70
  %77 = load i8*, i8** %11, align 8, !dbg !4198
  %78 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !4198
  %79 = load i8, i8* %78, align 1, !dbg !4198
  %80 = zext i8 %79 to i32, !dbg !4198
  %81 = icmp ne i32 %80, 10, !dbg !4199
  br i1 %81, label %82, label %83, !dbg !4200

82:                                               ; preds = %76, %70
  store i32 -1, i32* %5, align 4, !dbg !4201
  br label %264, !dbg !4201

83:                                               ; preds = %76
  %84 = load i8*, i8** %11, align 8, !dbg !4202
  %85 = getelementptr inbounds i8, i8* %84, i64 2, !dbg !4202
  store i8* %85, i8** %11, align 8, !dbg !4202
  %86 = load i64, i64* %12, align 8, !dbg !4203
  %87 = sub nsw i64 0, %86, !dbg !4204
  %88 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4205
  %89 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %88, i32 0, i32 0, !dbg !4206
  %90 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %89, i32 0, i32 0, !dbg !4207
  store i64 %87, i64* %90, align 8, !dbg !4208
  %91 = load i8*, i8** %11, align 8, !dbg !4209
  %92 = load i8**, i8*** %9, align 8, !dbg !4210
  store i8* %91, i8** %92, align 8, !dbg !4211
  %93 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4212
  %94 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %93, i32 0, i32 0, !dbg !4214
  %95 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %94, i32 0, i32 0, !dbg !4215
  %96 = load i64, i64* %95, align 8, !dbg !4215
  %97 = icmp eq i64 %96, 0, !dbg !4216
  br i1 %97, label %98, label %205, !dbg !4217

98:                                               ; preds = %83
  %99 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4218
  %100 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %99, i32 0, i32 0, !dbg !4220
  %101 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %100, i32 0, i32 1, !dbg !4221
  %102 = load i64, i64* %101, align 8, !dbg !4221
  %103 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4222
  %104 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %103, i32 0, i32 0, !dbg !4223
  %105 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %104, i32 0, i32 0, !dbg !4224
  store i64 %102, i64* %105, align 8, !dbg !4225
  call void @llvm.dbg.declare(metadata [512 x i8]* %13, metadata !4226, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4232, metadata !DIExpression()), !dbg !4233
  store i64 512, i64* %14, align 8, !dbg !4233
  call void @llvm.dbg.declare(metadata i64* %15, metadata !4234, metadata !DIExpression()), !dbg !4235
  %106 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4236
  %107 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %106, i32 0, i32 0, !dbg !4237
  %108 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %107, i32 0, i32 1, !dbg !4238
  %109 = load i64, i64* %108, align 8, !dbg !4238
  store i64 %109, i64* %15, align 8, !dbg !4235
  %110 = load i64, i64* %14, align 8, !dbg !4239
  %111 = add i64 %110, -1, !dbg !4239
  store i64 %111, i64* %14, align 8, !dbg !4239
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 %111, !dbg !4240
  store i8 0, i8* %112, align 1, !dbg !4241
  br label %113, !dbg !4242

113:                                              ; preds = %116, %98
  %114 = load i64, i64* %15, align 8, !dbg !4243
  %115 = icmp ne i64 %114, 0, !dbg !4242
  br i1 %115, label %116, label %129, !dbg !4242

116:                                              ; preds = %113
  call void @llvm.dbg.declare(metadata i64* %16, metadata !4244, metadata !DIExpression()), !dbg !4246
  %117 = load i64, i64* %15, align 8, !dbg !4247
  %118 = udiv i64 %117, 10, !dbg !4248
  store i64 %118, i64* %16, align 8, !dbg !4246
  %119 = load i64, i64* %15, align 8, !dbg !4249
  %120 = load i64, i64* %16, align 8, !dbg !4250
  %121 = mul i64 %120, 10, !dbg !4251
  %122 = sub i64 %119, %121, !dbg !4252
  %123 = add i64 48, %122, !dbg !4253
  %124 = trunc i64 %123 to i8, !dbg !4254
  %125 = load i64, i64* %14, align 8, !dbg !4255
  %126 = add i64 %125, -1, !dbg !4255
  store i64 %126, i64* %14, align 8, !dbg !4255
  %127 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 %126, !dbg !4256
  store i8 %124, i8* %127, align 1, !dbg !4257
  %128 = load i64, i64* %16, align 8, !dbg !4258
  store i64 %128, i64* %15, align 8, !dbg !4259
  br label %113, !dbg !4242, !llvm.loop !4260

129:                                              ; preds = %113
  %130 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4262
  %131 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %130, i32 0, i32 0, !dbg !4264
  %132 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %131, i32 0, i32 3, !dbg !4265
  %133 = load i8, i8* %132, align 8, !dbg !4265
  %134 = zext i8 %133 to i32, !dbg !4262
  %135 = and i32 %134, 8, !dbg !4266
  %136 = icmp ne i32 %135, 0, !dbg !4266
  br i1 %136, label %147, label %137, !dbg !4267

137:                                              ; preds = %129
  %138 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4268
  %139 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0, !dbg !4269
  %140 = load i64, i64* %14, align 8, !dbg !4270
  %141 = getelementptr inbounds i8, i8* %139, i64 %140, !dbg !4271
  %142 = load i64, i64* %14, align 8, !dbg !4272
  %143 = sub i64 511, %142, !dbg !4273
  %144 = call i32 @http1_on_header(%struct.http1_parser_s* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i64 0, i64 0), i64 14, i8* %141, i64 %143), !dbg !4274
  %145 = icmp ne i32 %144, 0, !dbg !4274
  br i1 %145, label %146, label %147, !dbg !4275

146:                                              ; preds = %137
  store i32 -1, i32* %5, align 4, !dbg !4276
  br label %264, !dbg !4276

147:                                              ; preds = %137, %129
  %148 = load i8**, i8*** %9, align 8, !dbg !4278
  %149 = load i8*, i8** %148, align 8, !dbg !4280
  %150 = getelementptr inbounds i8, i8* %149, i64 2, !dbg !4281
  %151 = load i8*, i8** %10, align 8, !dbg !4282
  %152 = icmp ule i8* %150, %151, !dbg !4283
  br i1 %152, label %153, label %193, !dbg !4284

153:                                              ; preds = %147
  %154 = load i8**, i8*** %9, align 8, !dbg !4285
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !4285
  %156 = load i8*, i8** %155, align 8, !dbg !4285
  %157 = getelementptr inbounds i8, i8* %156, i64 0, !dbg !4285
  %158 = load i8, i8* %157, align 1, !dbg !4285
  %159 = zext i8 %158 to i32, !dbg !4285
  %160 = icmp eq i32 %159, 13, !dbg !4286
  br i1 %160, label %169, label %161, !dbg !4287

161:                                              ; preds = %153
  %162 = load i8**, i8*** %9, align 8, !dbg !4288
  %163 = getelementptr inbounds i8*, i8** %162, i64 0, !dbg !4288
  %164 = load i8*, i8** %163, align 8, !dbg !4288
  %165 = getelementptr inbounds i8, i8* %164, i64 0, !dbg !4288
  %166 = load i8, i8* %165, align 1, !dbg !4288
  %167 = zext i8 %166 to i32, !dbg !4288
  %168 = icmp eq i32 %167, 10, !dbg !4289
  br i1 %168, label %169, label %193, !dbg !4290

169:                                              ; preds = %161, %153
  %170 = load i8**, i8*** %9, align 8, !dbg !4291
  %171 = getelementptr inbounds i8*, i8** %170, i64 0, !dbg !4291
  %172 = load i8*, i8** %171, align 8, !dbg !4291
  %173 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !4291
  %174 = load i8, i8* %173, align 1, !dbg !4291
  %175 = zext i8 %174 to i32, !dbg !4291
  %176 = icmp eq i32 %175, 13, !dbg !4292
  br i1 %176, label %185, label %177, !dbg !4293

177:                                              ; preds = %169
  %178 = load i8**, i8*** %9, align 8, !dbg !4294
  %179 = getelementptr inbounds i8*, i8** %178, i64 0, !dbg !4294
  %180 = load i8*, i8** %179, align 8, !dbg !4294
  %181 = getelementptr inbounds i8, i8* %180, i64 1, !dbg !4294
  %182 = load i8, i8* %181, align 1, !dbg !4294
  %183 = zext i8 %182 to i32, !dbg !4294
  %184 = icmp eq i32 %183, 10, !dbg !4295
  br label %185, !dbg !4293

185:                                              ; preds = %177, %169
  %186 = phi i1 [ true, %169 ], [ %184, %177 ]
  %187 = zext i1 %186 to i32, !dbg !4293
  %188 = add nsw i32 1, %187, !dbg !4296
  %189 = load i8**, i8*** %9, align 8, !dbg !4297
  %190 = load i8*, i8** %189, align 8, !dbg !4298
  %191 = sext i32 %188 to i64, !dbg !4298
  %192 = getelementptr inbounds i8, i8* %190, i64 %191, !dbg !4298
  store i8* %192, i8** %189, align 8, !dbg !4298
  br label %197, !dbg !4299

193:                                              ; preds = %161, %147
  %194 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4300
  %195 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %194, i32 0, i32 0, !dbg !4302
  %196 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %195, i32 0, i32 3, !dbg !4303
  store i8 9, i8* %196, align 8, !dbg !4304
  store i32 -2, i32* %5, align 4, !dbg !4305
  br label %264, !dbg !4305

197:                                              ; preds = %185
  %198 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4306
  %199 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %198, i32 0, i32 0, !dbg !4307
  %200 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %199, i32 0, i32 3, !dbg !4308
  %201 = load i8, i8* %200, align 8, !dbg !4309
  %202 = zext i8 %201 to i32, !dbg !4309
  %203 = or i32 %202, 4, !dbg !4309
  %204 = trunc i32 %203 to i8, !dbg !4309
  store i8 %204, i8* %200, align 8, !dbg !4309
  store i32 0, i32* %5, align 4, !dbg !4310
  br label %264, !dbg !4310

205:                                              ; preds = %83
  br label %206, !dbg !4311

206:                                              ; preds = %205, %27
  %207 = load i8**, i8*** %9, align 8, !dbg !4312
  %208 = load i8*, i8** %207, align 8, !dbg !4313
  %209 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4314
  %210 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %209, i32 0, i32 0, !dbg !4315
  %211 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %210, i32 0, i32 0, !dbg !4316
  %212 = load i64, i64* %211, align 8, !dbg !4316
  %213 = sub nsw i64 0, %212, !dbg !4317
  %214 = getelementptr inbounds i8, i8* %208, i64 %213, !dbg !4318
  store i8* %214, i8** %11, align 8, !dbg !4319
  %215 = load i8*, i8** %11, align 8, !dbg !4320
  %216 = load i8*, i8** %10, align 8, !dbg !4322
  %217 = icmp ugt i8* %215, %216, !dbg !4323
  br i1 %217, label %218, label %220, !dbg !4324

218:                                              ; preds = %206
  %219 = load i8*, i8** %10, align 8, !dbg !4325
  store i8* %219, i8** %11, align 8, !dbg !4326
  br label %220, !dbg !4327

220:                                              ; preds = %218, %206
  %221 = load i8*, i8** %11, align 8, !dbg !4328
  %222 = load i8**, i8*** %9, align 8, !dbg !4330
  %223 = load i8*, i8** %222, align 8, !dbg !4331
  %224 = icmp ugt i8* %221, %223, !dbg !4332
  br i1 %224, label %225, label %238, !dbg !4333

225:                                              ; preds = %220
  %226 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4334
  %227 = load i8**, i8*** %9, align 8, !dbg !4335
  %228 = load i8*, i8** %227, align 8, !dbg !4336
  %229 = load i8*, i8** %11, align 8, !dbg !4337
  %230 = load i8**, i8*** %9, align 8, !dbg !4338
  %231 = load i8*, i8** %230, align 8, !dbg !4339
  %232 = ptrtoint i8* %229 to i64, !dbg !4340
  %233 = ptrtoint i8* %231 to i64, !dbg !4340
  %234 = sub i64 %232, %233, !dbg !4340
  %235 = call i32 @http1_on_body_chunk(%struct.http1_parser_s* %226, i8* %228, i64 %234), !dbg !4341
  %236 = icmp ne i32 %235, 0, !dbg !4341
  br i1 %236, label %237, label %238, !dbg !4342

237:                                              ; preds = %225
  store i32 -1, i32* %5, align 4, !dbg !4343
  br label %264, !dbg !4343

238:                                              ; preds = %225, %220
  %239 = load i8*, i8** %11, align 8, !dbg !4345
  %240 = load i8**, i8*** %9, align 8, !dbg !4346
  %241 = load i8*, i8** %240, align 8, !dbg !4347
  %242 = ptrtoint i8* %239 to i64, !dbg !4348
  %243 = ptrtoint i8* %241 to i64, !dbg !4348
  %244 = sub i64 %242, %243, !dbg !4348
  %245 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4349
  %246 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %245, i32 0, i32 0, !dbg !4350
  %247 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %246, i32 0, i32 1, !dbg !4351
  %248 = load i64, i64* %247, align 8, !dbg !4352
  %249 = add nsw i64 %248, %244, !dbg !4352
  store i64 %249, i64* %247, align 8, !dbg !4352
  %250 = load i8*, i8** %11, align 8, !dbg !4353
  %251 = load i8**, i8*** %9, align 8, !dbg !4354
  %252 = load i8*, i8** %251, align 8, !dbg !4355
  %253 = ptrtoint i8* %250 to i64, !dbg !4356
  %254 = ptrtoint i8* %252 to i64, !dbg !4356
  %255 = sub i64 %253, %254, !dbg !4356
  %256 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8, !dbg !4357
  %257 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %256, i32 0, i32 0, !dbg !4358
  %258 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %257, i32 0, i32 0, !dbg !4359
  %259 = load i64, i64* %258, align 8, !dbg !4360
  %260 = add nsw i64 %259, %255, !dbg !4360
  store i64 %260, i64* %258, align 8, !dbg !4360
  %261 = load i8*, i8** %11, align 8, !dbg !4361
  %262 = load i8**, i8*** %9, align 8, !dbg !4362
  store i8* %261, i8** %262, align 8, !dbg !4363
  br label %22, !dbg !4143, !llvm.loop !4364

263:                                              ; preds = %22
  store i32 0, i32* %5, align 4, !dbg !4366
  br label %264, !dbg !4366

264:                                              ; preds = %263, %237, %197, %193, %146, %82, %69, %60, %38
  %265 = load i32, i32* %5, align 4, !dbg !4367
  ret i32 %265, !dbg !4367
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_body_chunk(%struct.http1_parser_s* %0, i8* %1, i64 %2) #0 !dbg !4368 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http1_parser_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.http1_parser_s** %5, metadata !4369, metadata !DIExpression()), !dbg !4370
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4371, metadata !DIExpression()), !dbg !4372
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4373, metadata !DIExpression()), !dbg !4374
  %8 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !4375
  %9 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %8, i32 0, i32 0, !dbg !4377
  %10 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %9, i32 0, i32 0, !dbg !4378
  %11 = load i64, i64* %10, align 8, !dbg !4378
  %12 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !4379
  %13 = ptrtoint %struct.http1_parser_s* %12 to i64, !dbg !4379
  %14 = sub i64 %13, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !4379
  %15 = inttoptr i64 %14 to %struct.http1pr_s*, !dbg !4379
  %16 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %15, i32 0, i32 0, !dbg !4380
  %17 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %16, i32 0, i32 2, !dbg !4381
  %18 = load %struct.http_settings_s*, %struct.http_settings_s** %17, align 8, !dbg !4381
  %19 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %18, i32 0, i32 8, !dbg !4382
  %20 = load i64, i64* %19, align 8, !dbg !4382
  %21 = icmp sgt i64 %11, %20, !dbg !4383
  br i1 %21, label %37, label %22, !dbg !4384

22:                                               ; preds = %3
  %23 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !4385
  %24 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %23, i32 0, i32 0, !dbg !4386
  %25 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %24, i32 0, i32 1, !dbg !4387
  %26 = load i64, i64* %25, align 8, !dbg !4387
  %27 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !4388
  %28 = ptrtoint %struct.http1_parser_s* %27 to i64, !dbg !4388
  %29 = sub i64 %28, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !4388
  %30 = inttoptr i64 %29 to %struct.http1pr_s*, !dbg !4388
  %31 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %30, i32 0, i32 0, !dbg !4389
  %32 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %31, i32 0, i32 2, !dbg !4390
  %33 = load %struct.http_settings_s*, %struct.http_settings_s** %32, align 8, !dbg !4390
  %34 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %33, i32 0, i32 8, !dbg !4391
  %35 = load i64, i64* %34, align 8, !dbg !4391
  %36 = icmp sgt i64 %26, %35, !dbg !4392
  br i1 %36, label %37, label %44, !dbg !4393

37:                                               ; preds = %22, %3
  %38 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !4394
  %39 = ptrtoint %struct.http1_parser_s* %38 to i64, !dbg !4394
  %40 = sub i64 %39, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !4394
  %41 = inttoptr i64 %40 to %struct.http1pr_s*, !dbg !4394
  %42 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %41, i32 0, i32 2, !dbg !4394
  %43 = call i32 @http_send_error(%struct.http_s* %42, i64 413), !dbg !4396
  store i32 -1, i32* %4, align 4, !dbg !4397
  br label %90, !dbg !4397

44:                                               ; preds = %22
  %45 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !4398
  %46 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %45, i32 0, i32 0, !dbg !4400
  %47 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %46, i32 0, i32 1, !dbg !4401
  %48 = load i64, i64* %47, align 8, !dbg !4401
  %49 = icmp ne i64 %48, 0, !dbg !4398
  br i1 %49, label %79, label %50, !dbg !4402

50:                                               ; preds = %44
  %51 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !4403
  %52 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %51, i32 0, i32 0, !dbg !4406
  %53 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %52, i32 0, i32 0, !dbg !4407
  %54 = load i64, i64* %53, align 8, !dbg !4407
  %55 = icmp sgt i64 %54, 0, !dbg !4408
  br i1 %55, label %56, label %70, !dbg !4409

56:                                               ; preds = %50
  %57 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !4410
  %58 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %57, i32 0, i32 0, !dbg !4411
  %59 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %58, i32 0, i32 0, !dbg !4412
  %60 = load i64, i64* %59, align 8, !dbg !4412
  %61 = icmp sle i64 %60, 8192, !dbg !4413
  br i1 %61, label %62, label %70, !dbg !4414

62:                                               ; preds = %56
  %63 = call i64 @fiobj_data_newstr(), !dbg !4415
  %64 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !4417
  %65 = ptrtoint %struct.http1_parser_s* %64 to i64, !dbg !4417
  %66 = sub i64 %65, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !4417
  %67 = inttoptr i64 %66 to %struct.http1pr_s*, !dbg !4417
  %68 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %67, i32 0, i32 2, !dbg !4417
  %69 = getelementptr inbounds %struct.http_s, %struct.http_s* %68, i32 0, i32 11, !dbg !4418
  store i64 %63, i64* %69, align 8, !dbg !4419
  br label %78, !dbg !4420

70:                                               ; preds = %56, %50
  %71 = call i64 @fiobj_data_newtmpfile(), !dbg !4421
  %72 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !4423
  %73 = ptrtoint %struct.http1_parser_s* %72 to i64, !dbg !4423
  %74 = sub i64 %73, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !4423
  %75 = inttoptr i64 %74 to %struct.http1pr_s*, !dbg !4423
  %76 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %75, i32 0, i32 2, !dbg !4423
  %77 = getelementptr inbounds %struct.http_s, %struct.http_s* %76, i32 0, i32 11, !dbg !4424
  store i64 %71, i64* %77, align 8, !dbg !4425
  br label %78

78:                                               ; preds = %70, %62
  br label %79, !dbg !4426

79:                                               ; preds = %78, %44
  %80 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8, !dbg !4427
  %81 = ptrtoint %struct.http1_parser_s* %80 to i64, !dbg !4427
  %82 = sub i64 %81, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64), !dbg !4427
  %83 = inttoptr i64 %82 to %struct.http1pr_s*, !dbg !4427
  %84 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %83, i32 0, i32 2, !dbg !4427
  %85 = getelementptr inbounds %struct.http_s, %struct.http_s* %84, i32 0, i32 11, !dbg !4428
  %86 = load i64, i64* %85, align 8, !dbg !4428
  %87 = load i8*, i8** %6, align 8, !dbg !4429
  %88 = load i64, i64* %7, align 8, !dbg !4430
  %89 = call i64 @fiobj_data_write(i64 %86, i8* %87, i64 %88), !dbg !4431
  store i32 0, i32* %4, align 4, !dbg !4432
  br label %90, !dbg !4432

90:                                               ; preds = %79, %37
  %91 = load i32, i32* %4, align 4, !dbg !4433
  ret i32 %91, !dbg !4433
}

declare dso_local i64 @fiobj_data_newstr() #5

declare dso_local i64 @fiobj_data_newtmpfile() #5

declare dso_local i64 @fiobj_data_write(i64, i8*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http1_atol16(i8* %0, i8** %1) #0 !dbg !4434 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4435, metadata !DIExpression()), !dbg !4436
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !4437, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4439, metadata !DIExpression()), !dbg !4440
  store i64 0, i64* %5, align 8, !dbg !4440
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4441, metadata !DIExpression()), !dbg !4442
  store i8 0, i8* %6, align 1, !dbg !4442
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4443, metadata !DIExpression()), !dbg !4445
  store i32 0, i32* %7, align 4, !dbg !4445
  br label %10, !dbg !4446

10:                                               ; preds = %33, %2
  %11 = load i8*, i8** %3, align 8, !dbg !4447
  %12 = load i8, i8* %11, align 1, !dbg !4449
  %13 = zext i8 %12 to i32, !dbg !4449
  %14 = icmp eq i32 %13, 32, !dbg !4450
  br i1 %14, label %25, label %15, !dbg !4451

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8, !dbg !4452
  %17 = load i8, i8* %16, align 1, !dbg !4453
  %18 = zext i8 %17 to i32, !dbg !4453
  %19 = icmp eq i32 %18, 9, !dbg !4454
  br i1 %19, label %25, label %20, !dbg !4455

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8, !dbg !4456
  %22 = load i8, i8* %21, align 1, !dbg !4457
  %23 = zext i8 %22 to i32, !dbg !4457
  %24 = icmp eq i32 %23, 12, !dbg !4458
  br i1 %24, label %25, label %28, !dbg !4459

25:                                               ; preds = %20, %15, %10
  %26 = load i32, i32* %7, align 4, !dbg !4460
  %27 = icmp slt i32 %26, 32, !dbg !4461
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i1 [ false, %20 ], [ %27, %25 ], !dbg !4462
  br i1 %29, label %30, label %36, !dbg !4463

30:                                               ; preds = %28
  %31 = load i8*, i8** %3, align 8, !dbg !4464
  %32 = getelementptr inbounds i8, i8* %31, i32 1, !dbg !4464
  store i8* %32, i8** %3, align 8, !dbg !4464
  br label %33, !dbg !4464

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4, !dbg !4465
  %35 = add nsw i32 %34, 1, !dbg !4465
  store i32 %35, i32* %7, align 4, !dbg !4465
  br label %10, !dbg !4466, !llvm.loop !4467

36:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4469, metadata !DIExpression()), !dbg !4471
  store i32 0, i32* %8, align 4, !dbg !4471
  br label %37, !dbg !4472

37:                                               ; preds = %63, %36
  %38 = load i8*, i8** %3, align 8, !dbg !4473
  %39 = load i8, i8* %38, align 1, !dbg !4475
  %40 = zext i8 %39 to i32, !dbg !4475
  %41 = icmp eq i32 %40, 45, !dbg !4476
  br i1 %41, label %47, label %42, !dbg !4477

42:                                               ; preds = %37
  %43 = load i8*, i8** %3, align 8, !dbg !4478
  %44 = load i8, i8* %43, align 1, !dbg !4479
  %45 = zext i8 %44 to i32, !dbg !4479
  %46 = icmp eq i32 %45, 43, !dbg !4480
  br i1 %46, label %47, label %50, !dbg !4481

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %8, align 4, !dbg !4482
  %49 = icmp slt i32 %48, 32, !dbg !4483
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i1 [ false, %42 ], [ %49, %47 ], !dbg !4484
  br i1 %51, label %52, label %66, !dbg !4485

52:                                               ; preds = %50
  %53 = load i8*, i8** %3, align 8, !dbg !4486
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !4486
  store i8* %54, i8** %3, align 8, !dbg !4486
  %55 = load i8, i8* %53, align 1, !dbg !4487
  %56 = zext i8 %55 to i32, !dbg !4487
  %57 = icmp eq i32 %56, 45, !dbg !4488
  %58 = zext i1 %57 to i32, !dbg !4488
  %59 = load i8, i8* %6, align 1, !dbg !4489
  %60 = zext i8 %59 to i32, !dbg !4489
  %61 = xor i32 %60, %58, !dbg !4489
  %62 = trunc i32 %61 to i8, !dbg !4489
  store i8 %62, i8* %6, align 1, !dbg !4489
  br label %63, !dbg !4490

63:                                               ; preds = %52
  %64 = load i32, i32* %8, align 4, !dbg !4491
  %65 = add nsw i32 %64, 1, !dbg !4491
  store i32 %65, i32* %8, align 4, !dbg !4491
  br label %37, !dbg !4492, !llvm.loop !4493

66:                                               ; preds = %50
  %67 = load i8*, i8** %3, align 8, !dbg !4495
  %68 = load i8, i8* %67, align 1, !dbg !4497
  %69 = zext i8 %68 to i32, !dbg !4497
  %70 = icmp eq i32 %69, 48, !dbg !4498
  br i1 %70, label %71, label %74, !dbg !4499

71:                                               ; preds = %66
  %72 = load i8*, i8** %3, align 8, !dbg !4500
  %73 = getelementptr inbounds i8, i8* %72, i32 1, !dbg !4500
  store i8* %73, i8** %3, align 8, !dbg !4500
  br label %74, !dbg !4500

74:                                               ; preds = %71, %66
  %75 = load i8*, i8** %3, align 8, !dbg !4501
  %76 = load i8, i8* %75, align 1, !dbg !4503
  %77 = zext i8 %76 to i32, !dbg !4503
  %78 = or i32 %77, 32, !dbg !4504
  %79 = icmp eq i32 %78, 120, !dbg !4505
  br i1 %79, label %80, label %83, !dbg !4506

80:                                               ; preds = %74
  %81 = load i8*, i8** %3, align 8, !dbg !4507
  %82 = getelementptr inbounds i8, i8* %81, i32 1, !dbg !4507
  store i8* %82, i8** %3, align 8, !dbg !4507
  br label %83, !dbg !4507

83:                                               ; preds = %80, %74
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4508, metadata !DIExpression()), !dbg !4510
  store i32 0, i32* %9, align 4, !dbg !4510
  br label %84, !dbg !4511

84:                                               ; preds = %97, %83
  %85 = load i8*, i8** %3, align 8, !dbg !4512
  %86 = load i8, i8* %85, align 1, !dbg !4514
  %87 = zext i8 %86 to i32, !dbg !4514
  %88 = icmp eq i32 %87, 48, !dbg !4515
  br i1 %88, label %89, label %92, !dbg !4516

89:                                               ; preds = %84
  %90 = load i32, i32* %9, align 4, !dbg !4517
  %91 = icmp slt i32 %90, 32, !dbg !4518
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi i1 [ false, %84 ], [ %91, %89 ], !dbg !4519
  br i1 %93, label %94, label %100, !dbg !4520

94:                                               ; preds = %92
  %95 = load i8*, i8** %3, align 8, !dbg !4521
  %96 = getelementptr inbounds i8, i8* %95, i32 1, !dbg !4521
  store i8* %96, i8** %3, align 8, !dbg !4521
  br label %97, !dbg !4521

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4, !dbg !4522
  %99 = add nsw i32 %98, 1, !dbg !4522
  store i32 %99, i32* %9, align 4, !dbg !4522
  br label %84, !dbg !4523, !llvm.loop !4524

100:                                              ; preds = %92
  br label %101, !dbg !4526

101:                                              ; preds = %151, %100
  %102 = load i64, i64* %5, align 8, !dbg !4527
  %103 = and i64 %102, -1152921504606846976, !dbg !4528
  %104 = icmp ne i64 %103, 0, !dbg !4529
  %105 = xor i1 %104, true, !dbg !4529
  br i1 %105, label %106, label %154, !dbg !4526

106:                                              ; preds = %101
  %107 = load i8*, i8** %3, align 8, !dbg !4530
  %108 = load i8, i8* %107, align 1, !dbg !4533
  %109 = zext i8 %108 to i32, !dbg !4533
  %110 = icmp sge i32 %109, 48, !dbg !4534
  br i1 %110, label %111, label %126, !dbg !4535

111:                                              ; preds = %106
  %112 = load i8*, i8** %3, align 8, !dbg !4536
  %113 = load i8, i8* %112, align 1, !dbg !4537
  %114 = zext i8 %113 to i32, !dbg !4537
  %115 = icmp sle i32 %114, 57, !dbg !4538
  br i1 %115, label %116, label %126, !dbg !4539

116:                                              ; preds = %111
  %117 = load i64, i64* %5, align 8, !dbg !4540
  %118 = shl i64 %117, 4, !dbg !4540
  store i64 %118, i64* %5, align 8, !dbg !4540
  %119 = load i8*, i8** %3, align 8, !dbg !4542
  %120 = load i8, i8* %119, align 1, !dbg !4543
  %121 = zext i8 %120 to i32, !dbg !4543
  %122 = sub nsw i32 %121, 48, !dbg !4544
  %123 = sext i32 %122 to i64, !dbg !4543
  %124 = load i64, i64* %5, align 8, !dbg !4545
  %125 = or i64 %124, %123, !dbg !4545
  store i64 %125, i64* %5, align 8, !dbg !4545
  br label %151, !dbg !4546

126:                                              ; preds = %111, %106
  %127 = load i8*, i8** %3, align 8, !dbg !4547
  %128 = load i8, i8* %127, align 1, !dbg !4549
  %129 = zext i8 %128 to i32, !dbg !4549
  %130 = or i32 %129, 32, !dbg !4550
  %131 = icmp sge i32 %130, 97, !dbg !4551
  br i1 %131, label %132, label %149, !dbg !4552

132:                                              ; preds = %126
  %133 = load i8*, i8** %3, align 8, !dbg !4553
  %134 = load i8, i8* %133, align 1, !dbg !4554
  %135 = zext i8 %134 to i32, !dbg !4554
  %136 = or i32 %135, 32, !dbg !4555
  %137 = icmp sle i32 %136, 102, !dbg !4556
  br i1 %137, label %138, label %149, !dbg !4557

138:                                              ; preds = %132
  %139 = load i64, i64* %5, align 8, !dbg !4558
  %140 = shl i64 %139, 4, !dbg !4558
  store i64 %140, i64* %5, align 8, !dbg !4558
  %141 = load i8*, i8** %3, align 8, !dbg !4560
  %142 = load i8, i8* %141, align 1, !dbg !4561
  %143 = zext i8 %142 to i32, !dbg !4561
  %144 = or i32 %143, 32, !dbg !4562
  %145 = sub nsw i32 %144, 87, !dbg !4563
  %146 = sext i32 %145 to i64, !dbg !4564
  %147 = load i64, i64* %5, align 8, !dbg !4565
  %148 = or i64 %147, %146, !dbg !4565
  store i64 %148, i64* %5, align 8, !dbg !4565
  br label %150, !dbg !4566

149:                                              ; preds = %132, %126
  br label %154, !dbg !4567

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150, %116
  %152 = load i8*, i8** %3, align 8, !dbg !4568
  %153 = getelementptr inbounds i8, i8* %152, i32 1, !dbg !4568
  store i8* %153, i8** %3, align 8, !dbg !4568
  br label %101, !dbg !4526, !llvm.loop !4569

154:                                              ; preds = %149, %101
  %155 = load i8, i8* %6, align 1, !dbg !4571
  %156 = icmp ne i8 %155, 0, !dbg !4571
  br i1 %156, label %157, label %160, !dbg !4573

157:                                              ; preds = %154
  %158 = load i64, i64* %5, align 8, !dbg !4574
  %159 = sub i64 0, %158, !dbg !4575
  store i64 %159, i64* %5, align 8, !dbg !4576
  br label %160, !dbg !4577

160:                                              ; preds = %157, %154
  %161 = load i8**, i8*** %4, align 8, !dbg !4578
  %162 = icmp ne i8** %161, null, !dbg !4578
  br i1 %162, label %163, label %166, !dbg !4580

163:                                              ; preds = %160
  %164 = load i8*, i8** %3, align 8, !dbg !4581
  %165 = load i8**, i8*** %4, align 8, !dbg !4582
  store i8* %164, i8** %165, align 8, !dbg !4583
  br label %166, !dbg !4584

166:                                              ; preds = %163, %160
  %167 = load i64, i64* %5, align 8, !dbg !4585
  ret i64 %167, !dbg !4586
}

declare dso_local void @http_on_response_handler______internal(%struct.http_s*, %struct.http_settings_s*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h1_reset(%struct.http1pr_s* %0) #0 !dbg !4587 {
  %2 = alloca %struct.http1pr_s*, align 8
  store %struct.http1pr_s* %0, %struct.http1pr_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.http1pr_s** %2, metadata !4590, metadata !DIExpression()), !dbg !4591
  %3 = load %struct.http1pr_s*, %struct.http1pr_s** %2, align 8, !dbg !4592
  %4 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %3, i32 0, i32 5, !dbg !4593
  store i64 0, i64* %4, align 8, !dbg !4594
  ret void, !dbg !4595
}

declare dso_local i32 @fio_is_closed(i64) #5

declare dso_local void @http_on_request_handler______internal(%struct.http_s*, %struct.http_settings_s*) #5

declare dso_local i64 @fiobj_hash_new() #5

declare dso_local void @http_write_log(%struct.http_s*) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind willreturn }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!335, !336, !337}
!llvm.ident = !{!338}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "HTTP1_VTABLE", scope: !2, file: !3, line: 529, type: !231, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !302, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "http1.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fio_io_event", file: !6, line: 654, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../include/fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "FIO_EVENT_ON_DATA", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "FIO_EVENT_ON_READY", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "FIO_EVENT_ON_TIMEOUT", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 50, baseType: !14, size: 8, elements: !15)
!13 = !DIFile(filename: "../include/fiobject.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!16 = !DIEnumerator(name: "FIOBJ_T_NUMBER", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "FIOBJ_T_NULL", value: 6, isUnsigned: true)
!18 = !DIEnumerator(name: "FIOBJ_T_TRUE", value: 22, isUnsigned: true)
!19 = !DIEnumerator(name: "FIOBJ_T_FALSE", value: 38, isUnsigned: true)
!20 = !DIEnumerator(name: "FIOBJ_T_FLOAT", value: 39, isUnsigned: true)
!21 = !DIEnumerator(name: "FIOBJ_T_STRING", value: 40, isUnsigned: true)
!22 = !DIEnumerator(name: "FIOBJ_T_ARRAY", value: 41, isUnsigned: true)
!23 = !DIEnumerator(name: "FIOBJ_T_HASH", value: 42, isUnsigned: true)
!24 = !DIEnumerator(name: "FIOBJ_T_DATA", value: 43, isUnsigned: true)
!25 = !DIEnumerator(name: "FIOBJ_T_UNKNOWN", value: 44, isUnsigned: true)
!26 = !{!27, !28, !163, !45, !165, !166, !84, !86, !167, !168, !176, !110, !204, !210, !238, !150, !61, !47, !146, !299}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "http1pr_s", file: !3, line: 32, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "http1pr_s", file: !3, line: 21, size: 2048, elements: !31)
!31 = !{!32, !135, !152, !153, !154, !155, !156, !157, !158, !159}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !30, file: !3, line: 22, baseType: !33, size: 512)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "http_fio_protocol_s", file: !34, line: 25, baseType: !35)
!34 = !DIFile(filename: "../include/http_internal.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "http_fio_protocol_s", file: !34, line: 61, size: 512, elements: !36)
!36 = !{!37, !64, !65}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !35, file: !34, line: 62, baseType: !38, size: 384)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_protocol_s", file: !6, line: 544, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_protocol_s", file: !6, line: 561, size: 384, elements: !40)
!40 = !{!41, !49, !50, !58, !59, !60}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "on_data", scope: !39, file: !6, line: 563, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !48}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !46, line: 87, baseType: !47)
!46 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!47 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "on_ready", scope: !39, file: !6, line: 565, baseType: !42, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "on_shutdown", scope: !39, file: !6, line: 584, baseType: !51, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !45, !48}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !55, line: 24, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !57, line: 38, baseType: !14)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!58 = !DIDerivedType(tag: DW_TAG_member, name: "on_close", scope: !39, file: !6, line: 586, baseType: !42, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !39, file: !6, line: 588, baseType: !42, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !39, file: !6, line: 590, baseType: !61, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 46, baseType: !63)
!62 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!63 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !35, file: !34, line: 63, baseType: !45, size: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "settings", scope: !35, file: !34, line: 64, baseType: !66, size: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "http_settings_s", file: !68, line: 62, baseType: !69)
!68 = !DIFile(filename: "../include/http.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "http_settings_s", file: !68, line: 318, size: 1024, elements: !70)
!70 = !{!71, !106, !112, !113, !118, !119, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "on_request", scope: !69, file: !68, line: 320, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "http_s", file: !68, line: 121, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 74, size: 1024, elements: !78)
!78 = !{!79, !87, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !77, file: !68, line: 83, baseType: !80, size: 192)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !68, line: 76, size: 192, elements: !81)
!81 = !{!82, !83, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "vtbl", scope: !80, file: !68, line: 78, baseType: !27, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !80, file: !68, line: 80, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !46, line: 90, baseType: !63)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "out_headers", scope: !80, file: !68, line: 82, baseType: !86, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "FIOBJ", file: !13, line: 63, baseType: !84)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "received_at", scope: !77, file: !68, line: 85, baseType: !88, size: 128, offset: 192)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !89, line: 10, size: 128, elements: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!90 = !{!91, !93}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !88, file: !89, line: 12, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !57, line: 160, baseType: !47)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !88, file: !89, line: 16, baseType: !94, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !57, line: 196, baseType: !47)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !77, file: !68, line: 87, baseType: !86, size: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "status_str", scope: !77, file: !68, line: 89, baseType: !86, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !77, file: !68, line: 91, baseType: !86, size: 64, offset: 448)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !77, file: !68, line: 96, baseType: !84, size: 64, offset: 512)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !77, file: !68, line: 98, baseType: !86, size: 64, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !77, file: !68, line: 100, baseType: !86, size: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !77, file: !68, line: 103, baseType: !86, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !77, file: !68, line: 108, baseType: !86, size: 64, offset: 768)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !77, file: !68, line: 113, baseType: !86, size: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !77, file: !68, line: 118, baseType: !86, size: 64, offset: 896)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "udata", scope: !77, file: !68, line: 120, baseType: !27, size: 64, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "on_upgrade", scope: !69, file: !68, line: 326, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !75, !110, !61}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "on_response", scope: !69, file: !68, line: 328, baseType: !72, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "on_finish", scope: !69, file: !68, line: 330, baseType: !114, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "udata", scope: !69, file: !68, line: 332, baseType: !27, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "public_folder", scope: !69, file: !68, line: 339, baseType: !120, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "public_folder_length", scope: !69, file: !68, line: 343, baseType: !61, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "max_header_size", scope: !69, file: !68, line: 353, baseType: !61, size: 64, offset: 448)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "max_body_size", scope: !69, file: !68, line: 359, baseType: !61, size: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "max_clients", scope: !69, file: !68, line: 372, baseType: !45, size: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !69, file: !68, line: 374, baseType: !27, size: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !69, file: !68, line: 376, baseType: !45, size: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !69, file: !68, line: 378, baseType: !45, size: 64, offset: 768)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !69, file: !68, line: 380, baseType: !45, size: 64, offset: 832)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ws_max_msg_size", scope: !69, file: !68, line: 385, baseType: !61, size: 64, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !69, file: !68, line: 393, baseType: !54, size: 8, offset: 960)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ws_timeout", scope: !69, file: !68, line: 401, baseType: !54, size: 8, offset: 968)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !69, file: !68, line: 403, baseType: !54, size: 8, offset: 976)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "is_client", scope: !69, file: !68, line: 405, baseType: !54, size: 8, offset: 984)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "parser", scope: !30, file: !3, line: 23, baseType: !136, size: 256, offset: 512)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "http1_parser_s", file: !137, line: 66, baseType: !138)
!137 = !DIFile(filename: "../include/http1_parser.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "http1_parser_s", file: !137, line: 59, size: 256, elements: !139)
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !138, file: !137, line: 65, baseType: !141, size: 256)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "http1_parser_protected_read_only_state_s", file: !137, line: 60, size: 256, elements: !142)
!142 = !{!143, !145, !149, !151}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !141, file: !137, line: 61, baseType: !144, size: 64)
!144 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !141, file: !137, line: 62, baseType: !146, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !147, line: 77, baseType: !148)
!147 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !57, line: 193, baseType: !47)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !137, line: 63, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !141, file: !137, line: 64, baseType: !54, size: 8, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !30, file: !3, line: 24, baseType: !76, size: 1024, offset: 768)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !30, file: !3, line: 25, baseType: !84, size: 64, offset: 1792)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "max_header_size", scope: !30, file: !3, line: 26, baseType: !84, size: 64, offset: 1856)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !30, file: !3, line: 27, baseType: !84, size: 64, offset: 1920)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !30, file: !3, line: 28, baseType: !54, size: 8, offset: 1984)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "is_client", scope: !30, file: !3, line: 29, baseType: !54, size: 8, offset: 1992)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !30, file: !3, line: 30, baseType: !54, size: 8, offset: 2000)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !30, file: !3, line: 31, baseType: !160, offset: 2008)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: -1)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !55, line: 27, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !57, line: 45, baseType: !63)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_type_enum", file: !13, line: 61, baseType: !12)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_header_s", file: !13, line: 332, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 327, size: 64, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !13, line: 329, baseType: !165, size: 8)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !170, file: !13, line: 331, baseType: !174, size: 32, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !55, line: 26, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !57, line: 42, baseType: !7)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "websocket_settings_s", file: !68, line: 546, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 503, size: 384, elements: !179)
!179 = !{!180, !193, !197, !198, !199, !203}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "on_message", scope: !178, file: !68, line: 512, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !184, !187, !54}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "ws_s", file: !68, line: 497, baseType: !186)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "ws_s", file: !68, line: 497, flags: DIFlagFwdDecl)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_str_info_s", file: !6, line: 287, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_str_info_s", file: !6, line: 283, size: 192, elements: !189)
!189 = !{!190, !191, !192}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !188, file: !6, line: 284, baseType: !61, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !188, file: !6, line: 285, baseType: !61, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !188, file: !6, line: 286, baseType: !110, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "on_open", scope: !178, file: !68, line: 518, baseType: !194, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !184}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "on_ready", scope: !178, file: !68, line: 525, baseType: !194, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "on_shutdown", scope: !178, file: !68, line: 531, baseType: !194, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "on_close", scope: !178, file: !68, line: 543, baseType: !200, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !45, !27}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "udata", scope: !178, file: !68, line: 545, baseType: !27, size: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "http1_sse_fio_protocol_s", file: !3, line: 428, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 425, size: 448, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !206, file: !3, line: 426, baseType: !38, size: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !206, file: !3, line: 427, baseType: !210, size: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "http_sse_internal_s", file: !34, line: 163, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "http_sse_internal_s", file: !34, line: 155, size: 832, elements: !213)
!213 = !{!214, !227, !228, !284, !285, !295, !298}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !212, file: !34, line: 156, baseType: !215, size: 320)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "http_sse_s", file: !68, line: 604, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "http_sse_s", file: !68, line: 610, size: 320, elements: !217)
!217 = !{!218, !223, !224, !225, !226}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "on_open", scope: !216, file: !68, line: 615, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !222}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "on_ready", scope: !216, file: !68, line: 622, baseType: !219, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "on_shutdown", scope: !216, file: !68, line: 627, baseType: !219, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "on_close", scope: !216, file: !68, line: 635, baseType: !219, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "udata", scope: !216, file: !68, line: 637, baseType: !27, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !212, file: !34, line: 157, baseType: !45, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !212, file: !34, line: 158, baseType: !229, size: 64, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "http_vtable_s", file: !34, line: 26, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "http_vtable_s", file: !34, line: 28, size: 832, elements: !232)
!232 = !{!233, !239, !244, !245, !247, !252, !257, !262, !266, !267, !272, !276, !280}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "http_send_body", scope: !231, file: !34, line: 30, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!238, !75, !27, !84}
!238 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "http_sendfile", scope: !231, file: !34, line: 32, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!238, !75, !238, !84, !84}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "http_stream", scope: !231, file: !34, line: 35, baseType: !234, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "http_finish", scope: !231, file: !34, line: 37, baseType: !246, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "http_push_data", scope: !231, file: !34, line: 39, baseType: !248, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!238, !75, !27, !84, !86}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "http2websocket", scope: !231, file: !34, line: 42, baseType: !253, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!238, !75, !176}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "http_push_file", scope: !231, file: !34, line: 44, baseType: !258, size: 64, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!238, !75, !86, !86}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "http_on_pause", scope: !231, file: !34, line: 46, baseType: !263, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !75, !167}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "http_on_resume", scope: !231, file: !34, line: 49, baseType: !263, size: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "http_hijack", scope: !231, file: !34, line: 51, baseType: !268, size: 64, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!45, !75, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "http_upgrade2sse", scope: !231, file: !34, line: 54, baseType: !273, size: 64, offset: 640)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!238, !75, !222}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "http_sse_write", scope: !231, file: !34, line: 56, baseType: !277, size: 64, offset: 704)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!238, !222, !86}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "http_sse_close", scope: !231, file: !34, line: 58, baseType: !281, size: 64, offset: 768)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!238, !222}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !212, file: !34, line: 159, baseType: !84, size: 64, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "subscriptions", scope: !212, file: !34, line: 160, baseType: !286, size: 192, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_ls_s", file: !6, line: 3141, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_ls_s", file: !6, line: 3137, size: 192, elements: !288)
!288 = !{!289, !291, !292}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !287, file: !6, line: 3138, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !6, line: 3139, baseType: !290, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !287, file: !6, line: 3140, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !212, file: !34, line: 161, baseType: !296, size: 8, offset: 704)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_lock_i", file: !6, line: 2060, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !212, file: !34, line: 162, baseType: !61, size: 64, offset: 768)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!302 = !{!0, !303, !305, !307, !309, !315, !317, !325, !331, !333}
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "FIO_LOG_LEVEL", scope: !2, file: !6, line: 433, type: !238, isLocal: false, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker1", scope: !2, file: !6, line: 2433, type: !54, isLocal: false, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker2", scope: !2, file: !6, line: 2434, type: !54, isLocal: false, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "connection_hash", scope: !311, file: !3, line: 102, type: !84, isLocal: true, isDefinition: true)
!311 = distinct !DISubprogram(name: "headers2str", scope: !3, file: !3, line: 98, type: !312, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{!86, !75, !84}
!314 = !{}
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(name: "host_hash", scope: !311, file: !3, line: 157, type: !163, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "status2str", scope: !319, file: !3, line: 834, type: !322, isLocal: true, isDefinition: true)
!319 = distinct !DISubprogram(name: "http1pr_status2str", scope: !3, file: !3, line: 833, type: !320, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!320 = !DISubroutineType(types: !321)
!321 = !{!187, !84}
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 79104, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 412)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "ws_key_accpt_str", scope: !327, file: !3, line: 325, type: !328, isLocal: true, isDefinition: true)
!327 = distinct !DISubprogram(name: "http1_http2websocket_server", scope: !3, file: !3, line: 323, type: !255, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 296, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 37)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "sec_version", scope: !327, file: !3, line: 326, type: !84, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "sec_key", scope: !327, file: !3, line: 327, type: !84, isLocal: true, isDefinition: true)
!335 = !{i32 7, !"Dwarf Version", i32 4}
!336 = !{i32 2, !"Debug Info Version", i32 3}
!337 = !{i32 1, !"wchar_size", i32 4}
!338 = !{!"clang version 10.0.0-4ubuntu1 "}
!339 = distinct !DISubprogram(name: "FIO_LOG2STDERR", scope: !6, file: !6, line: 437, type: !340, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !314)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !120, null}
!342 = !DILocalVariable(name: "format", arg: 1, scope: !339, file: !6, line: 437, type: !120)
!343 = !DILocation(line: 437, column: 28, scope: !339)
!344 = !DILocalVariable(name: "tmp___log", scope: !339, file: !6, line: 438, type: !345)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 16384, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 2048)
!348 = !DILocation(line: 438, column: 8, scope: !339)
!349 = !DILocalVariable(name: "argv", scope: !339, file: !6, line: 439, type: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !147, line: 52, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !352, line: 32, baseType: !353)
!352 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 439, baseType: !354)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 192, elements: !361)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 439, size: 192, elements: !356)
!356 = !{!357, !358, !359, !360}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !355, file: !3, line: 439, baseType: !7, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !355, file: !3, line: 439, baseType: !7, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !355, file: !3, line: 439, baseType: !27, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !355, file: !3, line: 439, baseType: !27, size: 64, offset: 128)
!361 = !{!362}
!362 = !DISubrange(count: 1)
!363 = !DILocation(line: 439, column: 11, scope: !339)
!364 = !DILocation(line: 440, column: 3, scope: !339)
!365 = !DILocalVariable(name: "len___log", scope: !339, file: !6, line: 441, type: !238)
!366 = !DILocation(line: 441, column: 7, scope: !339)
!367 = !DILocation(line: 441, column: 29, scope: !339)
!368 = !DILocation(line: 441, column: 66, scope: !339)
!369 = !DILocation(line: 441, column: 74, scope: !339)
!370 = !DILocation(line: 441, column: 19, scope: !339)
!371 = !DILocation(line: 442, column: 3, scope: !339)
!372 = !DILocation(line: 443, column: 7, scope: !373)
!373 = distinct !DILexicalBlock(scope: !339, file: !6, line: 443, column: 7)
!374 = !DILocation(line: 443, column: 17, scope: !373)
!375 = !DILocation(line: 443, column: 22, scope: !373)
!376 = !DILocation(line: 443, column: 25, scope: !373)
!377 = !DILocation(line: 443, column: 35, scope: !373)
!378 = !DILocation(line: 443, column: 7, scope: !339)
!379 = !DILocation(line: 444, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !6, line: 444, column: 9)
!381 = distinct !DILexicalBlock(scope: !373, file: !6, line: 443, column: 64)
!382 = !DILocation(line: 444, column: 19, scope: !380)
!383 = !DILocation(line: 444, column: 9, scope: !381)
!384 = !DILocation(line: 445, column: 14, scope: !385)
!385 = distinct !DILexicalBlock(scope: !380, file: !6, line: 444, column: 48)
!386 = !DILocation(line: 445, column: 24, scope: !385)
!387 = !DILocation(line: 445, column: 7, scope: !385)
!388 = !DILocation(line: 447, column: 17, scope: !385)
!389 = !DILocation(line: 448, column: 5, scope: !385)
!390 = !DILocation(line: 449, column: 65, scope: !391)
!391 = distinct !DILexicalBlock(scope: !380, file: !6, line: 448, column: 12)
!392 = !DILocation(line: 449, column: 7, scope: !391)
!393 = !DILocation(line: 450, column: 7, scope: !391)
!394 = !DILocation(line: 452, column: 3, scope: !381)
!395 = !DILocation(line: 453, column: 22, scope: !339)
!396 = !DILocation(line: 453, column: 3, scope: !339)
!397 = !DILocation(line: 453, column: 26, scope: !339)
!398 = !DILocation(line: 454, column: 13, scope: !339)
!399 = !DILocation(line: 454, column: 3, scope: !339)
!400 = !DILocation(line: 454, column: 24, scope: !339)
!401 = !DILocation(line: 455, column: 10, scope: !339)
!402 = !DILocation(line: 455, column: 21, scope: !339)
!403 = !DILocation(line: 455, column: 35, scope: !339)
!404 = !DILocation(line: 455, column: 3, scope: !339)
!405 = !DILocation(line: 456, column: 1, scope: !339)
!406 = distinct !DISubprogram(name: "http1_send_body", scope: !3, file: !3, line: 177, type: !236, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!407 = !DILocalVariable(name: "h", arg: 1, scope: !406, file: !3, line: 177, type: !75)
!408 = !DILocation(line: 177, column: 36, scope: !406)
!409 = !DILocalVariable(name: "data", arg: 2, scope: !406, file: !3, line: 177, type: !27)
!410 = !DILocation(line: 177, column: 45, scope: !406)
!411 = !DILocalVariable(name: "length", arg: 3, scope: !406, file: !3, line: 177, type: !84)
!412 = !DILocation(line: 177, column: 61, scope: !406)
!413 = !DILocalVariable(name: "packet", scope: !406, file: !3, line: 179, type: !86)
!414 = !DILocation(line: 179, column: 9, scope: !406)
!415 = !DILocation(line: 179, column: 30, scope: !406)
!416 = !DILocation(line: 179, column: 33, scope: !406)
!417 = !DILocation(line: 179, column: 18, scope: !406)
!418 = !DILocation(line: 180, column: 8, scope: !419)
!419 = distinct !DILexicalBlock(scope: !406, file: !3, line: 180, column: 7)
!420 = !DILocation(line: 180, column: 7, scope: !406)
!421 = !DILocation(line: 181, column: 24, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !3, line: 180, column: 16)
!423 = !DILocation(line: 181, column: 5, scope: !422)
!424 = !DILocation(line: 182, column: 5, scope: !422)
!425 = !DILocation(line: 184, column: 19, scope: !406)
!426 = !DILocation(line: 184, column: 27, scope: !406)
!427 = !DILocation(line: 184, column: 33, scope: !406)
!428 = !DILocation(line: 184, column: 3, scope: !406)
!429 = !DILocation(line: 185, column: 20, scope: !406)
!430 = !DILocation(line: 185, column: 34, scope: !406)
!431 = !DILocation(line: 185, column: 36, scope: !406)
!432 = !DILocation(line: 185, column: 43, scope: !406)
!433 = !DILocation(line: 185, column: 3, scope: !406)
!434 = !DILocation(line: 186, column: 22, scope: !406)
!435 = !DILocation(line: 186, column: 3, scope: !406)
!436 = !DILocation(line: 187, column: 3, scope: !406)
!437 = !DILocation(line: 188, column: 1, scope: !406)
!438 = distinct !DISubprogram(name: "http1_sendfile", scope: !3, file: !3, line: 190, type: !242, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!439 = !DILocalVariable(name: "h", arg: 1, scope: !438, file: !3, line: 190, type: !75)
!440 = !DILocation(line: 190, column: 35, scope: !438)
!441 = !DILocalVariable(name: "fd", arg: 2, scope: !438, file: !3, line: 190, type: !238)
!442 = !DILocation(line: 190, column: 42, scope: !438)
!443 = !DILocalVariable(name: "length", arg: 3, scope: !438, file: !3, line: 190, type: !84)
!444 = !DILocation(line: 190, column: 56, scope: !438)
!445 = !DILocalVariable(name: "offset", arg: 4, scope: !438, file: !3, line: 191, type: !84)
!446 = !DILocation(line: 191, column: 37, scope: !438)
!447 = !DILocalVariable(name: "packet", scope: !438, file: !3, line: 192, type: !86)
!448 = !DILocation(line: 192, column: 9, scope: !438)
!449 = !DILocation(line: 192, column: 30, scope: !438)
!450 = !DILocation(line: 192, column: 18, scope: !438)
!451 = !DILocation(line: 193, column: 8, scope: !452)
!452 = distinct !DILexicalBlock(scope: !438, file: !3, line: 193, column: 7)
!453 = !DILocation(line: 193, column: 7, scope: !438)
!454 = !DILocation(line: 194, column: 11, scope: !455)
!455 = distinct !DILexicalBlock(scope: !452, file: !3, line: 193, column: 16)
!456 = !DILocation(line: 194, column: 5, scope: !455)
!457 = !DILocation(line: 195, column: 24, scope: !455)
!458 = !DILocation(line: 195, column: 5, scope: !455)
!459 = !DILocation(line: 196, column: 5, scope: !455)
!460 = !DILocation(line: 198, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !438, file: !3, line: 198, column: 7)
!462 = !DILocation(line: 198, column: 14, scope: !461)
!463 = !DILocation(line: 198, column: 7, scope: !438)
!464 = !DILocalVariable(name: "s", scope: !465, file: !3, line: 200, type: !187)
!465 = distinct !DILexicalBlock(scope: !461, file: !3, line: 198, column: 40)
!466 = !DILocation(line: 200, column: 20, scope: !465)
!467 = !DILocation(line: 200, column: 39, scope: !465)
!468 = !DILocation(line: 200, column: 24, scope: !465)
!469 = !DILocation(line: 201, column: 27, scope: !465)
!470 = !DILocation(line: 201, column: 37, scope: !465)
!471 = !DILocation(line: 201, column: 43, scope: !465)
!472 = !DILocation(line: 201, column: 41, scope: !465)
!473 = !DILocation(line: 201, column: 5, scope: !465)
!474 = !DILocation(line: 202, column: 24, scope: !465)
!475 = !DILocation(line: 202, column: 9, scope: !465)
!476 = !DILocalVariable(name: "i", scope: !465, file: !3, line: 203, type: !45)
!477 = !DILocation(line: 203, column: 14, scope: !465)
!478 = !DILocation(line: 203, column: 24, scope: !465)
!479 = !DILocation(line: 203, column: 30, scope: !465)
!480 = !DILocation(line: 203, column: 39, scope: !465)
!481 = !DILocation(line: 203, column: 35, scope: !465)
!482 = !DILocation(line: 203, column: 44, scope: !465)
!483 = !DILocation(line: 203, column: 52, scope: !465)
!484 = !DILocation(line: 203, column: 18, scope: !465)
!485 = !DILocation(line: 204, column: 9, scope: !486)
!486 = distinct !DILexicalBlock(scope: !465, file: !3, line: 204, column: 9)
!487 = !DILocation(line: 204, column: 11, scope: !486)
!488 = !DILocation(line: 204, column: 9, scope: !465)
!489 = !DILocation(line: 205, column: 13, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !3, line: 204, column: 16)
!491 = !DILocation(line: 205, column: 7, scope: !490)
!492 = !DILocation(line: 206, column: 24, scope: !490)
!493 = !DILocation(line: 206, column: 38, scope: !490)
!494 = !DILocation(line: 206, column: 40, scope: !490)
!495 = !DILocation(line: 206, column: 47, scope: !490)
!496 = !DILocation(line: 206, column: 7, scope: !490)
!497 = !DILocation(line: 207, column: 18, scope: !490)
!498 = !DILocation(line: 207, column: 32, scope: !490)
!499 = !DILocation(line: 207, column: 34, scope: !490)
!500 = !DILocation(line: 207, column: 7, scope: !490)
!501 = !DILocation(line: 208, column: 7, scope: !490)
!502 = !DILocation(line: 210, column: 11, scope: !465)
!503 = !DILocation(line: 210, column: 5, scope: !465)
!504 = !DILocation(line: 211, column: 22, scope: !465)
!505 = !DILocation(line: 211, column: 32, scope: !465)
!506 = !DILocation(line: 211, column: 38, scope: !465)
!507 = !DILocation(line: 211, column: 36, scope: !465)
!508 = !DILocation(line: 211, column: 5, scope: !465)
!509 = !DILocation(line: 212, column: 22, scope: !465)
!510 = !DILocation(line: 212, column: 36, scope: !465)
!511 = !DILocation(line: 212, column: 38, scope: !465)
!512 = !DILocation(line: 212, column: 45, scope: !465)
!513 = !DILocation(line: 212, column: 5, scope: !465)
!514 = !DILocation(line: 213, column: 24, scope: !465)
!515 = !DILocation(line: 213, column: 5, scope: !465)
!516 = !DILocation(line: 214, column: 5, scope: !465)
!517 = !DILocation(line: 216, column: 20, scope: !438)
!518 = !DILocation(line: 216, column: 34, scope: !438)
!519 = !DILocation(line: 216, column: 36, scope: !438)
!520 = !DILocation(line: 216, column: 43, scope: !438)
!521 = !DILocation(line: 216, column: 3, scope: !438)
!522 = !DILocation(line: 217, column: 17, scope: !438)
!523 = !DILocation(line: 217, column: 31, scope: !438)
!524 = !DILocation(line: 217, column: 33, scope: !438)
!525 = !DILocation(line: 217, column: 40, scope: !438)
!526 = !DILocation(line: 217, column: 44, scope: !438)
!527 = !DILocation(line: 217, column: 52, scope: !438)
!528 = !DILocation(line: 217, column: 3, scope: !438)
!529 = !DILocation(line: 218, column: 22, scope: !438)
!530 = !DILocation(line: 218, column: 3, scope: !438)
!531 = !DILocation(line: 219, column: 3, scope: !438)
!532 = !DILocation(line: 220, column: 1, scope: !438)
!533 = distinct !DISubprogram(name: "htt1p_finish", scope: !3, file: !3, line: 223, type: !73, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!534 = !DILocalVariable(name: "h", arg: 1, scope: !533, file: !3, line: 223, type: !75)
!535 = !DILocation(line: 223, column: 34, scope: !533)
!536 = !DILocalVariable(name: "packet", scope: !533, file: !3, line: 224, type: !86)
!537 = !DILocation(line: 224, column: 9, scope: !533)
!538 = !DILocation(line: 224, column: 30, scope: !533)
!539 = !DILocation(line: 224, column: 18, scope: !533)
!540 = !DILocation(line: 225, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !533, file: !3, line: 225, column: 7)
!542 = !DILocation(line: 225, column: 7, scope: !533)
!543 = !DILocation(line: 226, column: 22, scope: !541)
!544 = !DILocation(line: 226, column: 36, scope: !541)
!545 = !DILocation(line: 226, column: 38, scope: !541)
!546 = !DILocation(line: 226, column: 45, scope: !541)
!547 = !DILocation(line: 226, column: 5, scope: !541)
!548 = !DILocation(line: 230, column: 22, scope: !533)
!549 = !DILocation(line: 230, column: 3, scope: !533)
!550 = !DILocation(line: 231, column: 1, scope: !533)
!551 = distinct !DISubprogram(name: "http1_push_data", scope: !3, file: !3, line: 233, type: !250, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!552 = !DILocalVariable(name: "h", arg: 1, scope: !551, file: !3, line: 233, type: !75)
!553 = !DILocation(line: 233, column: 36, scope: !551)
!554 = !DILocalVariable(name: "data", arg: 2, scope: !551, file: !3, line: 233, type: !27)
!555 = !DILocation(line: 233, column: 45, scope: !551)
!556 = !DILocalVariable(name: "length", arg: 3, scope: !551, file: !3, line: 233, type: !84)
!557 = !DILocation(line: 233, column: 61, scope: !551)
!558 = !DILocalVariable(name: "mime_type", arg: 4, scope: !551, file: !3, line: 234, type: !86)
!559 = !DILocation(line: 234, column: 34, scope: !551)
!560 = !DILocation(line: 235, column: 3, scope: !551)
!561 = distinct !DISubprogram(name: "http1_http2websocket", scope: !3, file: !3, line: 409, type: !255, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!562 = !DILocalVariable(name: "h", arg: 1, scope: !561, file: !3, line: 409, type: !75)
!563 = !DILocation(line: 409, column: 41, scope: !561)
!564 = !DILocalVariable(name: "args", arg: 2, scope: !561, file: !3, line: 409, type: !176)
!565 = !DILocation(line: 409, column: 66, scope: !561)
!566 = !DILocation(line: 410, column: 3, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 410, column: 3)
!568 = distinct !DILexicalBlock(scope: !561, file: !3, line: 410, column: 3)
!569 = !DILocation(line: 410, column: 3, scope: !568)
!570 = !DILocalVariable(name: "p", scope: !561, file: !3, line: 411, type: !28)
!571 = !DILocation(line: 411, column: 14, scope: !561)
!572 = !DILocation(line: 411, column: 18, scope: !561)
!573 = !DILocation(line: 413, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !561, file: !3, line: 413, column: 7)
!575 = !DILocation(line: 413, column: 10, scope: !574)
!576 = !DILocation(line: 413, column: 20, scope: !574)
!577 = !DILocation(line: 413, column: 7, scope: !561)
!578 = !DILocation(line: 414, column: 40, scope: !579)
!579 = distinct !DILexicalBlock(scope: !574, file: !3, line: 413, column: 26)
!580 = !DILocation(line: 414, column: 43, scope: !579)
!581 = !DILocation(line: 414, column: 12, scope: !579)
!582 = !DILocation(line: 414, column: 5, scope: !579)
!583 = !DILocation(line: 416, column: 38, scope: !561)
!584 = !DILocation(line: 416, column: 41, scope: !561)
!585 = !DILocation(line: 416, column: 10, scope: !561)
!586 = !DILocation(line: 416, column: 3, scope: !561)
!587 = !DILocation(line: 417, column: 1, scope: !561)
!588 = distinct !DISubprogram(name: "http1_push_file", scope: !3, file: !3, line: 242, type: !260, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!589 = !DILocalVariable(name: "h", arg: 1, scope: !588, file: !3, line: 242, type: !75)
!590 = !DILocation(line: 242, column: 36, scope: !588)
!591 = !DILocalVariable(name: "filename", arg: 2, scope: !588, file: !3, line: 242, type: !86)
!592 = !DILocation(line: 242, column: 45, scope: !588)
!593 = !DILocalVariable(name: "mime_type", arg: 3, scope: !588, file: !3, line: 242, type: !86)
!594 = !DILocation(line: 242, column: 61, scope: !588)
!595 = !DILocation(line: 243, column: 3, scope: !588)
!596 = distinct !DISubprogram(name: "http1_on_pause", scope: !3, file: !3, line: 252, type: !264, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!597 = !DILocalVariable(name: "h", arg: 1, scope: !596, file: !3, line: 252, type: !75)
!598 = !DILocation(line: 252, column: 36, scope: !596)
!599 = !DILocalVariable(name: "pr", arg: 2, scope: !596, file: !3, line: 252, type: !167)
!600 = !DILocation(line: 252, column: 60, scope: !596)
!601 = !DILocation(line: 253, column: 17, scope: !596)
!602 = !DILocation(line: 253, column: 22, scope: !596)
!603 = !DILocation(line: 253, column: 27, scope: !596)
!604 = !DILocation(line: 254, column: 15, scope: !596)
!605 = !DILocation(line: 254, column: 19, scope: !596)
!606 = !DILocation(line: 254, column: 3, scope: !596)
!607 = !DILocation(line: 255, column: 9, scope: !596)
!608 = !DILocation(line: 256, column: 1, scope: !596)
!609 = distinct !DISubprogram(name: "http1_on_resume", scope: !3, file: !3, line: 261, type: !264, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!610 = !DILocalVariable(name: "h", arg: 1, scope: !609, file: !3, line: 261, type: !75)
!611 = !DILocation(line: 261, column: 37, scope: !609)
!612 = !DILocalVariable(name: "pr", arg: 2, scope: !609, file: !3, line: 261, type: !167)
!613 = !DILocation(line: 261, column: 61, scope: !609)
!614 = !DILocation(line: 262, column: 22, scope: !615)
!615 = distinct !DILexicalBlock(scope: !609, file: !3, line: 262, column: 7)
!616 = !DILocation(line: 262, column: 27, scope: !615)
!617 = !DILocation(line: 262, column: 8, scope: !615)
!618 = !DILocation(line: 262, column: 7, scope: !609)
!619 = !DILocation(line: 263, column: 21, scope: !620)
!620 = distinct !DILexicalBlock(scope: !615, file: !3, line: 262, column: 33)
!621 = !DILocation(line: 263, column: 25, scope: !620)
!622 = !DILocation(line: 263, column: 5, scope: !620)
!623 = !DILocation(line: 264, column: 3, scope: !620)
!624 = !DILocation(line: 265, column: 9, scope: !609)
!625 = !DILocation(line: 266, column: 1, scope: !609)
!626 = distinct !DISubprogram(name: "http1_hijack", scope: !3, file: !3, line: 268, type: !269, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!627 = !DILocalVariable(name: "h", arg: 1, scope: !626, file: !3, line: 268, type: !75)
!628 = !DILocation(line: 268, column: 38, scope: !626)
!629 = !DILocalVariable(name: "leftover", arg: 2, scope: !626, file: !3, line: 268, type: !271)
!630 = !DILocation(line: 268, column: 57, scope: !626)
!631 = !DILocation(line: 269, column: 7, scope: !632)
!632 = distinct !DILexicalBlock(scope: !626, file: !3, line: 269, column: 7)
!633 = !DILocation(line: 269, column: 7, scope: !626)
!634 = !DILocalVariable(name: "len", scope: !635, file: !3, line: 270, type: !45)
!635 = distinct !DILexicalBlock(scope: !632, file: !3, line: 269, column: 17)
!636 = !DILocation(line: 270, column: 14, scope: !635)
!637 = !DILocation(line: 271, column: 9, scope: !635)
!638 = !DILocation(line: 271, column: 23, scope: !635)
!639 = !DILocation(line: 272, column: 20, scope: !635)
!640 = !DILocation(line: 272, column: 34, scope: !635)
!641 = !DILocation(line: 272, column: 41, scope: !635)
!642 = !DILocation(line: 272, column: 47, scope: !635)
!643 = !DILocation(line: 272, column: 54, scope: !635)
!644 = !DILocation(line: 272, column: 68, scope: !635)
!645 = !DILocation(line: 272, column: 52, scope: !635)
!646 = !DILocation(line: 271, column: 31, scope: !635)
!647 = !DILocation(line: 273, column: 9, scope: !648)
!648 = distinct !DILexicalBlock(scope: !635, file: !3, line: 273, column: 9)
!649 = !DILocation(line: 273, column: 9, scope: !635)
!650 = !DILocation(line: 274, column: 8, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !3, line: 273, column: 14)
!652 = !DILocation(line: 274, column: 35, scope: !651)
!653 = !DILocation(line: 275, column: 18, scope: !651)
!654 = !DILocation(line: 275, column: 39, scope: !651)
!655 = !DILocation(line: 275, column: 53, scope: !651)
!656 = !DILocation(line: 275, column: 60, scope: !651)
!657 = !DILocation(line: 275, column: 66, scope: !651)
!658 = !DILocation(line: 274, column: 19, scope: !651)
!659 = !DILocation(line: 276, column: 5, scope: !651)
!660 = !DILocation(line: 277, column: 8, scope: !661)
!661 = distinct !DILexicalBlock(scope: !648, file: !3, line: 276, column: 12)
!662 = !DILocation(line: 277, column: 35, scope: !661)
!663 = !DILocation(line: 277, column: 19, scope: !661)
!664 = !DILocation(line: 279, column: 3, scope: !635)
!665 = !DILocation(line: 281, column: 3, scope: !626)
!666 = !DILocation(line: 281, column: 17, scope: !626)
!667 = !DILocation(line: 281, column: 22, scope: !626)
!668 = !DILocalVariable(name: "uuid", scope: !626, file: !3, line: 282, type: !45)
!669 = !DILocation(line: 282, column: 12, scope: !626)
!670 = !DILocation(line: 282, column: 19, scope: !626)
!671 = !DILocation(line: 282, column: 33, scope: !626)
!672 = !DILocation(line: 282, column: 35, scope: !626)
!673 = !DILocation(line: 283, column: 14, scope: !626)
!674 = !DILocation(line: 283, column: 3, scope: !626)
!675 = !DILocation(line: 284, column: 10, scope: !626)
!676 = !DILocation(line: 284, column: 3, scope: !626)
!677 = distinct !DISubprogram(name: "http1_upgrade2sse", scope: !3, file: !3, line: 463, type: !274, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!678 = !DILocalVariable(name: "h", arg: 1, scope: !677, file: !3, line: 463, type: !75)
!679 = !DILocation(line: 463, column: 38, scope: !677)
!680 = !DILocalVariable(name: "sse", arg: 2, scope: !677, file: !3, line: 463, type: !222)
!681 = !DILocation(line: 463, column: 53, scope: !677)
!682 = !DILocalVariable(name: "uuid", scope: !677, file: !3, line: 464, type: !683)
!683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!684 = !DILocation(line: 464, column: 18, scope: !677)
!685 = !DILocation(line: 464, column: 25, scope: !677)
!686 = !DILocation(line: 464, column: 39, scope: !677)
!687 = !DILocation(line: 464, column: 41, scope: !677)
!688 = !DILocation(line: 466, column: 3, scope: !677)
!689 = !DILocation(line: 466, column: 6, scope: !677)
!690 = !DILocation(line: 466, column: 13, scope: !677)
!691 = !DILocation(line: 467, column: 19, scope: !677)
!692 = !DILocation(line: 467, column: 22, scope: !677)
!693 = !DILocation(line: 467, column: 58, scope: !677)
!694 = !DILocation(line: 467, column: 48, scope: !677)
!695 = !DILocation(line: 467, column: 3, scope: !677)
!696 = !DILocation(line: 468, column: 19, scope: !677)
!697 = !DILocation(line: 468, column: 22, scope: !677)
!698 = !DILocation(line: 469, column: 29, scope: !677)
!699 = !DILocation(line: 469, column: 19, scope: !677)
!700 = !DILocation(line: 468, column: 3, scope: !677)
!701 = !DILocation(line: 470, column: 19, scope: !677)
!702 = !DILocation(line: 470, column: 22, scope: !677)
!703 = !DILocation(line: 471, column: 19, scope: !677)
!704 = !DILocation(line: 470, column: 3, scope: !677)
!705 = !DILocation(line: 472, column: 3, scope: !677)
!706 = !DILocation(line: 472, column: 17, scope: !677)
!707 = !DILocation(line: 472, column: 22, scope: !677)
!708 = !DILocation(line: 473, column: 16, scope: !677)
!709 = !DILocation(line: 473, column: 3, scope: !677)
!710 = !DILocalVariable(name: "sse_pr", scope: !677, file: !3, line: 476, type: !204)
!711 = !DILocation(line: 476, column: 29, scope: !677)
!712 = !DILocation(line: 476, column: 38, scope: !677)
!713 = !DILocation(line: 477, column: 8, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 477, column: 7)
!715 = !DILexicalBlockFile(scope: !677, file: !3, discriminator: 0)
!716 = !DILocation(line: 477, column: 7, scope: !715)
!717 = !DILocation(line: 478, column: 5, scope: !714)
!718 = !DILocation(line: 479, column: 4, scope: !715)
!719 = !DILocation(line: 479, column: 39, scope: !715)
!720 = !DILocation(line: 481, column: 11, scope: !715)
!721 = !DILocation(line: 487, column: 14, scope: !715)
!722 = !DILocation(line: 479, column: 13, scope: !715)
!723 = !DILocation(line: 490, column: 8, scope: !724)
!724 = distinct !DILexicalBlock(scope: !715, file: !3, line: 490, column: 7)
!725 = !DILocation(line: 490, column: 16, scope: !724)
!726 = !DILocation(line: 490, column: 7, scope: !715)
!727 = !DILocation(line: 491, column: 5, scope: !724)
!728 = !DILocation(line: 493, column: 17, scope: !715)
!729 = !DILocation(line: 493, column: 25, scope: !715)
!730 = !DILocation(line: 493, column: 30, scope: !715)
!731 = !DILocation(line: 493, column: 51, scope: !715)
!732 = !DILocation(line: 493, column: 3, scope: !715)
!733 = !DILocation(line: 494, column: 19, scope: !715)
!734 = !DILocation(line: 494, column: 25, scope: !715)
!735 = !DILocation(line: 494, column: 39, scope: !715)
!736 = !DILocation(line: 494, column: 41, scope: !715)
!737 = !DILocation(line: 494, column: 51, scope: !715)
!738 = !DILocation(line: 494, column: 3, scope: !715)
!739 = !DILocation(line: 495, column: 7, scope: !740)
!740 = distinct !DILexicalBlock(scope: !715, file: !3, line: 495, column: 7)
!741 = !DILocation(line: 495, column: 12, scope: !740)
!742 = !DILocation(line: 495, column: 7, scope: !715)
!743 = !DILocation(line: 496, column: 5, scope: !740)
!744 = !DILocation(line: 496, column: 10, scope: !740)
!745 = !DILocation(line: 496, column: 19, scope: !740)
!746 = !DILocation(line: 496, column: 27, scope: !740)
!747 = !DILocation(line: 496, column: 32, scope: !740)
!748 = !DILocation(line: 497, column: 14, scope: !715)
!749 = !DILocation(line: 497, column: 21, scope: !715)
!750 = !DILocation(line: 497, column: 29, scope: !715)
!751 = !DILocation(line: 497, column: 3, scope: !715)
!752 = !DILocation(line: 498, column: 3, scope: !715)
!753 = !DILabel(scope: !715, name: "failed", file: !3, line: 500)
!754 = !DILocation(line: 500, column: 1, scope: !715)
!755 = !DILocation(line: 501, column: 13, scope: !715)
!756 = !DILocation(line: 501, column: 27, scope: !715)
!757 = !DILocation(line: 501, column: 29, scope: !715)
!758 = !DILocation(line: 501, column: 3, scope: !715)
!759 = !DILocation(line: 502, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !715, file: !3, line: 502, column: 7)
!761 = !DILocation(line: 502, column: 12, scope: !760)
!762 = !DILocation(line: 502, column: 7, scope: !715)
!763 = !DILocation(line: 503, column: 5, scope: !760)
!764 = !DILocation(line: 503, column: 10, scope: !760)
!765 = !DILocation(line: 503, column: 19, scope: !760)
!766 = !DILocation(line: 504, column: 3, scope: !715)
!767 = !DILocation(line: 506, column: 1, scope: !715)
!768 = distinct !DISubprogram(name: "http1_sse_write", scope: !3, file: !3, line: 514, type: !278, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!769 = !DILocalVariable(name: "sse", arg: 1, scope: !768, file: !3, line: 514, type: !222)
!770 = !DILocation(line: 514, column: 40, scope: !768)
!771 = !DILocalVariable(name: "str", arg: 2, scope: !768, file: !3, line: 514, type: !86)
!772 = !DILocation(line: 514, column: 51, scope: !768)
!773 = !DILocation(line: 515, column: 50, scope: !768)
!774 = !DILocation(line: 515, column: 56, scope: !768)
!775 = !DILocation(line: 515, column: 62, scope: !768)
!776 = !DILocation(line: 515, column: 10, scope: !768)
!777 = !DILocation(line: 515, column: 3, scope: !768)
!778 = distinct !DISubprogram(name: "http1_sse_close", scope: !3, file: !3, line: 521, type: !282, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!779 = !DILocalVariable(name: "sse", arg: 1, scope: !778, file: !3, line: 521, type: !222)
!780 = !DILocation(line: 521, column: 40, scope: !778)
!781 = !DILocation(line: 522, column: 37, scope: !778)
!782 = !DILocation(line: 522, column: 43, scope: !778)
!783 = !DILocation(line: 522, column: 3, scope: !778)
!784 = !DILocation(line: 523, column: 3, scope: !778)
!785 = distinct !DISubprogram(name: "http1_vtable", scope: !3, file: !3, line: 544, type: !786, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !314)
!786 = !DISubroutineType(types: !787)
!787 = !{!27}
!788 = !DILocation(line: 544, column: 28, scope: !785)
!789 = distinct !DISubprogram(name: "http1_new", scope: !3, file: !3, line: 784, type: !790, scopeLine: 785, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !314)
!790 = !DISubroutineType(types: !791)
!791 = !{!48, !84, !66, !27, !61}
!792 = !DILocalVariable(name: "uuid", arg: 1, scope: !789, file: !3, line: 784, type: !84)
!793 = !DILocation(line: 784, column: 37, scope: !789)
!794 = !DILocalVariable(name: "settings", arg: 2, scope: !789, file: !3, line: 784, type: !66)
!795 = !DILocation(line: 784, column: 60, scope: !789)
!796 = !DILocalVariable(name: "unread_data", arg: 3, scope: !789, file: !3, line: 785, type: !27)
!797 = !DILocation(line: 785, column: 33, scope: !789)
!798 = !DILocalVariable(name: "unread_length", arg: 4, scope: !789, file: !3, line: 785, type: !61)
!799 = !DILocation(line: 785, column: 53, scope: !789)
!800 = !DILocation(line: 786, column: 7, scope: !801)
!801 = distinct !DILexicalBlock(scope: !789, file: !3, line: 786, column: 7)
!802 = !DILocation(line: 786, column: 19, scope: !801)
!803 = !DILocation(line: 786, column: 22, scope: !801)
!804 = !DILocation(line: 786, column: 36, scope: !801)
!805 = !DILocation(line: 786, column: 7, scope: !789)
!806 = !DILocation(line: 787, column: 5, scope: !801)
!807 = !DILocalVariable(name: "p", scope: !789, file: !3, line: 788, type: !28)
!808 = !DILocation(line: 788, column: 14, scope: !789)
!809 = !DILocation(line: 788, column: 18, scope: !789)
!810 = !DILocation(line: 790, column: 3, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 790, column: 3)
!812 = !DILexicalBlockFile(scope: !789, file: !3, discriminator: 0)
!813 = !DILocation(line: 790, column: 3, scope: !812)
!814 = !DILocation(line: 790, column: 3, scope: !815)
!815 = distinct !DILexicalBlock(scope: !811, file: !3, line: 790, column: 3)
!816 = !DILocation(line: 790, column: 3, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 790, column: 3)
!818 = distinct !DILexicalBlock(scope: !815, file: !3, line: 790, column: 3)
!819 = !DILocation(line: 790, column: 3, scope: !818)
!820 = !DILocation(line: 790, column: 3, scope: !821)
!821 = distinct !DILexicalBlock(scope: !817, file: !3, line: 790, column: 3)
!822 = !DILocation(line: 791, column: 4, scope: !812)
!823 = !DILocation(line: 791, column: 8, scope: !812)
!824 = !DILocation(line: 791, column: 19, scope: !812)
!825 = !DILocation(line: 792, column: 9, scope: !812)
!826 = !DILocation(line: 793, column: 11, scope: !812)
!827 = !DILocation(line: 798, column: 17, scope: !812)
!828 = !DILocation(line: 799, column: 21, scope: !812)
!829 = !DILocation(line: 800, column: 26, scope: !812)
!830 = !DILocation(line: 800, column: 36, scope: !812)
!831 = !DILocation(line: 801, column: 20, scope: !812)
!832 = !DILocation(line: 801, column: 30, scope: !812)
!833 = !DILocation(line: 803, column: 15, scope: !812)
!834 = !DILocation(line: 803, column: 18, scope: !812)
!835 = !DILocation(line: 803, column: 28, scope: !812)
!836 = !DILocation(line: 803, column: 31, scope: !812)
!837 = !DILocation(line: 803, column: 3, scope: !812)
!838 = !DILocation(line: 804, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !812, file: !3, line: 804, column: 7)
!840 = !DILocation(line: 804, column: 19, scope: !839)
!841 = !DILocation(line: 804, column: 22, scope: !839)
!842 = !DILocation(line: 804, column: 36, scope: !839)
!843 = !DILocation(line: 804, column: 7, scope: !812)
!844 = !DILocation(line: 805, column: 12, scope: !845)
!845 = distinct !DILexicalBlock(scope: !839, file: !3, line: 804, column: 63)
!846 = !DILocation(line: 805, column: 15, scope: !845)
!847 = !DILocation(line: 805, column: 5, scope: !845)
!848 = !DILocation(line: 805, column: 20, scope: !845)
!849 = !DILocation(line: 805, column: 33, scope: !845)
!850 = !DILocation(line: 806, column: 18, scope: !845)
!851 = !DILocation(line: 806, column: 5, scope: !845)
!852 = !DILocation(line: 806, column: 8, scope: !845)
!853 = !DILocation(line: 806, column: 16, scope: !845)
!854 = !DILocation(line: 807, column: 3, scope: !845)
!855 = !DILocation(line: 808, column: 14, scope: !812)
!856 = !DILocation(line: 808, column: 21, scope: !812)
!857 = !DILocation(line: 808, column: 24, scope: !812)
!858 = !DILocation(line: 808, column: 26, scope: !812)
!859 = !DILocation(line: 808, column: 3, scope: !812)
!860 = !DILocation(line: 809, column: 7, scope: !861)
!861 = distinct !DILexicalBlock(scope: !812, file: !3, line: 809, column: 7)
!862 = !DILocation(line: 809, column: 19, scope: !861)
!863 = !DILocation(line: 809, column: 22, scope: !861)
!864 = !DILocation(line: 809, column: 36, scope: !861)
!865 = !DILocation(line: 809, column: 7, scope: !812)
!866 = !DILocation(line: 810, column: 21, scope: !867)
!867 = distinct !DILexicalBlock(scope: !861, file: !3, line: 809, column: 63)
!868 = !DILocation(line: 810, column: 5, scope: !867)
!869 = !DILocation(line: 811, column: 3, scope: !867)
!870 = !DILocation(line: 812, column: 11, scope: !812)
!871 = !DILocation(line: 812, column: 14, scope: !812)
!872 = !DILocation(line: 812, column: 16, scope: !812)
!873 = !DILocation(line: 812, column: 3, scope: !812)
!874 = !DILocation(line: 813, column: 1, scope: !812)
!875 = distinct !DISubprogram(name: "http1_on_data_first_time", scope: !3, file: !3, line: 756, type: !43, scopeLine: 756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!876 = !DILocalVariable(name: "uuid", arg: 1, scope: !875, file: !3, line: 756, type: !45)
!877 = !DILocation(line: 756, column: 47, scope: !875)
!878 = !DILocalVariable(name: "protocol", arg: 2, scope: !875, file: !3, line: 756, type: !48)
!879 = !DILocation(line: 756, column: 69, scope: !875)
!880 = !DILocalVariable(name: "p", scope: !875, file: !3, line: 757, type: !28)
!881 = !DILocation(line: 757, column: 14, scope: !875)
!882 = !DILocation(line: 757, column: 31, scope: !875)
!883 = !DILocation(line: 757, column: 18, scope: !875)
!884 = !DILocalVariable(name: "i", scope: !875, file: !3, line: 758, type: !146)
!885 = !DILocation(line: 758, column: 11, scope: !875)
!886 = !DILocation(line: 760, column: 16, scope: !875)
!887 = !DILocation(line: 760, column: 22, scope: !875)
!888 = !DILocation(line: 760, column: 25, scope: !875)
!889 = !DILocation(line: 760, column: 31, scope: !875)
!890 = !DILocation(line: 760, column: 34, scope: !875)
!891 = !DILocation(line: 760, column: 29, scope: !875)
!892 = !DILocation(line: 760, column: 68, scope: !875)
!893 = !DILocation(line: 760, column: 71, scope: !875)
!894 = !DILocation(line: 760, column: 66, scope: !875)
!895 = !DILocation(line: 760, column: 7, scope: !875)
!896 = !DILocation(line: 760, column: 5, scope: !875)
!897 = !DILocation(line: 762, column: 7, scope: !898)
!898 = distinct !DILexicalBlock(scope: !875, file: !3, line: 762, column: 7)
!899 = !DILocation(line: 762, column: 9, scope: !898)
!900 = !DILocation(line: 762, column: 7, scope: !875)
!901 = !DILocation(line: 763, column: 5, scope: !898)
!902 = !DILocation(line: 764, column: 17, scope: !875)
!903 = !DILocation(line: 764, column: 3, scope: !875)
!904 = !DILocation(line: 764, column: 6, scope: !875)
!905 = !DILocation(line: 764, column: 14, scope: !875)
!906 = !DILocation(line: 767, column: 3, scope: !875)
!907 = !DILocation(line: 767, column: 6, scope: !875)
!908 = !DILocation(line: 767, column: 8, scope: !875)
!909 = !DILocation(line: 767, column: 17, scope: !875)
!910 = !DILocation(line: 767, column: 25, scope: !875)
!911 = !DILocation(line: 768, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !875, file: !3, line: 768, column: 7)
!913 = !DILocation(line: 768, column: 9, scope: !912)
!914 = !DILocation(line: 768, column: 15, scope: !912)
!915 = !DILocation(line: 768, column: 26, scope: !912)
!916 = !DILocation(line: 768, column: 29, scope: !912)
!917 = !DILocation(line: 768, column: 19, scope: !912)
!918 = !DILocation(line: 768, column: 7, scope: !875)
!919 = !DILocation(line: 769, column: 5, scope: !920)
!920 = distinct !DILexicalBlock(scope: !912, file: !3, line: 768, column: 75)
!921 = !DILocation(line: 769, column: 5, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 769, column: 5)
!923 = distinct !DILexicalBlock(scope: !920, file: !3, line: 769, column: 5)
!924 = !DILocation(line: 769, column: 5, scope: !923)
!925 = !DILocation(line: 769, column: 5, scope: !926)
!926 = distinct !DILexicalBlock(scope: !922, file: !3, line: 769, column: 5)
!927 = !DILocation(line: 770, column: 15, scope: !920)
!928 = !DILocation(line: 770, column: 5, scope: !920)
!929 = !DILocation(line: 771, column: 5, scope: !920)
!930 = !DILocation(line: 775, column: 22, scope: !875)
!931 = !DILocation(line: 775, column: 28, scope: !875)
!932 = !DILocation(line: 775, column: 3, scope: !875)
!933 = !DILocation(line: 776, column: 1, scope: !875)
!934 = distinct !DISubprogram(name: "http1_on_ready", scope: !3, file: !3, line: 745, type: !43, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!935 = !DILocalVariable(name: "uuid", arg: 1, scope: !934, file: !3, line: 745, type: !45)
!936 = !DILocation(line: 745, column: 37, scope: !934)
!937 = !DILocalVariable(name: "protocol", arg: 2, scope: !934, file: !3, line: 745, type: !48)
!938 = !DILocation(line: 745, column: 59, scope: !934)
!939 = !DILocalVariable(name: "p", scope: !934, file: !3, line: 747, type: !28)
!940 = !DILocation(line: 747, column: 14, scope: !934)
!941 = !DILocation(line: 747, column: 31, scope: !934)
!942 = !DILocation(line: 747, column: 18, scope: !934)
!943 = !DILocation(line: 748, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !934, file: !3, line: 748, column: 7)
!945 = !DILocation(line: 748, column: 10, scope: !944)
!946 = !DILocation(line: 748, column: 15, scope: !944)
!947 = !DILocation(line: 748, column: 7, scope: !934)
!948 = !DILocation(line: 749, column: 5, scope: !949)
!949 = distinct !DILexicalBlock(scope: !944, file: !3, line: 748, column: 20)
!950 = !DILocation(line: 749, column: 8, scope: !949)
!951 = !DILocation(line: 749, column: 13, scope: !949)
!952 = !DILocation(line: 750, column: 21, scope: !949)
!953 = !DILocation(line: 750, column: 5, scope: !949)
!954 = !DILocation(line: 751, column: 3, scope: !949)
!955 = !DILocation(line: 752, column: 9, scope: !934)
!956 = !DILocation(line: 753, column: 1, scope: !934)
!957 = distinct !DISubprogram(name: "http1_on_close", scope: !3, file: !3, line: 739, type: !43, scopeLine: 739, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!958 = !DILocalVariable(name: "uuid", arg: 1, scope: !957, file: !3, line: 739, type: !45)
!959 = !DILocation(line: 739, column: 37, scope: !957)
!960 = !DILocalVariable(name: "protocol", arg: 2, scope: !957, file: !3, line: 739, type: !48)
!961 = !DILocation(line: 739, column: 59, scope: !957)
!962 = !DILocation(line: 740, column: 17, scope: !957)
!963 = !DILocation(line: 740, column: 3, scope: !957)
!964 = !DILocation(line: 741, column: 9, scope: !957)
!965 = !DILocation(line: 742, column: 1, scope: !957)
!966 = distinct !DISubprogram(name: "http_s_new", scope: !34, file: !34, line: 93, type: !967, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !75, !167, !229}
!969 = !DILocalVariable(name: "h", arg: 1, scope: !966, file: !34, line: 93, type: !75)
!970 = !DILocation(line: 93, column: 39, scope: !966)
!971 = !DILocalVariable(name: "owner", arg: 2, scope: !966, file: !34, line: 93, type: !167)
!972 = !DILocation(line: 93, column: 63, scope: !966)
!973 = !DILocalVariable(name: "vtbl", arg: 3, scope: !966, file: !34, line: 94, type: !229)
!974 = !DILocation(line: 94, column: 46, scope: !966)
!975 = !DILocation(line: 95, column: 4, scope: !966)
!976 = !DILocation(line: 95, column: 16, scope: !966)
!977 = !DILocation(line: 97, column: 11, scope: !966)
!978 = !DILocation(line: 98, column: 23, scope: !966)
!979 = !DILocation(line: 99, column: 34, scope: !966)
!980 = !DILocation(line: 99, column: 23, scope: !966)
!981 = !DILocation(line: 100, column: 30, scope: !966)
!982 = !DILocation(line: 103, column: 22, scope: !966)
!983 = !DILocation(line: 102, column: 18, scope: !966)
!984 = !DILocation(line: 95, column: 8, scope: !966)
!985 = !DILocation(line: 106, column: 1, scope: !966)
!986 = distinct !DISubprogram(name: "http1_destroy", scope: !3, file: !3, line: 816, type: !987, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !314)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !48}
!989 = !DILocalVariable(name: "pr", arg: 1, scope: !986, file: !3, line: 816, type: !48)
!990 = !DILocation(line: 816, column: 36, scope: !986)
!991 = !DILocalVariable(name: "p", scope: !986, file: !3, line: 817, type: !28)
!992 = !DILocation(line: 817, column: 14, scope: !986)
!993 = !DILocation(line: 817, column: 31, scope: !986)
!994 = !DILocation(line: 817, column: 18, scope: !986)
!995 = !DILocation(line: 818, column: 3, scope: !986)
!996 = !DILocation(line: 818, column: 22, scope: !986)
!997 = !DILocation(line: 818, column: 29, scope: !986)
!998 = !DILocation(line: 819, column: 19, scope: !986)
!999 = !DILocation(line: 819, column: 3, scope: !986)
!1000 = !DILocation(line: 820, column: 12, scope: !986)
!1001 = !DILocation(line: 820, column: 3, scope: !986)
!1002 = !DILocation(line: 822, column: 1, scope: !986)
!1003 = distinct !DISubprogram(name: "http_s_destroy", scope: !34, file: !34, line: 108, type: !1004, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !75, !54}
!1006 = !DILocalVariable(name: "h", arg: 1, scope: !1003, file: !34, line: 108, type: !75)
!1007 = !DILocation(line: 108, column: 43, scope: !1003)
!1008 = !DILocalVariable(name: "log", arg: 2, scope: !1003, file: !34, line: 108, type: !54)
!1009 = !DILocation(line: 108, column: 54, scope: !1003)
!1010 = !DILocation(line: 109, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1003, file: !34, line: 109, column: 7)
!1012 = !DILocation(line: 109, column: 11, scope: !1011)
!1013 = !DILocation(line: 109, column: 14, scope: !1011)
!1014 = !DILocation(line: 109, column: 17, scope: !1011)
!1015 = !DILocation(line: 109, column: 24, scope: !1011)
!1016 = !DILocation(line: 109, column: 28, scope: !1011)
!1017 = !DILocation(line: 109, column: 31, scope: !1011)
!1018 = !DILocation(line: 109, column: 7, scope: !1003)
!1019 = !DILocation(line: 110, column: 20, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1011, file: !34, line: 109, column: 43)
!1021 = !DILocation(line: 110, column: 5, scope: !1020)
!1022 = !DILocation(line: 111, column: 3, scope: !1020)
!1023 = !DILocation(line: 112, column: 14, scope: !1003)
!1024 = !DILocation(line: 112, column: 17, scope: !1003)
!1025 = !DILocation(line: 112, column: 3, scope: !1003)
!1026 = !DILocation(line: 113, column: 14, scope: !1003)
!1027 = !DILocation(line: 113, column: 17, scope: !1003)
!1028 = !DILocation(line: 113, column: 3, scope: !1003)
!1029 = !DILocation(line: 114, column: 14, scope: !1003)
!1030 = !DILocation(line: 114, column: 17, scope: !1003)
!1031 = !DILocation(line: 114, column: 30, scope: !1003)
!1032 = !DILocation(line: 114, column: 3, scope: !1003)
!1033 = !DILocation(line: 115, column: 14, scope: !1003)
!1034 = !DILocation(line: 115, column: 17, scope: !1003)
!1035 = !DILocation(line: 115, column: 3, scope: !1003)
!1036 = !DILocation(line: 116, column: 14, scope: !1003)
!1037 = !DILocation(line: 116, column: 17, scope: !1003)
!1038 = !DILocation(line: 116, column: 3, scope: !1003)
!1039 = !DILocation(line: 117, column: 14, scope: !1003)
!1040 = !DILocation(line: 117, column: 17, scope: !1003)
!1041 = !DILocation(line: 117, column: 3, scope: !1003)
!1042 = !DILocation(line: 118, column: 14, scope: !1003)
!1043 = !DILocation(line: 118, column: 17, scope: !1003)
!1044 = !DILocation(line: 118, column: 3, scope: !1003)
!1045 = !DILocation(line: 119, column: 14, scope: !1003)
!1046 = !DILocation(line: 119, column: 17, scope: !1003)
!1047 = !DILocation(line: 119, column: 3, scope: !1003)
!1048 = !DILocation(line: 120, column: 14, scope: !1003)
!1049 = !DILocation(line: 120, column: 17, scope: !1003)
!1050 = !DILocation(line: 120, column: 3, scope: !1003)
!1051 = !DILocation(line: 121, column: 14, scope: !1003)
!1052 = !DILocation(line: 121, column: 17, scope: !1003)
!1053 = !DILocation(line: 121, column: 3, scope: !1003)
!1054 = !DILocation(line: 123, column: 4, scope: !1003)
!1055 = !DILocation(line: 123, column: 8, scope: !1003)
!1056 = !DILocation(line: 123, column: 16, scope: !1003)
!1057 = !DILocation(line: 124, column: 20, scope: !1003)
!1058 = !DILocation(line: 124, column: 28, scope: !1003)
!1059 = !DILocation(line: 124, column: 31, scope: !1003)
!1060 = !DILocation(line: 124, column: 44, scope: !1003)
!1061 = !DILocation(line: 125, column: 28, scope: !1003)
!1062 = !DILocation(line: 125, column: 31, scope: !1003)
!1063 = !DILocation(line: 125, column: 44, scope: !1003)
!1064 = !DILocation(line: 127, column: 1, scope: !1003)
!1065 = !DILocalVariable(name: "h", arg: 1, scope: !311, file: !3, line: 98, type: !75)
!1066 = !DILocation(line: 98, column: 34, scope: !311)
!1067 = !DILocalVariable(name: "padding", arg: 2, scope: !311, file: !3, line: 98, type: !84)
!1068 = !DILocation(line: 98, column: 47, scope: !311)
!1069 = !DILocation(line: 99, column: 8, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !311, file: !3, line: 99, column: 7)
!1071 = !DILocation(line: 99, column: 11, scope: !1070)
!1072 = !DILocation(line: 99, column: 18, scope: !1070)
!1073 = !DILocation(line: 99, column: 23, scope: !1070)
!1074 = !DILocation(line: 99, column: 26, scope: !1070)
!1075 = !DILocation(line: 99, column: 7, scope: !311)
!1076 = !DILocation(line: 100, column: 5, scope: !1070)
!1077 = !DILocation(line: 103, column: 8, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !311, file: !3, line: 103, column: 7)
!1079 = !DILocation(line: 103, column: 7, scope: !311)
!1080 = !DILocation(line: 104, column: 23, scope: !1078)
!1081 = !DILocation(line: 104, column: 21, scope: !1078)
!1082 = !DILocation(line: 104, column: 5, scope: !1078)
!1083 = !DILocalVariable(name: "w", scope: !311, file: !3, line: 106, type: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "header_writer_s", file: !3, line: 67, size: 192, elements: !1085)
!1085 = !{!1086, !1087, !1088}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1084, file: !3, line: 68, baseType: !86, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1084, file: !3, line: 69, baseType: !86, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1084, file: !3, line: 70, baseType: !86, size: 64, offset: 128)
!1089 = !DILocation(line: 106, column: 26, scope: !311)
!1090 = !DILocalVariable(name: "header_length_guess", scope: !1091, file: !3, line: 108, type: !1092)
!1091 = distinct !DILexicalBlock(scope: !311, file: !3, line: 107, column: 3)
!1092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!1093 = !DILocation(line: 108, column: 21, scope: !1091)
!1094 = !DILocation(line: 109, column: 26, scope: !1091)
!1095 = !DILocation(line: 109, column: 29, scope: !1091)
!1096 = !DILocation(line: 109, column: 42, scope: !1091)
!1097 = !DILocation(line: 109, column: 9, scope: !1091)
!1098 = !DILocation(line: 109, column: 55, scope: !1091)
!1099 = !DILocation(line: 110, column: 28, scope: !1091)
!1100 = !DILocation(line: 110, column: 50, scope: !1091)
!1101 = !DILocation(line: 110, column: 48, scope: !1091)
!1102 = !DILocation(line: 110, column: 14, scope: !1091)
!1103 = !DILocation(line: 110, column: 7, scope: !1091)
!1104 = !DILocation(line: 110, column: 12, scope: !1091)
!1105 = !DILocalVariable(name: "p", scope: !311, file: !3, line: 112, type: !28)
!1106 = !DILocation(line: 112, column: 14, scope: !311)
!1107 = !DILocation(line: 112, column: 18, scope: !311)
!1108 = !DILocation(line: 114, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !311, file: !3, line: 114, column: 7)
!1110 = !DILocation(line: 114, column: 10, scope: !1109)
!1111 = !DILocation(line: 114, column: 20, scope: !1109)
!1112 = !DILocation(line: 114, column: 7, scope: !311)
!1113 = !DILocalVariable(name: "t", scope: !1114, file: !3, line: 115, type: !187)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 114, column: 26)
!1115 = !DILocation(line: 115, column: 20, scope: !1114)
!1116 = !DILocation(line: 115, column: 43, scope: !1114)
!1117 = !DILocation(line: 115, column: 46, scope: !1114)
!1118 = !DILocation(line: 115, column: 24, scope: !1114)
!1119 = !DILocation(line: 116, column: 23, scope: !1114)
!1120 = !DILocation(line: 116, column: 31, scope: !1114)
!1121 = !DILocation(line: 116, column: 39, scope: !1114)
!1122 = !DILocation(line: 116, column: 5, scope: !1114)
!1123 = !DILocalVariable(name: "tmp", scope: !1114, file: !3, line: 117, type: !86)
!1124 = !DILocation(line: 117, column: 11, scope: !1114)
!1125 = !DILocation(line: 117, column: 33, scope: !1114)
!1126 = !DILocation(line: 117, column: 36, scope: !1114)
!1127 = !DILocation(line: 117, column: 49, scope: !1114)
!1128 = !DILocation(line: 117, column: 62, scope: !1114)
!1129 = !DILocation(line: 117, column: 17, scope: !1114)
!1130 = !DILocation(line: 118, column: 9, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 118, column: 9)
!1132 = !DILocation(line: 118, column: 9, scope: !1114)
!1133 = !DILocation(line: 119, column: 26, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 118, column: 14)
!1135 = !DILocation(line: 119, column: 11, scope: !1134)
!1136 = !DILocation(line: 120, column: 13, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 120, column: 11)
!1138 = !DILocation(line: 120, column: 11, scope: !1137)
!1139 = !DILocation(line: 120, column: 21, scope: !1137)
!1140 = !DILocation(line: 120, column: 28, scope: !1137)
!1141 = !DILocation(line: 120, column: 33, scope: !1137)
!1142 = !DILocation(line: 120, column: 31, scope: !1137)
!1143 = !DILocation(line: 120, column: 41, scope: !1137)
!1144 = !DILocation(line: 120, column: 11, scope: !1134)
!1145 = !DILocation(line: 121, column: 9, scope: !1137)
!1146 = !DILocation(line: 121, column: 12, scope: !1137)
!1147 = !DILocation(line: 121, column: 18, scope: !1137)
!1148 = !DILocation(line: 122, column: 5, scope: !1134)
!1149 = !DILocation(line: 123, column: 29, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 122, column: 12)
!1151 = !DILocation(line: 123, column: 32, scope: !1150)
!1152 = !DILocation(line: 123, column: 41, scope: !1150)
!1153 = !DILocation(line: 123, column: 13, scope: !1150)
!1154 = !DILocation(line: 123, column: 11, scope: !1150)
!1155 = !DILocation(line: 124, column: 11, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 124, column: 11)
!1157 = !DILocation(line: 124, column: 11, scope: !1150)
!1158 = !DILocation(line: 125, column: 28, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 124, column: 16)
!1160 = !DILocation(line: 125, column: 13, scope: !1159)
!1161 = !DILocation(line: 126, column: 16, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 126, column: 13)
!1163 = !DILocation(line: 126, column: 14, scope: !1162)
!1164 = !DILocation(line: 126, column: 21, scope: !1162)
!1165 = !DILocation(line: 126, column: 27, scope: !1162)
!1166 = !DILocation(line: 126, column: 25, scope: !1162)
!1167 = !DILocation(line: 126, column: 31, scope: !1162)
!1168 = !DILocation(line: 126, column: 36, scope: !1162)
!1169 = !DILocation(line: 126, column: 34, scope: !1162)
!1170 = !DILocation(line: 126, column: 44, scope: !1162)
!1171 = !DILocation(line: 126, column: 51, scope: !1162)
!1172 = !DILocation(line: 126, column: 56, scope: !1162)
!1173 = !DILocation(line: 126, column: 54, scope: !1162)
!1174 = !DILocation(line: 126, column: 64, scope: !1162)
!1175 = !DILocation(line: 126, column: 13, scope: !1159)
!1176 = !DILocation(line: 127, column: 29, scope: !1162)
!1177 = !DILocation(line: 127, column: 11, scope: !1162)
!1178 = !DILocation(line: 129, column: 29, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 128, column: 14)
!1180 = !DILocation(line: 129, column: 11, scope: !1179)
!1181 = !DILocation(line: 130, column: 11, scope: !1179)
!1182 = !DILocation(line: 130, column: 14, scope: !1179)
!1183 = !DILocation(line: 130, column: 20, scope: !1179)
!1184 = !DILocation(line: 132, column: 7, scope: !1159)
!1185 = !DILocation(line: 133, column: 28, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 132, column: 14)
!1187 = !DILocation(line: 133, column: 31, scope: !1186)
!1188 = !DILocation(line: 133, column: 13, scope: !1186)
!1189 = !DILocation(line: 134, column: 14, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 134, column: 13)
!1191 = !DILocation(line: 134, column: 17, scope: !1190)
!1192 = !DILocation(line: 134, column: 23, scope: !1190)
!1193 = !DILocation(line: 134, column: 28, scope: !1190)
!1194 = !DILocation(line: 134, column: 32, scope: !1190)
!1195 = !DILocation(line: 134, column: 36, scope: !1190)
!1196 = !DILocation(line: 134, column: 41, scope: !1190)
!1197 = !DILocation(line: 134, column: 39, scope: !1190)
!1198 = !DILocation(line: 134, column: 46, scope: !1190)
!1199 = !DILocation(line: 134, column: 51, scope: !1190)
!1200 = !DILocation(line: 134, column: 49, scope: !1190)
!1201 = !DILocation(line: 134, column: 59, scope: !1190)
!1202 = !DILocation(line: 134, column: 66, scope: !1190)
!1203 = !DILocation(line: 135, column: 15, scope: !1190)
!1204 = !DILocation(line: 135, column: 13, scope: !1190)
!1205 = !DILocation(line: 135, column: 23, scope: !1190)
!1206 = !DILocation(line: 135, column: 30, scope: !1190)
!1207 = !DILocation(line: 135, column: 35, scope: !1190)
!1208 = !DILocation(line: 135, column: 33, scope: !1190)
!1209 = !DILocation(line: 135, column: 43, scope: !1190)
!1210 = !DILocation(line: 134, column: 13, scope: !1186)
!1211 = !DILocation(line: 136, column: 29, scope: !1190)
!1212 = !DILocation(line: 136, column: 11, scope: !1190)
!1213 = !DILocation(line: 138, column: 29, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 137, column: 14)
!1215 = !DILocation(line: 138, column: 11, scope: !1214)
!1216 = !DILocation(line: 139, column: 11, scope: !1214)
!1217 = !DILocation(line: 139, column: 14, scope: !1214)
!1218 = !DILocation(line: 139, column: 20, scope: !1214)
!1219 = !DILocation(line: 143, column: 3, scope: !1114)
!1220 = !DILocation(line: 144, column: 9, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 144, column: 9)
!1222 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 143, column: 10)
!1223 = !DILocation(line: 144, column: 12, scope: !1221)
!1224 = !DILocation(line: 144, column: 9, scope: !1222)
!1225 = !DILocation(line: 145, column: 7, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 144, column: 20)
!1227 = !DILocation(line: 146, column: 25, scope: !1226)
!1228 = !DILocation(line: 146, column: 7, scope: !1226)
!1229 = !DILocation(line: 147, column: 5, scope: !1226)
!1230 = !DILocation(line: 148, column: 25, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 147, column: 12)
!1232 = !DILocation(line: 148, column: 7, scope: !1231)
!1233 = !DILocation(line: 150, column: 5, scope: !1222)
!1234 = !DILocation(line: 151, column: 9, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 151, column: 9)
!1236 = !DILocation(line: 151, column: 12, scope: !1235)
!1237 = !DILocation(line: 151, column: 9, scope: !1222)
!1238 = !DILocation(line: 152, column: 25, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 151, column: 19)
!1240 = !DILocation(line: 152, column: 7, scope: !1239)
!1241 = !DILocation(line: 153, column: 7, scope: !1239)
!1242 = !DILocation(line: 154, column: 5, scope: !1239)
!1243 = !DILocation(line: 155, column: 23, scope: !1222)
!1244 = !DILocation(line: 155, column: 5, scope: !1222)
!1245 = !DILocation(line: 158, column: 10, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 158, column: 9)
!1247 = !DILocation(line: 158, column: 9, scope: !1222)
!1248 = !DILocation(line: 159, column: 19, scope: !1246)
!1249 = !DILocation(line: 159, column: 17, scope: !1246)
!1250 = !DILocation(line: 159, column: 7, scope: !1246)
!1251 = !DILocalVariable(name: "tmp", scope: !1222, file: !3, line: 160, type: !86)
!1252 = !DILocation(line: 160, column: 11, scope: !1222)
!1253 = !DILocation(line: 161, column: 26, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 161, column: 9)
!1255 = !DILocation(line: 161, column: 29, scope: !1254)
!1256 = !DILocation(line: 161, column: 42, scope: !1254)
!1257 = !DILocation(line: 161, column: 55, scope: !1254)
!1258 = !DILocation(line: 161, column: 10, scope: !1254)
!1259 = !DILocation(line: 161, column: 66, scope: !1254)
!1260 = !DILocation(line: 162, column: 32, scope: !1254)
!1261 = !DILocation(line: 162, column: 35, scope: !1254)
!1262 = !DILocation(line: 162, column: 44, scope: !1254)
!1263 = !DILocation(line: 162, column: 16, scope: !1254)
!1264 = !DILocation(line: 162, column: 14, scope: !1254)
!1265 = !DILocation(line: 161, column: 9, scope: !1222)
!1266 = !DILocation(line: 163, column: 25, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 162, column: 57)
!1268 = !DILocation(line: 163, column: 7, scope: !1267)
!1269 = !DILocation(line: 164, column: 7, scope: !1267)
!1270 = !DILocation(line: 165, column: 25, scope: !1267)
!1271 = !DILocation(line: 165, column: 7, scope: !1267)
!1272 = !DILocation(line: 166, column: 5, scope: !1267)
!1273 = !DILocation(line: 167, column: 26, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 167, column: 9)
!1275 = !DILocation(line: 167, column: 29, scope: !1274)
!1276 = !DILocation(line: 167, column: 42, scope: !1274)
!1277 = !DILocation(line: 167, column: 55, scope: !1274)
!1278 = !DILocation(line: 167, column: 10, scope: !1274)
!1279 = !DILocation(line: 167, column: 9, scope: !1222)
!1280 = !DILocation(line: 168, column: 25, scope: !1274)
!1281 = !DILocation(line: 168, column: 7, scope: !1274)
!1282 = !DILocation(line: 171, column: 15, scope: !311)
!1283 = !DILocation(line: 171, column: 18, scope: !311)
!1284 = !DILocation(line: 171, column: 31, scope: !311)
!1285 = !DILocation(line: 171, column: 61, scope: !311)
!1286 = !DILocation(line: 171, column: 3, scope: !311)
!1287 = !DILocation(line: 172, column: 21, scope: !311)
!1288 = !DILocation(line: 172, column: 3, scope: !311)
!1289 = !DILocation(line: 173, column: 12, scope: !311)
!1290 = !DILocation(line: 173, column: 3, scope: !311)
!1291 = !DILocation(line: 174, column: 1, scope: !311)
!1292 = distinct !DISubprogram(name: "http1_after_finish", scope: !3, file: !3, line: 51, type: !73, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1293 = !DILocalVariable(name: "h", arg: 1, scope: !1292, file: !3, line: 51, type: !75)
!1294 = !DILocation(line: 51, column: 47, scope: !1292)
!1295 = !DILocalVariable(name: "p", scope: !1292, file: !3, line: 52, type: !28)
!1296 = !DILocation(line: 52, column: 14, scope: !1292)
!1297 = !DILocation(line: 52, column: 18, scope: !1292)
!1298 = !DILocation(line: 53, column: 13, scope: !1292)
!1299 = !DILocation(line: 53, column: 16, scope: !1292)
!1300 = !DILocation(line: 53, column: 21, scope: !1292)
!1301 = !DILocation(line: 53, column: 3, scope: !1292)
!1302 = !DILocation(line: 53, column: 6, scope: !1292)
!1303 = !DILocation(line: 53, column: 11, scope: !1292)
!1304 = !DILocation(line: 54, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 54, column: 7)
!1306 = !DILocation(line: 54, column: 13, scope: !1305)
!1307 = !DILocation(line: 54, column: 16, scope: !1305)
!1308 = !DILocation(line: 54, column: 9, scope: !1305)
!1309 = !DILocation(line: 54, column: 7, scope: !1292)
!1310 = !DILocation(line: 55, column: 20, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 54, column: 25)
!1312 = !DILocation(line: 55, column: 5, scope: !1311)
!1313 = !DILocation(line: 56, column: 14, scope: !1311)
!1314 = !DILocation(line: 56, column: 5, scope: !1311)
!1315 = !DILocation(line: 57, column: 3, scope: !1311)
!1316 = !DILocation(line: 58, column: 18, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 57, column: 10)
!1318 = !DILocation(line: 58, column: 21, scope: !1317)
!1319 = !DILocation(line: 58, column: 24, scope: !1317)
!1320 = !DILocation(line: 58, column: 26, scope: !1317)
!1321 = !DILocation(line: 58, column: 36, scope: !1317)
!1322 = !DILocation(line: 58, column: 5, scope: !1317)
!1323 = !DILocation(line: 60, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 60, column: 7)
!1325 = !DILocation(line: 60, column: 10, scope: !1324)
!1326 = !DILocation(line: 60, column: 7, scope: !1292)
!1327 = !DILocation(line: 61, column: 15, scope: !1324)
!1328 = !DILocation(line: 61, column: 18, scope: !1324)
!1329 = !DILocation(line: 61, column: 20, scope: !1324)
!1330 = !DILocation(line: 61, column: 5, scope: !1324)
!1331 = !DILocation(line: 62, column: 1, scope: !1292)
!1332 = distinct !DISubprogram(name: "fiobj_send_free", scope: !1333, file: !1333, line: 13, type: !1334, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1333 = !DIFile(filename: "../include/fiobj4fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!146, !45, !86}
!1336 = !DILocalVariable(name: "uuid", arg: 1, scope: !1332, file: !1333, line: 13, type: !45)
!1337 = !DILocation(line: 13, column: 72, scope: !1332)
!1338 = !DILocalVariable(name: "o", arg: 2, scope: !1332, file: !1333, line: 14, type: !86)
!1339 = !DILocation(line: 14, column: 69, scope: !1332)
!1340 = !DILocalVariable(name: "s", scope: !1332, file: !1333, line: 15, type: !187)
!1341 = !DILocation(line: 15, column: 18, scope: !1332)
!1342 = !DILocation(line: 15, column: 37, scope: !1332)
!1343 = !DILocation(line: 15, column: 22, scope: !1332)
!1344 = !DILocation(line: 16, column: 10, scope: !1332)
!1345 = !DILocation(line: 16, column: 3, scope: !1332)
!1346 = distinct !DISubprogram(name: "fiobj_hash_string", scope: !13, file: !13, line: 560, type: !1347, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!163, !293, !61}
!1349 = !DILocalVariable(name: "data", arg: 1, scope: !1346, file: !13, line: 560, type: !293)
!1350 = !DILocation(line: 560, column: 51, scope: !1346)
!1351 = !DILocalVariable(name: "len", arg: 2, scope: !1346, file: !13, line: 560, type: !61)
!1352 = !DILocation(line: 560, column: 64, scope: !1346)
!1353 = !DILocation(line: 561, column: 10, scope: !1346)
!1354 = !DILocation(line: 561, column: 3, scope: !1346)
!1355 = !DILocalVariable(name: "status", arg: 1, scope: !319, file: !3, line: 833, type: !84)
!1356 = !DILocation(line: 833, column: 52, scope: !319)
!1357 = !DILocalVariable(name: "ret", scope: !319, file: !3, line: 900, type: !187)
!1358 = !DILocation(line: 900, column: 18, scope: !319)
!1359 = !DILocation(line: 901, column: 7, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !319, file: !3, line: 901, column: 7)
!1361 = !DILocation(line: 901, column: 14, scope: !1360)
!1362 = !DILocation(line: 901, column: 21, scope: !1360)
!1363 = !DILocation(line: 902, column: 8, scope: !1360)
!1364 = !DILocation(line: 902, column: 15, scope: !1360)
!1365 = !DILocation(line: 902, column: 22, scope: !1360)
!1366 = !DILocation(line: 901, column: 7, scope: !319)
!1367 = !DILocation(line: 903, column: 22, scope: !1360)
!1368 = !DILocation(line: 903, column: 29, scope: !1360)
!1369 = !DILocation(line: 903, column: 11, scope: !1360)
!1370 = !DILocation(line: 903, column: 5, scope: !1360)
!1371 = !DILocation(line: 904, column: 12, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !319, file: !3, line: 904, column: 7)
!1373 = !DILocation(line: 904, column: 8, scope: !1372)
!1374 = !DILocation(line: 904, column: 7, scope: !319)
!1375 = !DILocation(line: 905, column: 11, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 904, column: 18)
!1377 = !DILocation(line: 906, column: 3, scope: !1376)
!1378 = !DILocation(line: 907, column: 3, scope: !319)
!1379 = distinct !DISubprogram(name: "fiobj_obj2cstr", scope: !13, file: !13, line: 515, type: !1380, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!187, !1382}
!1382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!1383 = !DILocalVariable(name: "o", arg: 1, scope: !1379, file: !13, line: 515, type: !1382)
!1384 = !DILocation(line: 515, column: 54, scope: !1379)
!1385 = !DILocation(line: 516, column: 8, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1379, file: !13, line: 516, column: 7)
!1387 = !DILocation(line: 516, column: 7, scope: !1379)
!1388 = !DILocalVariable(name: "ret", scope: !1389, file: !13, line: 517, type: !187)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !13, line: 516, column: 11)
!1390 = !DILocation(line: 517, column: 20, scope: !1389)
!1391 = !DILocation(line: 518, column: 5, scope: !1389)
!1392 = !DILocation(line: 520, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1379, file: !13, line: 520, column: 7)
!1394 = !DILocation(line: 520, column: 9, scope: !1393)
!1395 = !DILocation(line: 520, column: 7, scope: !1379)
!1396 = !DILocation(line: 521, column: 35, scope: !1393)
!1397 = !DILocation(line: 521, column: 38, scope: !1393)
!1398 = !DILocation(line: 521, column: 12, scope: !1393)
!1399 = !DILocation(line: 521, column: 5, scope: !1393)
!1400 = !DILocation(line: 522, column: 8, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1379, file: !13, line: 522, column: 7)
!1402 = !DILocation(line: 522, column: 10, scope: !1401)
!1403 = !DILocation(line: 522, column: 37, scope: !1401)
!1404 = !DILocation(line: 522, column: 7, scope: !1379)
!1405 = !DILocation(line: 523, column: 30, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1401, file: !13, line: 522, column: 65)
!1407 = !DILocation(line: 523, column: 13, scope: !1406)
!1408 = !DILocation(line: 523, column: 5, scope: !1406)
!1409 = !DILocalVariable(name: "ret", scope: !1410, file: !13, line: 525, type: !187)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !13, line: 524, column: 24)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !13, line: 523, column: 33)
!1412 = !DILocation(line: 525, column: 22, scope: !1410)
!1413 = !DILocation(line: 526, column: 7, scope: !1410)
!1414 = !DILocalVariable(name: "ret", scope: !1415, file: !13, line: 529, type: !187)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !13, line: 528, column: 25)
!1416 = !DILocation(line: 529, column: 22, scope: !1415)
!1417 = !DILocation(line: 530, column: 7, scope: !1415)
!1418 = !DILocalVariable(name: "ret", scope: !1419, file: !13, line: 533, type: !187)
!1419 = distinct !DILexicalBlock(scope: !1411, file: !13, line: 532, column: 24)
!1420 = !DILocation(line: 533, column: 22, scope: !1419)
!1421 = !DILocation(line: 534, column: 7, scope: !1419)
!1422 = !DILocation(line: 537, column: 7, scope: !1411)
!1423 = !DILocation(line: 539, column: 3, scope: !1406)
!1424 = !DILocation(line: 540, column: 10, scope: !1379)
!1425 = !DILocation(line: 540, column: 28, scope: !1379)
!1426 = !DILocation(line: 540, column: 35, scope: !1379)
!1427 = !DILocation(line: 540, column: 3, scope: !1379)
!1428 = !DILocation(line: 541, column: 1, scope: !1379)
!1429 = distinct !DISubprogram(name: "fiobj_each1", scope: !13, file: !13, line: 638, type: !1430, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!61, !86, !61, !1432, !27}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!238, !86, !27}
!1435 = !DILocalVariable(name: "o", arg: 1, scope: !1429, file: !13, line: 638, type: !86)
!1436 = !DILocation(line: 638, column: 37, scope: !1429)
!1437 = !DILocalVariable(name: "start_at", arg: 2, scope: !1429, file: !13, line: 638, type: !61)
!1438 = !DILocation(line: 638, column: 47, scope: !1429)
!1439 = !DILocalVariable(name: "task", arg: 3, scope: !1429, file: !13, line: 639, type: !1432)
!1440 = !DILocation(line: 639, column: 37, scope: !1429)
!1441 = !DILocalVariable(name: "arg", arg: 4, scope: !1429, file: !13, line: 639, type: !27)
!1442 = !DILocation(line: 639, column: 72, scope: !1429)
!1443 = !DILocation(line: 640, column: 7, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1429, file: !13, line: 640, column: 7)
!1445 = !DILocation(line: 640, column: 29, scope: !1444)
!1446 = !DILocation(line: 640, column: 32, scope: !1444)
!1447 = !DILocation(line: 640, column: 50, scope: !1444)
!1448 = !DILocation(line: 640, column: 7, scope: !1429)
!1449 = !DILocation(line: 641, column: 12, scope: !1444)
!1450 = !DILocation(line: 641, column: 30, scope: !1444)
!1451 = !DILocation(line: 641, column: 35, scope: !1444)
!1452 = !DILocation(line: 641, column: 38, scope: !1444)
!1453 = !DILocation(line: 641, column: 48, scope: !1444)
!1454 = !DILocation(line: 641, column: 54, scope: !1444)
!1455 = !DILocation(line: 641, column: 5, scope: !1444)
!1456 = !DILocation(line: 642, column: 3, scope: !1429)
!1457 = !DILocation(line: 643, column: 1, scope: !1429)
!1458 = distinct !DISubprogram(name: "write_header", scope: !3, file: !3, line: 73, type: !1433, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1459 = !DILocalVariable(name: "o", arg: 1, scope: !1458, file: !3, line: 73, type: !86)
!1460 = !DILocation(line: 73, column: 31, scope: !1458)
!1461 = !DILocalVariable(name: "w_", arg: 2, scope: !1458, file: !3, line: 73, type: !27)
!1462 = !DILocation(line: 73, column: 40, scope: !1458)
!1463 = !DILocalVariable(name: "w", scope: !1458, file: !3, line: 74, type: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1465 = !DILocation(line: 74, column: 27, scope: !1458)
!1466 = !DILocation(line: 74, column: 31, scope: !1458)
!1467 = !DILocation(line: 75, column: 8, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 75, column: 7)
!1469 = !DILocation(line: 75, column: 7, scope: !1458)
!1470 = !DILocation(line: 76, column: 5, scope: !1468)
!1471 = !DILocation(line: 77, column: 7, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 77, column: 7)
!1473 = !DILocation(line: 77, column: 7, scope: !1458)
!1474 = !DILocation(line: 78, column: 15, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 77, column: 33)
!1476 = !DILocation(line: 78, column: 5, scope: !1475)
!1477 = !DILocation(line: 78, column: 8, scope: !1475)
!1478 = !DILocation(line: 78, column: 13, scope: !1475)
!1479 = !DILocation(line: 79, column: 3, scope: !1475)
!1480 = !DILocation(line: 80, column: 7, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 80, column: 7)
!1482 = !DILocation(line: 80, column: 7, scope: !1458)
!1483 = !DILocation(line: 81, column: 17, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 80, column: 40)
!1485 = !DILocation(line: 81, column: 37, scope: !1484)
!1486 = !DILocation(line: 81, column: 5, scope: !1484)
!1487 = !DILocation(line: 82, column: 5, scope: !1484)
!1488 = !DILocalVariable(name: "name", scope: !1458, file: !3, line: 84, type: !187)
!1489 = !DILocation(line: 84, column: 18, scope: !1458)
!1490 = !DILocation(line: 84, column: 40, scope: !1458)
!1491 = !DILocation(line: 84, column: 43, scope: !1458)
!1492 = !DILocation(line: 84, column: 25, scope: !1458)
!1493 = !DILocalVariable(name: "str", scope: !1458, file: !3, line: 85, type: !187)
!1494 = !DILocation(line: 85, column: 18, scope: !1458)
!1495 = !DILocation(line: 85, column: 39, scope: !1458)
!1496 = !DILocation(line: 85, column: 24, scope: !1458)
!1497 = !DILocation(line: 86, column: 12, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 86, column: 7)
!1499 = !DILocation(line: 86, column: 8, scope: !1498)
!1500 = !DILocation(line: 86, column: 7, scope: !1458)
!1501 = !DILocation(line: 87, column: 5, scope: !1498)
!1502 = !DILocation(line: 91, column: 19, scope: !1458)
!1503 = !DILocation(line: 91, column: 22, scope: !1458)
!1504 = !DILocation(line: 91, column: 33, scope: !1458)
!1505 = !DILocation(line: 91, column: 44, scope: !1458)
!1506 = !DILocation(line: 91, column: 3, scope: !1458)
!1507 = !DILocation(line: 92, column: 19, scope: !1458)
!1508 = !DILocation(line: 92, column: 22, scope: !1458)
!1509 = !DILocation(line: 92, column: 3, scope: !1458)
!1510 = !DILocation(line: 93, column: 19, scope: !1458)
!1511 = !DILocation(line: 93, column: 22, scope: !1458)
!1512 = !DILocation(line: 93, column: 32, scope: !1458)
!1513 = !DILocation(line: 93, column: 42, scope: !1458)
!1514 = !DILocation(line: 93, column: 3, scope: !1458)
!1515 = !DILocation(line: 94, column: 19, scope: !1458)
!1516 = !DILocation(line: 94, column: 22, scope: !1458)
!1517 = !DILocation(line: 94, column: 3, scope: !1458)
!1518 = !DILocation(line: 95, column: 3, scope: !1458)
!1519 = !DILocation(line: 96, column: 1, scope: !1458)
!1520 = distinct !DISubprogram(name: "fiobj_type_vtable", scope: !13, file: !13, line: 344, type: !1521, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!1523, !86}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_vtable_s", file: !13, line: 325, baseType: !1526)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 305, size: 576, elements: !1527)
!1527 = !{!1528, !1529, !1537, !1542, !1547, !1552, !1555, !1558, !1563}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "class_name", scope: !1526, file: !13, line: 307, baseType: !120, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !1526, file: !13, line: 309, baseType: !1530, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1531)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{null, !86, !1534, !27}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !86, !27}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1526, file: !13, line: 311, baseType: !1538, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!84, !1382}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "is_true", scope: !1526, file: !13, line: 313, baseType: !1543, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!61, !1382}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "is_eq", scope: !1526, file: !13, line: 315, baseType: !1548, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!61, !1382, !1382}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "each", scope: !1526, file: !13, line: 317, baseType: !1553, size: 64, offset: 320)
!1553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1554)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "to_str", scope: !1526, file: !13, line: 320, baseType: !1556, size: 64, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1557)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "to_i", scope: !1526, file: !13, line: 322, baseType: !1559, size: 64, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1560)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!45, !1382}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "to_f", scope: !1526, file: !13, line: 324, baseType: !1564, size: 64, offset: 512)
!1564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!1568, !1382}
!1568 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1569 = !DILocalVariable(name: "o", arg: 1, scope: !1520, file: !13, line: 344, type: !86)
!1570 = !DILocation(line: 344, column: 65, scope: !1520)
!1571 = !DILocation(line: 345, column: 11, scope: !1520)
!1572 = !DILocation(line: 345, column: 3, scope: !1520)
!1573 = !DILocation(line: 347, column: 5, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1520, file: !13, line: 345, column: 26)
!1575 = !DILocation(line: 349, column: 5, scope: !1574)
!1576 = !DILocation(line: 351, column: 5, scope: !1574)
!1577 = !DILocation(line: 353, column: 5, scope: !1574)
!1578 = !DILocation(line: 355, column: 5, scope: !1574)
!1579 = !DILocation(line: 357, column: 5, scope: !1574)
!1580 = !DILocation(line: 362, column: 5, scope: !1574)
!1581 = !DILocation(line: 364, column: 3, scope: !1520)
!1582 = !DILocation(line: 365, column: 1, scope: !1520)
!1583 = distinct !DISubprogram(name: "fiobj_type", scope: !13, file: !13, line: 250, type: !1584, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!165, !86}
!1586 = !DILocalVariable(name: "o", arg: 1, scope: !1583, file: !13, line: 250, type: !86)
!1587 = !DILocation(line: 250, column: 45, scope: !1583)
!1588 = !DILocation(line: 251, column: 8, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1583, file: !13, line: 251, column: 7)
!1590 = !DILocation(line: 251, column: 7, scope: !1583)
!1591 = !DILocation(line: 252, column: 5, scope: !1589)
!1592 = !DILocation(line: 253, column: 7, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1583, file: !13, line: 253, column: 7)
!1594 = !DILocation(line: 253, column: 9, scope: !1593)
!1595 = !DILocation(line: 253, column: 7, scope: !1583)
!1596 = !DILocation(line: 254, column: 5, scope: !1593)
!1597 = !DILocation(line: 255, column: 8, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1583, file: !13, line: 255, column: 7)
!1599 = !DILocation(line: 255, column: 10, scope: !1598)
!1600 = !DILocation(line: 255, column: 37, scope: !1598)
!1601 = !DILocation(line: 255, column: 7, scope: !1583)
!1602 = !DILocation(line: 256, column: 29, scope: !1598)
!1603 = !DILocation(line: 256, column: 12, scope: !1598)
!1604 = !DILocation(line: 256, column: 5, scope: !1598)
!1605 = !DILocation(line: 258, column: 8, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1583, file: !13, line: 257, column: 7)
!1607 = !DILocation(line: 258, column: 10, scope: !1606)
!1608 = !DILocation(line: 258, column: 37, scope: !1606)
!1609 = !DILocation(line: 257, column: 7, scope: !1583)
!1610 = !DILocation(line: 259, column: 5, scope: !1606)
!1611 = !DILocation(line: 260, column: 30, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1583, file: !13, line: 260, column: 7)
!1613 = !DILocation(line: 260, column: 32, scope: !1612)
!1614 = !DILocation(line: 260, column: 59, scope: !1612)
!1615 = !DILocation(line: 260, column: 7, scope: !1583)
!1616 = !DILocation(line: 261, column: 5, scope: !1612)
!1617 = !DILocation(line: 262, column: 30, scope: !1583)
!1618 = !DILocation(line: 262, column: 10, scope: !1583)
!1619 = !DILocation(line: 262, column: 3, scope: !1583)
!1620 = !DILocation(line: 263, column: 1, scope: !1583)
!1621 = distinct !DISubprogram(name: "fiobj_type_is", scope: !13, file: !13, line: 269, type: !1622, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!61, !86, !165}
!1624 = !DILocalVariable(name: "o", arg: 1, scope: !1621, file: !13, line: 269, type: !86)
!1625 = !DILocation(line: 269, column: 39, scope: !1621)
!1626 = !DILocalVariable(name: "type", arg: 2, scope: !1621, file: !13, line: 269, type: !165)
!1627 = !DILocation(line: 269, column: 58, scope: !1621)
!1628 = !DILocation(line: 270, column: 11, scope: !1621)
!1629 = !DILocation(line: 270, column: 3, scope: !1621)
!1630 = !DILocation(line: 272, column: 13, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1621, file: !13, line: 270, column: 17)
!1632 = !DILocation(line: 272, column: 15, scope: !1631)
!1633 = !DILocation(line: 272, column: 39, scope: !1631)
!1634 = !DILocation(line: 273, column: 32, scope: !1631)
!1635 = !DILocation(line: 273, column: 13, scope: !1631)
!1636 = !DILocation(line: 273, column: 12, scope: !1631)
!1637 = !DILocation(line: 273, column: 38, scope: !1631)
!1638 = !DILocation(line: 272, column: 12, scope: !1631)
!1639 = !DILocation(line: 272, column: 5, scope: !1631)
!1640 = !DILocation(line: 275, column: 13, scope: !1631)
!1641 = !DILocation(line: 275, column: 15, scope: !1631)
!1642 = !DILocation(line: 275, column: 18, scope: !1631)
!1643 = !DILocation(line: 275, column: 23, scope: !1631)
!1644 = !DILocation(line: 275, column: 20, scope: !1631)
!1645 = !DILocation(line: 275, column: 12, scope: !1631)
!1646 = !DILocation(line: 275, column: 5, scope: !1631)
!1647 = !DILocation(line: 277, column: 12, scope: !1631)
!1648 = !DILocation(line: 277, column: 17, scope: !1631)
!1649 = !DILocation(line: 277, column: 14, scope: !1631)
!1650 = !DILocation(line: 277, column: 5, scope: !1631)
!1651 = !DILocation(line: 279, column: 12, scope: !1631)
!1652 = !DILocation(line: 279, column: 17, scope: !1631)
!1653 = !DILocation(line: 279, column: 14, scope: !1631)
!1654 = !DILocation(line: 279, column: 5, scope: !1631)
!1655 = !DILocation(line: 281, column: 38, scope: !1631)
!1656 = !DILocation(line: 281, column: 40, scope: !1631)
!1657 = !DILocation(line: 281, column: 64, scope: !1631)
!1658 = !DILocation(line: 281, column: 69, scope: !1631)
!1659 = !DILocation(line: 282, column: 14, scope: !1631)
!1660 = !DILocation(line: 282, column: 16, scope: !1631)
!1661 = !DILocation(line: 282, column: 43, scope: !1631)
!1662 = !DILocation(line: 282, column: 68, scope: !1631)
!1663 = !DILocation(line: 281, column: 12, scope: !1631)
!1664 = !DILocation(line: 281, column: 5, scope: !1631)
!1665 = !DILocation(line: 287, column: 16, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !13, line: 286, column: 29)
!1667 = distinct !DILexicalBlock(scope: !1631, file: !13, line: 286, column: 9)
!1668 = !DILocation(line: 287, column: 18, scope: !1666)
!1669 = !DILocation(line: 287, column: 42, scope: !1666)
!1670 = !DILocation(line: 287, column: 47, scope: !1666)
!1671 = !DILocation(line: 288, column: 16, scope: !1666)
!1672 = !DILocation(line: 288, column: 18, scope: !1666)
!1673 = !DILocation(line: 288, column: 45, scope: !1666)
!1674 = !DILocation(line: 0, scope: !1666)
!1675 = !DILocation(line: 287, column: 14, scope: !1666)
!1676 = !DILocation(line: 287, column: 7, scope: !1666)
!1677 = !DILocation(line: 295, column: 12, scope: !1631)
!1678 = !DILocation(line: 295, column: 34, scope: !1631)
!1679 = !DILocation(line: 296, column: 32, scope: !1631)
!1680 = !DILocation(line: 296, column: 12, scope: !1631)
!1681 = !DILocation(line: 296, column: 52, scope: !1631)
!1682 = !DILocation(line: 296, column: 49, scope: !1631)
!1683 = !DILocation(line: 0, scope: !1631)
!1684 = !DILocation(line: 295, column: 5, scope: !1631)
!1685 = !DILocation(line: 298, column: 10, scope: !1621)
!1686 = !DILocation(line: 298, column: 32, scope: !1621)
!1687 = !DILocation(line: 298, column: 55, scope: !1621)
!1688 = !DILocation(line: 298, column: 35, scope: !1621)
!1689 = !DILocation(line: 298, column: 75, scope: !1621)
!1690 = !DILocation(line: 298, column: 72, scope: !1621)
!1691 = !DILocation(line: 0, scope: !1621)
!1692 = !DILocation(line: 298, column: 3, scope: !1621)
!1693 = !DILocation(line: 299, column: 1, scope: !1621)
!1694 = distinct !DISubprogram(name: "fiobj_null", scope: !13, file: !13, line: 87, type: !1695, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!86}
!1697 = !DILocation(line: 87, column: 37, scope: !1694)
!1698 = distinct !DISubprogram(name: "fiobj_true", scope: !13, file: !13, line: 88, type: !1695, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1699 = !DILocation(line: 88, column: 37, scope: !1698)
!1700 = distinct !DISubprogram(name: "fiobj_false", scope: !13, file: !13, line: 89, type: !1695, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1701 = !DILocation(line: 89, column: 38, scope: !1700)
!1702 = distinct !DISubprogram(name: "http_s_clear", scope: !34, file: !34, line: 129, type: !1004, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1703 = !DILocalVariable(name: "h", arg: 1, scope: !1702, file: !34, line: 129, type: !75)
!1704 = !DILocation(line: 129, column: 41, scope: !1702)
!1705 = !DILocalVariable(name: "log", arg: 2, scope: !1702, file: !34, line: 129, type: !54)
!1706 = !DILocation(line: 129, column: 52, scope: !1702)
!1707 = !DILocation(line: 130, column: 18, scope: !1702)
!1708 = !DILocation(line: 130, column: 21, scope: !1702)
!1709 = !DILocation(line: 130, column: 3, scope: !1702)
!1710 = !DILocation(line: 131, column: 14, scope: !1702)
!1711 = !DILocation(line: 131, column: 40, scope: !1702)
!1712 = !DILocation(line: 131, column: 43, scope: !1702)
!1713 = !DILocation(line: 131, column: 56, scope: !1702)
!1714 = !DILocation(line: 131, column: 17, scope: !1702)
!1715 = !DILocation(line: 132, column: 14, scope: !1702)
!1716 = !DILocation(line: 132, column: 17, scope: !1702)
!1717 = !DILocation(line: 132, column: 30, scope: !1702)
!1718 = !DILocation(line: 131, column: 3, scope: !1702)
!1719 = !DILocation(line: 133, column: 1, scope: !1702)
!1720 = distinct !DISubprogram(name: "fiobj4sock_dealloc", scope: !1333, file: !1333, line: 10, type: !1721, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{null, !27}
!1723 = !DILocalVariable(name: "o", arg: 1, scope: !1720, file: !1333, line: 10, type: !27)
!1724 = !DILocation(line: 10, column: 38, scope: !1720)
!1725 = !DILocation(line: 10, column: 61, scope: !1720)
!1726 = !DILocation(line: 10, column: 54, scope: !1720)
!1727 = !DILocation(line: 10, column: 43, scope: !1720)
!1728 = !DILocation(line: 10, column: 65, scope: !1720)
!1729 = distinct !DISubprogram(name: "fiobj_free", scope: !13, file: !13, line: 446, type: !1730, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !86}
!1732 = !DILocalVariable(name: "o", arg: 1, scope: !1729, file: !13, line: 446, type: !86)
!1733 = !DILocation(line: 446, column: 34, scope: !1729)
!1734 = !DILocation(line: 447, column: 8, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1729, file: !13, line: 447, column: 7)
!1736 = !DILocation(line: 447, column: 7, scope: !1729)
!1737 = !DILocation(line: 448, column: 5, scope: !1735)
!1738 = !DILocation(line: 449, column: 7, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1729, file: !13, line: 449, column: 7)
!1740 = !DILocation(line: 449, column: 7, scope: !1729)
!1741 = !DILocation(line: 450, column: 5, scope: !1739)
!1742 = !DILocation(line: 451, column: 7, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1729, file: !13, line: 451, column: 7)
!1744 = !DILocation(line: 451, column: 25, scope: !1743)
!1745 = !DILocation(line: 451, column: 30, scope: !1743)
!1746 = !DILocation(line: 451, column: 33, scope: !1743)
!1747 = !DILocation(line: 451, column: 51, scope: !1743)
!1748 = !DILocation(line: 451, column: 57, scope: !1743)
!1749 = !DILocation(line: 451, column: 7, scope: !1729)
!1750 = !DILocation(line: 452, column: 31, scope: !1743)
!1751 = !DILocation(line: 452, column: 5, scope: !1743)
!1752 = !DILocation(line: 454, column: 5, scope: !1743)
!1753 = !DILocation(line: 454, column: 23, scope: !1743)
!1754 = !DILocation(line: 454, column: 31, scope: !1743)
!1755 = !DILocation(line: 455, column: 1, scope: !1729)
!1756 = distinct !DISubprogram(name: "fio_sendfile", scope: !6, file: !6, line: 1250, type: !1757, scopeLine: 1251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!146, !45, !45, !1759, !61}
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !147, line: 63, baseType: !1760)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !57, line: 152, baseType: !47)
!1761 = !DILocalVariable(name: "uuid", arg: 1, scope: !1756, file: !6, line: 1250, type: !45)
!1762 = !DILocation(line: 1250, column: 47, scope: !1756)
!1763 = !DILocalVariable(name: "source_fd", arg: 2, scope: !1756, file: !6, line: 1250, type: !45)
!1764 = !DILocation(line: 1250, column: 62, scope: !1756)
!1765 = !DILocalVariable(name: "offset", arg: 3, scope: !1756, file: !6, line: 1251, type: !1759)
!1766 = !DILocation(line: 1251, column: 44, scope: !1756)
!1767 = !DILocalVariable(name: "length", arg: 4, scope: !1756, file: !6, line: 1251, type: !61)
!1768 = !DILocation(line: 1251, column: 59, scope: !1756)
!1769 = !DILocation(line: 1252, column: 10, scope: !1756)
!1770 = !DILocation(line: 1252, column: 3, scope: !1756)
!1771 = !DILocalVariable(name: "h", arg: 1, scope: !327, file: !3, line: 323, type: !75)
!1772 = !DILocation(line: 323, column: 48, scope: !327)
!1773 = !DILocalVariable(name: "args", arg: 2, scope: !327, file: !3, line: 323, type: !176)
!1774 = !DILocation(line: 323, column: 73, scope: !327)
!1775 = !DILocation(line: 328, column: 8, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !327, file: !3, line: 328, column: 7)
!1777 = !DILocation(line: 328, column: 7, scope: !327)
!1778 = !DILocation(line: 329, column: 19, scope: !1776)
!1779 = !DILocation(line: 329, column: 17, scope: !1776)
!1780 = !DILocation(line: 329, column: 5, scope: !1776)
!1781 = !DILocation(line: 330, column: 8, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !327, file: !3, line: 330, column: 7)
!1783 = !DILocation(line: 330, column: 7, scope: !327)
!1784 = !DILocation(line: 331, column: 15, scope: !1782)
!1785 = !DILocation(line: 331, column: 13, scope: !1782)
!1786 = !DILocation(line: 331, column: 5, scope: !1782)
!1787 = !DILocalVariable(name: "tmp", scope: !327, file: !3, line: 333, type: !86)
!1788 = !DILocation(line: 333, column: 9, scope: !327)
!1789 = !DILocation(line: 333, column: 31, scope: !327)
!1790 = !DILocation(line: 333, column: 34, scope: !327)
!1791 = !DILocation(line: 333, column: 43, scope: !327)
!1792 = !DILocation(line: 333, column: 15, scope: !327)
!1793 = !DILocation(line: 334, column: 8, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !327, file: !3, line: 334, column: 7)
!1795 = !DILocation(line: 334, column: 7, scope: !327)
!1796 = !DILocation(line: 335, column: 5, scope: !1794)
!1797 = !DILocalVariable(name: "stmp", scope: !327, file: !3, line: 336, type: !187)
!1798 = !DILocation(line: 336, column: 18, scope: !327)
!1799 = !DILocation(line: 336, column: 40, scope: !327)
!1800 = !DILocation(line: 336, column: 25, scope: !327)
!1801 = !DILocation(line: 337, column: 12, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !327, file: !3, line: 337, column: 7)
!1803 = !DILocation(line: 337, column: 16, scope: !1802)
!1804 = !DILocation(line: 337, column: 21, scope: !1802)
!1805 = !DILocation(line: 337, column: 29, scope: !1802)
!1806 = !DILocation(line: 337, column: 24, scope: !1802)
!1807 = !DILocation(line: 337, column: 37, scope: !1802)
!1808 = !DILocation(line: 337, column: 44, scope: !1802)
!1809 = !DILocation(line: 337, column: 52, scope: !1802)
!1810 = !DILocation(line: 337, column: 47, scope: !1802)
!1811 = !DILocation(line: 337, column: 60, scope: !1802)
!1812 = !DILocation(line: 337, column: 7, scope: !327)
!1813 = !DILocation(line: 338, column: 5, scope: !1802)
!1814 = !DILocation(line: 340, column: 25, scope: !327)
!1815 = !DILocation(line: 340, column: 28, scope: !327)
!1816 = !DILocation(line: 340, column: 37, scope: !327)
!1817 = !DILocation(line: 340, column: 9, scope: !327)
!1818 = !DILocation(line: 340, column: 7, scope: !327)
!1819 = !DILocation(line: 341, column: 8, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !327, file: !3, line: 341, column: 7)
!1821 = !DILocation(line: 341, column: 7, scope: !327)
!1822 = !DILocation(line: 342, column: 5, scope: !1820)
!1823 = !DILocation(line: 343, column: 25, scope: !327)
!1824 = !DILocation(line: 343, column: 10, scope: !327)
!1825 = !DILocalVariable(name: "sha1", scope: !327, file: !3, line: 345, type: !1826)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_sha1_s", file: !6, line: 2613, baseType: !1827)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 2606, size: 768, elements: !1828)
!1828 = !{!1829, !1830, !1834}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1827, file: !6, line: 2607, baseType: !163, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1827, file: !6, line: 2608, baseType: !1831, size: 512, offset: 64)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 512, elements: !1832)
!1832 = !{!1833}
!1833 = !DISubrange(count: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !1827, file: !6, line: 2612, baseType: !1835, size: 192, offset: 576)
!1835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1827, file: !6, line: 2609, size: 192, elements: !1836)
!1836 = !{!1837, !1841}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1835, file: !6, line: 2610, baseType: !1838, size: 160)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 160, elements: !1839)
!1839 = !{!1840}
!1840 = !DISubrange(count: 5)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1835, file: !6, line: 2611, baseType: !1842, size: 168)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 168, elements: !1843)
!1843 = !{!1844}
!1844 = !DISubrange(count: 21)
!1845 = !DILocation(line: 345, column: 14, scope: !327)
!1846 = !DILocation(line: 345, column: 21, scope: !327)
!1847 = !DILocation(line: 346, column: 30, scope: !327)
!1848 = !DILocation(line: 346, column: 41, scope: !327)
!1849 = !DILocation(line: 346, column: 3, scope: !327)
!1850 = !DILocation(line: 347, column: 3, scope: !327)
!1851 = !DILocation(line: 348, column: 9, scope: !327)
!1852 = !DILocation(line: 348, column: 7, scope: !327)
!1853 = !DILocation(line: 349, column: 25, scope: !327)
!1854 = !DILocation(line: 349, column: 10, scope: !327)
!1855 = !DILocation(line: 350, column: 20, scope: !327)
!1856 = !DILocation(line: 351, column: 43, scope: !327)
!1857 = !DILocation(line: 351, column: 49, scope: !327)
!1858 = !DILocation(line: 351, column: 20, scope: !327)
!1859 = !DILocation(line: 350, column: 3, scope: !327)
!1860 = !DILocation(line: 352, column: 19, scope: !327)
!1861 = !DILocation(line: 352, column: 22, scope: !327)
!1862 = !DILocation(line: 352, column: 56, scope: !327)
!1863 = !DILocation(line: 352, column: 46, scope: !327)
!1864 = !DILocation(line: 352, column: 3, scope: !327)
!1865 = !DILocation(line: 353, column: 19, scope: !327)
!1866 = !DILocation(line: 353, column: 22, scope: !327)
!1867 = !DILocation(line: 353, column: 53, scope: !327)
!1868 = !DILocation(line: 353, column: 43, scope: !327)
!1869 = !DILocation(line: 353, column: 3, scope: !327)
!1870 = !DILocation(line: 354, column: 19, scope: !327)
!1871 = !DILocation(line: 354, column: 22, scope: !327)
!1872 = !DILocation(line: 354, column: 46, scope: !327)
!1873 = !DILocation(line: 354, column: 3, scope: !327)
!1874 = !DILocation(line: 355, column: 3, scope: !327)
!1875 = !DILocation(line: 355, column: 6, scope: !327)
!1876 = !DILocation(line: 355, column: 13, scope: !327)
!1877 = !DILocalVariable(name: "pr", scope: !327, file: !3, line: 356, type: !28)
!1878 = !DILocation(line: 356, column: 14, scope: !327)
!1879 = !DILocation(line: 356, column: 19, scope: !327)
!1880 = !DILocalVariable(name: "uuid", scope: !327, file: !3, line: 357, type: !683)
!1881 = !DILocation(line: 357, column: 18, scope: !327)
!1882 = !DILocation(line: 357, column: 25, scope: !327)
!1883 = !DILocation(line: 357, column: 39, scope: !327)
!1884 = !DILocation(line: 357, column: 41, scope: !327)
!1885 = !DILocalVariable(name: "set", scope: !327, file: !3, line: 358, type: !66)
!1886 = !DILocation(line: 358, column: 20, scope: !327)
!1887 = !DILocation(line: 358, column: 26, scope: !327)
!1888 = !DILocation(line: 358, column: 40, scope: !327)
!1889 = !DILocation(line: 358, column: 42, scope: !327)
!1890 = !DILocation(line: 359, column: 15, scope: !327)
!1891 = !DILocation(line: 359, column: 3, scope: !327)
!1892 = !DILocation(line: 360, column: 3, scope: !327)
!1893 = !DILocation(line: 360, column: 7, scope: !327)
!1894 = !DILocation(line: 360, column: 12, scope: !327)
!1895 = !DILocation(line: 361, column: 20, scope: !327)
!1896 = !DILocation(line: 361, column: 26, scope: !327)
!1897 = !DILocation(line: 361, column: 31, scope: !327)
!1898 = !DILocation(line: 361, column: 37, scope: !327)
!1899 = !DILocation(line: 361, column: 41, scope: !327)
!1900 = !DILocation(line: 361, column: 48, scope: !327)
!1901 = !DILocation(line: 361, column: 54, scope: !327)
!1902 = !DILocation(line: 362, column: 20, scope: !327)
!1903 = !DILocation(line: 362, column: 24, scope: !327)
!1904 = !DILocation(line: 362, column: 45, scope: !327)
!1905 = !DILocation(line: 362, column: 49, scope: !327)
!1906 = !DILocation(line: 362, column: 56, scope: !327)
!1907 = !DILocation(line: 362, column: 62, scope: !327)
!1908 = !DILocation(line: 362, column: 69, scope: !327)
!1909 = !DILocation(line: 362, column: 73, scope: !327)
!1910 = !DILocation(line: 362, column: 67, scope: !327)
!1911 = !DILocation(line: 362, column: 32, scope: !327)
!1912 = !DILocation(line: 361, column: 3, scope: !327)
!1913 = !DILocation(line: 363, column: 3, scope: !327)
!1914 = !DILabel(scope: !327, name: "bad_request", file: !3, line: 364)
!1915 = !DILocation(line: 364, column: 1, scope: !327)
!1916 = !DILocation(line: 365, column: 19, scope: !327)
!1917 = !DILocation(line: 365, column: 3, scope: !327)
!1918 = !DILocation(line: 366, column: 7, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !327, file: !3, line: 366, column: 7)
!1920 = !DILocation(line: 366, column: 13, scope: !1919)
!1921 = !DILocation(line: 366, column: 7, scope: !327)
!1922 = !DILocation(line: 367, column: 5, scope: !1919)
!1923 = !DILocation(line: 367, column: 11, scope: !1919)
!1924 = !DILocation(line: 367, column: 23, scope: !1919)
!1925 = !DILocation(line: 367, column: 29, scope: !1919)
!1926 = !DILocation(line: 368, column: 3, scope: !327)
!1927 = !DILocation(line: 369, column: 1, scope: !327)
!1928 = distinct !DISubprogram(name: "http1_http2websocket_client", scope: !3, file: !3, line: 371, type: !255, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!1929 = !DILocalVariable(name: "h", arg: 1, scope: !1928, file: !3, line: 371, type: !75)
!1930 = !DILocation(line: 371, column: 48, scope: !1928)
!1931 = !DILocalVariable(name: "args", arg: 2, scope: !1928, file: !3, line: 371, type: !176)
!1932 = !DILocation(line: 371, column: 73, scope: !1928)
!1933 = !DILocalVariable(name: "p", scope: !1928, file: !3, line: 372, type: !28)
!1934 = !DILocation(line: 372, column: 14, scope: !1928)
!1935 = !DILocation(line: 372, column: 18, scope: !1928)
!1936 = !DILocation(line: 374, column: 7, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 374, column: 7)
!1938 = !DILocation(line: 374, column: 10, scope: !1937)
!1939 = !DILocation(line: 374, column: 12, scope: !1937)
!1940 = !DILocation(line: 374, column: 22, scope: !1937)
!1941 = !DILocation(line: 374, column: 7, scope: !1928)
!1942 = !DILocation(line: 375, column: 5, scope: !1937)
!1943 = !DILocation(line: 375, column: 8, scope: !1937)
!1944 = !DILocation(line: 375, column: 10, scope: !1937)
!1945 = !DILocation(line: 375, column: 20, scope: !1937)
!1946 = !DILocation(line: 375, column: 30, scope: !1937)
!1947 = !DILocation(line: 375, column: 33, scope: !1937)
!1948 = !DILocation(line: 375, column: 35, scope: !1937)
!1949 = !DILocation(line: 377, column: 26, scope: !1928)
!1950 = !DILocation(line: 377, column: 3, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1928, file: !3, discriminator: 0)
!1952 = !DILocation(line: 377, column: 6, scope: !1951)
!1953 = !DILocation(line: 377, column: 8, scope: !1951)
!1954 = !DILocation(line: 377, column: 18, scope: !1951)
!1955 = !DILocation(line: 377, column: 24, scope: !1928)
!1956 = !DILocation(line: 378, column: 29, scope: !1951)
!1957 = !DILocation(line: 378, column: 32, scope: !1951)
!1958 = !DILocation(line: 378, column: 34, scope: !1951)
!1959 = !DILocation(line: 378, column: 44, scope: !1951)
!1960 = !DILocation(line: 378, column: 4, scope: !1951)
!1961 = !DILocation(line: 378, column: 3, scope: !1951)
!1962 = !DILocation(line: 378, column: 58, scope: !1951)
!1963 = !DILocation(line: 378, column: 57, scope: !1951)
!1964 = !DILocation(line: 380, column: 3, scope: !1951)
!1965 = !DILocation(line: 380, column: 6, scope: !1951)
!1966 = !DILocation(line: 380, column: 8, scope: !1951)
!1967 = !DILocation(line: 380, column: 18, scope: !1951)
!1968 = !DILocation(line: 380, column: 28, scope: !1951)
!1969 = !DILocation(line: 381, column: 3, scope: !1951)
!1970 = !DILocation(line: 381, column: 6, scope: !1951)
!1971 = !DILocation(line: 381, column: 8, scope: !1951)
!1972 = !DILocation(line: 381, column: 18, scope: !1951)
!1973 = !DILocation(line: 381, column: 29, scope: !1951)
!1974 = !DILocation(line: 382, column: 3, scope: !1951)
!1975 = !DILocation(line: 382, column: 6, scope: !1951)
!1976 = !DILocation(line: 382, column: 8, scope: !1951)
!1977 = !DILocation(line: 382, column: 18, scope: !1951)
!1978 = !DILocation(line: 382, column: 30, scope: !1951)
!1979 = !DILocation(line: 383, column: 3, scope: !1951)
!1980 = !DILocation(line: 383, column: 6, scope: !1951)
!1981 = !DILocation(line: 383, column: 8, scope: !1951)
!1982 = !DILocation(line: 383, column: 18, scope: !1951)
!1983 = !DILocation(line: 383, column: 29, scope: !1951)
!1984 = !DILocation(line: 385, column: 19, scope: !1951)
!1985 = !DILocation(line: 385, column: 22, scope: !1951)
!1986 = !DILocation(line: 385, column: 56, scope: !1951)
!1987 = !DILocation(line: 385, column: 46, scope: !1951)
!1988 = !DILocation(line: 385, column: 3, scope: !1951)
!1989 = !DILocation(line: 386, column: 19, scope: !1951)
!1990 = !DILocation(line: 386, column: 22, scope: !1951)
!1991 = !DILocation(line: 386, column: 53, scope: !1951)
!1992 = !DILocation(line: 386, column: 43, scope: !1951)
!1993 = !DILocation(line: 386, column: 3, scope: !1951)
!1994 = !DILocation(line: 387, column: 19, scope: !1951)
!1995 = !DILocation(line: 387, column: 22, scope: !1951)
!1996 = !DILocation(line: 388, column: 29, scope: !1951)
!1997 = !DILocation(line: 388, column: 19, scope: !1951)
!1998 = !DILocation(line: 387, column: 3, scope: !1951)
!1999 = !DILocalVariable(name: "key", scope: !1951, file: !3, line: 397, type: !2000)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 128, elements: !2001)
!2001 = !{!2002}
!2002 = !DISubrange(count: 2)
!2003 = !DILocation(line: 397, column: 12, scope: !1951)
!2004 = !DILocation(line: 398, column: 23, scope: !1951)
!2005 = !DILocation(line: 398, column: 12, scope: !1951)
!2006 = !DILocation(line: 398, column: 37, scope: !1951)
!2007 = !DILocation(line: 398, column: 53, scope: !1951)
!2008 = !DILocation(line: 398, column: 25, scope: !1951)
!2009 = !DILocation(line: 398, column: 3, scope: !1951)
!2010 = !DILocation(line: 398, column: 10, scope: !1951)
!2011 = !DILocation(line: 399, column: 23, scope: !1951)
!2012 = !DILocation(line: 399, column: 29, scope: !1951)
!2013 = !DILocation(line: 399, column: 12, scope: !1951)
!2014 = !DILocation(line: 399, column: 47, scope: !1951)
!2015 = !DILocation(line: 399, column: 63, scope: !1951)
!2016 = !DILocation(line: 399, column: 35, scope: !1951)
!2017 = !DILocation(line: 399, column: 3, scope: !1951)
!2018 = !DILocation(line: 399, column: 10, scope: !1951)
!2019 = !DILocalVariable(name: "encoded", scope: !1951, file: !3, line: 400, type: !86)
!2020 = !DILocation(line: 400, column: 9, scope: !1951)
!2021 = !DILocation(line: 400, column: 19, scope: !1951)
!2022 = !DILocalVariable(name: "tmp", scope: !1951, file: !3, line: 401, type: !187)
!2023 = !DILocation(line: 401, column: 18, scope: !1951)
!2024 = !DILocation(line: 401, column: 39, scope: !1951)
!2025 = !DILocation(line: 401, column: 24, scope: !1951)
!2026 = !DILocation(line: 402, column: 35, scope: !1951)
!2027 = !DILocation(line: 402, column: 49, scope: !1951)
!2028 = !DILocation(line: 402, column: 41, scope: !1951)
!2029 = !DILocation(line: 402, column: 13, scope: !1951)
!2030 = !DILocation(line: 402, column: 7, scope: !1951)
!2031 = !DILocation(line: 402, column: 11, scope: !1951)
!2032 = !DILocation(line: 403, column: 20, scope: !1951)
!2033 = !DILocation(line: 403, column: 33, scope: !1951)
!2034 = !DILocation(line: 403, column: 3, scope: !1951)
!2035 = !DILocation(line: 404, column: 19, scope: !1951)
!2036 = !DILocation(line: 404, column: 22, scope: !1951)
!2037 = !DILocation(line: 404, column: 53, scope: !1951)
!2038 = !DILocation(line: 404, column: 3, scope: !1951)
!2039 = !DILocation(line: 405, column: 15, scope: !1951)
!2040 = !DILocation(line: 405, column: 3, scope: !1951)
!2041 = !DILocation(line: 406, column: 3, scope: !1951)
!2042 = distinct !DISubprogram(name: "fiobj_dup", scope: !13, file: !13, line: 430, type: !2043, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!86, !86}
!2045 = !DILocalVariable(name: "o", arg: 1, scope: !2042, file: !13, line: 430, type: !86)
!2046 = !DILocation(line: 430, column: 34, scope: !2042)
!2047 = !DILocation(line: 431, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2042, file: !13, line: 431, column: 7)
!2049 = !DILocation(line: 431, column: 7, scope: !2042)
!2050 = !DILocation(line: 432, column: 5, scope: !2048)
!2051 = !DILocation(line: 433, column: 10, scope: !2042)
!2052 = !DILocation(line: 433, column: 3, scope: !2042)
!2053 = distinct !DISubprogram(name: "http1_websocket_client_on_hangup", scope: !3, file: !3, line: 313, type: !2054, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{null, !66}
!2056 = !DILocalVariable(name: "settings", arg: 1, scope: !2053, file: !3, line: 313, type: !66)
!2057 = !DILocation(line: 313, column: 63, scope: !2053)
!2058 = !DILocalVariable(name: "s", scope: !2053, file: !3, line: 314, type: !176)
!2059 = !DILocation(line: 314, column: 25, scope: !2053)
!2060 = !DILocation(line: 314, column: 29, scope: !2053)
!2061 = !DILocation(line: 314, column: 39, scope: !2053)
!2062 = !DILocation(line: 315, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 315, column: 7)
!2064 = !DILocation(line: 315, column: 7, scope: !2053)
!2065 = !DILocation(line: 316, column: 9, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !3, line: 316, column: 9)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 315, column: 10)
!2068 = !DILocation(line: 316, column: 12, scope: !2066)
!2069 = !DILocation(line: 316, column: 9, scope: !2067)
!2070 = !DILocation(line: 317, column: 7, scope: !2066)
!2071 = !DILocation(line: 317, column: 10, scope: !2066)
!2072 = !DILocation(line: 317, column: 22, scope: !2066)
!2073 = !DILocation(line: 317, column: 25, scope: !2066)
!2074 = !DILocation(line: 318, column: 14, scope: !2067)
!2075 = !DILocation(line: 318, column: 24, scope: !2067)
!2076 = !DILocation(line: 318, column: 5, scope: !2067)
!2077 = !DILocation(line: 319, column: 5, scope: !2067)
!2078 = !DILocation(line: 319, column: 15, scope: !2067)
!2079 = !DILocation(line: 319, column: 21, scope: !2067)
!2080 = !DILocation(line: 320, column: 3, scope: !2067)
!2081 = !DILocation(line: 321, column: 1, scope: !2053)
!2082 = distinct !DISubprogram(name: "http1_websocket_client_on_upgrade", scope: !3, file: !3, line: 291, type: !108, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2083 = !DILocalVariable(name: "h", arg: 1, scope: !2082, file: !3, line: 291, type: !75)
!2084 = !DILocation(line: 291, column: 55, scope: !2082)
!2085 = !DILocalVariable(name: "proto", arg: 2, scope: !2082, file: !3, line: 291, type: !110)
!2086 = !DILocation(line: 291, column: 64, scope: !2082)
!2087 = !DILocalVariable(name: "len", arg: 3, scope: !2082, file: !3, line: 292, type: !61)
!2088 = !DILocation(line: 292, column: 54, scope: !2082)
!2089 = !DILocalVariable(name: "p", scope: !2082, file: !3, line: 293, type: !28)
!2090 = !DILocation(line: 293, column: 14, scope: !2082)
!2091 = !DILocation(line: 293, column: 18, scope: !2082)
!2092 = !DILocalVariable(name: "args", scope: !2082, file: !3, line: 294, type: !176)
!2093 = !DILocation(line: 294, column: 25, scope: !2082)
!2094 = !DILocation(line: 294, column: 32, scope: !2082)
!2095 = !DILocation(line: 294, column: 35, scope: !2082)
!2096 = !DILocalVariable(name: "uuid", scope: !2082, file: !3, line: 295, type: !683)
!2097 = !DILocation(line: 295, column: 18, scope: !2082)
!2098 = !DILocation(line: 295, column: 25, scope: !2082)
!2099 = !DILocation(line: 295, column: 39, scope: !2082)
!2100 = !DILocation(line: 295, column: 41, scope: !2082)
!2101 = !DILocalVariable(name: "set", scope: !2082, file: !3, line: 296, type: !66)
!2102 = !DILocation(line: 296, column: 20, scope: !2082)
!2103 = !DILocation(line: 296, column: 26, scope: !2082)
!2104 = !DILocation(line: 296, column: 40, scope: !2082)
!2105 = !DILocation(line: 296, column: 42, scope: !2082)
!2106 = !DILocation(line: 297, column: 3, scope: !2082)
!2107 = !DILocation(line: 297, column: 8, scope: !2082)
!2108 = !DILocation(line: 297, column: 14, scope: !2082)
!2109 = !DILocation(line: 298, column: 15, scope: !2082)
!2110 = !DILocation(line: 298, column: 3, scope: !2082)
!2111 = !DILocation(line: 299, column: 3, scope: !2082)
!2112 = !DILocation(line: 299, column: 6, scope: !2082)
!2113 = !DILocation(line: 299, column: 11, scope: !2082)
!2114 = !DILocation(line: 300, column: 20, scope: !2082)
!2115 = !DILocation(line: 300, column: 26, scope: !2082)
!2116 = !DILocation(line: 300, column: 31, scope: !2082)
!2117 = !DILocation(line: 300, column: 37, scope: !2082)
!2118 = !DILocation(line: 300, column: 40, scope: !2082)
!2119 = !DILocation(line: 300, column: 47, scope: !2082)
!2120 = !DILocation(line: 300, column: 53, scope: !2082)
!2121 = !DILocation(line: 301, column: 20, scope: !2082)
!2122 = !DILocation(line: 301, column: 23, scope: !2082)
!2123 = !DILocation(line: 301, column: 44, scope: !2082)
!2124 = !DILocation(line: 301, column: 47, scope: !2082)
!2125 = !DILocation(line: 301, column: 54, scope: !2082)
!2126 = !DILocation(line: 301, column: 60, scope: !2082)
!2127 = !DILocation(line: 301, column: 67, scope: !2082)
!2128 = !DILocation(line: 301, column: 70, scope: !2082)
!2129 = !DILocation(line: 301, column: 65, scope: !2082)
!2130 = !DILocation(line: 301, column: 31, scope: !2082)
!2131 = !DILocation(line: 300, column: 3, scope: !2082)
!2132 = !DILocation(line: 302, column: 12, scope: !2082)
!2133 = !DILocation(line: 302, column: 3, scope: !2082)
!2134 = !DILocation(line: 303, column: 9, scope: !2082)
!2135 = !DILocation(line: 304, column: 9, scope: !2082)
!2136 = !DILocation(line: 305, column: 1, scope: !2082)
!2137 = distinct !DISubprogram(name: "http1_websocket_client_on_failed", scope: !3, file: !3, line: 306, type: !73, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2138 = !DILocalVariable(name: "h", arg: 1, scope: !2137, file: !3, line: 306, type: !75)
!2139 = !DILocation(line: 306, column: 54, scope: !2137)
!2140 = !DILocalVariable(name: "s", scope: !2137, file: !3, line: 307, type: !176)
!2141 = !DILocation(line: 307, column: 25, scope: !2137)
!2142 = !DILocation(line: 307, column: 29, scope: !2137)
!2143 = !DILocation(line: 307, column: 32, scope: !2137)
!2144 = !DILocation(line: 308, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 308, column: 7)
!2146 = !DILocation(line: 308, column: 10, scope: !2145)
!2147 = !DILocation(line: 308, column: 7, scope: !2137)
!2148 = !DILocation(line: 309, column: 5, scope: !2145)
!2149 = !DILocation(line: 309, column: 8, scope: !2145)
!2150 = !DILocation(line: 309, column: 20, scope: !2145)
!2151 = !DILocation(line: 309, column: 23, scope: !2145)
!2152 = !DILocation(line: 310, column: 12, scope: !2137)
!2153 = !DILocation(line: 310, column: 15, scope: !2137)
!2154 = !DILocation(line: 310, column: 3, scope: !2137)
!2155 = !DILocation(line: 311, column: 28, scope: !2137)
!2156 = !DILocation(line: 311, column: 14, scope: !2137)
!2157 = !DILocation(line: 311, column: 32, scope: !2137)
!2158 = !DILocation(line: 311, column: 38, scope: !2137)
!2159 = !DILocation(line: 311, column: 3, scope: !2137)
!2160 = !DILocation(line: 311, column: 6, scope: !2137)
!2161 = !DILocation(line: 311, column: 12, scope: !2137)
!2162 = !DILocation(line: 312, column: 1, scope: !2137)
!2163 = distinct !DISubprogram(name: "http1_sse_on_ready", scope: !3, file: !3, line: 430, type: !43, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2164 = !DILocalVariable(name: "uuid", arg: 1, scope: !2163, file: !3, line: 430, type: !45)
!2165 = !DILocation(line: 430, column: 41, scope: !2163)
!2166 = !DILocalVariable(name: "p_", arg: 2, scope: !2163, file: !3, line: 430, type: !48)
!2167 = !DILocation(line: 430, column: 63, scope: !2163)
!2168 = !DILocalVariable(name: "p", scope: !2163, file: !3, line: 431, type: !204)
!2169 = !DILocation(line: 431, column: 29, scope: !2163)
!2170 = !DILocation(line: 431, column: 61, scope: !2163)
!2171 = !DILocation(line: 431, column: 33, scope: !2163)
!2172 = !DILocation(line: 432, column: 7, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 432, column: 7)
!2174 = !DILocation(line: 432, column: 10, scope: !2173)
!2175 = !DILocation(line: 432, column: 15, scope: !2173)
!2176 = !DILocation(line: 432, column: 19, scope: !2173)
!2177 = !DILocation(line: 432, column: 7, scope: !2163)
!2178 = !DILocation(line: 433, column: 5, scope: !2173)
!2179 = !DILocation(line: 433, column: 8, scope: !2173)
!2180 = !DILocation(line: 433, column: 13, scope: !2173)
!2181 = !DILocation(line: 433, column: 17, scope: !2173)
!2182 = !DILocation(line: 433, column: 27, scope: !2173)
!2183 = !DILocation(line: 433, column: 30, scope: !2173)
!2184 = !DILocation(line: 433, column: 35, scope: !2173)
!2185 = !DILocation(line: 434, column: 9, scope: !2163)
!2186 = !DILocation(line: 435, column: 1, scope: !2163)
!2187 = distinct !DISubprogram(name: "http1_sse_on_shutdown", scope: !3, file: !3, line: 436, type: !52, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2188 = !DILocalVariable(name: "uuid", arg: 1, scope: !2187, file: !3, line: 436, type: !45)
!2189 = !DILocation(line: 436, column: 47, scope: !2187)
!2190 = !DILocalVariable(name: "p_", arg: 2, scope: !2187, file: !3, line: 436, type: !48)
!2191 = !DILocation(line: 436, column: 69, scope: !2187)
!2192 = !DILocalVariable(name: "p", scope: !2187, file: !3, line: 437, type: !204)
!2193 = !DILocation(line: 437, column: 29, scope: !2187)
!2194 = !DILocation(line: 437, column: 61, scope: !2187)
!2195 = !DILocation(line: 437, column: 33, scope: !2187)
!2196 = !DILocation(line: 438, column: 7, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 438, column: 7)
!2198 = !DILocation(line: 438, column: 10, scope: !2197)
!2199 = !DILocation(line: 438, column: 15, scope: !2197)
!2200 = !DILocation(line: 438, column: 19, scope: !2197)
!2201 = !DILocation(line: 438, column: 7, scope: !2187)
!2202 = !DILocation(line: 439, column: 5, scope: !2197)
!2203 = !DILocation(line: 439, column: 8, scope: !2197)
!2204 = !DILocation(line: 439, column: 13, scope: !2197)
!2205 = !DILocation(line: 439, column: 17, scope: !2197)
!2206 = !DILocation(line: 439, column: 30, scope: !2197)
!2207 = !DILocation(line: 439, column: 33, scope: !2197)
!2208 = !DILocation(line: 439, column: 38, scope: !2197)
!2209 = !DILocation(line: 440, column: 3, scope: !2187)
!2210 = distinct !DISubprogram(name: "http1_sse_on_close", scope: !3, file: !3, line: 443, type: !43, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2211 = !DILocalVariable(name: "uuid", arg: 1, scope: !2210, file: !3, line: 443, type: !45)
!2212 = !DILocation(line: 443, column: 41, scope: !2210)
!2213 = !DILocalVariable(name: "p_", arg: 2, scope: !2210, file: !3, line: 443, type: !48)
!2214 = !DILocation(line: 443, column: 63, scope: !2210)
!2215 = !DILocalVariable(name: "p", scope: !2210, file: !3, line: 444, type: !204)
!2216 = !DILocation(line: 444, column: 29, scope: !2210)
!2217 = !DILocation(line: 444, column: 61, scope: !2210)
!2218 = !DILocation(line: 444, column: 33, scope: !2210)
!2219 = !DILocation(line: 445, column: 20, scope: !2210)
!2220 = !DILocation(line: 445, column: 23, scope: !2210)
!2221 = !DILocation(line: 445, column: 3, scope: !2210)
!2222 = !DILocation(line: 446, column: 12, scope: !2210)
!2223 = !DILocation(line: 446, column: 3, scope: !2210)
!2224 = !DILocation(line: 447, column: 9, scope: !2210)
!2225 = !DILocation(line: 448, column: 1, scope: !2210)
!2226 = distinct !DISubprogram(name: "http1_sse_ping", scope: !3, file: !3, line: 449, type: !43, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2227 = !DILocalVariable(name: "uuid", arg: 1, scope: !2226, file: !3, line: 449, type: !45)
!2228 = !DILocation(line: 449, column: 37, scope: !2226)
!2229 = !DILocalVariable(name: "p_", arg: 2, scope: !2226, file: !3, line: 449, type: !48)
!2230 = !DILocation(line: 449, column: 59, scope: !2226)
!2231 = !DILocation(line: 450, column: 3, scope: !2226)
!2232 = !DILocation(line: 452, column: 9, scope: !2226)
!2233 = !DILocation(line: 453, column: 1, scope: !2226)
!2234 = distinct !DISubprogram(name: "http_sse_init", scope: !34, file: !34, line: 165, type: !2235, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{null, !210, !45, !229, !222}
!2237 = !DILocalVariable(name: "sse", arg: 1, scope: !2234, file: !34, line: 165, type: !210)
!2238 = !DILocation(line: 165, column: 55, scope: !2234)
!2239 = !DILocalVariable(name: "uuid", arg: 2, scope: !2234, file: !34, line: 165, type: !45)
!2240 = !DILocation(line: 165, column: 69, scope: !2234)
!2241 = !DILocalVariable(name: "vtbl", arg: 3, scope: !2234, file: !34, line: 166, type: !229)
!2242 = !DILocation(line: 166, column: 49, scope: !2234)
!2243 = !DILocalVariable(name: "args", arg: 4, scope: !2234, file: !34, line: 166, type: !222)
!2244 = !DILocation(line: 166, column: 67, scope: !2234)
!2245 = !DILocation(line: 167, column: 4, scope: !2234)
!2246 = !DILocation(line: 167, column: 31, scope: !2234)
!2247 = !DILocation(line: 168, column: 15, scope: !2234)
!2248 = !DILocation(line: 168, column: 14, scope: !2234)
!2249 = !DILocation(line: 169, column: 15, scope: !2234)
!2250 = !DILocation(line: 171, column: 17, scope: !2234)
!2251 = !DILocation(line: 170, column: 24, scope: !2234)
!2252 = !DILocation(line: 167, column: 10, scope: !2234)
!2253 = !DILocation(line: 174, column: 1, scope: !2234)
!2254 = distinct !DISubprogram(name: "http_sse_destroy", scope: !34, file: !34, line: 182, type: !2255, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !210}
!2257 = !DILocalVariable(name: "sse", arg: 1, scope: !2254, file: !34, line: 182, type: !210)
!2258 = !DILocation(line: 182, column: 58, scope: !2254)
!2259 = !DILocation(line: 183, column: 3, scope: !2254)
!2260 = !DILocation(line: 183, column: 22, scope: !2254)
!2261 = !DILocation(line: 183, column: 27, scope: !2254)
!2262 = !DILocation(line: 183, column: 10, scope: !2254)
!2263 = !DILocalVariable(name: "sub", scope: !2264, file: !34, line: 184, type: !27)
!2264 = distinct !DILexicalBlock(scope: !2254, file: !34, line: 183, column: 43)
!2265 = !DILocation(line: 184, column: 11, scope: !2264)
!2266 = !DILocation(line: 184, column: 29, scope: !2264)
!2267 = !DILocation(line: 184, column: 34, scope: !2264)
!2268 = !DILocation(line: 184, column: 17, scope: !2264)
!2269 = !DILocation(line: 185, column: 21, scope: !2264)
!2270 = !DILocation(line: 185, column: 5, scope: !2264)
!2271 = distinct !{!2271, !2259, !2272}
!2272 = !DILocation(line: 186, column: 3, scope: !2254)
!2273 = !DILocation(line: 187, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2254, file: !34, line: 187, column: 7)
!2275 = !DILocation(line: 187, column: 12, scope: !2274)
!2276 = !DILocation(line: 187, column: 16, scope: !2274)
!2277 = !DILocation(line: 187, column: 7, scope: !2254)
!2278 = !DILocation(line: 188, column: 5, scope: !2274)
!2279 = !DILocation(line: 188, column: 10, scope: !2274)
!2280 = !DILocation(line: 188, column: 14, scope: !2274)
!2281 = !DILocation(line: 188, column: 24, scope: !2274)
!2282 = !DILocation(line: 188, column: 29, scope: !2274)
!2283 = !DILocation(line: 189, column: 3, scope: !2254)
!2284 = !DILocation(line: 189, column: 8, scope: !2254)
!2285 = !DILocation(line: 189, column: 13, scope: !2254)
!2286 = !DILocation(line: 190, column: 21, scope: !2254)
!2287 = !DILocation(line: 190, column: 3, scope: !2254)
!2288 = !DILocation(line: 191, column: 1, scope: !2254)
!2289 = distinct !DISubprogram(name: "fio_ls_any", scope: !6, file: !6, line: 3342, type: !2290, scopeLine: 3342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!238, !2292}
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!2293 = !DILocalVariable(name: "list", arg: 1, scope: !2289, file: !6, line: 3342, type: !2292)
!2294 = !DILocation(line: 3342, column: 42, scope: !2289)
!2295 = !DILocation(line: 3342, column: 57, scope: !2289)
!2296 = !DILocation(line: 3342, column: 63, scope: !2289)
!2297 = !DILocation(line: 3342, column: 71, scope: !2289)
!2298 = !DILocation(line: 3342, column: 68, scope: !2289)
!2299 = !DILocation(line: 3342, column: 50, scope: !2289)
!2300 = distinct !DISubprogram(name: "fio_ls_pop", scope: !6, file: !6, line: 3327, type: !2301, scopeLine: 3327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!27, !2292}
!2303 = !DILocalVariable(name: "list", arg: 1, scope: !2300, file: !6, line: 3327, type: !2292)
!2304 = !DILocation(line: 3327, column: 44, scope: !2300)
!2305 = !DILocation(line: 3328, column: 24, scope: !2300)
!2306 = !DILocation(line: 3328, column: 30, scope: !2300)
!2307 = !DILocation(line: 3328, column: 10, scope: !2300)
!2308 = !DILocation(line: 3328, column: 3, scope: !2300)
!2309 = distinct !DISubprogram(name: "http_sse_try_free", scope: !34, file: !34, line: 176, type: !2255, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2310 = !DILocalVariable(name: "sse", arg: 1, scope: !2309, file: !34, line: 176, type: !210)
!2311 = !DILocation(line: 176, column: 59, scope: !2309)
!2312 = !DILocation(line: 177, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2309, file: !34, line: 177, column: 7)
!2314 = !DILocation(line: 177, column: 7, scope: !2309)
!2315 = !DILocation(line: 178, column: 5, scope: !2313)
!2316 = !DILocation(line: 179, column: 12, scope: !2309)
!2317 = !DILocation(line: 179, column: 3, scope: !2309)
!2318 = !DILocation(line: 180, column: 1, scope: !2309)
!2319 = distinct !DISubprogram(name: "fio_ls_remove", scope: !6, file: !6, line: 3295, type: !2301, scopeLine: 3295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2320 = !DILocalVariable(name: "node", arg: 1, scope: !2319, file: !6, line: 3295, type: !2292)
!2321 = !DILocation(line: 3295, column: 47, scope: !2319)
!2322 = !DILocation(line: 3296, column: 8, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !6, line: 3296, column: 7)
!2324 = !DILocation(line: 3296, column: 13, scope: !2323)
!2325 = !DILocation(line: 3296, column: 16, scope: !2323)
!2326 = !DILocation(line: 3296, column: 22, scope: !2323)
!2327 = !DILocation(line: 3296, column: 30, scope: !2323)
!2328 = !DILocation(line: 3296, column: 27, scope: !2323)
!2329 = !DILocation(line: 3296, column: 7, scope: !2319)
!2330 = !DILocation(line: 3298, column: 5, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2323, file: !6, line: 3296, column: 36)
!2332 = !DILocalVariable(name: "ret", scope: !2319, file: !6, line: 3300, type: !293)
!2333 = !DILocation(line: 3300, column: 15, scope: !2319)
!2334 = !DILocation(line: 3300, column: 21, scope: !2319)
!2335 = !DILocation(line: 3300, column: 27, scope: !2319)
!2336 = !DILocation(line: 3301, column: 22, scope: !2319)
!2337 = !DILocation(line: 3301, column: 28, scope: !2319)
!2338 = !DILocation(line: 3301, column: 3, scope: !2319)
!2339 = !DILocation(line: 3301, column: 9, scope: !2319)
!2340 = !DILocation(line: 3301, column: 15, scope: !2319)
!2341 = !DILocation(line: 3301, column: 20, scope: !2319)
!2342 = !DILocation(line: 3302, column: 22, scope: !2319)
!2343 = !DILocation(line: 3302, column: 28, scope: !2319)
!2344 = !DILocation(line: 3302, column: 3, scope: !2319)
!2345 = !DILocation(line: 3302, column: 9, scope: !2319)
!2346 = !DILocation(line: 3302, column: 15, scope: !2319)
!2347 = !DILocation(line: 3302, column: 20, scope: !2319)
!2348 = !DILocation(line: 3303, column: 12, scope: !2319)
!2349 = !DILocation(line: 3303, column: 3, scope: !2319)
!2350 = !DILocation(line: 3304, column: 18, scope: !2319)
!2351 = !DILocation(line: 3304, column: 3, scope: !2319)
!2352 = !DILocation(line: 3305, column: 1, scope: !2319)
!2353 = distinct !DISubprogram(name: "http1_on_data", scope: !3, file: !3, line: 722, type: !43, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2354 = !DILocalVariable(name: "uuid", arg: 1, scope: !2353, file: !3, line: 722, type: !45)
!2355 = !DILocation(line: 722, column: 36, scope: !2353)
!2356 = !DILocalVariable(name: "protocol", arg: 2, scope: !2353, file: !3, line: 722, type: !48)
!2357 = !DILocation(line: 722, column: 58, scope: !2353)
!2358 = !DILocalVariable(name: "p", scope: !2353, file: !3, line: 723, type: !28)
!2359 = !DILocation(line: 723, column: 14, scope: !2353)
!2360 = !DILocation(line: 723, column: 31, scope: !2353)
!2361 = !DILocation(line: 723, column: 18, scope: !2353)
!2362 = !DILocation(line: 724, column: 7, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 724, column: 7)
!2364 = !DILocation(line: 724, column: 10, scope: !2363)
!2365 = !DILocation(line: 724, column: 7, scope: !2353)
!2366 = !DILocation(line: 725, column: 17, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 724, column: 16)
!2368 = !DILocation(line: 725, column: 5, scope: !2367)
!2369 = !DILocation(line: 726, column: 5, scope: !2367)
!2370 = !DILocalVariable(name: "i", scope: !2353, file: !3, line: 728, type: !146)
!2371 = !DILocation(line: 728, column: 11, scope: !2353)
!2372 = !DILocation(line: 729, column: 32, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 729, column: 7)
!2374 = !DILocation(line: 729, column: 35, scope: !2373)
!2375 = !DILocation(line: 729, column: 30, scope: !2373)
!2376 = !DILocation(line: 729, column: 7, scope: !2353)
!2377 = !DILocation(line: 730, column: 18, scope: !2373)
!2378 = !DILocation(line: 730, column: 24, scope: !2373)
!2379 = !DILocation(line: 730, column: 27, scope: !2373)
!2380 = !DILocation(line: 730, column: 33, scope: !2373)
!2381 = !DILocation(line: 730, column: 36, scope: !2373)
!2382 = !DILocation(line: 730, column: 31, scope: !2373)
!2383 = !DILocation(line: 731, column: 43, scope: !2373)
!2384 = !DILocation(line: 731, column: 46, scope: !2373)
!2385 = !DILocation(line: 731, column: 41, scope: !2373)
!2386 = !DILocation(line: 730, column: 9, scope: !2373)
!2387 = !DILocation(line: 730, column: 7, scope: !2373)
!2388 = !DILocation(line: 730, column: 5, scope: !2373)
!2389 = !DILocation(line: 732, column: 7, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 732, column: 7)
!2391 = !DILocation(line: 732, column: 9, scope: !2390)
!2392 = !DILocation(line: 732, column: 7, scope: !2353)
!2393 = !DILocation(line: 733, column: 19, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 732, column: 14)
!2395 = !DILocation(line: 733, column: 5, scope: !2394)
!2396 = !DILocation(line: 733, column: 8, scope: !2394)
!2397 = !DILocation(line: 733, column: 16, scope: !2394)
!2398 = !DILocation(line: 734, column: 3, scope: !2394)
!2399 = !DILocation(line: 735, column: 22, scope: !2353)
!2400 = !DILocation(line: 735, column: 28, scope: !2353)
!2401 = !DILocation(line: 735, column: 3, scope: !2353)
!2402 = !DILocation(line: 736, column: 1, scope: !2353)
!2403 = distinct !DISubprogram(name: "http1_consume_data", scope: !3, file: !3, line: 679, type: !2404, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !45, !28}
!2406 = !DILocalVariable(name: "uuid", arg: 1, scope: !2403, file: !3, line: 679, type: !45)
!2407 = !DILocation(line: 679, column: 48, scope: !2403)
!2408 = !DILocalVariable(name: "p", arg: 2, scope: !2403, file: !3, line: 679, type: !28)
!2409 = !DILocation(line: 679, column: 65, scope: !2403)
!2410 = !DILocation(line: 680, column: 19, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 680, column: 7)
!2412 = !DILocation(line: 680, column: 7, scope: !2411)
!2413 = !DILocation(line: 680, column: 25, scope: !2411)
!2414 = !DILocation(line: 680, column: 7, scope: !2403)
!2415 = !DILocation(line: 681, column: 5, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 680, column: 30)
!2417 = !DILocalVariable(name: "i", scope: !2403, file: !3, line: 683, type: !146)
!2418 = !DILocation(line: 683, column: 11, scope: !2403)
!2419 = !DILocalVariable(name: "org_len", scope: !2403, file: !3, line: 684, type: !61)
!2420 = !DILocation(line: 684, column: 10, scope: !2403)
!2421 = !DILocation(line: 684, column: 20, scope: !2403)
!2422 = !DILocation(line: 684, column: 23, scope: !2403)
!2423 = !DILocalVariable(name: "pipeline_limit", scope: !2403, file: !3, line: 685, type: !238)
!2424 = !DILocation(line: 685, column: 7, scope: !2403)
!2425 = !DILocation(line: 686, column: 8, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 686, column: 7)
!2427 = !DILocation(line: 686, column: 11, scope: !2426)
!2428 = !DILocation(line: 686, column: 7, scope: !2403)
!2429 = !DILocation(line: 687, column: 5, scope: !2426)
!2430 = !DILocation(line: 688, column: 3, scope: !2403)
!2431 = !DILocation(line: 689, column: 22, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 688, column: 6)
!2433 = !DILocation(line: 689, column: 25, scope: !2432)
!2434 = !DILocation(line: 689, column: 33, scope: !2432)
!2435 = !DILocation(line: 689, column: 36, scope: !2432)
!2436 = !DILocation(line: 689, column: 43, scope: !2432)
!2437 = !DILocation(line: 689, column: 53, scope: !2432)
!2438 = !DILocation(line: 689, column: 56, scope: !2432)
!2439 = !DILocation(line: 689, column: 51, scope: !2432)
!2440 = !DILocation(line: 689, column: 40, scope: !2432)
!2441 = !DILocation(line: 689, column: 66, scope: !2432)
!2442 = !DILocation(line: 689, column: 69, scope: !2432)
!2443 = !DILocation(line: 689, column: 9, scope: !2432)
!2444 = !DILocation(line: 689, column: 7, scope: !2432)
!2445 = !DILocation(line: 690, column: 19, scope: !2432)
!2446 = !DILocation(line: 690, column: 5, scope: !2432)
!2447 = !DILocation(line: 690, column: 8, scope: !2432)
!2448 = !DILocation(line: 690, column: 16, scope: !2432)
!2449 = !DILocation(line: 691, column: 5, scope: !2432)
!2450 = !DILocation(line: 692, column: 3, scope: !2432)
!2451 = !DILocation(line: 692, column: 12, scope: !2403)
!2452 = !DILocation(line: 692, column: 14, scope: !2403)
!2453 = !DILocation(line: 692, column: 17, scope: !2403)
!2454 = !DILocation(line: 692, column: 20, scope: !2403)
!2455 = !DILocation(line: 692, column: 28, scope: !2403)
!2456 = !DILocation(line: 692, column: 31, scope: !2403)
!2457 = !DILocation(line: 692, column: 46, scope: !2403)
!2458 = !DILocation(line: 692, column: 50, scope: !2403)
!2459 = !DILocation(line: 692, column: 53, scope: !2403)
!2460 = !DILocation(line: 692, column: 49, scope: !2403)
!2461 = !DILocation(line: 0, scope: !2403)
!2462 = distinct !{!2462, !2430, !2463}
!2463 = !DILocation(line: 692, column: 57, scope: !2403)
!2464 = !DILocation(line: 694, column: 7, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 694, column: 7)
!2466 = !DILocation(line: 694, column: 10, scope: !2465)
!2467 = !DILocation(line: 694, column: 18, scope: !2465)
!2468 = !DILocation(line: 694, column: 21, scope: !2465)
!2469 = !DILocation(line: 694, column: 32, scope: !2465)
!2470 = !DILocation(line: 694, column: 35, scope: !2465)
!2471 = !DILocation(line: 694, column: 29, scope: !2465)
!2472 = !DILocation(line: 694, column: 7, scope: !2403)
!2473 = !DILocation(line: 695, column: 13, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 694, column: 44)
!2475 = !DILocation(line: 695, column: 16, scope: !2474)
!2476 = !DILocation(line: 695, column: 5, scope: !2474)
!2477 = !DILocation(line: 695, column: 21, scope: !2474)
!2478 = !DILocation(line: 695, column: 24, scope: !2474)
!2479 = !DILocation(line: 695, column: 31, scope: !2474)
!2480 = !DILocation(line: 695, column: 41, scope: !2474)
!2481 = !DILocation(line: 695, column: 44, scope: !2474)
!2482 = !DILocation(line: 695, column: 39, scope: !2474)
!2483 = !DILocation(line: 695, column: 28, scope: !2474)
!2484 = !DILocation(line: 695, column: 54, scope: !2474)
!2485 = !DILocation(line: 695, column: 57, scope: !2474)
!2486 = !DILocation(line: 696, column: 3, scope: !2474)
!2487 = !DILocation(line: 698, column: 7, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 698, column: 7)
!2489 = !DILocation(line: 698, column: 10, scope: !2488)
!2490 = !DILocation(line: 698, column: 18, scope: !2488)
!2491 = !DILocation(line: 698, column: 7, scope: !2403)
!2492 = !DILocation(line: 700, column: 9, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 700, column: 9)
!2494 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 698, column: 45)
!2495 = !DILocation(line: 700, column: 12, scope: !2493)
!2496 = !DILocation(line: 700, column: 20, scope: !2493)
!2497 = !DILocation(line: 700, column: 9, scope: !2494)
!2498 = !DILocation(line: 701, column: 24, scope: !2493)
!2499 = !DILocation(line: 701, column: 27, scope: !2493)
!2500 = !DILocation(line: 701, column: 7, scope: !2493)
!2501 = !DILocation(line: 703, column: 27, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 702, column: 10)
!2503 = !DILocation(line: 703, column: 7, scope: !2502)
!2504 = !DILocation(line: 703, column: 10, scope: !2502)
!2505 = !DILocation(line: 703, column: 18, scope: !2502)
!2506 = !DILocation(line: 703, column: 25, scope: !2502)
!2507 = !DILocation(line: 704, column: 24, scope: !2502)
!2508 = !DILocation(line: 704, column: 27, scope: !2502)
!2509 = !DILocation(line: 704, column: 7, scope: !2502)
!2510 = !DILocation(line: 706, column: 3, scope: !2494)
!2511 = !DILocation(line: 708, column: 8, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 708, column: 7)
!2513 = !DILocation(line: 708, column: 7, scope: !2403)
!2514 = !DILocation(line: 709, column: 21, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 708, column: 24)
!2516 = !DILocation(line: 709, column: 5, scope: !2515)
!2517 = !DILocation(line: 710, column: 3, scope: !2515)
!2518 = !DILocation(line: 711, column: 3, scope: !2403)
!2519 = !DILabel(scope: !2403, name: "throttle", file: !3, line: 713)
!2520 = !DILocation(line: 713, column: 1, scope: !2403)
!2521 = !DILocation(line: 715, column: 3, scope: !2403)
!2522 = !DILocation(line: 715, column: 6, scope: !2403)
!2523 = !DILocation(line: 715, column: 11, scope: !2403)
!2524 = !DILocation(line: 716, column: 15, scope: !2403)
!2525 = !DILocation(line: 716, column: 3, scope: !2403)
!2526 = !DILocation(line: 717, column: 3, scope: !2403)
!2527 = !DILocation(line: 717, column: 3, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 717, column: 3)
!2529 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 717, column: 3)
!2530 = !DILocation(line: 717, column: 3, scope: !2529)
!2531 = !DILocation(line: 717, column: 3, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 717, column: 3)
!2533 = !DILocation(line: 719, column: 1, scope: !2403)
!2534 = distinct !DISubprogram(name: "http1_parse", scope: !137, file: !137, line: 782, type: !2535, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!61, !2537, !27, !61}
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!2538 = !DILocalVariable(name: "parser", arg: 1, scope: !2534, file: !137, line: 782, type: !2537)
!2539 = !DILocation(line: 782, column: 43, scope: !2534)
!2540 = !DILocalVariable(name: "buffer", arg: 2, scope: !2534, file: !137, line: 782, type: !27)
!2541 = !DILocation(line: 782, column: 57, scope: !2534)
!2542 = !DILocalVariable(name: "length", arg: 3, scope: !2534, file: !137, line: 782, type: !61)
!2543 = !DILocation(line: 782, column: 72, scope: !2534)
!2544 = !DILocation(line: 783, column: 8, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2534, file: !137, line: 783, column: 7)
!2546 = !DILocation(line: 783, column: 7, scope: !2534)
!2547 = !DILocation(line: 784, column: 5, scope: !2545)
!2548 = !DILocation(line: 786, column: 3, scope: !2534)
!2549 = !DILocation(line: 786, column: 11, scope: !2534)
!2550 = !DILocation(line: 786, column: 17, scope: !2534)
!2551 = !DILocation(line: 786, column: 22, scope: !2534)
!2552 = !DILocalVariable(name: "start", scope: !2534, file: !137, line: 787, type: !150)
!2553 = !DILocation(line: 787, column: 12, scope: !2534)
!2554 = !DILocation(line: 787, column: 31, scope: !2534)
!2555 = !DILocalVariable(name: "end", scope: !2534, file: !137, line: 788, type: !150)
!2556 = !DILocation(line: 788, column: 12, scope: !2534)
!2557 = !DILocation(line: 788, column: 18, scope: !2534)
!2558 = !DILocalVariable(name: "stop", scope: !2534, file: !137, line: 789, type: !2559)
!2559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!2560 = !DILocation(line: 789, column: 18, scope: !2534)
!2561 = !DILocation(line: 789, column: 25, scope: !2534)
!2562 = !DILocation(line: 789, column: 33, scope: !2534)
!2563 = !DILocation(line: 789, column: 31, scope: !2534)
!2564 = !DILocalVariable(name: "eol_len", scope: !2534, file: !137, line: 790, type: !54)
!2565 = !DILocation(line: 790, column: 11, scope: !2534)
!2566 = !DILocation(line: 790, column: 3, scope: !2534)
!2567 = !DILabel(scope: !2534, name: "re_eval", file: !137, line: 793)
!2568 = !DILocation(line: 793, column: 1, scope: !2534)
!2569 = !DILocation(line: 794, column: 12, scope: !2534)
!2570 = !DILocation(line: 794, column: 20, scope: !2534)
!2571 = !DILocation(line: 794, column: 26, scope: !2534)
!2572 = !DILocation(line: 794, column: 35, scope: !2534)
!2573 = !DILocation(line: 794, column: 3, scope: !2534)
!2574 = !DILocation(line: 798, column: 5, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2534, file: !137, line: 794, column: 41)
!2576 = !DILocation(line: 798, column: 13, scope: !2575)
!2577 = !DILocation(line: 798, column: 21, scope: !2575)
!2578 = !DILocation(line: 798, column: 19, scope: !2575)
!2579 = !DILocation(line: 798, column: 27, scope: !2575)
!2580 = !DILocation(line: 799, column: 14, scope: !2575)
!2581 = !DILocation(line: 799, column: 13, scope: !2575)
!2582 = !DILocation(line: 799, column: 20, scope: !2575)
!2583 = !DILocation(line: 799, column: 28, scope: !2575)
!2584 = !DILocation(line: 799, column: 32, scope: !2575)
!2585 = !DILocation(line: 799, column: 31, scope: !2575)
!2586 = !DILocation(line: 799, column: 38, scope: !2575)
!2587 = !DILocation(line: 799, column: 46, scope: !2575)
!2588 = !DILocation(line: 799, column: 50, scope: !2575)
!2589 = !DILocation(line: 799, column: 49, scope: !2575)
!2590 = !DILocation(line: 799, column: 56, scope: !2575)
!2591 = !DILocation(line: 799, column: 63, scope: !2575)
!2592 = !DILocation(line: 799, column: 67, scope: !2575)
!2593 = !DILocation(line: 799, column: 66, scope: !2575)
!2594 = !DILocation(line: 799, column: 73, scope: !2575)
!2595 = !DILocation(line: 0, scope: !2575)
!2596 = !DILocation(line: 800, column: 7, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2575, file: !137, line: 799, column: 80)
!2598 = distinct !{!2598, !2574, !2599}
!2599 = !DILocation(line: 801, column: 5, scope: !2575)
!2600 = !DILocation(line: 802, column: 11, scope: !2575)
!2601 = !DILocation(line: 802, column: 9, scope: !2575)
!2602 = !DILocation(line: 804, column: 36, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2575, file: !137, line: 804, column: 9)
!2604 = !DILocation(line: 804, column: 21, scope: !2603)
!2605 = !DILocation(line: 804, column: 19, scope: !2603)
!2606 = !DILocation(line: 804, column: 9, scope: !2575)
!2607 = !DILocation(line: 805, column: 14, scope: !2603)
!2608 = !DILocation(line: 805, column: 7, scope: !2603)
!2609 = !DILocation(line: 807, column: 9, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2575, file: !137, line: 807, column: 9)
!2611 = !DILocation(line: 807, column: 18, scope: !2610)
!2612 = !DILocation(line: 807, column: 25, scope: !2610)
!2613 = !DILocation(line: 807, column: 28, scope: !2610)
!2614 = !DILocation(line: 807, column: 37, scope: !2610)
!2615 = !DILocation(line: 807, column: 44, scope: !2610)
!2616 = !DILocation(line: 807, column: 47, scope: !2610)
!2617 = !DILocation(line: 807, column: 56, scope: !2610)
!2618 = !DILocation(line: 807, column: 63, scope: !2610)
!2619 = !DILocation(line: 808, column: 9, scope: !2610)
!2620 = !DILocation(line: 808, column: 18, scope: !2610)
!2621 = !DILocation(line: 807, column: 9, scope: !2575)
!2622 = !DILocation(line: 810, column: 39, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !137, line: 810, column: 11)
!2624 = distinct !DILexicalBlock(scope: !2610, file: !137, line: 808, column: 26)
!2625 = !DILocation(line: 810, column: 47, scope: !2623)
!2626 = !DILocation(line: 810, column: 54, scope: !2623)
!2627 = !DILocation(line: 810, column: 60, scope: !2623)
!2628 = !DILocation(line: 810, column: 58, scope: !2623)
!2629 = !DILocation(line: 810, column: 68, scope: !2623)
!2630 = !DILocation(line: 810, column: 11, scope: !2623)
!2631 = !DILocation(line: 810, column: 11, scope: !2624)
!2632 = !DILocation(line: 811, column: 9, scope: !2623)
!2633 = !DILocation(line: 812, column: 5, scope: !2624)
!2634 = !DILocation(line: 812, column: 29, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2610, file: !137, line: 812, column: 16)
!2636 = !DILocation(line: 812, column: 16, scope: !2635)
!2637 = !DILocation(line: 812, column: 39, scope: !2635)
!2638 = !DILocation(line: 812, column: 46, scope: !2635)
!2639 = !DILocation(line: 812, column: 62, scope: !2635)
!2640 = !DILocation(line: 812, column: 49, scope: !2635)
!2641 = !DILocation(line: 812, column: 72, scope: !2635)
!2642 = !DILocation(line: 812, column: 16, scope: !2610)
!2643 = !DILocation(line: 814, column: 38, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !137, line: 814, column: 11)
!2645 = distinct !DILexicalBlock(scope: !2635, file: !137, line: 812, column: 80)
!2646 = !DILocation(line: 814, column: 46, scope: !2644)
!2647 = !DILocation(line: 814, column: 53, scope: !2644)
!2648 = !DILocation(line: 814, column: 59, scope: !2644)
!2649 = !DILocation(line: 814, column: 57, scope: !2644)
!2650 = !DILocation(line: 814, column: 67, scope: !2644)
!2651 = !DILocation(line: 814, column: 11, scope: !2644)
!2652 = !DILocation(line: 814, column: 11, scope: !2645)
!2653 = !DILocation(line: 815, column: 9, scope: !2644)
!2654 = !DILocation(line: 816, column: 5, scope: !2645)
!2655 = !DILocation(line: 817, column: 7, scope: !2635)
!2656 = !DILocation(line: 818, column: 19, scope: !2575)
!2657 = !DILocation(line: 818, column: 23, scope: !2575)
!2658 = !DILocation(line: 818, column: 17, scope: !2575)
!2659 = !DILocation(line: 818, column: 9, scope: !2575)
!2660 = !DILocation(line: 819, column: 5, scope: !2575)
!2661 = !DILocation(line: 819, column: 13, scope: !2575)
!2662 = !DILocation(line: 819, column: 19, scope: !2575)
!2663 = !DILocation(line: 819, column: 28, scope: !2575)
!2664 = !DILocation(line: 823, column: 5, scope: !2575)
!2665 = !DILocation(line: 824, column: 11, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !137, line: 824, column: 11)
!2667 = distinct !DILexicalBlock(scope: !2575, file: !137, line: 823, column: 8)
!2668 = !DILocation(line: 824, column: 20, scope: !2666)
!2669 = !DILocation(line: 824, column: 17, scope: !2666)
!2670 = !DILocation(line: 824, column: 11, scope: !2667)
!2671 = !DILocation(line: 825, column: 16, scope: !2666)
!2672 = !DILocation(line: 825, column: 9, scope: !2666)
!2673 = !DILocation(line: 826, column: 12, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2667, file: !137, line: 826, column: 11)
!2675 = !DILocation(line: 826, column: 11, scope: !2674)
!2676 = !DILocation(line: 826, column: 18, scope: !2674)
!2677 = !DILocation(line: 826, column: 26, scope: !2674)
!2678 = !DILocation(line: 826, column: 30, scope: !2674)
!2679 = !DILocation(line: 826, column: 29, scope: !2674)
!2680 = !DILocation(line: 826, column: 36, scope: !2674)
!2681 = !DILocation(line: 826, column: 11, scope: !2667)
!2682 = !DILocation(line: 827, column: 9, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2674, file: !137, line: 826, column: 45)
!2684 = !DILocation(line: 829, column: 13, scope: !2667)
!2685 = !DILocation(line: 829, column: 11, scope: !2667)
!2686 = !DILocation(line: 830, column: 38, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2667, file: !137, line: 830, column: 11)
!2688 = !DILocation(line: 830, column: 23, scope: !2687)
!2689 = !DILocation(line: 830, column: 21, scope: !2687)
!2690 = !DILocation(line: 830, column: 11, scope: !2667)
!2691 = !DILocation(line: 831, column: 16, scope: !2687)
!2692 = !DILocation(line: 831, column: 9, scope: !2687)
!2693 = !DILocation(line: 832, column: 32, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2667, file: !137, line: 832, column: 11)
!2695 = !DILocation(line: 832, column: 40, scope: !2694)
!2696 = !DILocation(line: 832, column: 47, scope: !2694)
!2697 = !DILocation(line: 832, column: 53, scope: !2694)
!2698 = !DILocation(line: 832, column: 51, scope: !2694)
!2699 = !DILocation(line: 832, column: 61, scope: !2694)
!2700 = !DILocation(line: 832, column: 11, scope: !2694)
!2701 = !DILocation(line: 832, column: 11, scope: !2667)
!2702 = !DILocation(line: 833, column: 9, scope: !2694)
!2703 = !DILocation(line: 834, column: 21, scope: !2667)
!2704 = !DILocation(line: 834, column: 25, scope: !2667)
!2705 = !DILocation(line: 834, column: 19, scope: !2667)
!2706 = !DILocation(line: 834, column: 11, scope: !2667)
!2707 = !DILocation(line: 835, column: 5, scope: !2667)
!2708 = !DILocation(line: 835, column: 15, scope: !2575)
!2709 = !DILocation(line: 835, column: 23, scope: !2575)
!2710 = !DILocation(line: 835, column: 29, scope: !2575)
!2711 = !DILocation(line: 835, column: 38, scope: !2575)
!2712 = !DILocation(line: 835, column: 70, scope: !2575)
!2713 = distinct !{!2713, !2664, !2714}
!2714 = !DILocation(line: 835, column: 74, scope: !2575)
!2715 = !DILabel(scope: !2575, name: "finished_headers", file: !137, line: 836)
!2716 = !DILocation(line: 836, column: 3, scope: !2575)
!2717 = !DILocation(line: 837, column: 5, scope: !2575)
!2718 = !DILocation(line: 838, column: 10, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2575, file: !137, line: 838, column: 9)
!2720 = !DILocation(line: 838, column: 9, scope: !2719)
!2721 = !DILocation(line: 838, column: 16, scope: !2719)
!2722 = !DILocation(line: 838, column: 9, scope: !2575)
!2723 = !DILocation(line: 839, column: 7, scope: !2719)
!2724 = !DILocation(line: 840, column: 11, scope: !2575)
!2725 = !DILocation(line: 840, column: 9, scope: !2575)
!2726 = !DILocation(line: 841, column: 5, scope: !2575)
!2727 = !DILocation(line: 841, column: 13, scope: !2575)
!2728 = !DILocation(line: 841, column: 19, scope: !2575)
!2729 = !DILocation(line: 841, column: 28, scope: !2575)
!2730 = !DILocalVariable(name: "t3", scope: !2731, file: !137, line: 846, type: !238)
!2731 = distinct !DILexicalBlock(scope: !2575, file: !137, line: 845, column: 5)
!2732 = !DILocation(line: 846, column: 11, scope: !2731)
!2733 = !DILocation(line: 846, column: 35, scope: !2731)
!2734 = !DILocation(line: 846, column: 43, scope: !2731)
!2735 = !DILocation(line: 846, column: 51, scope: !2731)
!2736 = !DILocation(line: 846, column: 16, scope: !2731)
!2737 = !DILocation(line: 847, column: 15, scope: !2731)
!2738 = !DILocation(line: 847, column: 7, scope: !2731)
!2739 = !DILocation(line: 849, column: 9, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2731, file: !137, line: 847, column: 19)
!2741 = !DILocation(line: 851, column: 9, scope: !2740)
!2742 = !DILocation(line: 853, column: 7, scope: !2731)
!2743 = !DILocation(line: 857, column: 7, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2534, file: !137, line: 857, column: 7)
!2745 = !DILocation(line: 857, column: 15, scope: !2744)
!2746 = !DILocation(line: 857, column: 21, scope: !2744)
!2747 = !DILocation(line: 857, column: 30, scope: !2744)
!2748 = !DILocation(line: 857, column: 7, scope: !2534)
!2749 = !DILocation(line: 858, column: 26, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2744, file: !137, line: 857, column: 55)
!2751 = !DILocation(line: 858, column: 5, scope: !2750)
!2752 = !DILocation(line: 858, column: 13, scope: !2750)
!2753 = !DILocation(line: 858, column: 19, scope: !2750)
!2754 = !DILocation(line: 858, column: 24, scope: !2750)
!2755 = !DILocation(line: 859, column: 11, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2750, file: !137, line: 859, column: 9)
!2757 = !DILocation(line: 859, column: 19, scope: !2756)
!2758 = !DILocation(line: 859, column: 25, scope: !2756)
!2759 = !DILocation(line: 859, column: 34, scope: !2756)
!2760 = !DILocation(line: 859, column: 10, scope: !2756)
!2761 = !DILocation(line: 861, column: 34, scope: !2756)
!2762 = !DILocation(line: 859, column: 9, scope: !2756)
!2763 = !DILocation(line: 859, column: 9, scope: !2750)
!2764 = !DILocation(line: 862, column: 7, scope: !2756)
!2765 = !DILocation(line: 863, column: 5, scope: !2750)
!2766 = !DILocation(line: 863, column: 13, scope: !2750)
!2767 = !DILocation(line: 863, column: 21, scope: !2750)
!2768 = !DILocation(line: 863, column: 70, scope: !2750)
!2769 = !DILocation(line: 864, column: 3, scope: !2750)
!2770 = !DILocation(line: 865, column: 10, scope: !2534)
!2771 = !DILocation(line: 865, column: 3, scope: !2534)
!2772 = !DILabel(scope: !2534, name: "error", file: !137, line: 866)
!2773 = !DILocation(line: 866, column: 1, scope: !2534)
!2774 = !DILocation(line: 867, column: 18, scope: !2534)
!2775 = !DILocation(line: 867, column: 3, scope: !2534)
!2776 = !DILocation(line: 868, column: 3, scope: !2534)
!2777 = !DILocation(line: 868, column: 11, scope: !2534)
!2778 = !DILocation(line: 868, column: 19, scope: !2534)
!2779 = !DILocation(line: 868, column: 68, scope: !2534)
!2780 = !DILocation(line: 869, column: 10, scope: !2534)
!2781 = !DILocation(line: 869, column: 3, scope: !2534)
!2782 = !DILocation(line: 871, column: 1, scope: !2534)
!2783 = distinct !DISubprogram(name: "seek2eol", scope: !137, file: !137, line: 262, type: !2784, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!54, !2786, !2559}
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!2787 = !DILocalVariable(name: "pos", arg: 1, scope: !2783, file: !137, line: 262, type: !2786)
!2788 = !DILocation(line: 262, column: 42, scope: !2783)
!2789 = !DILocalVariable(name: "limit", arg: 2, scope: !2783, file: !137, line: 262, type: !2559)
!2790 = !DILocation(line: 262, column: 62, scope: !2783)
!2791 = !DILocation(line: 264, column: 16, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2783, file: !137, line: 264, column: 7)
!2793 = !DILocation(line: 264, column: 21, scope: !2792)
!2794 = !DILocation(line: 264, column: 8, scope: !2792)
!2795 = !DILocation(line: 264, column: 7, scope: !2783)
!2796 = !DILocation(line: 265, column: 5, scope: !2792)
!2797 = !DILocation(line: 266, column: 9, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2783, file: !137, line: 266, column: 7)
!2799 = !DILocation(line: 266, column: 8, scope: !2798)
!2800 = !DILocation(line: 266, column: 7, scope: !2798)
!2801 = !DILocation(line: 266, column: 18, scope: !2798)
!2802 = !DILocation(line: 266, column: 7, scope: !2783)
!2803 = !DILocation(line: 270, column: 5, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2798, file: !137, line: 266, column: 27)
!2805 = !DILocation(line: 275, column: 3, scope: !2783)
!2806 = !DILocation(line: 276, column: 1, scope: !2783)
!2807 = distinct !DISubprogram(name: "http1_consume_response_line", scope: !137, file: !137, line: 352, type: !2808, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!238, !2537, !150, !150}
!2810 = !DILocalVariable(name: "parser", arg: 1, scope: !2807, file: !137, line: 352, type: !2537)
!2811 = !DILocation(line: 352, column: 63, scope: !2807)
!2812 = !DILocalVariable(name: "start", arg: 2, scope: !2807, file: !137, line: 353, type: !150)
!2813 = !DILocation(line: 353, column: 56, scope: !2807)
!2814 = !DILocalVariable(name: "end", arg: 3, scope: !2807, file: !137, line: 353, type: !150)
!2815 = !DILocation(line: 353, column: 72, scope: !2807)
!2816 = !DILocation(line: 354, column: 3, scope: !2807)
!2817 = !DILocation(line: 354, column: 11, scope: !2807)
!2818 = !DILocation(line: 354, column: 17, scope: !2807)
!2819 = !DILocation(line: 354, column: 26, scope: !2807)
!2820 = !DILocalVariable(name: "tmp", scope: !2807, file: !137, line: 355, type: !150)
!2821 = !DILocation(line: 355, column: 12, scope: !2807)
!2822 = !DILocation(line: 355, column: 18, scope: !2807)
!2823 = !DILocation(line: 356, column: 22, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2807, file: !137, line: 356, column: 7)
!2825 = !DILocation(line: 356, column: 8, scope: !2824)
!2826 = !DILocation(line: 356, column: 7, scope: !2807)
!2827 = !DILocation(line: 357, column: 5, scope: !2824)
!2828 = !DILocation(line: 358, column: 24, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2807, file: !137, line: 358, column: 7)
!2830 = !DILocation(line: 358, column: 40, scope: !2829)
!2831 = !DILocation(line: 358, column: 47, scope: !2829)
!2832 = !DILocation(line: 358, column: 53, scope: !2829)
!2833 = !DILocation(line: 358, column: 51, scope: !2829)
!2834 = !DILocation(line: 358, column: 7, scope: !2829)
!2835 = !DILocation(line: 358, column: 7, scope: !2807)
!2836 = !DILocation(line: 359, column: 5, scope: !2829)
!2837 = !DILocation(line: 360, column: 17, scope: !2807)
!2838 = !DILocation(line: 360, column: 21, scope: !2807)
!2839 = !DILocation(line: 360, column: 15, scope: !2807)
!2840 = !DILocation(line: 360, column: 7, scope: !2807)
!2841 = !DILocation(line: 361, column: 22, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2807, file: !137, line: 361, column: 7)
!2843 = !DILocation(line: 361, column: 8, scope: !2842)
!2844 = !DILocation(line: 361, column: 7, scope: !2807)
!2845 = !DILocation(line: 362, column: 5, scope: !2842)
!2846 = !DILocation(line: 363, column: 23, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2807, file: !137, line: 363, column: 7)
!2848 = !DILocation(line: 363, column: 42, scope: !2847)
!2849 = !DILocation(line: 363, column: 31, scope: !2847)
!2850 = !DILocation(line: 363, column: 65, scope: !2847)
!2851 = !DILocation(line: 363, column: 69, scope: !2847)
!2852 = !DILocation(line: 364, column: 23, scope: !2847)
!2853 = !DILocation(line: 364, column: 29, scope: !2847)
!2854 = !DILocation(line: 364, column: 27, scope: !2847)
!2855 = !DILocation(line: 363, column: 7, scope: !2847)
!2856 = !DILocation(line: 363, column: 7, scope: !2807)
!2857 = !DILocation(line: 365, column: 5, scope: !2847)
!2858 = !DILocation(line: 366, column: 3, scope: !2807)
!2859 = !DILocation(line: 367, column: 1, scope: !2807)
!2860 = distinct !DISubprogram(name: "http_tolower", scope: !137, file: !137, line: 282, type: !2861, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!54, !54}
!2863 = !DILocalVariable(name: "c", arg: 1, scope: !2860, file: !137, line: 282, type: !54)
!2864 = !DILocation(line: 282, column: 37, scope: !2860)
!2865 = !DILocation(line: 283, column: 7, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2860, file: !137, line: 283, column: 7)
!2867 = !DILocation(line: 283, column: 9, scope: !2866)
!2868 = !DILocation(line: 283, column: 16, scope: !2866)
!2869 = !DILocation(line: 283, column: 19, scope: !2866)
!2870 = !DILocation(line: 283, column: 21, scope: !2866)
!2871 = !DILocation(line: 283, column: 7, scope: !2860)
!2872 = !DILocation(line: 284, column: 7, scope: !2866)
!2873 = !DILocation(line: 284, column: 5, scope: !2866)
!2874 = !DILocation(line: 285, column: 10, scope: !2860)
!2875 = !DILocation(line: 285, column: 3, scope: !2860)
!2876 = distinct !DISubprogram(name: "http1_consume_request_line", scope: !137, file: !137, line: 369, type: !2808, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!2877 = !DILocalVariable(name: "parser", arg: 1, scope: !2876, file: !137, line: 369, type: !2537)
!2878 = !DILocation(line: 369, column: 62, scope: !2876)
!2879 = !DILocalVariable(name: "start", arg: 2, scope: !2876, file: !137, line: 370, type: !150)
!2880 = !DILocation(line: 370, column: 55, scope: !2876)
!2881 = !DILocalVariable(name: "end", arg: 3, scope: !2876, file: !137, line: 370, type: !150)
!2882 = !DILocation(line: 370, column: 71, scope: !2876)
!2883 = !DILocalVariable(name: "tmp", scope: !2876, file: !137, line: 371, type: !150)
!2884 = !DILocation(line: 371, column: 12, scope: !2876)
!2885 = !DILocation(line: 371, column: 18, scope: !2876)
!2886 = !DILocalVariable(name: "host_start", scope: !2876, file: !137, line: 372, type: !150)
!2887 = !DILocation(line: 372, column: 12, scope: !2876)
!2888 = !DILocalVariable(name: "host_end", scope: !2876, file: !137, line: 373, type: !150)
!2889 = !DILocation(line: 373, column: 12, scope: !2876)
!2890 = !DILocation(line: 374, column: 22, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2876, file: !137, line: 374, column: 7)
!2892 = !DILocation(line: 374, column: 8, scope: !2891)
!2893 = !DILocation(line: 374, column: 7, scope: !2876)
!2894 = !DILocation(line: 375, column: 5, scope: !2891)
!2895 = !DILocation(line: 376, column: 23, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2876, file: !137, line: 376, column: 7)
!2897 = !DILocation(line: 376, column: 39, scope: !2896)
!2898 = !DILocation(line: 376, column: 46, scope: !2896)
!2899 = !DILocation(line: 376, column: 52, scope: !2896)
!2900 = !DILocation(line: 376, column: 50, scope: !2896)
!2901 = !DILocation(line: 376, column: 7, scope: !2896)
!2902 = !DILocation(line: 376, column: 7, scope: !2876)
!2903 = !DILocation(line: 377, column: 5, scope: !2896)
!2904 = !DILocation(line: 378, column: 17, scope: !2876)
!2905 = !DILocation(line: 378, column: 21, scope: !2876)
!2906 = !DILocation(line: 378, column: 15, scope: !2876)
!2907 = !DILocation(line: 378, column: 7, scope: !2876)
!2908 = !DILocation(line: 379, column: 7, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2876, file: !137, line: 379, column: 7)
!2910 = !DILocation(line: 379, column: 16, scope: !2909)
!2911 = !DILocation(line: 379, column: 23, scope: !2909)
!2912 = !DILocation(line: 379, column: 26, scope: !2909)
!2913 = !DILocation(line: 379, column: 35, scope: !2909)
!2914 = !DILocation(line: 379, column: 42, scope: !2909)
!2915 = !DILocation(line: 379, column: 45, scope: !2909)
!2916 = !DILocation(line: 379, column: 54, scope: !2909)
!2917 = !DILocation(line: 379, column: 61, scope: !2909)
!2918 = !DILocation(line: 380, column: 7, scope: !2909)
!2919 = !DILocation(line: 380, column: 16, scope: !2909)
!2920 = !DILocation(line: 379, column: 7, scope: !2876)
!2921 = !DILocation(line: 381, column: 9, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !137, line: 381, column: 9)
!2923 = distinct !DILexicalBlock(scope: !2909, file: !137, line: 380, column: 24)
!2924 = !DILocation(line: 381, column: 18, scope: !2922)
!2925 = !DILocation(line: 381, column: 25, scope: !2922)
!2926 = !DILocation(line: 381, column: 28, scope: !2922)
!2927 = !DILocation(line: 381, column: 37, scope: !2922)
!2928 = !DILocation(line: 381, column: 44, scope: !2922)
!2929 = !DILocation(line: 381, column: 47, scope: !2922)
!2930 = !DILocation(line: 381, column: 56, scope: !2922)
!2931 = !DILocation(line: 381, column: 9, scope: !2923)
!2932 = !DILocation(line: 383, column: 44, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2922, file: !137, line: 381, column: 64)
!2934 = !DILocation(line: 383, column: 35, scope: !2933)
!2935 = !DILocation(line: 383, column: 22, scope: !2933)
!2936 = !DILocation(line: 383, column: 11, scope: !2933)
!2937 = !DILocation(line: 384, column: 5, scope: !2933)
!2938 = !DILocation(line: 384, column: 16, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2922, file: !137, line: 384, column: 16)
!2940 = !DILocation(line: 384, column: 25, scope: !2939)
!2941 = !DILocation(line: 384, column: 32, scope: !2939)
!2942 = !DILocation(line: 384, column: 35, scope: !2939)
!2943 = !DILocation(line: 384, column: 44, scope: !2939)
!2944 = !DILocation(line: 384, column: 51, scope: !2939)
!2945 = !DILocation(line: 384, column: 54, scope: !2939)
!2946 = !DILocation(line: 384, column: 63, scope: !2939)
!2947 = !DILocation(line: 384, column: 70, scope: !2939)
!2948 = !DILocation(line: 385, column: 16, scope: !2939)
!2949 = !DILocation(line: 385, column: 25, scope: !2939)
!2950 = !DILocation(line: 384, column: 16, scope: !2922)
!2951 = !DILocation(line: 387, column: 44, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2939, file: !137, line: 385, column: 33)
!2953 = !DILocation(line: 387, column: 35, scope: !2952)
!2954 = !DILocation(line: 387, column: 22, scope: !2952)
!2955 = !DILocation(line: 387, column: 11, scope: !2952)
!2956 = !DILocation(line: 388, column: 5, scope: !2952)
!2957 = !DILocation(line: 389, column: 7, scope: !2939)
!2958 = !DILocation(line: 390, column: 24, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2923, file: !137, line: 390, column: 9)
!2960 = !DILocation(line: 390, column: 10, scope: !2959)
!2961 = !DILocation(line: 390, column: 9, scope: !2923)
!2962 = !DILocation(line: 391, column: 7, scope: !2959)
!2963 = !DILocation(line: 392, column: 6, scope: !2923)
!2964 = !DILocation(line: 392, column: 10, scope: !2923)
!2965 = !DILocation(line: 393, column: 29, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2923, file: !137, line: 393, column: 9)
!2967 = !DILocation(line: 393, column: 10, scope: !2966)
!2968 = !DILocation(line: 393, column: 9, scope: !2923)
!2969 = !DILocation(line: 394, column: 25, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !137, line: 394, column: 11)
!2971 = distinct !DILexicalBlock(scope: !2966, file: !137, line: 393, column: 40)
!2972 = !DILocation(line: 394, column: 11, scope: !2970)
!2973 = !DILocation(line: 394, column: 11, scope: !2971)
!2974 = !DILocation(line: 395, column: 9, scope: !2970)
!2975 = !DILocation(line: 396, column: 7, scope: !2971)
!2976 = !DILocation(line: 398, column: 5, scope: !2923)
!2977 = !DILocation(line: 398, column: 17, scope: !2923)
!2978 = !DILocation(line: 399, column: 13, scope: !2923)
!2979 = !DILocation(line: 399, column: 11, scope: !2923)
!2980 = !DILocation(line: 400, column: 3, scope: !2923)
!2981 = !DILocation(line: 380, column: 19, scope: !2909)
!2982 = !DILabel(scope: !2876, name: "review_path", file: !137, line: 401)
!2983 = !DILocation(line: 401, column: 1, scope: !2876)
!2984 = !DILocation(line: 402, column: 9, scope: !2876)
!2985 = !DILocation(line: 402, column: 7, scope: !2876)
!2986 = !DILocation(line: 403, column: 21, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2876, file: !137, line: 403, column: 7)
!2988 = !DILocation(line: 403, column: 7, scope: !2987)
!2989 = !DILocation(line: 403, column: 7, scope: !2876)
!2990 = !DILocation(line: 404, column: 23, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !137, line: 404, column: 9)
!2992 = distinct !DILexicalBlock(scope: !2987, file: !137, line: 403, column: 32)
!2993 = !DILocation(line: 404, column: 39, scope: !2991)
!2994 = !DILocation(line: 404, column: 46, scope: !2991)
!2995 = !DILocation(line: 404, column: 52, scope: !2991)
!2996 = !DILocation(line: 404, column: 50, scope: !2991)
!2997 = !DILocation(line: 404, column: 9, scope: !2991)
!2998 = !DILocation(line: 404, column: 9, scope: !2992)
!2999 = !DILocation(line: 405, column: 7, scope: !2991)
!3000 = !DILocation(line: 406, column: 19, scope: !2992)
!3001 = !DILocation(line: 406, column: 23, scope: !2992)
!3002 = !DILocation(line: 406, column: 17, scope: !2992)
!3003 = !DILocation(line: 406, column: 9, scope: !2992)
!3004 = !DILocation(line: 407, column: 24, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2992, file: !137, line: 407, column: 9)
!3006 = !DILocation(line: 407, column: 10, scope: !3005)
!3007 = !DILocation(line: 407, column: 9, scope: !2992)
!3008 = !DILocation(line: 408, column: 7, scope: !3005)
!3009 = !DILocation(line: 409, column: 9, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2992, file: !137, line: 409, column: 9)
!3011 = !DILocation(line: 409, column: 15, scope: !3010)
!3012 = !DILocation(line: 409, column: 13, scope: !3010)
!3013 = !DILocation(line: 409, column: 21, scope: !3010)
!3014 = !DILocation(line: 409, column: 25, scope: !3010)
!3015 = !DILocation(line: 409, column: 43, scope: !3010)
!3016 = !DILocation(line: 409, column: 59, scope: !3010)
!3017 = !DILocation(line: 409, column: 66, scope: !3010)
!3018 = !DILocation(line: 409, column: 72, scope: !3010)
!3019 = !DILocation(line: 409, column: 70, scope: !3010)
!3020 = !DILocation(line: 409, column: 28, scope: !3010)
!3021 = !DILocation(line: 409, column: 9, scope: !2992)
!3022 = !DILocation(line: 410, column: 7, scope: !3010)
!3023 = !DILocation(line: 411, column: 3, scope: !2992)
!3024 = !DILocation(line: 412, column: 11, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2987, file: !137, line: 411, column: 10)
!3026 = !DILocation(line: 412, column: 9, scope: !3025)
!3027 = !DILocation(line: 413, column: 24, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3025, file: !137, line: 413, column: 9)
!3029 = !DILocation(line: 413, column: 10, scope: !3028)
!3030 = !DILocation(line: 413, column: 9, scope: !3025)
!3031 = !DILocation(line: 414, column: 7, scope: !3028)
!3032 = !DILocation(line: 415, column: 23, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3025, file: !137, line: 415, column: 9)
!3034 = !DILocation(line: 415, column: 39, scope: !3033)
!3035 = !DILocation(line: 415, column: 46, scope: !3033)
!3036 = !DILocation(line: 415, column: 52, scope: !3033)
!3037 = !DILocation(line: 415, column: 50, scope: !3033)
!3038 = !DILocation(line: 415, column: 9, scope: !3033)
!3039 = !DILocation(line: 415, column: 9, scope: !3025)
!3040 = !DILocation(line: 416, column: 7, scope: !3033)
!3041 = !DILocation(line: 403, column: 29, scope: !2987)
!3042 = !DILabel(scope: !2876, name: "start_version", file: !137, line: 418)
!3043 = !DILocation(line: 418, column: 1, scope: !2876)
!3044 = !DILocation(line: 419, column: 11, scope: !2876)
!3045 = !DILocation(line: 419, column: 15, scope: !2876)
!3046 = !DILocation(line: 419, column: 9, scope: !2876)
!3047 = !DILocation(line: 420, column: 7, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2876, file: !137, line: 420, column: 7)
!3049 = !DILocation(line: 420, column: 13, scope: !3048)
!3050 = !DILocation(line: 420, column: 20, scope: !3048)
!3051 = !DILocation(line: 420, column: 17, scope: !3048)
!3052 = !DILocation(line: 420, column: 7, scope: !2876)
!3053 = !DILocation(line: 421, column: 5, scope: !3048)
!3054 = !DILocation(line: 422, column: 24, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2876, file: !137, line: 422, column: 7)
!3056 = !DILocation(line: 422, column: 40, scope: !3055)
!3057 = !DILocation(line: 422, column: 47, scope: !3055)
!3058 = !DILocation(line: 422, column: 53, scope: !3055)
!3059 = !DILocation(line: 422, column: 51, scope: !3055)
!3060 = !DILocation(line: 422, column: 7, scope: !3055)
!3061 = !DILocation(line: 422, column: 7, scope: !2876)
!3062 = !DILocation(line: 423, column: 5, scope: !3055)
!3063 = !DILocation(line: 425, column: 7, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !2876, file: !137, line: 425, column: 7)
!3065 = !DILocation(line: 425, column: 18, scope: !3064)
!3066 = !DILocation(line: 425, column: 37, scope: !3064)
!3067 = !DILocation(line: 426, column: 45, scope: !3064)
!3068 = !DILocation(line: 426, column: 57, scope: !3064)
!3069 = !DILocation(line: 426, column: 68, scope: !3064)
!3070 = !DILocation(line: 426, column: 66, scope: !3064)
!3071 = !DILocation(line: 425, column: 21, scope: !3064)
!3072 = !DILocation(line: 425, column: 7, scope: !2876)
!3073 = !DILocation(line: 427, column: 5, scope: !3064)
!3074 = !DILocation(line: 428, column: 3, scope: !2876)
!3075 = !DILocation(line: 429, column: 1, scope: !2876)
!3076 = distinct !DISubprogram(name: "http1_consume_header", scope: !137, file: !137, line: 620, type: !2808, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3077 = !DILocalVariable(name: "parser", arg: 1, scope: !3076, file: !137, line: 620, type: !2537)
!3078 = !DILocation(line: 620, column: 56, scope: !3076)
!3079 = !DILocalVariable(name: "start", arg: 2, scope: !3076, file: !137, line: 620, type: !150)
!3080 = !DILocation(line: 620, column: 73, scope: !3076)
!3081 = !DILocalVariable(name: "end", arg: 3, scope: !3076, file: !137, line: 621, type: !150)
!3082 = !DILocation(line: 621, column: 49, scope: !3076)
!3083 = !DILocalVariable(name: "end_name", scope: !3076, file: !137, line: 622, type: !150)
!3084 = !DILocation(line: 622, column: 12, scope: !3076)
!3085 = !DILocation(line: 622, column: 23, scope: !3076)
!3086 = !DILocation(line: 624, column: 27, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3076, file: !137, line: 624, column: 7)
!3088 = !DILocation(line: 624, column: 8, scope: !3087)
!3089 = !DILocation(line: 624, column: 7, scope: !3076)
!3090 = !DILocation(line: 625, column: 5, scope: !3087)
!3091 = !DILocation(line: 626, column: 7, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3076, file: !137, line: 626, column: 7)
!3093 = !DILocation(line: 626, column: 20, scope: !3092)
!3094 = !DILocation(line: 626, column: 27, scope: !3092)
!3095 = !DILocation(line: 626, column: 30, scope: !3092)
!3096 = !DILocation(line: 626, column: 43, scope: !3092)
!3097 = !DILocation(line: 626, column: 7, scope: !3076)
!3098 = !DILocation(line: 627, column: 5, scope: !3092)
!3099 = !DILocalVariable(name: "t", scope: !3100, file: !137, line: 629, type: !150)
!3100 = distinct !DILexicalBlock(scope: !3076, file: !137, line: 629, column: 3)
!3101 = !DILocation(line: 629, column: 17, scope: !3100)
!3102 = !DILocation(line: 629, column: 21, scope: !3100)
!3103 = !DILocation(line: 629, column: 8, scope: !3100)
!3104 = !DILocation(line: 629, column: 28, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3100, file: !137, line: 629, column: 3)
!3106 = !DILocation(line: 629, column: 32, scope: !3105)
!3107 = !DILocation(line: 629, column: 30, scope: !3105)
!3108 = !DILocation(line: 629, column: 3, scope: !3100)
!3109 = !DILocation(line: 630, column: 24, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3105, file: !137, line: 629, column: 47)
!3111 = !DILocation(line: 630, column: 23, scope: !3110)
!3112 = !DILocation(line: 630, column: 10, scope: !3110)
!3113 = !DILocation(line: 630, column: 6, scope: !3110)
!3114 = !DILocation(line: 630, column: 8, scope: !3110)
!3115 = !DILocation(line: 631, column: 3, scope: !3110)
!3116 = !DILocation(line: 629, column: 43, scope: !3105)
!3117 = !DILocation(line: 629, column: 3, scope: !3105)
!3118 = distinct !{!3118, !3108, !3119}
!3119 = !DILocation(line: 631, column: 3, scope: !3100)
!3120 = !DILocalVariable(name: "start_value", scope: !3076, file: !137, line: 633, type: !150)
!3121 = !DILocation(line: 633, column: 12, scope: !3076)
!3122 = !DILocation(line: 633, column: 26, scope: !3076)
!3123 = !DILocation(line: 633, column: 35, scope: !3076)
!3124 = !DILocation(line: 635, column: 3, scope: !3076)
!3125 = !DILocation(line: 635, column: 10, scope: !3076)
!3126 = !DILocation(line: 635, column: 24, scope: !3076)
!3127 = !DILocation(line: 635, column: 22, scope: !3076)
!3128 = !DILocation(line: 635, column: 28, scope: !3076)
!3129 = !DILocation(line: 636, column: 11, scope: !3076)
!3130 = !DILocation(line: 636, column: 26, scope: !3076)
!3131 = !DILocation(line: 636, column: 33, scope: !3076)
!3132 = !DILocation(line: 636, column: 36, scope: !3076)
!3133 = !DILocation(line: 636, column: 51, scope: !3076)
!3134 = !DILocation(line: 0, scope: !3076)
!3135 = !DILocation(line: 637, column: 16, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3076, file: !137, line: 636, column: 61)
!3137 = distinct !{!3137, !3124, !3138}
!3138 = !DILocation(line: 638, column: 3, scope: !3076)
!3139 = !DILocation(line: 639, column: 11, scope: !3076)
!3140 = !DILocation(line: 639, column: 19, scope: !3076)
!3141 = !DILocation(line: 639, column: 25, scope: !3076)
!3142 = !DILocation(line: 641, column: 7, scope: !3076)
!3143 = !DILocation(line: 641, column: 15, scope: !3076)
!3144 = !DILocation(line: 641, column: 22, scope: !3076)
!3145 = !DILocation(line: 641, column: 32, scope: !3076)
!3146 = !DILocation(line: 641, column: 45, scope: !3076)
!3147 = !DILocation(line: 639, column: 10, scope: !3076)
!3148 = !DILocation(line: 639, column: 3, scope: !3076)
!3149 = !DILocation(line: 642, column: 1, scope: !3076)
!3150 = distinct !DISubprogram(name: "http1_consume_body", scope: !137, file: !137, line: 740, type: !3151, scopeLine: 741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!238, !2537, !27, !61, !2786}
!3153 = !DILocalVariable(name: "parser", arg: 1, scope: !3150, file: !137, line: 740, type: !2537)
!3154 = !DILocation(line: 740, column: 54, scope: !3150)
!3155 = !DILocalVariable(name: "buffer", arg: 2, scope: !3150, file: !137, line: 740, type: !27)
!3156 = !DILocation(line: 740, column: 68, scope: !3150)
!3157 = !DILocalVariable(name: "length", arg: 3, scope: !3150, file: !137, line: 741, type: !61)
!3158 = !DILocation(line: 741, column: 45, scope: !3150)
!3159 = !DILocalVariable(name: "start", arg: 4, scope: !3150, file: !137, line: 741, type: !2786)
!3160 = !DILocation(line: 741, column: 63, scope: !3150)
!3161 = !DILocation(line: 742, column: 7, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3150, file: !137, line: 742, column: 7)
!3163 = !DILocation(line: 742, column: 15, scope: !3162)
!3164 = !DILocation(line: 742, column: 21, scope: !3162)
!3165 = !DILocation(line: 742, column: 36, scope: !3162)
!3166 = !DILocation(line: 742, column: 40, scope: !3162)
!3167 = !DILocation(line: 743, column: 7, scope: !3162)
!3168 = !DILocation(line: 743, column: 15, scope: !3162)
!3169 = !DILocation(line: 743, column: 21, scope: !3162)
!3170 = !DILocation(line: 743, column: 38, scope: !3162)
!3171 = !DILocation(line: 743, column: 46, scope: !3162)
!3172 = !DILocation(line: 743, column: 52, scope: !3162)
!3173 = !DILocation(line: 743, column: 36, scope: !3162)
!3174 = !DILocation(line: 742, column: 7, scope: !3150)
!3175 = !DILocation(line: 745, column: 40, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3162, file: !137, line: 743, column: 58)
!3177 = !DILocation(line: 745, column: 48, scope: !3176)
!3178 = !DILocation(line: 745, column: 56, scope: !3176)
!3179 = !DILocation(line: 745, column: 64, scope: !3176)
!3180 = !DILocation(line: 745, column: 12, scope: !3176)
!3181 = !DILocation(line: 745, column: 5, scope: !3176)
!3182 = !DILocation(line: 746, column: 14, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3162, file: !137, line: 746, column: 14)
!3184 = !DILocation(line: 746, column: 22, scope: !3183)
!3185 = !DILocation(line: 746, column: 28, scope: !3183)
!3186 = !DILocation(line: 746, column: 43, scope: !3183)
!3187 = !DILocation(line: 746, column: 48, scope: !3183)
!3188 = !DILocation(line: 747, column: 15, scope: !3183)
!3189 = !DILocation(line: 747, column: 23, scope: !3183)
!3190 = !DILocation(line: 747, column: 29, scope: !3183)
!3191 = !DILocation(line: 747, column: 38, scope: !3183)
!3192 = !DILocation(line: 746, column: 14, scope: !3162)
!3193 = !DILocation(line: 749, column: 39, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3183, file: !137, line: 747, column: 63)
!3195 = !DILocation(line: 749, column: 47, scope: !3194)
!3196 = !DILocation(line: 749, column: 55, scope: !3194)
!3197 = !DILocation(line: 749, column: 63, scope: !3194)
!3198 = !DILocation(line: 749, column: 12, scope: !3194)
!3199 = !DILocation(line: 749, column: 5, scope: !3194)
!3200 = !DILocation(line: 752, column: 5, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3183, file: !137, line: 750, column: 10)
!3202 = !DILocation(line: 752, column: 13, scope: !3201)
!3203 = !DILocation(line: 752, column: 19, scope: !3201)
!3204 = !DILocation(line: 752, column: 28, scope: !3201)
!3205 = !DILocation(line: 754, column: 3, scope: !3150)
!3206 = !DILocation(line: 755, column: 1, scope: !3150)
!3207 = distinct !DISubprogram(name: "http1_on_response", scope: !3, file: !3, line: 560, type: !3208, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!238, !2537}
!3210 = !DILocalVariable(name: "parser", arg: 1, scope: !3207, file: !3, line: 560, type: !2537)
!3211 = !DILocation(line: 560, column: 46, scope: !3207)
!3212 = !DILocalVariable(name: "p", scope: !3207, file: !3, line: 561, type: !28)
!3213 = !DILocation(line: 561, column: 14, scope: !3207)
!3214 = !DILocation(line: 561, column: 18, scope: !3207)
!3215 = !DILocation(line: 562, column: 43, scope: !3207)
!3216 = !DILocation(line: 562, column: 63, scope: !3207)
!3217 = !DILocation(line: 562, column: 66, scope: !3207)
!3218 = !DILocation(line: 562, column: 68, scope: !3207)
!3219 = !DILocation(line: 562, column: 3, scope: !3207)
!3220 = !DILocation(line: 563, column: 7, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 563, column: 7)
!3222 = !DILocation(line: 563, column: 10, scope: !3221)
!3223 = !DILocation(line: 563, column: 18, scope: !3221)
!3224 = !DILocation(line: 563, column: 29, scope: !3221)
!3225 = !DILocation(line: 563, column: 33, scope: !3221)
!3226 = !DILocation(line: 563, column: 36, scope: !3221)
!3227 = !DILocation(line: 563, column: 7, scope: !3207)
!3228 = !DILocation(line: 564, column: 18, scope: !3221)
!3229 = !DILocation(line: 564, column: 21, scope: !3221)
!3230 = !DILocation(line: 564, column: 5, scope: !3221)
!3231 = !DILocation(line: 565, column: 12, scope: !3207)
!3232 = !DILocation(line: 565, column: 3, scope: !3207)
!3233 = !DILocation(line: 566, column: 24, scope: !3207)
!3234 = !DILocation(line: 566, column: 27, scope: !3207)
!3235 = !DILocation(line: 566, column: 29, scope: !3207)
!3236 = !DILocation(line: 566, column: 10, scope: !3207)
!3237 = !DILocation(line: 566, column: 3, scope: !3207)
!3238 = distinct !DISubprogram(name: "http1_on_request", scope: !3, file: !3, line: 551, type: !3208, scopeLine: 551, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3239 = !DILocalVariable(name: "parser", arg: 1, scope: !3238, file: !3, line: 551, type: !2537)
!3240 = !DILocation(line: 551, column: 45, scope: !3238)
!3241 = !DILocalVariable(name: "p", scope: !3238, file: !3, line: 552, type: !28)
!3242 = !DILocation(line: 552, column: 14, scope: !3238)
!3243 = !DILocation(line: 552, column: 18, scope: !3238)
!3244 = !DILocation(line: 553, column: 42, scope: !3238)
!3245 = !DILocation(line: 553, column: 62, scope: !3238)
!3246 = !DILocation(line: 553, column: 65, scope: !3238)
!3247 = !DILocation(line: 553, column: 67, scope: !3238)
!3248 = !DILocation(line: 553, column: 3, scope: !3238)
!3249 = !DILocation(line: 554, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3238, file: !3, line: 554, column: 7)
!3251 = !DILocation(line: 554, column: 10, scope: !3250)
!3252 = !DILocation(line: 554, column: 18, scope: !3250)
!3253 = !DILocation(line: 554, column: 25, scope: !3250)
!3254 = !DILocation(line: 554, column: 29, scope: !3250)
!3255 = !DILocation(line: 554, column: 32, scope: !3250)
!3256 = !DILocation(line: 554, column: 7, scope: !3238)
!3257 = !DILocation(line: 555, column: 18, scope: !3250)
!3258 = !DILocation(line: 555, column: 21, scope: !3250)
!3259 = !DILocation(line: 555, column: 5, scope: !3250)
!3260 = !DILocation(line: 556, column: 12, scope: !3238)
!3261 = !DILocation(line: 556, column: 3, scope: !3238)
!3262 = !DILocation(line: 557, column: 24, scope: !3238)
!3263 = !DILocation(line: 557, column: 27, scope: !3238)
!3264 = !DILocation(line: 557, column: 29, scope: !3238)
!3265 = !DILocation(line: 557, column: 10, scope: !3238)
!3266 = !DILocation(line: 557, column: 3, scope: !3238)
!3267 = distinct !DISubprogram(name: "http1_on_error", scope: !3, file: !3, line: 667, type: !3208, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3268 = !DILocalVariable(name: "parser", arg: 1, scope: !3267, file: !3, line: 667, type: !2537)
!3269 = !DILocation(line: 667, column: 43, scope: !3267)
!3270 = !DILocation(line: 668, column: 7, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3267, file: !3, line: 668, column: 7)
!3272 = !DILocation(line: 668, column: 28, scope: !3271)
!3273 = !DILocation(line: 668, column: 7, scope: !3267)
!3274 = !DILocation(line: 669, column: 5, scope: !3271)
!3275 = !DILocation(line: 670, column: 3, scope: !3267)
!3276 = !DILocation(line: 670, column: 3, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 670, column: 3)
!3278 = distinct !DILexicalBlock(scope: !3267, file: !3, line: 670, column: 3)
!3279 = !DILocation(line: 670, column: 3, scope: !3278)
!3280 = !DILocation(line: 670, column: 3, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 670, column: 3)
!3282 = !DILocation(line: 671, column: 13, scope: !3267)
!3283 = !DILocation(line: 671, column: 34, scope: !3267)
!3284 = !DILocation(line: 671, column: 36, scope: !3267)
!3285 = !DILocation(line: 671, column: 3, scope: !3267)
!3286 = !DILocation(line: 672, column: 3, scope: !3267)
!3287 = !DILocation(line: 673, column: 1, scope: !3267)
!3288 = distinct !DISubprogram(name: "seek2ch", scope: !137, file: !137, line: 243, type: !3289, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!54, !2786, !2559, !54}
!3291 = !DILocalVariable(name: "pos", arg: 1, scope: !3288, file: !137, line: 243, type: !2786)
!3292 = !DILocation(line: 243, column: 41, scope: !3288)
!3293 = !DILocalVariable(name: "limit", arg: 2, scope: !3288, file: !137, line: 243, type: !2559)
!3294 = !DILocation(line: 243, column: 61, scope: !3288)
!3295 = !DILocalVariable(name: "ch", arg: 3, scope: !3288, file: !137, line: 243, type: !54)
!3296 = !DILocation(line: 243, column: 76, scope: !3288)
!3297 = !DILocation(line: 245, column: 8, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3288, file: !137, line: 245, column: 7)
!3299 = !DILocation(line: 245, column: 7, scope: !3298)
!3300 = !DILocation(line: 245, column: 15, scope: !3298)
!3301 = !DILocation(line: 245, column: 12, scope: !3298)
!3302 = !DILocation(line: 245, column: 7, scope: !3288)
!3303 = !DILocation(line: 246, column: 5, scope: !3298)
!3304 = !DILocation(line: 247, column: 9, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3288, file: !137, line: 247, column: 7)
!3306 = !DILocation(line: 247, column: 8, scope: !3305)
!3307 = !DILocation(line: 247, column: 7, scope: !3305)
!3308 = !DILocation(line: 247, column: 16, scope: !3305)
!3309 = !DILocation(line: 247, column: 13, scope: !3305)
!3310 = !DILocation(line: 247, column: 7, scope: !3288)
!3311 = !DILocation(line: 248, column: 5, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3305, file: !137, line: 247, column: 20)
!3313 = !DILocalVariable(name: "tmp", scope: !3288, file: !137, line: 250, type: !150)
!3314 = !DILocation(line: 250, column: 12, scope: !3288)
!3315 = !DILocation(line: 250, column: 26, scope: !3288)
!3316 = !DILocation(line: 250, column: 25, scope: !3288)
!3317 = !DILocation(line: 250, column: 31, scope: !3288)
!3318 = !DILocation(line: 250, column: 35, scope: !3288)
!3319 = !DILocation(line: 250, column: 45, scope: !3288)
!3320 = !DILocation(line: 250, column: 44, scope: !3288)
!3321 = !DILocation(line: 250, column: 41, scope: !3288)
!3322 = !DILocation(line: 250, column: 18, scope: !3288)
!3323 = !DILocation(line: 251, column: 7, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3288, file: !137, line: 251, column: 7)
!3325 = !DILocation(line: 251, column: 7, scope: !3288)
!3326 = !DILocation(line: 252, column: 12, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3324, file: !137, line: 251, column: 12)
!3328 = !DILocation(line: 252, column: 6, scope: !3327)
!3329 = !DILocation(line: 252, column: 10, scope: !3327)
!3330 = !DILocation(line: 253, column: 5, scope: !3327)
!3331 = !DILocation(line: 255, column: 10, scope: !3288)
!3332 = !DILocation(line: 255, column: 4, scope: !3288)
!3333 = !DILocation(line: 255, column: 8, scope: !3288)
!3334 = !DILocation(line: 256, column: 3, scope: !3288)
!3335 = !DILocation(line: 257, column: 1, scope: !3288)
!3336 = distinct !DISubprogram(name: "http1_on_version", scope: !3, file: !3, line: 602, type: !3337, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!238, !2537, !110, !61}
!3339 = !DILocalVariable(name: "parser", arg: 1, scope: !3336, file: !3, line: 602, type: !2537)
!3340 = !DILocation(line: 602, column: 45, scope: !3336)
!3341 = !DILocalVariable(name: "version", arg: 2, scope: !3336, file: !3, line: 602, type: !110)
!3342 = !DILocation(line: 602, column: 59, scope: !3336)
!3343 = !DILocalVariable(name: "len", arg: 3, scope: !3336, file: !3, line: 602, type: !61)
!3344 = !DILocation(line: 602, column: 75, scope: !3336)
!3345 = !DILocation(line: 603, column: 64, scope: !3336)
!3346 = !DILocation(line: 603, column: 73, scope: !3336)
!3347 = !DILocation(line: 603, column: 50, scope: !3336)
!3348 = !DILocation(line: 603, column: 3, scope: !3336)
!3349 = !DILocation(line: 603, column: 40, scope: !3336)
!3350 = !DILocation(line: 603, column: 48, scope: !3336)
!3351 = !DILocation(line: 604, column: 39, scope: !3336)
!3352 = !DILocation(line: 604, column: 3, scope: !3336)
!3353 = !DILocation(line: 604, column: 24, scope: !3336)
!3354 = !DILocation(line: 604, column: 36, scope: !3336)
!3355 = !DILocation(line: 610, column: 3, scope: !3336)
!3356 = !DILocation(line: 610, column: 40, scope: !3336)
!3357 = !DILocation(line: 610, column: 54, scope: !3336)
!3358 = !DILocation(line: 612, column: 3, scope: !3336)
!3359 = distinct !DISubprogram(name: "http1_on_status", scope: !3, file: !3, line: 579, type: !3360, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!238, !2537, !61, !110, !61}
!3362 = !DILocalVariable(name: "parser", arg: 1, scope: !3359, file: !3, line: 579, type: !2537)
!3363 = !DILocation(line: 579, column: 44, scope: !3359)
!3364 = !DILocalVariable(name: "status", arg: 2, scope: !3359, file: !3, line: 579, type: !61)
!3365 = !DILocation(line: 579, column: 59, scope: !3359)
!3366 = !DILocalVariable(name: "status_str", arg: 3, scope: !3359, file: !3, line: 580, type: !110)
!3367 = !DILocation(line: 580, column: 34, scope: !3359)
!3368 = !DILocalVariable(name: "len", arg: 4, scope: !3359, file: !3, line: 580, type: !61)
!3369 = !DILocation(line: 580, column: 53, scope: !3359)
!3370 = !DILocation(line: 582, column: 21, scope: !3359)
!3371 = !DILocation(line: 582, column: 33, scope: !3359)
!3372 = !DILocation(line: 582, column: 7, scope: !3359)
!3373 = !DILocation(line: 581, column: 3, scope: !3359)
!3374 = !DILocation(line: 581, column: 40, scope: !3359)
!3375 = !DILocation(line: 581, column: 51, scope: !3359)
!3376 = !DILocation(line: 583, column: 49, scope: !3359)
!3377 = !DILocation(line: 583, column: 3, scope: !3359)
!3378 = !DILocation(line: 583, column: 40, scope: !3359)
!3379 = !DILocation(line: 583, column: 47, scope: !3359)
!3380 = !DILocation(line: 584, column: 39, scope: !3359)
!3381 = !DILocation(line: 584, column: 3, scope: !3359)
!3382 = !DILocation(line: 584, column: 24, scope: !3359)
!3383 = !DILocation(line: 584, column: 36, scope: !3359)
!3384 = !DILocation(line: 585, column: 3, scope: !3359)
!3385 = distinct !DISubprogram(name: "http1_atol", scope: !137, file: !137, line: 293, type: !3386, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!144, !300, !299}
!3388 = !DILocalVariable(name: "buf", arg: 1, scope: !3385, file: !137, line: 293, type: !300)
!3389 = !DILocation(line: 293, column: 44, scope: !3385)
!3390 = !DILocalVariable(name: "end", arg: 2, scope: !3385, file: !137, line: 293, type: !299)
!3391 = !DILocation(line: 293, column: 65, scope: !3385)
!3392 = !DILocalVariable(name: "i", scope: !3385, file: !137, line: 294, type: !3393)
!3393 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!3394 = !DILocation(line: 294, column: 31, scope: !3385)
!3395 = !DILocalVariable(name: "inv", scope: !3385, file: !137, line: 295, type: !54)
!3396 = !DILocation(line: 295, column: 11, scope: !3385)
!3397 = !DILocation(line: 296, column: 3, scope: !3385)
!3398 = !DILocation(line: 296, column: 11, scope: !3385)
!3399 = !DILocation(line: 296, column: 10, scope: !3385)
!3400 = !DILocation(line: 296, column: 15, scope: !3385)
!3401 = !DILocation(line: 296, column: 22, scope: !3385)
!3402 = !DILocation(line: 296, column: 26, scope: !3385)
!3403 = !DILocation(line: 296, column: 25, scope: !3385)
!3404 = !DILocation(line: 296, column: 30, scope: !3385)
!3405 = !DILocation(line: 296, column: 38, scope: !3385)
!3406 = !DILocation(line: 296, column: 42, scope: !3385)
!3407 = !DILocation(line: 296, column: 41, scope: !3385)
!3408 = !DILocation(line: 296, column: 46, scope: !3385)
!3409 = !DILocation(line: 297, column: 5, scope: !3385)
!3410 = distinct !{!3410, !3397, !3411}
!3411 = !DILocation(line: 297, column: 7, scope: !3385)
!3412 = !DILocation(line: 298, column: 3, scope: !3385)
!3413 = !DILocation(line: 298, column: 11, scope: !3385)
!3414 = !DILocation(line: 298, column: 10, scope: !3385)
!3415 = !DILocation(line: 298, column: 15, scope: !3385)
!3416 = !DILocation(line: 298, column: 22, scope: !3385)
!3417 = !DILocation(line: 298, column: 26, scope: !3385)
!3418 = !DILocation(line: 298, column: 25, scope: !3385)
!3419 = !DILocation(line: 298, column: 30, scope: !3385)
!3420 = !DILocation(line: 299, column: 18, scope: !3385)
!3421 = !DILocation(line: 299, column: 13, scope: !3385)
!3422 = !DILocation(line: 299, column: 22, scope: !3385)
!3423 = !DILocation(line: 299, column: 9, scope: !3385)
!3424 = distinct !{!3424, !3412, !3425}
!3425 = !DILocation(line: 299, column: 28, scope: !3385)
!3426 = !DILocation(line: 300, column: 3, scope: !3385)
!3427 = !DILocation(line: 300, column: 10, scope: !3385)
!3428 = !DILocation(line: 300, column: 12, scope: !3385)
!3429 = !DILocation(line: 300, column: 39, scope: !3385)
!3430 = !DILocation(line: 300, column: 43, scope: !3385)
!3431 = !DILocation(line: 300, column: 42, scope: !3385)
!3432 = !DILocation(line: 300, column: 47, scope: !3385)
!3433 = !DILocation(line: 300, column: 54, scope: !3385)
!3434 = !DILocation(line: 300, column: 58, scope: !3385)
!3435 = !DILocation(line: 300, column: 57, scope: !3385)
!3436 = !DILocation(line: 300, column: 62, scope: !3385)
!3437 = !DILocation(line: 0, scope: !3385)
!3438 = !DILocation(line: 301, column: 9, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3385, file: !137, line: 300, column: 70)
!3440 = !DILocation(line: 301, column: 11, scope: !3439)
!3441 = !DILocation(line: 301, column: 7, scope: !3439)
!3442 = !DILocation(line: 302, column: 11, scope: !3439)
!3443 = !DILocation(line: 302, column: 10, scope: !3439)
!3444 = !DILocation(line: 302, column: 15, scope: !3439)
!3445 = !DILocation(line: 302, column: 7, scope: !3439)
!3446 = !DILocation(line: 303, column: 5, scope: !3439)
!3447 = distinct !{!3447, !3426, !3448}
!3448 = !DILocation(line: 304, column: 3, scope: !3385)
!3449 = !DILocation(line: 306, column: 7, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3385, file: !137, line: 306, column: 7)
!3451 = !DILocation(line: 306, column: 9, scope: !3450)
!3452 = !DILocation(line: 306, column: 30, scope: !3450)
!3453 = !DILocation(line: 306, column: 35, scope: !3450)
!3454 = !DILocation(line: 306, column: 34, scope: !3450)
!3455 = !DILocation(line: 306, column: 39, scope: !3450)
!3456 = !DILocation(line: 306, column: 46, scope: !3450)
!3457 = !DILocation(line: 306, column: 50, scope: !3450)
!3458 = !DILocation(line: 306, column: 49, scope: !3450)
!3459 = !DILocation(line: 306, column: 54, scope: !3450)
!3460 = !DILocation(line: 306, column: 7, scope: !3385)
!3461 = !DILocation(line: 307, column: 7, scope: !3450)
!3462 = !DILocation(line: 307, column: 5, scope: !3450)
!3463 = !DILocation(line: 308, column: 7, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3385, file: !137, line: 308, column: 7)
!3465 = !DILocation(line: 308, column: 7, scope: !3385)
!3466 = !DILocation(line: 309, column: 16, scope: !3464)
!3467 = !DILocation(line: 309, column: 14, scope: !3464)
!3468 = !DILocation(line: 309, column: 7, scope: !3464)
!3469 = !DILocation(line: 309, column: 5, scope: !3464)
!3470 = !DILocation(line: 310, column: 7, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3385, file: !137, line: 310, column: 7)
!3472 = !DILocation(line: 310, column: 7, scope: !3385)
!3473 = !DILocation(line: 311, column: 12, scope: !3471)
!3474 = !DILocation(line: 311, column: 6, scope: !3471)
!3475 = !DILocation(line: 311, column: 10, scope: !3471)
!3476 = !DILocation(line: 311, column: 5, scope: !3471)
!3477 = !DILocation(line: 312, column: 10, scope: !3385)
!3478 = !DILocation(line: 312, column: 3, scope: !3385)
!3479 = distinct !DISubprogram(name: "http1_on_method", scope: !3, file: !3, line: 569, type: !3337, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3480 = !DILocalVariable(name: "parser", arg: 1, scope: !3479, file: !3, line: 569, type: !2537)
!3481 = !DILocation(line: 569, column: 44, scope: !3479)
!3482 = !DILocalVariable(name: "method", arg: 2, scope: !3479, file: !3, line: 569, type: !110)
!3483 = !DILocation(line: 569, column: 58, scope: !3479)
!3484 = !DILocalVariable(name: "method_len", arg: 3, scope: !3479, file: !3, line: 570, type: !61)
!3485 = !DILocation(line: 570, column: 35, scope: !3479)
!3486 = !DILocation(line: 572, column: 21, scope: !3479)
!3487 = !DILocation(line: 572, column: 29, scope: !3479)
!3488 = !DILocation(line: 572, column: 7, scope: !3479)
!3489 = !DILocation(line: 571, column: 3, scope: !3479)
!3490 = !DILocation(line: 571, column: 40, scope: !3479)
!3491 = !DILocation(line: 571, column: 47, scope: !3479)
!3492 = !DILocation(line: 573, column: 39, scope: !3479)
!3493 = !DILocation(line: 573, column: 3, scope: !3479)
!3494 = !DILocation(line: 573, column: 24, scope: !3479)
!3495 = !DILocation(line: 573, column: 36, scope: !3479)
!3496 = !DILocation(line: 574, column: 3, scope: !3479)
!3497 = distinct !DISubprogram(name: "http1_on_path", scope: !3, file: !3, line: 589, type: !3337, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3498 = !DILocalVariable(name: "parser", arg: 1, scope: !3497, file: !3, line: 589, type: !2537)
!3499 = !DILocation(line: 589, column: 42, scope: !3497)
!3500 = !DILocalVariable(name: "path", arg: 2, scope: !3497, file: !3, line: 589, type: !110)
!3501 = !DILocation(line: 589, column: 56, scope: !3497)
!3502 = !DILocalVariable(name: "len", arg: 3, scope: !3497, file: !3, line: 589, type: !61)
!3503 = !DILocation(line: 589, column: 69, scope: !3497)
!3504 = !DILocation(line: 590, column: 61, scope: !3497)
!3505 = !DILocation(line: 590, column: 67, scope: !3497)
!3506 = !DILocation(line: 590, column: 47, scope: !3497)
!3507 = !DILocation(line: 590, column: 3, scope: !3497)
!3508 = !DILocation(line: 590, column: 40, scope: !3497)
!3509 = !DILocation(line: 590, column: 45, scope: !3497)
!3510 = !DILocation(line: 591, column: 39, scope: !3497)
!3511 = !DILocation(line: 591, column: 3, scope: !3497)
!3512 = !DILocation(line: 591, column: 24, scope: !3497)
!3513 = !DILocation(line: 591, column: 36, scope: !3497)
!3514 = !DILocation(line: 592, column: 3, scope: !3497)
!3515 = distinct !DISubprogram(name: "http1_on_query", scope: !3, file: !3, line: 596, type: !3337, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3516 = !DILocalVariable(name: "parser", arg: 1, scope: !3515, file: !3, line: 596, type: !2537)
!3517 = !DILocation(line: 596, column: 43, scope: !3515)
!3518 = !DILocalVariable(name: "query", arg: 2, scope: !3515, file: !3, line: 596, type: !110)
!3519 = !DILocation(line: 596, column: 57, scope: !3515)
!3520 = !DILocalVariable(name: "len", arg: 3, scope: !3515, file: !3, line: 596, type: !61)
!3521 = !DILocation(line: 596, column: 71, scope: !3515)
!3522 = !DILocation(line: 597, column: 62, scope: !3515)
!3523 = !DILocation(line: 597, column: 69, scope: !3515)
!3524 = !DILocation(line: 597, column: 48, scope: !3515)
!3525 = !DILocation(line: 597, column: 3, scope: !3515)
!3526 = !DILocation(line: 597, column: 40, scope: !3515)
!3527 = !DILocation(line: 597, column: 46, scope: !3515)
!3528 = !DILocation(line: 598, column: 39, scope: !3515)
!3529 = !DILocation(line: 598, column: 3, scope: !3515)
!3530 = !DILocation(line: 598, column: 24, scope: !3515)
!3531 = !DILocation(line: 598, column: 36, scope: !3515)
!3532 = !DILocation(line: 599, column: 3, scope: !3515)
!3533 = distinct !DISubprogram(name: "http1_on_header", scope: !3, file: !3, line: 615, type: !3534, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!238, !2537, !110, !61, !110, !61}
!3536 = !DILocalVariable(name: "parser", arg: 1, scope: !3533, file: !3, line: 615, type: !2537)
!3537 = !DILocation(line: 615, column: 44, scope: !3533)
!3538 = !DILocalVariable(name: "name", arg: 2, scope: !3533, file: !3, line: 615, type: !110)
!3539 = !DILocation(line: 615, column: 58, scope: !3533)
!3540 = !DILocalVariable(name: "name_len", arg: 3, scope: !3533, file: !3, line: 615, type: !61)
!3541 = !DILocation(line: 615, column: 71, scope: !3533)
!3542 = !DILocalVariable(name: "data", arg: 4, scope: !3533, file: !3, line: 616, type: !110)
!3543 = !DILocation(line: 616, column: 34, scope: !3533)
!3544 = !DILocalVariable(name: "data_len", arg: 5, scope: !3533, file: !3, line: 616, type: !61)
!3545 = !DILocation(line: 616, column: 47, scope: !3533)
!3546 = !DILocalVariable(name: "sym", scope: !3533, file: !3, line: 617, type: !86)
!3547 = !DILocation(line: 617, column: 9, scope: !3533)
!3548 = !DILocalVariable(name: "obj", scope: !3533, file: !3, line: 618, type: !86)
!3549 = !DILocation(line: 618, column: 9, scope: !3533)
!3550 = !DILocation(line: 619, column: 8, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 619, column: 7)
!3552 = !DILocation(line: 619, column: 45, scope: !3551)
!3553 = !DILocation(line: 619, column: 7, scope: !3533)
!3554 = !DILocation(line: 620, column: 5, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 619, column: 54)
!3556 = !DILocation(line: 620, column: 5, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 620, column: 5)
!3558 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 620, column: 5)
!3559 = !DILocation(line: 620, column: 5, scope: !3558)
!3560 = !DILocation(line: 620, column: 5, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 620, column: 5)
!3562 = !DILocation(line: 623, column: 27, scope: !3555)
!3563 = !DILocation(line: 623, column: 48, scope: !3555)
!3564 = !DILocation(line: 623, column: 50, scope: !3555)
!3565 = !DILocation(line: 624, column: 22, scope: !3555)
!3566 = !DILocation(line: 624, column: 43, scope: !3555)
!3567 = !DILocation(line: 624, column: 45, scope: !3555)
!3568 = !DILocation(line: 623, column: 5, scope: !3555)
!3569 = !DILocation(line: 625, column: 5, scope: !3555)
!3570 = !DILocation(line: 627, column: 39, scope: !3533)
!3571 = !DILocation(line: 627, column: 50, scope: !3533)
!3572 = !DILocation(line: 627, column: 48, scope: !3533)
!3573 = !DILocation(line: 627, column: 3, scope: !3533)
!3574 = !DILocation(line: 627, column: 24, scope: !3533)
!3575 = !DILocation(line: 627, column: 36, scope: !3533)
!3576 = !DILocation(line: 628, column: 7, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 628, column: 7)
!3578 = !DILocation(line: 628, column: 28, scope: !3577)
!3579 = !DILocation(line: 629, column: 11, scope: !3577)
!3580 = !DILocation(line: 629, column: 32, scope: !3577)
!3581 = !DILocation(line: 628, column: 40, scope: !3577)
!3582 = !DILocation(line: 629, column: 48, scope: !3577)
!3583 = !DILocation(line: 630, column: 24, scope: !3577)
!3584 = !DILocation(line: 630, column: 61, scope: !3577)
!3585 = !DILocation(line: 630, column: 7, scope: !3577)
!3586 = !DILocation(line: 630, column: 70, scope: !3577)
!3587 = !DILocation(line: 628, column: 7, scope: !3533)
!3588 = !DILocation(line: 632, column: 9, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 632, column: 9)
!3590 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 631, column: 34)
!3591 = !DILocation(line: 632, column: 30, scope: !3589)
!3592 = !DILocation(line: 632, column: 32, scope: !3589)
!3593 = !DILocation(line: 632, column: 42, scope: !3589)
!3594 = !DILocation(line: 632, column: 9, scope: !3590)
!3595 = !DILocation(line: 633, column: 7, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 632, column: 47)
!3597 = !DILocation(line: 633, column: 7, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 633, column: 7)
!3599 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 633, column: 7)
!3600 = !DILocation(line: 633, column: 7, scope: !3599)
!3601 = !DILocation(line: 633, column: 7, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 633, column: 7)
!3603 = !DILocation(line: 634, column: 5, scope: !3596)
!3604 = !DILocation(line: 635, column: 22, scope: !3590)
!3605 = !DILocation(line: 635, column: 5, scope: !3590)
!3606 = !DILocation(line: 636, column: 5, scope: !3590)
!3607 = !DILocation(line: 638, column: 23, scope: !3533)
!3608 = !DILocation(line: 638, column: 29, scope: !3533)
!3609 = !DILocation(line: 638, column: 9, scope: !3533)
!3610 = !DILocation(line: 638, column: 7, scope: !3533)
!3611 = !DILocation(line: 639, column: 23, scope: !3533)
!3612 = !DILocation(line: 639, column: 29, scope: !3533)
!3613 = !DILocation(line: 639, column: 9, scope: !3533)
!3614 = !DILocation(line: 639, column: 7, scope: !3533)
!3615 = !DILocation(line: 640, column: 18, scope: !3533)
!3616 = !DILocation(line: 640, column: 55, scope: !3533)
!3617 = !DILocation(line: 640, column: 64, scope: !3533)
!3618 = !DILocation(line: 640, column: 69, scope: !3533)
!3619 = !DILocation(line: 640, column: 3, scope: !3533)
!3620 = !DILocation(line: 641, column: 14, scope: !3533)
!3621 = !DILocation(line: 641, column: 3, scope: !3533)
!3622 = !DILocation(line: 642, column: 3, scope: !3533)
!3623 = !DILocation(line: 643, column: 1, scope: !3533)
!3624 = distinct !DISubprogram(name: "set_header_add", scope: !34, file: !34, line: 208, type: !3625, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{null, !86, !86, !86}
!3627 = !DILocalVariable(name: "hash", arg: 1, scope: !3624, file: !34, line: 208, type: !86)
!3628 = !DILocation(line: 208, column: 41, scope: !3624)
!3629 = !DILocalVariable(name: "name", arg: 2, scope: !3624, file: !34, line: 208, type: !86)
!3630 = !DILocation(line: 208, column: 53, scope: !3624)
!3631 = !DILocalVariable(name: "value", arg: 3, scope: !3624, file: !34, line: 208, type: !86)
!3632 = !DILocation(line: 208, column: 65, scope: !3624)
!3633 = !DILocalVariable(name: "old", scope: !3624, file: !34, line: 209, type: !86)
!3634 = !DILocation(line: 209, column: 9, scope: !3624)
!3635 = !DILocation(line: 209, column: 34, scope: !3624)
!3636 = !DILocation(line: 209, column: 40, scope: !3624)
!3637 = !DILocation(line: 209, column: 46, scope: !3624)
!3638 = !DILocation(line: 209, column: 15, scope: !3624)
!3639 = !DILocation(line: 210, column: 8, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3624, file: !34, line: 210, column: 7)
!3641 = !DILocation(line: 210, column: 7, scope: !3624)
!3642 = !DILocation(line: 211, column: 5, scope: !3640)
!3643 = !DILocation(line: 212, column: 8, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3624, file: !34, line: 212, column: 7)
!3645 = !DILocation(line: 212, column: 7, scope: !3624)
!3646 = !DILocation(line: 213, column: 16, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3644, file: !34, line: 212, column: 15)
!3648 = !DILocation(line: 213, column: 5, scope: !3647)
!3649 = !DILocation(line: 214, column: 5, scope: !3647)
!3650 = !DILocation(line: 216, column: 8, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3624, file: !34, line: 216, column: 7)
!3652 = !DILocation(line: 216, column: 7, scope: !3624)
!3653 = !DILocalVariable(name: "tmp", scope: !3654, file: !34, line: 217, type: !86)
!3654 = distinct !DILexicalBlock(scope: !3651, file: !34, line: 216, column: 43)
!3655 = !DILocation(line: 217, column: 11, scope: !3654)
!3656 = !DILocation(line: 217, column: 17, scope: !3654)
!3657 = !DILocation(line: 218, column: 20, scope: !3654)
!3658 = !DILocation(line: 218, column: 25, scope: !3654)
!3659 = !DILocation(line: 218, column: 5, scope: !3654)
!3660 = !DILocation(line: 219, column: 11, scope: !3654)
!3661 = !DILocation(line: 219, column: 9, scope: !3654)
!3662 = !DILocation(line: 220, column: 3, scope: !3654)
!3663 = !DILocation(line: 221, column: 7, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3624, file: !34, line: 221, column: 7)
!3665 = !DILocation(line: 221, column: 7, scope: !3624)
!3666 = !DILocalVariable(name: "i", scope: !3667, file: !34, line: 222, type: !61)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !34, line: 222, column: 5)
!3668 = distinct !DILexicalBlock(scope: !3664, file: !34, line: 221, column: 44)
!3669 = !DILocation(line: 222, column: 17, scope: !3667)
!3670 = !DILocation(line: 222, column: 10, scope: !3667)
!3671 = !DILocation(line: 222, column: 24, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3667, file: !34, line: 222, column: 5)
!3673 = !DILocation(line: 222, column: 44, scope: !3672)
!3674 = !DILocation(line: 222, column: 28, scope: !3672)
!3675 = !DILocation(line: 222, column: 26, scope: !3672)
!3676 = !DILocation(line: 222, column: 5, scope: !3667)
!3677 = !DILocation(line: 223, column: 22, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3672, file: !34, line: 222, column: 57)
!3679 = !DILocation(line: 223, column: 53, scope: !3678)
!3680 = !DILocation(line: 223, column: 60, scope: !3678)
!3681 = !DILocation(line: 223, column: 37, scope: !3678)
!3682 = !DILocation(line: 223, column: 27, scope: !3678)
!3683 = !DILocation(line: 223, column: 7, scope: !3678)
!3684 = !DILocation(line: 224, column: 5, scope: !3678)
!3685 = !DILocation(line: 222, column: 52, scope: !3672)
!3686 = !DILocation(line: 222, column: 5, scope: !3672)
!3687 = distinct !{!3687, !3676, !3688}
!3688 = !DILocation(line: 224, column: 5, scope: !3667)
!3689 = !DILocation(line: 226, column: 20, scope: !3668)
!3690 = !DILocation(line: 226, column: 26, scope: !3668)
!3691 = !DILocation(line: 226, column: 32, scope: !3668)
!3692 = !DILocation(line: 226, column: 5, scope: !3668)
!3693 = !DILocation(line: 227, column: 5, scope: !3668)
!3694 = !DILocation(line: 230, column: 18, scope: !3624)
!3695 = !DILocation(line: 230, column: 23, scope: !3624)
!3696 = !DILocation(line: 230, column: 3, scope: !3624)
!3697 = !DILocation(line: 232, column: 22, scope: !3624)
!3698 = !DILocation(line: 232, column: 28, scope: !3624)
!3699 = !DILocation(line: 232, column: 34, scope: !3624)
!3700 = !DILocation(line: 232, column: 3, scope: !3624)
!3701 = !DILocation(line: 233, column: 1, scope: !3624)
!3702 = distinct !DISubprogram(name: "http1_consume_header_trailer", scope: !137, file: !137, line: 585, type: !3703, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!238, !2537, !150, !150, !150, !150}
!3705 = !DILocalVariable(name: "parser", arg: 1, scope: !3702, file: !137, line: 585, type: !2537)
!3706 = !DILocation(line: 585, column: 64, scope: !3702)
!3707 = !DILocalVariable(name: "start", arg: 2, scope: !3702, file: !137, line: 586, type: !150)
!3708 = !DILocation(line: 586, column: 57, scope: !3702)
!3709 = !DILocalVariable(name: "end_name", arg: 3, scope: !3702, file: !137, line: 587, type: !150)
!3710 = !DILocation(line: 587, column: 57, scope: !3702)
!3711 = !DILocalVariable(name: "start_value", arg: 4, scope: !3702, file: !137, line: 588, type: !150)
!3712 = !DILocation(line: 588, column: 57, scope: !3702)
!3713 = !DILocalVariable(name: "end", arg: 5, scope: !3702, file: !137, line: 589, type: !150)
!3714 = !DILocation(line: 589, column: 57, scope: !3702)
!3715 = !DILocation(line: 590, column: 8, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3702, file: !137, line: 590, column: 7)
!3717 = !DILocation(line: 590, column: 19, scope: !3716)
!3718 = !DILocation(line: 590, column: 17, scope: !3716)
!3719 = !DILocation(line: 590, column: 26, scope: !3716)
!3720 = !DILocation(line: 590, column: 30, scope: !3716)
!3721 = !DILocation(line: 590, column: 33, scope: !3716)
!3722 = !DILocation(line: 590, column: 42, scope: !3716)
!3723 = !DILocation(line: 590, column: 7, scope: !3702)
!3724 = !DILocation(line: 592, column: 5, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3716, file: !137, line: 590, column: 50)
!3726 = !DILocalVariable(name: "http1_trailer_white_list", scope: !3702, file: !137, line: 599, type: !3727)
!3727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3728, size: 256, elements: !2001)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3702, file: !137, line: 596, size: 128, elements: !3730)
!3730 = !{!3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3729, file: !137, line: 597, baseType: !110, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3729, file: !137, line: 598, baseType: !47, size: 64, offset: 64)
!3733 = !DILocation(line: 599, column: 5, scope: !3702)
!3734 = !DILocalVariable(name: "i", scope: !3735, file: !137, line: 603, type: !61)
!3735 = distinct !DILexicalBlock(scope: !3702, file: !137, line: 603, column: 3)
!3736 = !DILocation(line: 603, column: 15, scope: !3735)
!3737 = !DILocation(line: 603, column: 8, scope: !3735)
!3738 = !DILocation(line: 603, column: 47, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3735, file: !137, line: 603, column: 3)
!3740 = !DILocation(line: 603, column: 22, scope: !3739)
!3741 = !DILocation(line: 603, column: 50, scope: !3739)
!3742 = !DILocation(line: 603, column: 3, scope: !3735)
!3743 = !DILocation(line: 604, column: 16, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !137, line: 604, column: 9)
!3745 = distinct !DILexicalBlock(scope: !3739, file: !137, line: 603, column: 61)
!3746 = !DILocation(line: 604, column: 27, scope: !3744)
!3747 = !DILocation(line: 604, column: 25, scope: !3744)
!3748 = !DILocation(line: 604, column: 62, scope: !3744)
!3749 = !DILocation(line: 604, column: 37, scope: !3744)
!3750 = !DILocation(line: 604, column: 65, scope: !3744)
!3751 = !DILocation(line: 604, column: 34, scope: !3744)
!3752 = !DILocation(line: 604, column: 69, scope: !3744)
!3753 = !DILocation(line: 605, column: 9, scope: !3744)
!3754 = !DILocation(line: 604, column: 9, scope: !3745)
!3755 = !DILocation(line: 608, column: 7, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3744, file: !137, line: 606, column: 61)
!3757 = !DILocation(line: 610, column: 3, scope: !3745)
!3758 = !DILocation(line: 603, column: 56, scope: !3739)
!3759 = !DILocation(line: 603, column: 3, scope: !3739)
!3760 = distinct !{!3760, !3742, !3761}
!3761 = !DILocation(line: 610, column: 3, scope: !3735)
!3762 = !DILocation(line: 611, column: 3, scope: !3702)
!3763 = !DILabel(scope: !3702, name: "white_listed", file: !137, line: 612)
!3764 = !DILocation(line: 612, column: 1, scope: !3702)
!3765 = !DILocation(line: 614, column: 23, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3702, file: !137, line: 614, column: 7)
!3767 = !DILocation(line: 614, column: 39, scope: !3766)
!3768 = !DILocation(line: 614, column: 47, scope: !3766)
!3769 = !DILocation(line: 614, column: 58, scope: !3766)
!3770 = !DILocation(line: 614, column: 56, scope: !3766)
!3771 = !DILocation(line: 615, column: 31, scope: !3766)
!3772 = !DILocation(line: 615, column: 44, scope: !3766)
!3773 = !DILocation(line: 615, column: 50, scope: !3766)
!3774 = !DILocation(line: 615, column: 48, scope: !3766)
!3775 = !DILocation(line: 614, column: 7, scope: !3766)
!3776 = !DILocation(line: 614, column: 7, scope: !3702)
!3777 = !DILocation(line: 616, column: 5, scope: !3766)
!3778 = !DILocation(line: 617, column: 3, scope: !3702)
!3779 = !DILocation(line: 618, column: 1, scope: !3702)
!3780 = distinct !DISubprogram(name: "http1_consume_header_top", scope: !137, file: !137, line: 543, type: !3703, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3781 = !DILocalVariable(name: "parser", arg: 1, scope: !3780, file: !137, line: 543, type: !2537)
!3782 = !DILocation(line: 543, column: 60, scope: !3780)
!3783 = !DILocalVariable(name: "start", arg: 2, scope: !3780, file: !137, line: 544, type: !150)
!3784 = !DILocation(line: 544, column: 53, scope: !3780)
!3785 = !DILocalVariable(name: "end_name", arg: 3, scope: !3780, file: !137, line: 544, type: !150)
!3786 = !DILocation(line: 544, column: 69, scope: !3780)
!3787 = !DILocalVariable(name: "start_value", arg: 4, scope: !3780, file: !137, line: 545, type: !150)
!3788 = !DILocation(line: 545, column: 53, scope: !3780)
!3789 = !DILocalVariable(name: "end", arg: 5, scope: !3780, file: !137, line: 545, type: !150)
!3790 = !DILocation(line: 545, column: 75, scope: !3780)
!3791 = !DILocation(line: 546, column: 8, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3780, file: !137, line: 546, column: 7)
!3793 = !DILocation(line: 546, column: 19, scope: !3792)
!3794 = !DILocation(line: 546, column: 17, scope: !3792)
!3795 = !DILocation(line: 546, column: 26, scope: !3792)
!3796 = !DILocation(line: 546, column: 32, scope: !3792)
!3797 = !DILocation(line: 551, column: 7, scope: !3792)
!3798 = !DILocation(line: 546, column: 7, scope: !3780)
!3799 = !DILocation(line: 555, column: 10, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !137, line: 555, column: 9)
!3801 = distinct !DILexicalBlock(scope: !3792, file: !137, line: 553, column: 5)
!3802 = !DILocation(line: 555, column: 18, scope: !3800)
!3803 = !DILocation(line: 555, column: 24, scope: !3800)
!3804 = !DILocation(line: 555, column: 33, scope: !3800)
!3805 = !DILocation(line: 555, column: 9, scope: !3801)
!3806 = !DILocation(line: 556, column: 7, scope: !3800)
!3807 = !DILocalVariable(name: "old_clen", scope: !3801, file: !137, line: 557, type: !144)
!3808 = !DILocation(line: 557, column: 15, scope: !3801)
!3809 = !DILocation(line: 557, column: 26, scope: !3801)
!3810 = !DILocation(line: 557, column: 34, scope: !3801)
!3811 = !DILocation(line: 557, column: 40, scope: !3801)
!3812 = !DILocation(line: 558, column: 47, scope: !3801)
!3813 = !DILocation(line: 558, column: 36, scope: !3801)
!3814 = !DILocation(line: 558, column: 5, scope: !3801)
!3815 = !DILocation(line: 558, column: 13, scope: !3801)
!3816 = !DILocation(line: 558, column: 19, scope: !3801)
!3817 = !DILocation(line: 558, column: 34, scope: !3801)
!3818 = !DILocation(line: 559, column: 10, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3801, file: !137, line: 559, column: 9)
!3820 = !DILocation(line: 559, column: 18, scope: !3819)
!3821 = !DILocation(line: 559, column: 24, scope: !3819)
!3822 = !DILocation(line: 559, column: 33, scope: !3819)
!3823 = !DILocation(line: 559, column: 57, scope: !3819)
!3824 = !DILocation(line: 560, column: 9, scope: !3819)
!3825 = !DILocation(line: 560, column: 21, scope: !3819)
!3826 = !DILocation(line: 560, column: 29, scope: !3819)
!3827 = !DILocation(line: 560, column: 35, scope: !3819)
!3828 = !DILocation(line: 560, column: 18, scope: !3819)
!3829 = !DILocation(line: 559, column: 9, scope: !3801)
!3830 = !DILocation(line: 562, column: 7, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3819, file: !137, line: 560, column: 51)
!3832 = !DILocation(line: 564, column: 5, scope: !3801)
!3833 = !DILocation(line: 564, column: 13, scope: !3801)
!3834 = !DILocation(line: 564, column: 19, scope: !3801)
!3835 = !DILocation(line: 564, column: 28, scope: !3801)
!3836 = !DILocation(line: 565, column: 3, scope: !3801)
!3837 = !DILocation(line: 565, column: 15, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3792, file: !137, line: 565, column: 14)
!3839 = !DILocation(line: 565, column: 26, scope: !3838)
!3840 = !DILocation(line: 565, column: 24, scope: !3838)
!3841 = !DILocation(line: 565, column: 33, scope: !3838)
!3842 = !DILocation(line: 565, column: 39, scope: !3838)
!3843 = !DILocation(line: 565, column: 43, scope: !3838)
!3844 = !DILocation(line: 565, column: 49, scope: !3838)
!3845 = !DILocation(line: 565, column: 47, scope: !3838)
!3846 = !DILocation(line: 565, column: 62, scope: !3838)
!3847 = !DILocation(line: 565, column: 67, scope: !3838)
!3848 = !DILocation(line: 566, column: 15, scope: !3838)
!3849 = !DILocation(line: 566, column: 23, scope: !3838)
!3850 = !DILocation(line: 566, column: 29, scope: !3838)
!3851 = !DILocation(line: 566, column: 44, scope: !3838)
!3852 = !DILocation(line: 571, column: 14, scope: !3838)
!3853 = !DILocation(line: 565, column: 14, scope: !3792)
!3854 = !DILocation(line: 575, column: 51, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3838, file: !137, line: 573, column: 5)
!3856 = !DILocation(line: 575, column: 59, scope: !3855)
!3857 = !DILocation(line: 575, column: 66, scope: !3855)
!3858 = !DILocation(line: 576, column: 51, scope: !3855)
!3859 = !DILocation(line: 576, column: 64, scope: !3855)
!3860 = !DILocation(line: 575, column: 12, scope: !3855)
!3861 = !DILocation(line: 575, column: 5, scope: !3855)
!3862 = !DILocation(line: 579, column: 23, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3780, file: !137, line: 579, column: 7)
!3864 = !DILocation(line: 579, column: 39, scope: !3863)
!3865 = !DILocation(line: 579, column: 47, scope: !3863)
!3866 = !DILocation(line: 579, column: 58, scope: !3863)
!3867 = !DILocation(line: 579, column: 56, scope: !3863)
!3868 = !DILocation(line: 580, column: 31, scope: !3863)
!3869 = !DILocation(line: 580, column: 44, scope: !3863)
!3870 = !DILocation(line: 580, column: 50, scope: !3863)
!3871 = !DILocation(line: 580, column: 48, scope: !3863)
!3872 = !DILocation(line: 579, column: 7, scope: !3863)
!3873 = !DILocation(line: 579, column: 7, scope: !3780)
!3874 = !DILocation(line: 581, column: 5, scope: !3863)
!3875 = !DILocation(line: 582, column: 3, scope: !3780)
!3876 = !DILocation(line: 583, column: 1, scope: !3780)
!3877 = distinct !DISubprogram(name: "http1_consume_header_transfer_encoding", scope: !137, file: !137, line: 435, type: !3703, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!3878 = !DILocalVariable(name: "parser", arg: 1, scope: !3877, file: !137, line: 435, type: !2537)
!3879 = !DILocation(line: 435, column: 60, scope: !3877)
!3880 = !DILocalVariable(name: "start", arg: 2, scope: !3877, file: !137, line: 436, type: !150)
!3881 = !DILocation(line: 436, column: 53, scope: !3877)
!3882 = !DILocalVariable(name: "end_name", arg: 3, scope: !3877, file: !137, line: 436, type: !150)
!3883 = !DILocation(line: 436, column: 69, scope: !3877)
!3884 = !DILocalVariable(name: "start_value", arg: 4, scope: !3877, file: !137, line: 437, type: !150)
!3885 = !DILocation(line: 437, column: 53, scope: !3877)
!3886 = !DILocalVariable(name: "end", arg: 5, scope: !3877, file: !137, line: 437, type: !150)
!3887 = !DILocation(line: 437, column: 75, scope: !3877)
!3888 = !DILocation(line: 439, column: 3, scope: !3877)
!3889 = !DILocation(line: 439, column: 10, scope: !3877)
!3890 = !DILocation(line: 439, column: 24, scope: !3877)
!3891 = !DILocation(line: 439, column: 22, scope: !3877)
!3892 = !DILocation(line: 439, column: 28, scope: !3877)
!3893 = !DILocation(line: 439, column: 32, scope: !3877)
!3894 = !DILocation(line: 439, column: 40, scope: !3877)
!3895 = !DILocation(line: 439, column: 47, scope: !3877)
!3896 = !DILocation(line: 439, column: 50, scope: !3877)
!3897 = !DILocation(line: 439, column: 58, scope: !3877)
!3898 = !DILocation(line: 0, scope: !3877)
!3899 = !DILocation(line: 440, column: 5, scope: !3877)
!3900 = distinct !{!3900, !3888, !3901}
!3901 = !DILocation(line: 440, column: 7, scope: !3877)
!3902 = !DILocation(line: 441, column: 8, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3877, file: !137, line: 441, column: 7)
!3904 = !DILocation(line: 441, column: 14, scope: !3903)
!3905 = !DILocation(line: 441, column: 12, scope: !3903)
!3906 = !DILocation(line: 441, column: 27, scope: !3903)
!3907 = !DILocation(line: 441, column: 32, scope: !3903)
!3908 = !DILocation(line: 448, column: 9, scope: !3903)
!3909 = !DILocation(line: 448, column: 24, scope: !3903)
!3910 = !DILocation(line: 448, column: 30, scope: !3903)
!3911 = !DILocation(line: 448, column: 37, scope: !3903)
!3912 = !DILocation(line: 448, column: 41, scope: !3903)
!3913 = !DILocation(line: 448, column: 56, scope: !3903)
!3914 = !DILocation(line: 448, column: 62, scope: !3903)
!3915 = !DILocation(line: 448, column: 69, scope: !3903)
!3916 = !DILocation(line: 449, column: 9, scope: !3903)
!3917 = !DILocation(line: 449, column: 24, scope: !3903)
!3918 = !DILocation(line: 449, column: 30, scope: !3903)
!3919 = !DILocation(line: 449, column: 37, scope: !3903)
!3920 = !DILocation(line: 449, column: 41, scope: !3903)
!3921 = !DILocation(line: 449, column: 56, scope: !3903)
!3922 = !DILocation(line: 449, column: 62, scope: !3903)
!3923 = !DILocation(line: 449, column: 69, scope: !3903)
!3924 = !DILocation(line: 450, column: 9, scope: !3903)
!3925 = !DILocation(line: 450, column: 24, scope: !3903)
!3926 = !DILocation(line: 450, column: 30, scope: !3903)
!3927 = !DILocation(line: 450, column: 37, scope: !3903)
!3928 = !DILocation(line: 450, column: 41, scope: !3903)
!3929 = !DILocation(line: 450, column: 56, scope: !3903)
!3930 = !DILocation(line: 450, column: 62, scope: !3903)
!3931 = !DILocation(line: 450, column: 69, scope: !3903)
!3932 = !DILocation(line: 451, column: 9, scope: !3903)
!3933 = !DILocation(line: 451, column: 24, scope: !3903)
!3934 = !DILocation(line: 451, column: 30, scope: !3903)
!3935 = !DILocation(line: 441, column: 7, scope: !3877)
!3936 = !DILocation(line: 455, column: 5, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3903, file: !137, line: 453, column: 5)
!3938 = !DILocation(line: 455, column: 13, scope: !3937)
!3939 = !DILocation(line: 455, column: 19, scope: !3937)
!3940 = !DILocation(line: 455, column: 28, scope: !3937)
!3941 = !DILocation(line: 456, column: 5, scope: !3937)
!3942 = !DILocation(line: 456, column: 13, scope: !3937)
!3943 = !DILocation(line: 456, column: 19, scope: !3937)
!3944 = !DILocation(line: 456, column: 34, scope: !3937)
!3945 = !DILocation(line: 457, column: 17, scope: !3937)
!3946 = !DILocation(line: 458, column: 5, scope: !3937)
!3947 = !DILocation(line: 458, column: 12, scope: !3937)
!3948 = !DILocation(line: 458, column: 26, scope: !3937)
!3949 = !DILocation(line: 458, column: 24, scope: !3937)
!3950 = !DILocation(line: 458, column: 30, scope: !3937)
!3951 = !DILocation(line: 458, column: 35, scope: !3937)
!3952 = !DILocation(line: 458, column: 34, scope: !3937)
!3953 = !DILocation(line: 458, column: 47, scope: !3937)
!3954 = !DILocation(line: 458, column: 54, scope: !3937)
!3955 = !DILocation(line: 458, column: 58, scope: !3937)
!3956 = !DILocation(line: 458, column: 57, scope: !3937)
!3957 = !DILocation(line: 458, column: 70, scope: !3937)
!3958 = !DILocation(line: 0, scope: !3937)
!3959 = !DILocation(line: 459, column: 7, scope: !3937)
!3960 = distinct !{!3960, !3946, !3961}
!3961 = !DILocation(line: 459, column: 9, scope: !3937)
!3962 = !DILocation(line: 460, column: 11, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3937, file: !137, line: 460, column: 9)
!3964 = !DILocation(line: 460, column: 17, scope: !3963)
!3965 = !DILocation(line: 460, column: 15, scope: !3963)
!3966 = !DILocation(line: 460, column: 9, scope: !3937)
!3967 = !DILocation(line: 461, column: 7, scope: !3963)
!3968 = !DILocation(line: 462, column: 3, scope: !3937)
!3969 = !DILocation(line: 462, column: 15, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3903, file: !137, line: 462, column: 14)
!3971 = !DILocation(line: 462, column: 21, scope: !3970)
!3972 = !DILocation(line: 462, column: 19, scope: !3970)
!3973 = !DILocation(line: 462, column: 34, scope: !3970)
!3974 = !DILocation(line: 462, column: 38, scope: !3970)
!3975 = !DILocation(line: 463, column: 16, scope: !3970)
!3976 = !DILocation(line: 463, column: 30, scope: !3970)
!3977 = !DILocation(line: 463, column: 36, scope: !3970)
!3978 = !DILocation(line: 463, column: 43, scope: !3970)
!3979 = !DILocation(line: 463, column: 47, scope: !3970)
!3980 = !DILocation(line: 463, column: 61, scope: !3970)
!3981 = !DILocation(line: 463, column: 67, scope: !3970)
!3982 = !DILocation(line: 463, column: 74, scope: !3970)
!3983 = !DILocation(line: 464, column: 16, scope: !3970)
!3984 = !DILocation(line: 464, column: 30, scope: !3970)
!3985 = !DILocation(line: 464, column: 36, scope: !3970)
!3986 = !DILocation(line: 464, column: 43, scope: !3970)
!3987 = !DILocation(line: 464, column: 47, scope: !3970)
!3988 = !DILocation(line: 464, column: 61, scope: !3970)
!3989 = !DILocation(line: 464, column: 67, scope: !3970)
!3990 = !DILocation(line: 464, column: 74, scope: !3970)
!3991 = !DILocation(line: 465, column: 16, scope: !3970)
!3992 = !DILocation(line: 465, column: 30, scope: !3970)
!3993 = !DILocation(line: 465, column: 36, scope: !3970)
!3994 = !DILocation(line: 465, column: 43, scope: !3970)
!3995 = !DILocation(line: 465, column: 47, scope: !3970)
!3996 = !DILocation(line: 465, column: 61, scope: !3970)
!3997 = !DILocation(line: 465, column: 67, scope: !3970)
!3998 = !DILocation(line: 465, column: 74, scope: !3970)
!3999 = !DILocation(line: 466, column: 16, scope: !3970)
!4000 = !DILocation(line: 466, column: 30, scope: !3970)
!4001 = !DILocation(line: 466, column: 36, scope: !3970)
!4002 = !DILocation(line: 462, column: 14, scope: !3903)
!4003 = !DILocation(line: 468, column: 5, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3970, file: !137, line: 466, column: 45)
!4005 = !DILocation(line: 468, column: 13, scope: !4004)
!4006 = !DILocation(line: 468, column: 19, scope: !4004)
!4007 = !DILocation(line: 468, column: 28, scope: !4004)
!4008 = !DILocation(line: 469, column: 5, scope: !4004)
!4009 = !DILocation(line: 469, column: 13, scope: !4004)
!4010 = !DILocation(line: 469, column: 19, scope: !4004)
!4011 = !DILocation(line: 469, column: 34, scope: !4004)
!4012 = !DILocation(line: 470, column: 9, scope: !4004)
!4013 = !DILocation(line: 471, column: 5, scope: !4004)
!4014 = !DILocation(line: 471, column: 12, scope: !4004)
!4015 = !DILocation(line: 471, column: 26, scope: !4004)
!4016 = !DILocation(line: 471, column: 24, scope: !4004)
!4017 = !DILocation(line: 471, column: 30, scope: !4004)
!4018 = !DILocation(line: 471, column: 34, scope: !4004)
!4019 = !DILocation(line: 471, column: 42, scope: !4004)
!4020 = !DILocation(line: 471, column: 49, scope: !4004)
!4021 = !DILocation(line: 471, column: 52, scope: !4004)
!4022 = !DILocation(line: 471, column: 60, scope: !4004)
!4023 = !DILocation(line: 0, scope: !4004)
!4024 = !DILocation(line: 472, column: 7, scope: !4004)
!4025 = distinct !{!4025, !4013, !4026}
!4026 = !DILocation(line: 472, column: 9, scope: !4004)
!4027 = !DILocation(line: 473, column: 11, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4004, file: !137, line: 473, column: 9)
!4029 = !DILocation(line: 473, column: 17, scope: !4028)
!4030 = !DILocation(line: 473, column: 15, scope: !4028)
!4031 = !DILocation(line: 473, column: 9, scope: !4004)
!4032 = !DILocation(line: 474, column: 7, scope: !4028)
!4033 = !DILocation(line: 475, column: 3, scope: !4004)
!4034 = !DILocation(line: 538, column: 23, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !3877, file: !137, line: 538, column: 7)
!4036 = !DILocation(line: 538, column: 39, scope: !4035)
!4037 = !DILocation(line: 538, column: 47, scope: !4035)
!4038 = !DILocation(line: 538, column: 58, scope: !4035)
!4039 = !DILocation(line: 538, column: 56, scope: !4035)
!4040 = !DILocation(line: 539, column: 31, scope: !4035)
!4041 = !DILocation(line: 539, column: 44, scope: !4035)
!4042 = !DILocation(line: 539, column: 50, scope: !4035)
!4043 = !DILocation(line: 539, column: 48, scope: !4035)
!4044 = !DILocation(line: 538, column: 7, scope: !4035)
!4045 = !DILocation(line: 538, column: 7, scope: !3877)
!4046 = !DILocation(line: 540, column: 5, scope: !4035)
!4047 = !DILocation(line: 541, column: 3, scope: !3877)
!4048 = !DILocation(line: 542, column: 1, scope: !3877)
!4049 = distinct !DISubprogram(name: "http1_consume_body_streamed", scope: !137, file: !137, line: 648, type: !3151, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!4050 = !DILocalVariable(name: "parser", arg: 1, scope: !4049, file: !137, line: 648, type: !2537)
!4051 = !DILocation(line: 648, column: 63, scope: !4049)
!4052 = !DILocalVariable(name: "buffer", arg: 2, scope: !4049, file: !137, line: 649, type: !27)
!4053 = !DILocation(line: 649, column: 53, scope: !4049)
!4054 = !DILocalVariable(name: "length", arg: 3, scope: !4049, file: !137, line: 649, type: !61)
!4055 = !DILocation(line: 649, column: 68, scope: !4049)
!4056 = !DILocalVariable(name: "start", arg: 4, scope: !4049, file: !137, line: 650, type: !2786)
!4057 = !DILocation(line: 650, column: 57, scope: !4049)
!4058 = !DILocalVariable(name: "end", scope: !4049, file: !137, line: 651, type: !150)
!4059 = !DILocation(line: 651, column: 12, scope: !4049)
!4060 = !DILocation(line: 651, column: 19, scope: !4049)
!4061 = !DILocation(line: 651, column: 18, scope: !4049)
!4062 = !DILocation(line: 651, column: 27, scope: !4049)
!4063 = !DILocation(line: 651, column: 35, scope: !4049)
!4064 = !DILocation(line: 651, column: 41, scope: !4049)
!4065 = !DILocation(line: 651, column: 25, scope: !4049)
!4066 = !DILocation(line: 651, column: 58, scope: !4049)
!4067 = !DILocation(line: 651, column: 66, scope: !4049)
!4068 = !DILocation(line: 651, column: 72, scope: !4049)
!4069 = !DILocation(line: 651, column: 56, scope: !4049)
!4070 = !DILocalVariable(name: "stop", scope: !4049, file: !137, line: 652, type: !2559)
!4071 = !DILocation(line: 652, column: 18, scope: !4049)
!4072 = !DILocation(line: 652, column: 37, scope: !4049)
!4073 = !DILocation(line: 652, column: 47, scope: !4049)
!4074 = !DILocation(line: 652, column: 45, scope: !4049)
!4075 = !DILocation(line: 653, column: 7, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4049, file: !137, line: 653, column: 7)
!4077 = !DILocation(line: 653, column: 13, scope: !4076)
!4078 = !DILocation(line: 653, column: 11, scope: !4076)
!4079 = !DILocation(line: 653, column: 7, scope: !4049)
!4080 = !DILocation(line: 654, column: 11, scope: !4076)
!4081 = !DILocation(line: 654, column: 9, scope: !4076)
!4082 = !DILocation(line: 654, column: 5, scope: !4076)
!4083 = !DILocation(line: 655, column: 7, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4049, file: !137, line: 655, column: 7)
!4085 = !DILocation(line: 655, column: 14, scope: !4084)
!4086 = !DILocation(line: 655, column: 13, scope: !4084)
!4087 = !DILocation(line: 655, column: 11, scope: !4084)
!4088 = !DILocation(line: 655, column: 20, scope: !4084)
!4089 = !DILocation(line: 656, column: 27, scope: !4084)
!4090 = !DILocation(line: 656, column: 45, scope: !4084)
!4091 = !DILocation(line: 656, column: 44, scope: !4084)
!4092 = !DILocation(line: 656, column: 53, scope: !4084)
!4093 = !DILocation(line: 656, column: 60, scope: !4084)
!4094 = !DILocation(line: 656, column: 59, scope: !4084)
!4095 = !DILocation(line: 656, column: 57, scope: !4084)
!4096 = !DILocation(line: 656, column: 7, scope: !4084)
!4097 = !DILocation(line: 655, column: 7, scope: !4049)
!4098 = !DILocation(line: 657, column: 5, scope: !4084)
!4099 = !DILocation(line: 658, column: 26, scope: !4049)
!4100 = !DILocation(line: 658, column: 33, scope: !4049)
!4101 = !DILocation(line: 658, column: 32, scope: !4049)
!4102 = !DILocation(line: 658, column: 30, scope: !4049)
!4103 = !DILocation(line: 658, column: 3, scope: !4049)
!4104 = !DILocation(line: 658, column: 11, scope: !4049)
!4105 = !DILocation(line: 658, column: 17, scope: !4049)
!4106 = !DILocation(line: 658, column: 22, scope: !4049)
!4107 = !DILocation(line: 659, column: 12, scope: !4049)
!4108 = !DILocation(line: 659, column: 4, scope: !4049)
!4109 = !DILocation(line: 659, column: 10, scope: !4049)
!4110 = !DILocation(line: 660, column: 7, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4049, file: !137, line: 660, column: 7)
!4112 = !DILocation(line: 660, column: 15, scope: !4111)
!4113 = !DILocation(line: 660, column: 21, scope: !4111)
!4114 = !DILocation(line: 660, column: 39, scope: !4111)
!4115 = !DILocation(line: 660, column: 47, scope: !4111)
!4116 = !DILocation(line: 660, column: 53, scope: !4111)
!4117 = !DILocation(line: 660, column: 36, scope: !4111)
!4118 = !DILocation(line: 660, column: 7, scope: !4049)
!4119 = !DILocation(line: 661, column: 5, scope: !4111)
!4120 = !DILocation(line: 661, column: 13, scope: !4111)
!4121 = !DILocation(line: 661, column: 19, scope: !4111)
!4122 = !DILocation(line: 661, column: 28, scope: !4111)
!4123 = !DILocation(line: 662, column: 3, scope: !4049)
!4124 = !DILocation(line: 663, column: 1, scope: !4049)
!4125 = distinct !DISubprogram(name: "http1_consume_body_chunked", scope: !137, file: !137, line: 665, type: !3151, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!4126 = !DILocalVariable(name: "parser", arg: 1, scope: !4125, file: !137, line: 665, type: !2537)
!4127 = !DILocation(line: 665, column: 62, scope: !4125)
!4128 = !DILocalVariable(name: "buffer", arg: 2, scope: !4125, file: !137, line: 666, type: !27)
!4129 = !DILocation(line: 666, column: 52, scope: !4125)
!4130 = !DILocalVariable(name: "length", arg: 3, scope: !4125, file: !137, line: 666, type: !61)
!4131 = !DILocation(line: 666, column: 67, scope: !4125)
!4132 = !DILocalVariable(name: "start", arg: 4, scope: !4125, file: !137, line: 667, type: !2786)
!4133 = !DILocation(line: 667, column: 56, scope: !4125)
!4134 = !DILocalVariable(name: "stop", scope: !4125, file: !137, line: 668, type: !2559)
!4135 = !DILocation(line: 668, column: 18, scope: !4125)
!4136 = !DILocation(line: 668, column: 37, scope: !4125)
!4137 = !DILocation(line: 668, column: 47, scope: !4125)
!4138 = !DILocation(line: 668, column: 45, scope: !4125)
!4139 = !DILocalVariable(name: "end", scope: !4125, file: !137, line: 669, type: !150)
!4140 = !DILocation(line: 669, column: 12, scope: !4125)
!4141 = !DILocation(line: 669, column: 19, scope: !4125)
!4142 = !DILocation(line: 669, column: 18, scope: !4125)
!4143 = !DILocation(line: 670, column: 3, scope: !4125)
!4144 = !DILocation(line: 670, column: 11, scope: !4125)
!4145 = !DILocation(line: 670, column: 10, scope: !4125)
!4146 = !DILocation(line: 670, column: 19, scope: !4125)
!4147 = !DILocation(line: 670, column: 17, scope: !4125)
!4148 = !DILocation(line: 671, column: 9, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4150, file: !137, line: 671, column: 9)
!4150 = distinct !DILexicalBlock(scope: !4125, file: !137, line: 670, column: 25)
!4151 = !DILocation(line: 671, column: 17, scope: !4149)
!4152 = !DILocation(line: 671, column: 23, scope: !4149)
!4153 = !DILocation(line: 671, column: 38, scope: !4149)
!4154 = !DILocation(line: 671, column: 9, scope: !4150)
!4155 = !DILocation(line: 672, column: 11, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4157, file: !137, line: 672, column: 11)
!4157 = distinct !DILexicalBlock(scope: !4149, file: !137, line: 671, column: 44)
!4158 = !DILocation(line: 672, column: 15, scope: !4156)
!4159 = !DILocation(line: 672, column: 22, scope: !4156)
!4160 = !DILocation(line: 672, column: 19, scope: !4156)
!4161 = !DILocation(line: 672, column: 11, scope: !4157)
!4162 = !DILocation(line: 673, column: 9, scope: !4156)
!4163 = !DILocation(line: 674, column: 12, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4157, file: !137, line: 674, column: 11)
!4165 = !DILocation(line: 674, column: 19, scope: !4164)
!4166 = !DILocation(line: 674, column: 27, scope: !4164)
!4167 = !DILocation(line: 674, column: 30, scope: !4164)
!4168 = !DILocation(line: 674, column: 37, scope: !4164)
!4169 = !DILocation(line: 674, column: 11, scope: !4157)
!4170 = !DILocation(line: 676, column: 13, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4164, file: !137, line: 674, column: 47)
!4172 = !DILocation(line: 677, column: 18, scope: !4171)
!4173 = !DILocation(line: 677, column: 10, scope: !4171)
!4174 = !DILocation(line: 677, column: 16, scope: !4171)
!4175 = !DILocation(line: 678, column: 13, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4171, file: !137, line: 678, column: 13)
!4177 = !DILocation(line: 678, column: 17, scope: !4176)
!4178 = !DILocation(line: 678, column: 24, scope: !4176)
!4179 = !DILocation(line: 678, column: 21, scope: !4176)
!4180 = !DILocation(line: 678, column: 13, scope: !4171)
!4181 = !DILocation(line: 679, column: 11, scope: !4176)
!4182 = !DILocation(line: 680, column: 7, scope: !4171)
!4183 = !DILocalVariable(name: "chunk_len", scope: !4157, file: !137, line: 681, type: !144)
!4184 = !DILocation(line: 681, column: 17, scope: !4157)
!4185 = !DILocation(line: 681, column: 42, scope: !4157)
!4186 = !DILocation(line: 681, column: 29, scope: !4157)
!4187 = !DILocation(line: 682, column: 11, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4157, file: !137, line: 682, column: 11)
!4189 = !DILocation(line: 682, column: 15, scope: !4188)
!4190 = !DILocation(line: 682, column: 21, scope: !4188)
!4191 = !DILocation(line: 682, column: 19, scope: !4188)
!4192 = !DILocation(line: 682, column: 11, scope: !4157)
!4193 = !DILocation(line: 683, column: 9, scope: !4188)
!4194 = !DILocation(line: 684, column: 12, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4157, file: !137, line: 684, column: 11)
!4196 = !DILocation(line: 684, column: 19, scope: !4195)
!4197 = !DILocation(line: 684, column: 27, scope: !4195)
!4198 = !DILocation(line: 684, column: 30, scope: !4195)
!4199 = !DILocation(line: 684, column: 37, scope: !4195)
!4200 = !DILocation(line: 684, column: 11, scope: !4157)
!4201 = !DILocation(line: 685, column: 9, scope: !4195)
!4202 = !DILocation(line: 686, column: 11, scope: !4157)
!4203 = !DILocation(line: 688, column: 42, scope: !4157)
!4204 = !DILocation(line: 688, column: 40, scope: !4157)
!4205 = !DILocation(line: 688, column: 7, scope: !4157)
!4206 = !DILocation(line: 688, column: 15, scope: !4157)
!4207 = !DILocation(line: 688, column: 21, scope: !4157)
!4208 = !DILocation(line: 688, column: 36, scope: !4157)
!4209 = !DILocation(line: 689, column: 16, scope: !4157)
!4210 = !DILocation(line: 689, column: 8, scope: !4157)
!4211 = !DILocation(line: 689, column: 14, scope: !4157)
!4212 = !DILocation(line: 690, column: 11, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4157, file: !137, line: 690, column: 11)
!4214 = !DILocation(line: 690, column: 19, scope: !4213)
!4215 = !DILocation(line: 690, column: 25, scope: !4213)
!4216 = !DILocation(line: 690, column: 40, scope: !4213)
!4217 = !DILocation(line: 690, column: 11, scope: !4157)
!4218 = !DILocation(line: 693, column: 40, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4213, file: !137, line: 690, column: 46)
!4220 = !DILocation(line: 693, column: 48, scope: !4219)
!4221 = !DILocation(line: 693, column: 54, scope: !4219)
!4222 = !DILocation(line: 693, column: 9, scope: !4219)
!4223 = !DILocation(line: 693, column: 17, scope: !4219)
!4224 = !DILocation(line: 693, column: 23, scope: !4219)
!4225 = !DILocation(line: 693, column: 38, scope: !4219)
!4226 = !DILocalVariable(name: "buf", scope: !4227, file: !137, line: 696, type: !4228)
!4227 = distinct !DILexicalBlock(scope: !4219, file: !137, line: 695, column: 9)
!4228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 4096, elements: !4229)
!4229 = !{!4230}
!4230 = !DISubrange(count: 512)
!4231 = !DILocation(line: 696, column: 16, scope: !4227)
!4232 = !DILocalVariable(name: "buf_len", scope: !4227, file: !137, line: 697, type: !61)
!4233 = !DILocation(line: 697, column: 18, scope: !4227)
!4234 = !DILocalVariable(name: "tmp_len", scope: !4227, file: !137, line: 698, type: !61)
!4235 = !DILocation(line: 698, column: 18, scope: !4227)
!4236 = !DILocation(line: 698, column: 28, scope: !4227)
!4237 = !DILocation(line: 698, column: 36, scope: !4227)
!4238 = !DILocation(line: 698, column: 42, scope: !4227)
!4239 = !DILocation(line: 699, column: 15, scope: !4227)
!4240 = !DILocation(line: 699, column: 11, scope: !4227)
!4241 = !DILocation(line: 699, column: 26, scope: !4227)
!4242 = !DILocation(line: 700, column: 11, scope: !4227)
!4243 = !DILocation(line: 700, column: 18, scope: !4227)
!4244 = !DILocalVariable(name: "mod", scope: !4245, file: !137, line: 701, type: !61)
!4245 = distinct !DILexicalBlock(scope: !4227, file: !137, line: 700, column: 27)
!4246 = !DILocation(line: 701, column: 20, scope: !4245)
!4247 = !DILocation(line: 701, column: 26, scope: !4245)
!4248 = !DILocation(line: 701, column: 34, scope: !4245)
!4249 = !DILocation(line: 702, column: 37, scope: !4245)
!4250 = !DILocation(line: 702, column: 48, scope: !4245)
!4251 = !DILocation(line: 702, column: 52, scope: !4245)
!4252 = !DILocation(line: 702, column: 45, scope: !4245)
!4253 = !DILocation(line: 702, column: 34, scope: !4245)
!4254 = !DILocation(line: 702, column: 30, scope: !4245)
!4255 = !DILocation(line: 702, column: 17, scope: !4245)
!4256 = !DILocation(line: 702, column: 13, scope: !4245)
!4257 = !DILocation(line: 702, column: 28, scope: !4245)
!4258 = !DILocation(line: 703, column: 23, scope: !4245)
!4259 = !DILocation(line: 703, column: 21, scope: !4245)
!4260 = distinct !{!4260, !4242, !4261}
!4261 = !DILocation(line: 704, column: 11, scope: !4227)
!4262 = !DILocation(line: 705, column: 17, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4227, file: !137, line: 705, column: 15)
!4264 = !DILocation(line: 705, column: 25, scope: !4263)
!4265 = !DILocation(line: 705, column: 31, scope: !4263)
!4266 = !DILocation(line: 705, column: 40, scope: !4263)
!4267 = !DILocation(line: 705, column: 64, scope: !4263)
!4268 = !DILocation(line: 706, column: 31, scope: !4263)
!4269 = !DILocation(line: 707, column: 39, scope: !4263)
!4270 = !DILocation(line: 707, column: 45, scope: !4263)
!4271 = !DILocation(line: 707, column: 43, scope: !4263)
!4272 = !DILocation(line: 707, column: 60, scope: !4263)
!4273 = !DILocation(line: 707, column: 58, scope: !4263)
!4274 = !DILocation(line: 706, column: 15, scope: !4263)
!4275 = !DILocation(line: 705, column: 15, scope: !4227)
!4276 = !DILocation(line: 708, column: 13, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4263, file: !137, line: 707, column: 70)
!4278 = !DILocation(line: 713, column: 14, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4219, file: !137, line: 713, column: 13)
!4280 = !DILocation(line: 713, column: 13, scope: !4279)
!4281 = !DILocation(line: 713, column: 20, scope: !4279)
!4282 = !DILocation(line: 713, column: 27, scope: !4279)
!4283 = !DILocation(line: 713, column: 24, scope: !4279)
!4284 = !DILocation(line: 713, column: 32, scope: !4279)
!4285 = !DILocation(line: 713, column: 36, scope: !4279)
!4286 = !DILocation(line: 713, column: 48, scope: !4279)
!4287 = !DILocation(line: 713, column: 56, scope: !4279)
!4288 = !DILocation(line: 713, column: 59, scope: !4279)
!4289 = !DILocation(line: 713, column: 71, scope: !4279)
!4290 = !DILocation(line: 713, column: 13, scope: !4219)
!4291 = !DILocation(line: 714, column: 26, scope: !4279)
!4292 = !DILocation(line: 714, column: 38, scope: !4279)
!4293 = !DILocation(line: 714, column: 46, scope: !4279)
!4294 = !DILocation(line: 714, column: 49, scope: !4279)
!4295 = !DILocation(line: 714, column: 61, scope: !4279)
!4296 = !DILocation(line: 714, column: 23, scope: !4279)
!4297 = !DILocation(line: 714, column: 12, scope: !4279)
!4298 = !DILocation(line: 714, column: 18, scope: !4279)
!4299 = !DILocation(line: 714, column: 11, scope: !4279)
!4300 = !DILocation(line: 717, column: 11, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4279, file: !137, line: 715, column: 14)
!4302 = !DILocation(line: 717, column: 19, scope: !4301)
!4303 = !DILocation(line: 717, column: 25, scope: !4301)
!4304 = !DILocation(line: 717, column: 34, scope: !4301)
!4305 = !DILocation(line: 719, column: 11, scope: !4301)
!4306 = !DILocation(line: 722, column: 9, scope: !4219)
!4307 = !DILocation(line: 722, column: 17, scope: !4219)
!4308 = !DILocation(line: 722, column: 23, scope: !4219)
!4309 = !DILocation(line: 722, column: 32, scope: !4219)
!4310 = !DILocation(line: 723, column: 9, scope: !4219)
!4311 = !DILocation(line: 725, column: 5, scope: !4157)
!4312 = !DILocation(line: 726, column: 12, scope: !4150)
!4313 = !DILocation(line: 726, column: 11, scope: !4150)
!4314 = !DILocation(line: 726, column: 25, scope: !4150)
!4315 = !DILocation(line: 726, column: 33, scope: !4150)
!4316 = !DILocation(line: 726, column: 39, scope: !4150)
!4317 = !DILocation(line: 726, column: 23, scope: !4150)
!4318 = !DILocation(line: 726, column: 18, scope: !4150)
!4319 = !DILocation(line: 726, column: 9, scope: !4150)
!4320 = !DILocation(line: 727, column: 9, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4150, file: !137, line: 727, column: 9)
!4322 = !DILocation(line: 727, column: 15, scope: !4321)
!4323 = !DILocation(line: 727, column: 13, scope: !4321)
!4324 = !DILocation(line: 727, column: 9, scope: !4150)
!4325 = !DILocation(line: 728, column: 13, scope: !4321)
!4326 = !DILocation(line: 728, column: 11, scope: !4321)
!4327 = !DILocation(line: 728, column: 7, scope: !4321)
!4328 = !DILocation(line: 729, column: 9, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4150, file: !137, line: 729, column: 9)
!4330 = !DILocation(line: 729, column: 16, scope: !4329)
!4331 = !DILocation(line: 729, column: 15, scope: !4329)
!4332 = !DILocation(line: 729, column: 13, scope: !4329)
!4333 = !DILocation(line: 729, column: 22, scope: !4329)
!4334 = !DILocation(line: 730, column: 29, scope: !4329)
!4335 = !DILocation(line: 730, column: 47, scope: !4329)
!4336 = !DILocation(line: 730, column: 46, scope: !4329)
!4337 = !DILocation(line: 730, column: 55, scope: !4329)
!4338 = !DILocation(line: 730, column: 62, scope: !4329)
!4339 = !DILocation(line: 730, column: 61, scope: !4329)
!4340 = !DILocation(line: 730, column: 59, scope: !4329)
!4341 = !DILocation(line: 730, column: 9, scope: !4329)
!4342 = !DILocation(line: 729, column: 9, scope: !4150)
!4343 = !DILocation(line: 731, column: 7, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4329, file: !137, line: 730, column: 70)
!4345 = !DILocation(line: 733, column: 28, scope: !4150)
!4346 = !DILocation(line: 733, column: 35, scope: !4150)
!4347 = !DILocation(line: 733, column: 34, scope: !4150)
!4348 = !DILocation(line: 733, column: 32, scope: !4150)
!4349 = !DILocation(line: 733, column: 5, scope: !4150)
!4350 = !DILocation(line: 733, column: 13, scope: !4150)
!4351 = !DILocation(line: 733, column: 19, scope: !4150)
!4352 = !DILocation(line: 733, column: 24, scope: !4150)
!4353 = !DILocation(line: 734, column: 38, scope: !4150)
!4354 = !DILocation(line: 734, column: 45, scope: !4150)
!4355 = !DILocation(line: 734, column: 44, scope: !4150)
!4356 = !DILocation(line: 734, column: 42, scope: !4150)
!4357 = !DILocation(line: 734, column: 5, scope: !4150)
!4358 = !DILocation(line: 734, column: 13, scope: !4150)
!4359 = !DILocation(line: 734, column: 19, scope: !4150)
!4360 = !DILocation(line: 734, column: 34, scope: !4150)
!4361 = !DILocation(line: 735, column: 14, scope: !4150)
!4362 = !DILocation(line: 735, column: 6, scope: !4150)
!4363 = !DILocation(line: 735, column: 12, scope: !4150)
!4364 = distinct !{!4364, !4143, !4365}
!4365 = !DILocation(line: 736, column: 3, scope: !4125)
!4366 = !DILocation(line: 737, column: 3, scope: !4125)
!4367 = !DILocation(line: 738, column: 1, scope: !4125)
!4368 = distinct !DISubprogram(name: "http1_on_body_chunk", scope: !3, file: !3, line: 645, type: !3337, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!4369 = !DILocalVariable(name: "parser", arg: 1, scope: !4368, file: !3, line: 645, type: !2537)
!4370 = !DILocation(line: 645, column: 48, scope: !4368)
!4371 = !DILocalVariable(name: "data", arg: 2, scope: !4368, file: !3, line: 645, type: !110)
!4372 = !DILocation(line: 645, column: 62, scope: !4368)
!4373 = !DILocalVariable(name: "data_len", arg: 3, scope: !4368, file: !3, line: 646, type: !61)
!4374 = !DILocation(line: 646, column: 39, scope: !4368)
!4375 = !DILocation(line: 647, column: 7, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4368, file: !3, line: 647, column: 7)
!4377 = !DILocation(line: 647, column: 15, scope: !4376)
!4378 = !DILocation(line: 647, column: 21, scope: !4376)
!4379 = !DILocation(line: 648, column: 20, scope: !4376)
!4380 = !DILocation(line: 648, column: 41, scope: !4376)
!4381 = !DILocation(line: 648, column: 43, scope: !4376)
!4382 = !DILocation(line: 648, column: 53, scope: !4376)
!4383 = !DILocation(line: 647, column: 36, scope: !4376)
!4384 = !DILocation(line: 648, column: 67, scope: !4376)
!4385 = !DILocation(line: 649, column: 7, scope: !4376)
!4386 = !DILocation(line: 649, column: 15, scope: !4376)
!4387 = !DILocation(line: 649, column: 21, scope: !4376)
!4388 = !DILocation(line: 650, column: 20, scope: !4376)
!4389 = !DILocation(line: 650, column: 41, scope: !4376)
!4390 = !DILocation(line: 650, column: 43, scope: !4376)
!4391 = !DILocation(line: 650, column: 53, scope: !4376)
!4392 = !DILocation(line: 649, column: 26, scope: !4376)
!4393 = !DILocation(line: 647, column: 7, scope: !4368)
!4394 = !DILocation(line: 651, column: 22, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 650, column: 68)
!4396 = !DILocation(line: 651, column: 5, scope: !4395)
!4397 = !DILocation(line: 652, column: 5, scope: !4395)
!4398 = !DILocation(line: 654, column: 8, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4368, file: !3, line: 654, column: 7)
!4400 = !DILocation(line: 654, column: 16, scope: !4399)
!4401 = !DILocation(line: 654, column: 22, scope: !4399)
!4402 = !DILocation(line: 654, column: 7, scope: !4368)
!4403 = !DILocation(line: 655, column: 9, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 655, column: 9)
!4405 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 654, column: 28)
!4406 = !DILocation(line: 655, column: 17, scope: !4404)
!4407 = !DILocation(line: 655, column: 23, scope: !4404)
!4408 = !DILocation(line: 655, column: 38, scope: !4404)
!4409 = !DILocation(line: 655, column: 42, scope: !4404)
!4410 = !DILocation(line: 656, column: 9, scope: !4404)
!4411 = !DILocation(line: 656, column: 17, scope: !4404)
!4412 = !DILocation(line: 656, column: 23, scope: !4404)
!4413 = !DILocation(line: 656, column: 38, scope: !4404)
!4414 = !DILocation(line: 655, column: 9, scope: !4405)
!4415 = !DILocation(line: 657, column: 51, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 656, column: 65)
!4417 = !DILocation(line: 657, column: 7, scope: !4416)
!4418 = !DILocation(line: 657, column: 44, scope: !4416)
!4419 = !DILocation(line: 657, column: 49, scope: !4416)
!4420 = !DILocation(line: 658, column: 5, scope: !4416)
!4421 = !DILocation(line: 659, column: 51, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 658, column: 12)
!4423 = !DILocation(line: 659, column: 7, scope: !4422)
!4424 = !DILocation(line: 659, column: 44, scope: !4422)
!4425 = !DILocation(line: 659, column: 49, scope: !4422)
!4426 = !DILocation(line: 661, column: 3, scope: !4405)
!4427 = !DILocation(line: 662, column: 20, scope: !4368)
!4428 = !DILocation(line: 662, column: 57, scope: !4368)
!4429 = !DILocation(line: 662, column: 63, scope: !4368)
!4430 = !DILocation(line: 662, column: 69, scope: !4368)
!4431 = !DILocation(line: 662, column: 3, scope: !4368)
!4432 = !DILocation(line: 663, column: 3, scope: !4368)
!4433 = !DILocation(line: 664, column: 1, scope: !4368)
!4434 = distinct !DISubprogram(name: "http1_atol16", scope: !137, file: !137, line: 316, type: !3386, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!4435 = !DILocalVariable(name: "buf", arg: 1, scope: !4434, file: !137, line: 316, type: !300)
!4436 = !DILocation(line: 316, column: 46, scope: !4434)
!4437 = !DILocalVariable(name: "end", arg: 2, scope: !4434, file: !137, line: 316, type: !299)
!4438 = !DILocation(line: 316, column: 67, scope: !4434)
!4439 = !DILocalVariable(name: "i", scope: !4434, file: !137, line: 317, type: !3393)
!4440 = !DILocation(line: 317, column: 31, scope: !4434)
!4441 = !DILocalVariable(name: "inv", scope: !4434, file: !137, line: 318, type: !54)
!4442 = !DILocation(line: 318, column: 11, scope: !4434)
!4443 = !DILocalVariable(name: "limit_", scope: !4444, file: !137, line: 319, type: !238)
!4444 = distinct !DILexicalBlock(scope: !4434, file: !137, line: 319, column: 3)
!4445 = !DILocation(line: 319, column: 12, scope: !4444)
!4446 = !DILocation(line: 319, column: 8, scope: !4444)
!4447 = !DILocation(line: 320, column: 10, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4444, file: !137, line: 319, column: 3)
!4449 = !DILocation(line: 320, column: 9, scope: !4448)
!4450 = !DILocation(line: 320, column: 14, scope: !4448)
!4451 = !DILocation(line: 320, column: 21, scope: !4448)
!4452 = !DILocation(line: 320, column: 25, scope: !4448)
!4453 = !DILocation(line: 320, column: 24, scope: !4448)
!4454 = !DILocation(line: 320, column: 29, scope: !4448)
!4455 = !DILocation(line: 320, column: 37, scope: !4448)
!4456 = !DILocation(line: 320, column: 41, scope: !4448)
!4457 = !DILocation(line: 320, column: 40, scope: !4448)
!4458 = !DILocation(line: 320, column: 45, scope: !4448)
!4459 = !DILocation(line: 320, column: 54, scope: !4448)
!4460 = !DILocation(line: 320, column: 57, scope: !4448)
!4461 = !DILocation(line: 320, column: 64, scope: !4448)
!4462 = !DILocation(line: 0, scope: !4448)
!4463 = !DILocation(line: 319, column: 3, scope: !4444)
!4464 = !DILocation(line: 321, column: 5, scope: !4448)
!4465 = !DILocation(line: 320, column: 70, scope: !4448)
!4466 = !DILocation(line: 319, column: 3, scope: !4448)
!4467 = distinct !{!4467, !4463, !4468}
!4468 = !DILocation(line: 321, column: 7, scope: !4444)
!4469 = !DILocalVariable(name: "limit_", scope: !4470, file: !137, line: 322, type: !238)
!4470 = distinct !DILexicalBlock(scope: !4434, file: !137, line: 322, column: 3)
!4471 = !DILocation(line: 322, column: 12, scope: !4470)
!4472 = !DILocation(line: 322, column: 8, scope: !4470)
!4473 = !DILocation(line: 322, column: 26, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4470, file: !137, line: 322, column: 3)
!4475 = !DILocation(line: 322, column: 25, scope: !4474)
!4476 = !DILocation(line: 322, column: 30, scope: !4474)
!4477 = !DILocation(line: 322, column: 37, scope: !4474)
!4478 = !DILocation(line: 322, column: 41, scope: !4474)
!4479 = !DILocation(line: 322, column: 40, scope: !4474)
!4480 = !DILocation(line: 322, column: 45, scope: !4474)
!4481 = !DILocation(line: 322, column: 53, scope: !4474)
!4482 = !DILocation(line: 322, column: 56, scope: !4474)
!4483 = !DILocation(line: 322, column: 63, scope: !4474)
!4484 = !DILocation(line: 0, scope: !4474)
!4485 = !DILocation(line: 322, column: 3, scope: !4470)
!4486 = !DILocation(line: 323, column: 18, scope: !4474)
!4487 = !DILocation(line: 323, column: 13, scope: !4474)
!4488 = !DILocation(line: 323, column: 22, scope: !4474)
!4489 = !DILocation(line: 323, column: 9, scope: !4474)
!4490 = !DILocation(line: 323, column: 5, scope: !4474)
!4491 = !DILocation(line: 322, column: 69, scope: !4474)
!4492 = !DILocation(line: 322, column: 3, scope: !4474)
!4493 = distinct !{!4493, !4485, !4494}
!4494 = !DILocation(line: 323, column: 28, scope: !4470)
!4495 = !DILocation(line: 324, column: 8, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4434, file: !137, line: 324, column: 7)
!4497 = !DILocation(line: 324, column: 7, scope: !4496)
!4498 = !DILocation(line: 324, column: 12, scope: !4496)
!4499 = !DILocation(line: 324, column: 7, scope: !4434)
!4500 = !DILocation(line: 325, column: 5, scope: !4496)
!4501 = !DILocation(line: 326, column: 9, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4434, file: !137, line: 326, column: 7)
!4503 = !DILocation(line: 326, column: 8, scope: !4502)
!4504 = !DILocation(line: 326, column: 13, scope: !4502)
!4505 = !DILocation(line: 326, column: 19, scope: !4502)
!4506 = !DILocation(line: 326, column: 7, scope: !4434)
!4507 = !DILocation(line: 327, column: 5, scope: !4502)
!4508 = !DILocalVariable(name: "limit_", scope: !4509, file: !137, line: 328, type: !238)
!4509 = distinct !DILexicalBlock(scope: !4434, file: !137, line: 328, column: 3)
!4510 = !DILocation(line: 328, column: 12, scope: !4509)
!4511 = !DILocation(line: 328, column: 8, scope: !4509)
!4512 = !DILocation(line: 328, column: 26, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4509, file: !137, line: 328, column: 3)
!4514 = !DILocation(line: 328, column: 25, scope: !4513)
!4515 = !DILocation(line: 328, column: 30, scope: !4513)
!4516 = !DILocation(line: 328, column: 38, scope: !4513)
!4517 = !DILocation(line: 328, column: 41, scope: !4513)
!4518 = !DILocation(line: 328, column: 48, scope: !4513)
!4519 = !DILocation(line: 0, scope: !4513)
!4520 = !DILocation(line: 328, column: 3, scope: !4509)
!4521 = !DILocation(line: 329, column: 5, scope: !4513)
!4522 = !DILocation(line: 328, column: 54, scope: !4513)
!4523 = !DILocation(line: 328, column: 3, scope: !4513)
!4524 = distinct !{!4524, !4520, !4525}
!4525 = !DILocation(line: 329, column: 7, scope: !4509)
!4526 = !DILocation(line: 330, column: 3, scope: !4434)
!4527 = !DILocation(line: 330, column: 12, scope: !4434)
!4528 = !DILocation(line: 330, column: 14, scope: !4434)
!4529 = !DILocation(line: 330, column: 10, scope: !4434)
!4530 = !DILocation(line: 331, column: 10, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4532, file: !137, line: 331, column: 9)
!4532 = distinct !DILexicalBlock(scope: !4434, file: !137, line: 330, column: 38)
!4533 = !DILocation(line: 331, column: 9, scope: !4531)
!4534 = !DILocation(line: 331, column: 14, scope: !4531)
!4535 = !DILocation(line: 331, column: 21, scope: !4531)
!4536 = !DILocation(line: 331, column: 25, scope: !4531)
!4537 = !DILocation(line: 331, column: 24, scope: !4531)
!4538 = !DILocation(line: 331, column: 29, scope: !4531)
!4539 = !DILocation(line: 331, column: 9, scope: !4532)
!4540 = !DILocation(line: 332, column: 9, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4531, file: !137, line: 331, column: 37)
!4542 = !DILocation(line: 333, column: 13, scope: !4541)
!4543 = !DILocation(line: 333, column: 12, scope: !4541)
!4544 = !DILocation(line: 333, column: 17, scope: !4541)
!4545 = !DILocation(line: 333, column: 9, scope: !4541)
!4546 = !DILocation(line: 334, column: 5, scope: !4541)
!4547 = !DILocation(line: 334, column: 18, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4531, file: !137, line: 334, column: 16)
!4549 = !DILocation(line: 334, column: 17, scope: !4548)
!4550 = !DILocation(line: 334, column: 22, scope: !4548)
!4551 = !DILocation(line: 334, column: 28, scope: !4548)
!4552 = !DILocation(line: 334, column: 35, scope: !4548)
!4553 = !DILocation(line: 334, column: 40, scope: !4548)
!4554 = !DILocation(line: 334, column: 39, scope: !4548)
!4555 = !DILocation(line: 334, column: 44, scope: !4548)
!4556 = !DILocation(line: 334, column: 50, scope: !4548)
!4557 = !DILocation(line: 334, column: 16, scope: !4531)
!4558 = !DILocation(line: 335, column: 9, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4548, file: !137, line: 334, column: 58)
!4560 = !DILocation(line: 336, column: 14, scope: !4559)
!4561 = !DILocation(line: 336, column: 13, scope: !4559)
!4562 = !DILocation(line: 336, column: 18, scope: !4559)
!4563 = !DILocation(line: 336, column: 24, scope: !4559)
!4564 = !DILocation(line: 336, column: 12, scope: !4559)
!4565 = !DILocation(line: 336, column: 9, scope: !4559)
!4566 = !DILocation(line: 337, column: 5, scope: !4559)
!4567 = !DILocation(line: 338, column: 7, scope: !4548)
!4568 = !DILocation(line: 339, column: 5, scope: !4532)
!4569 = distinct !{!4569, !4526, !4570}
!4570 = !DILocation(line: 340, column: 3, scope: !4434)
!4571 = !DILocation(line: 341, column: 7, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4434, file: !137, line: 341, column: 7)
!4573 = !DILocation(line: 341, column: 7, scope: !4434)
!4574 = !DILocation(line: 342, column: 16, scope: !4572)
!4575 = !DILocation(line: 342, column: 14, scope: !4572)
!4576 = !DILocation(line: 342, column: 7, scope: !4572)
!4577 = !DILocation(line: 342, column: 5, scope: !4572)
!4578 = !DILocation(line: 343, column: 7, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4434, file: !137, line: 343, column: 7)
!4580 = !DILocation(line: 343, column: 7, scope: !4434)
!4581 = !DILocation(line: 344, column: 12, scope: !4579)
!4582 = !DILocation(line: 344, column: 6, scope: !4579)
!4583 = !DILocation(line: 344, column: 10, scope: !4579)
!4584 = !DILocation(line: 344, column: 5, scope: !4579)
!4585 = !DILocation(line: 345, column: 10, scope: !4434)
!4586 = !DILocation(line: 345, column: 3, scope: !4434)
!4587 = distinct !DISubprogram(name: "h1_reset", scope: !3, file: !3, line: 43, type: !4588, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{null, !28}
!4590 = !DILocalVariable(name: "p", arg: 1, scope: !4587, file: !3, line: 43, type: !28)
!4591 = !DILocation(line: 43, column: 40, scope: !4587)
!4592 = !DILocation(line: 43, column: 45, scope: !4587)
!4593 = !DILocation(line: 43, column: 48, scope: !4587)
!4594 = !DILocation(line: 43, column: 60, scope: !4587)
!4595 = !DILocation(line: 43, column: 65, scope: !4587)
