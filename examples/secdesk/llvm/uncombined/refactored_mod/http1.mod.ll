; ModuleID = 'http1.mod.c'
source_filename = "http1.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
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
@HTTP1_VTABLE = dso_local global %struct.http_vtable_s { i32 (%struct.http_s*, i8*, i64)* @http1_send_body, i32 (%struct.http_s*, i32, i64, i64)* @http1_sendfile, i32 (%struct.http_s*, i8*, i64)* null, void (%struct.http_s*)* @htt1p_finish, i32 (%struct.http_s*, i8*, i64, i64)* @http1_push_data, i32 (%struct.http_s*, %struct.websocket_settings_s*)* @http1_http2websocket, i32 (%struct.http_s*, i64, i64)* @http1_push_file, void (%struct.http_s*, %struct.http_fio_protocol_s*)* @http1_on_pause, void (%struct.http_s*, %struct.http_fio_protocol_s*)* @http1_on_resume, i64 (%struct.http_s*, %struct.fio_str_info_s*)* @http1_hijack, i32 (%struct.http_s*, %struct.http_sse_s*)* @http1_upgrade2sse, i32 (%struct.http_sse_s*, i64)* @http1_sse_write, i32 (%struct.http_sse_s*)* @http1_sse_close }, align 8
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"FATAL: memory allocation error http1.mod.c:790\00", align 1
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1
@headers2str.connection_hash = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"connection\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"connection:keep-alive\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"connection:close\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" HTTP/1.1\0D\0A\00", align 1
@headers2str.host_hash = internal global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"host:\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@http1pr_status2str.status2str = internal global [412 x %struct.fio_str_info_s] [%struct.fio_str_info_s { i64 0, i64 23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.48, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.51, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.58, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.62, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.63, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.64, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.70, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.72, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.74, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.76, i32 0, i32 0) }], align 16
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
@.str.85 = private unnamed_addr constant [12 x i8] c"http1.mod.c\00", align 1
@__PRETTY_FUNCTION__.http1_http2websocket = private unnamed_addr constant [59 x i8] c"int http1_http2websocket(http_s *, websocket_settings_s *)\00", align 1
@http1_http2websocket_server.ws_key_accpt_str = internal global [37 x i8] c"258EAFA5-E914-47DA-95CA-C5AB0DC85B11\00", align 16
@http1_http2websocket_server.sec_version = internal global i64 0, align 8
@http1_http2websocket_server.sec_key = internal global i64 0, align 8
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
@.str.92 = private unnamed_addr constant [62 x i8] c"DEBUG (http1.mod.c:718): (HTTP/1,1) throttling client at %.*s\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.94 = private unnamed_addr constant [70 x i8] c"ERROR: (http1 parse ordering error) missing HashMap for header %s: %s\00", align 1
@.str.95 = private unnamed_addr constant [56 x i8] c"WARNING: (HTTP) security alert - header flood detected.\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"server-timing\00", align 1
@__const.http1_consume_header_trailer.http1_trailer_white_list = private unnamed_addr constant [2 x %struct.anon.2] [%struct.anon.2 { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i32 0, i32 0), i64 13 }, %struct.anon.2 zeroinitializer], align 16
@.str.97 = private unnamed_addr constant [15 x i8] c"content-length\00", align 1
@.str.98 = private unnamed_addr constant [18 x i8] c"transfer-encoding\00", align 1
@.str.99 = private unnamed_addr constant [44 x i8] c"DEBUG (http1.mod.c:670): HTTP parser error.\00", align 1

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
define internal i32 @http1_send_body(%struct.http_s*, i8*, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.http_s*, %struct.http_s** %5, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i64 @headers2str(%struct.http_s* %9, i64 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load %struct.http_s*, %struct.http_s** %5, align 8
  call void @http1_after_finish(%struct.http_s* %15)
  store i32 -1, i32* %4, align 4
  br label %32

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @fiobj_str_write(i64 %17, i8* %18, i64 %19)
  %21 = load %struct.http_s*, %struct.http_s** %5, align 8
  %22 = getelementptr inbounds %struct.http_s, %struct.http_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.http1pr_s*
  %26 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @fiobj_send_free(i64 %28, i64 %29)
  %31 = load %struct.http_s*, %struct.http_s** %5, align 8
  call void @http1_after_finish(%struct.http_s* %31)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %16, %14
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_sendfile(%struct.http_s*, i32, i64, i64) #0 {
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
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.http_s*, %struct.http_s** %6, align 8
  %15 = call i64 @headers2str(%struct.http_s* %14, i64 0)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @close(i32 %19)
  %21 = load %struct.http_s*, %struct.http_s** %6, align 8
  call void @http1_after_finish(%struct.http_s* %21)
  store i32 -1, i32* %5, align 4
  br label %112

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %23, 8192
  br i1 %24, label %25, label %87

25:                                               ; preds = %22
  %26 = load i64, i64* %10, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %11, i64 %26)
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %29, %30
  %32 = call i64 @fiobj_str_capa_assert(i64 %27, i64 %31)
  %33 = load i64, i64* %10, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %12, i64 %33)
  %34 = bitcast %struct.fio_str_info_s* %11 to i8*
  %35 = bitcast %struct.fio_str_info_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 24, i1 false)
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @pread(i32 %36, i8* %41, i64 %42, i64 %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %25
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load %struct.http_s*, %struct.http_s** %6, align 8
  %51 = getelementptr inbounds %struct.http_s, %struct.http_s* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.http1pr_s*
  %55 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @fiobj_send_free(i64 %57, i64 %58)
  %60 = load %struct.http_s*, %struct.http_s** %6, align 8
  %61 = getelementptr inbounds %struct.http_s, %struct.http_s* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.http1pr_s*
  %65 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  call void @fio_close(i64 %67)
  store i32 -1, i32* %5, align 4
  br label %112

68:                                               ; preds = %25
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @close(i32 %69)
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %13, align 8
  %75 = add i64 %73, %74
  call void @fiobj_str_resize(i64 %71, i64 %75)
  %76 = load %struct.http_s*, %struct.http_s** %6, align 8
  %77 = getelementptr inbounds %struct.http_s, %struct.http_s* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.http1pr_s*
  %81 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @fiobj_send_free(i64 %83, i64 %84)
  %86 = load %struct.http_s*, %struct.http_s** %6, align 8
  call void @http1_after_finish(%struct.http_s* %86)
  store i32 0, i32* %5, align 4
  br label %112

87:                                               ; preds = %22
  %88 = load %struct.http_s*, %struct.http_s** %6, align 8
  %89 = getelementptr inbounds %struct.http_s, %struct.http_s* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.http1pr_s*
  %93 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @fiobj_send_free(i64 %95, i64 %96)
  %98 = load %struct.http_s*, %struct.http_s** %6, align 8
  %99 = getelementptr inbounds %struct.http_s, %struct.http_s* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.anon, %struct.anon* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to %struct.http1pr_s*
  %103 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i64 @fio_sendfile(i64 %105, i64 %107, i64 %108, i64 %109)
  %111 = load %struct.http_s*, %struct.http_s** %6, align 8
  call void @http1_after_finish(%struct.http_s* %111)
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %87, %68, %47, %18
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htt1p_finish(%struct.http_s*) #0 {
  %2 = alloca %struct.http_s*, align 8
  %3 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  %4 = load %struct.http_s*, %struct.http_s** %2, align 8
  %5 = call i64 @headers2str(%struct.http_s* %4, i64 0)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.http_s*, %struct.http_s** %2, align 8
  %10 = getelementptr inbounds %struct.http_s, %struct.http_s* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.http1pr_s*
  %14 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @fiobj_send_free(i64 %16, i64 %17)
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %8
  %21 = load %struct.http_s*, %struct.http_s** %2, align 8
  call void @http1_after_finish(%struct.http_s* %21)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_push_data(%struct.http_s*, i8*, i64, i64) #0 {
  %5 = alloca %struct.http_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_http2websocket(%struct.http_s*, %struct.websocket_settings_s*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca %struct.websocket_settings_s*, align 8
  %6 = alloca %struct.http1pr_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  store %struct.websocket_settings_s* %1, %struct.websocket_settings_s** %5, align 8
  %7 = load %struct.http_s*, %struct.http_s** %4, align 8
  %8 = icmp ne %struct.http_s* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %11

10:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i64 0, i64 0), i32 410, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.http1_http2websocket, i64 0, i64 0)) #8
  unreachable

11:                                               ; preds = %9
  %12 = load %struct.http_s*, %struct.http_s** %4, align 8
  %13 = getelementptr inbounds %struct.http_s, %struct.http_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.http1pr_s*
  store %struct.http1pr_s* %16, %struct.http1pr_s** %6, align 8
  %17 = load %struct.http1pr_s*, %struct.http1pr_s** %6, align 8
  %18 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %17, i32 0, i32 7
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load %struct.http_s*, %struct.http_s** %4, align 8
  %24 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %5, align 8
  %25 = call i32 @http1_http2websocket_server(%struct.http_s* %23, %struct.websocket_settings_s* %24)
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %11
  %27 = load %struct.http_s*, %struct.http_s** %4, align 8
  %28 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %5, align 8
  %29 = call i32 @http1_http2websocket_client(%struct.http_s* %27, %struct.websocket_settings_s* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_push_file(%struct.http_s*, i64, i64) #0 {
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_on_pause(%struct.http_s*, %struct.http_fio_protocol_s*) #0 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca %struct.http_fio_protocol_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  store %struct.http_fio_protocol_s* %1, %struct.http_fio_protocol_s** %4, align 8
  %5 = load %struct.http_fio_protocol_s*, %struct.http_fio_protocol_s** %4, align 8
  %6 = bitcast %struct.http_fio_protocol_s* %5 to %struct.http1pr_s*
  %7 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %6, i32 0, i32 8
  store i8 1, i8* %7, align 2
  %8 = load %struct.http_fio_protocol_s*, %struct.http_fio_protocol_s** %4, align 8
  %9 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  call void @fio_suspend(i64 %10)
  %11 = load %struct.http_s*, %struct.http_s** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_on_resume(%struct.http_s*, %struct.http_fio_protocol_s*) #0 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca %struct.http_fio_protocol_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  store %struct.http_fio_protocol_s* %1, %struct.http_fio_protocol_s** %4, align 8
  %5 = load %struct.http_fio_protocol_s*, %struct.http_fio_protocol_s** %4, align 8
  %6 = bitcast %struct.http_fio_protocol_s* %5 to %struct.http1pr_s*
  %7 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %6, i32 0, i32 8
  %8 = load i8, i8* %7, align 2
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.http_fio_protocol_s*, %struct.http_fio_protocol_s** %4, align 8
  %12 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  call void @fio_force_event(i64 %13, i32 0)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.http_s*, %struct.http_s** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http1_hijack(%struct.http_s*, %struct.fio_str_info_s*) #0 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca %struct.fio_str_info_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  store %struct.fio_str_info_s* %1, %struct.fio_str_info_s** %4, align 8
  %9 = load %struct.fio_str_info_s*, %struct.fio_str_info_s** %4, align 8
  %10 = icmp ne %struct.fio_str_info_s* %9, null
  br i1 %10, label %11, label %66

11:                                               ; preds = %2
  %12 = load %struct.http_s*, %struct.http_s** %3, align 8
  %13 = getelementptr inbounds %struct.http_s, %struct.http_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.http1pr_s*
  %17 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.http_s*, %struct.http_s** %3, align 8
  %20 = getelementptr inbounds %struct.http_s, %struct.http_s* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.http1pr_s*
  %24 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.http_s*, %struct.http_s** %3, align 8
  %29 = getelementptr inbounds %struct.http_s, %struct.http_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.http1pr_s*
  %33 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %32, i32 0, i32 9
  %34 = getelementptr inbounds [0 x i8], [0 x i8]* %33, i64 0, i64 0
  %35 = ptrtoint i8* %27 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sub i64 %18, %37
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %11
  %42 = load %struct.fio_str_info_s*, %struct.fio_str_info_s** %4, align 8
  %43 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 1
  %45 = load i64, i64* %5, align 8
  store i64 %45, i64* %44, align 8
  %46 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2
  %47 = load %struct.http_s*, %struct.http_s** %3, align 8
  %48 = getelementptr inbounds %struct.http_s, %struct.http_s* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.http1pr_s*
  %52 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %46, align 8
  %56 = bitcast %struct.fio_str_info_s* %42 to i8*
  %57 = bitcast %struct.fio_str_info_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 24, i1 false)
  br label %65

58:                                               ; preds = %11
  %59 = load %struct.fio_str_info_s*, %struct.fio_str_info_s** %4, align 8
  %60 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  store i8* null, i8** %62, align 8
  %63 = bitcast %struct.fio_str_info_s* %59 to i8*
  %64 = bitcast %struct.fio_str_info_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 24, i1 false)
  br label %65

65:                                               ; preds = %58, %41
  br label %66

66:                                               ; preds = %65, %2
  %67 = load %struct.http_s*, %struct.http_s** %3, align 8
  %68 = getelementptr inbounds %struct.http_s, %struct.http_s* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.http1pr_s*
  %72 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %71, i32 0, i32 8
  store i8 3, i8* %72, align 2
  %73 = load %struct.http_s*, %struct.http_s** %3, align 8
  %74 = getelementptr inbounds %struct.http_s, %struct.http_s* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.http1pr_s*
  %78 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  call void @fio_attach(i64 %81, %struct.fio_protocol_s* null)
  %82 = load i64, i64* %8, align 8
  ret i64 %82
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_upgrade2sse(%struct.http_s*, %struct.http_sse_s*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca %struct.http_sse_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.http1_sse_fio_protocol_s*, align 8
  %8 = alloca %struct.http1_sse_fio_protocol_s, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  store %struct.http_sse_s* %1, %struct.http_sse_s** %5, align 8
  %9 = load %struct.http_s*, %struct.http_s** %4, align 8
  %10 = getelementptr inbounds %struct.http_s, %struct.http_s* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.http1pr_s*
  %14 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.http_s*, %struct.http_s** %4, align 8
  %18 = getelementptr inbounds %struct.http_s, %struct.http_s* %17, i32 0, i32 5
  store i64 200, i64* %18, align 8
  %19 = load %struct.http_s*, %struct.http_s** %4, align 8
  %20 = load i64, i64* @HTTP_HEADER_CONTENT_TYPE, align 8
  %21 = load i64, i64* @HTTP_HVALUE_SSE_MIME, align 8
  %22 = call i64 @fiobj_dup(i64 %21)
  %23 = call i32 @http_set_header(%struct.http_s* %19, i64 %20, i64 %22)
  %24 = load %struct.http_s*, %struct.http_s** %4, align 8
  %25 = load i64, i64* @HTTP_HEADER_CACHE_CONTROL, align 8
  %26 = load i64, i64* @HTTP_HVALUE_NO_CACHE, align 8
  %27 = call i64 @fiobj_dup(i64 %26)
  %28 = call i32 @http_set_header(%struct.http_s* %24, i64 %25, i64 %27)
  %29 = load %struct.http_s*, %struct.http_s** %4, align 8
  %30 = load i64, i64* @HTTP_HEADER_CONTENT_ENCODING, align 8
  %31 = call i64 @fiobj_str_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0), i64 8)
  %32 = call i32 @http_set_header(%struct.http_s* %29, i64 %30, i64 %31)
  %33 = load %struct.http_s*, %struct.http_s** %4, align 8
  %34 = getelementptr inbounds %struct.http_s, %struct.http_s* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.http1pr_s*
  %38 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %37, i32 0, i32 8
  store i8 1, i8* %38, align 2
  %39 = load %struct.http_s*, %struct.http_s** %4, align 8
  call void @htt1p_finish(%struct.http_s* %39)
  %40 = call noalias i8* @fio_malloc(i64 56)
  %41 = ptrtoint i8* %40 to i64
  %42 = and i64 %41, 15
  %43 = icmp eq i64 %42, 0
  call void @llvm.assume(i1 %43)
  %44 = bitcast i8* %40 to %struct.http1_sse_fio_protocol_s*
  store %struct.http1_sse_fio_protocol_s* %44, %struct.http1_sse_fio_protocol_s** %7, align 8
  %45 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %7, align 8
  %46 = icmp ne %struct.http1_sse_fio_protocol_s* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %2
  br label %103

48:                                               ; preds = %2
  %49 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %7, align 8
  %50 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %8, i32 0, i32 0
  %51 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %50, i32 0, i32 0
  store void (i64, %struct.fio_protocol_s*)* null, void (i64, %struct.fio_protocol_s*)** %51, align 8
  %52 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %50, i32 0, i32 1
  store void (i64, %struct.fio_protocol_s*)* @http1_sse_on_ready, void (i64, %struct.fio_protocol_s*)** %52, align 8
  %53 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %50, i32 0, i32 2
  store i8 (i64, %struct.fio_protocol_s*)* @http1_sse_on_shutdown, i8 (i64, %struct.fio_protocol_s*)** %53, align 8
  %54 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %50, i32 0, i32 3
  store void (i64, %struct.fio_protocol_s*)* @http1_sse_on_close, void (i64, %struct.fio_protocol_s*)** %54, align 8
  %55 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %50, i32 0, i32 4
  store void (i64, %struct.fio_protocol_s*)* @http1_sse_ping, void (i64, %struct.fio_protocol_s*)** %55, align 8
  %56 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %50, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %8, i32 0, i32 1
  %58 = call noalias i8* @fio_malloc(i64 104)
  %59 = ptrtoint i8* %58 to i64
  %60 = and i64 %59, 15
  %61 = icmp eq i64 %60, 0
  call void @llvm.assume(i1 %61)
  %62 = bitcast i8* %58 to %struct.http_sse_internal_s*
  store %struct.http_sse_internal_s* %62, %struct.http_sse_internal_s** %57, align 8
  %63 = bitcast %struct.http1_sse_fio_protocol_s* %49 to i8*
  %64 = bitcast %struct.http1_sse_fio_protocol_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 56, i1 false)
  %65 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %7, align 8
  %66 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %65, i32 0, i32 1
  %67 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %66, align 8
  %68 = icmp ne %struct.http_sse_internal_s* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %48
  br label %103

70:                                               ; preds = %48
  %71 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %7, align 8
  %72 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %71, i32 0, i32 1
  %73 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.http_sse_s*, %struct.http_sse_s** %5, align 8
  call void @http_sse_init(%struct.http_sse_internal_s* %73, i64 %74, %struct.http_vtable_s* @HTTP1_VTABLE, %struct.http_sse_s* %75)
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.http_s*, %struct.http_s** %4, align 8
  %78 = getelementptr inbounds %struct.http_s, %struct.http_s* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.http1pr_s*
  %82 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %82, i32 0, i32 2
  %84 = load %struct.http_settings_s*, %struct.http_settings_s** %83, align 8
  %85 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %84, i32 0, i32 16
  %86 = load i8, i8* %85, align 1
  call void @fio_timeout_set(i64 %76, i8 zeroext %86)
  %87 = load %struct.http_sse_s*, %struct.http_sse_s** %5, align 8
  %88 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %87, i32 0, i32 0
  %89 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %88, align 8
  %90 = icmp ne void (%struct.http_sse_s*)* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %70
  %92 = load %struct.http_sse_s*, %struct.http_sse_s** %5, align 8
  %93 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %92, i32 0, i32 0
  %94 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %93, align 8
  %95 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %7, align 8
  %96 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %95, i32 0, i32 1
  %97 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %96, align 8
  %98 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %97, i32 0, i32 0
  call void %94(%struct.http_sse_s* %98)
  br label %99

99:                                               ; preds = %91, %70
  %100 = load i64, i64* %6, align 8
  %101 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %7, align 8
  %102 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %101, i32 0, i32 0
  call void @fio_attach(i64 %100, %struct.fio_protocol_s* %102)
  store i32 0, i32* %3, align 4
  br label %122

103:                                              ; preds = %69, %47
  %104 = load %struct.http_s*, %struct.http_s** %4, align 8
  %105 = getelementptr inbounds %struct.http_s, %struct.http_s* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to %struct.http1pr_s*
  %109 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  call void @fio_close(i64 %111)
  %112 = load %struct.http_sse_s*, %struct.http_sse_s** %5, align 8
  %113 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %112, i32 0, i32 3
  %114 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %113, align 8
  %115 = icmp ne void (%struct.http_sse_s*)* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %103
  %117 = load %struct.http_sse_s*, %struct.http_sse_s** %5, align 8
  %118 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %117, i32 0, i32 3
  %119 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %118, align 8
  %120 = load %struct.http_sse_s*, %struct.http_sse_s** %5, align 8
  call void %119(%struct.http_sse_s* %120)
  br label %121

121:                                              ; preds = %116, %103
  store i32 -1, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %99
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_sse_write(%struct.http_sse_s*, i64) #0 {
  %3 = alloca %struct.http_sse_s*, align 8
  %4 = alloca i64, align 8
  store %struct.http_sse_s* %0, %struct.http_sse_s** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.http_sse_s*, %struct.http_sse_s** %3, align 8
  %6 = bitcast %struct.http_sse_s* %5 to %struct.http_sse_internal_s*
  %7 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @fiobj_send_free(i64 %8, i64 %9)
  %11 = trunc i64 %10 to i32
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_sse_close(%struct.http_sse_s*) #0 {
  %2 = alloca %struct.http_sse_s*, align 8
  store %struct.http_sse_s* %0, %struct.http_sse_s** %2, align 8
  %3 = load %struct.http_sse_s*, %struct.http_sse_s** %2, align 8
  %4 = bitcast %struct.http_sse_s* %3 to %struct.http_sse_internal_s*
  %5 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  call void @fio_close(i64 %6)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @http1_vtable() #0 {
  ret i8* bitcast (%struct.http_vtable_s* @HTTP1_VTABLE to i8*)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fio_protocol_s* @http1_new(i64, %struct.http_settings_s*, i8*, i64) #0 {
  %5 = alloca %struct.fio_protocol_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.http_settings_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.http1pr_s*, align 8
  %11 = alloca %struct.http1pr_s, align 8
  store i64 %0, i64* %6, align 8
  store %struct.http_settings_s* %1, %struct.http_settings_s** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i64, i64* %9, align 8
  %16 = icmp ugt i64 %15, 8192
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store %struct.fio_protocol_s* null, %struct.fio_protocol_s** %5, align 8
  br label %92

18:                                               ; preds = %14, %4
  %19 = call noalias i8* @fio_malloc(i64 8448)
  %20 = ptrtoint i8* %19 to i64
  %21 = and i64 %20, 15
  %22 = icmp eq i64 %21, 0
  call void @llvm.assume(i1 %22)
  %23 = bitcast i8* %19 to %struct.http1pr_s*
  store %struct.http1pr_s* %23, %struct.http1pr_s** %10, align 8
  %24 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8
  %25 = icmp ne %struct.http1pr_s* %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %29 = icmp sle i32 1, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %31
  %33 = call i32 @kill(i32 0, i32 2) #1
  %34 = call i32* @__errno_location() #9
  %35 = load i32, i32* %34, align 4
  call void @exit(i32 %35) #8
  unreachable

36:                                               ; preds = %18
  %37 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8
  %38 = bitcast %struct.http1pr_s* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 256, i1 false)
  %39 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %11, i32 0, i32 0
  %40 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %40, i32 0, i32 0
  store void (i64, %struct.fio_protocol_s*)* @http1_on_data_first_time, void (i64, %struct.fio_protocol_s*)** %41, align 8
  %42 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %40, i32 0, i32 1
  store void (i64, %struct.fio_protocol_s*)* @http1_on_ready, void (i64, %struct.fio_protocol_s*)** %42, align 8
  %43 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %40, i32 0, i32 3
  store void (i64, %struct.fio_protocol_s*)* @http1_on_close, void (i64, %struct.fio_protocol_s*)** %43, align 8
  %44 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %39, i32 0, i32 1
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* %44, align 8
  %46 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %39, i32 0, i32 2
  %47 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8
  store %struct.http_settings_s* %47, %struct.http_settings_s** %46, align 8
  %48 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %11, i32 0, i32 4
  %49 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8
  %50 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %48, align 8
  %52 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %11, i32 0, i32 7
  %53 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8
  %54 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %53, i32 0, i32 18
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %52, align 1
  %56 = bitcast %struct.http1pr_s* %37 to i8*
  %57 = bitcast %struct.http1pr_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 256, i1 false)
  %58 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8
  %59 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %58, i32 0, i32 2
  %60 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8
  %61 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %60, i32 0, i32 0
  call void @http_s_new(%struct.http_s* %59, %struct.http_fio_protocol_s* %61, %struct.http_vtable_s* @HTTP1_VTABLE)
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %36
  %65 = load i64, i64* %9, align 8
  %66 = icmp ule i64 %65, 8192
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8
  %69 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %68, i32 0, i32 9
  %70 = getelementptr inbounds [0 x i8], [0 x i8]* %69, i64 0, i64 0
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %9, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %70, i8* align 1 %71, i64 %72, i1 false)
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8
  %75 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %67, %64, %36
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8
  %79 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %79, i32 0, i32 0
  call void @fio_attach(i64 %77, %struct.fio_protocol_s* %80)
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i64, i64* %9, align 8
  %85 = icmp ule i64 %84, 8192
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i64, i64* %6, align 8
  call void @fio_force_event(i64 %87, i32 0)
  br label %88

88:                                               ; preds = %86, %83, %76
  %89 = load %struct.http1pr_s*, %struct.http1pr_s** %10, align 8
  %90 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %90, i32 0, i32 0
  store %struct.fio_protocol_s* %91, %struct.fio_protocol_s** %5, align 8
  br label %92

92:                                               ; preds = %88, %17
  %93 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %5, align 8
  ret %struct.fio_protocol_s* %93
}

declare dso_local noalias i8* @fio_malloc(i64) #4

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_on_data_first_time(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.http1pr_s*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %7 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %8 = bitcast %struct.fio_protocol_s* %7 to %struct.http1pr_s*
  store %struct.http1pr_s* %8, %struct.http1pr_s** %5, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %11 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %10, i32 0, i32 9
  %12 = getelementptr inbounds [0 x i8], [0 x i8]* %11, i64 0, i64 0
  %13 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %14 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %18 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 8192, %19
  %21 = call i64 @fio_read(i64 %9, i8* %16, i64 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %54

25:                                               ; preds = %2
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %28 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %32 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %33, i32 0, i32 0
  store void (i64, %struct.fio_protocol_s*)* @http1_on_data, void (i64, %struct.fio_protocol_s*)** %34, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp sge i64 %35, 24
  br i1 %36, label %37, label %51

37:                                               ; preds = %25
  %38 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %39 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %38, i32 0, i32 9
  %40 = getelementptr inbounds [0 x i8], [0 x i8]* %39, i64 0, i64 0
  %41 = call i32 @memcmp(i8* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i64 0, i64 0), i64 24) #10
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %46 = icmp sle i32 3, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.91, i64 0, i64 0))
  br label %48

48:                                               ; preds = %47, %44
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %3, align 8
  call void @fio_close(i64 %50)
  br label %54

51:                                               ; preds = %37, %25
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  call void @http1_consume_data(i64 %52, %struct.http1pr_s* %53)
  br label %54

54:                                               ; preds = %51, %49, %24
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_on_ready(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.http1pr_s*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %6 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %7 = bitcast %struct.fio_protocol_s* %6 to %struct.http1pr_s*
  store %struct.http1pr_s* %7, %struct.http1pr_s** %5, align 8
  %8 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %9 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %8, i32 0, i32 8
  %10 = load i8, i8* %9, align 2
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %16 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %15, i32 0, i32 8
  %17 = load i8, i8* %16, align 2
  %18 = zext i8 %17 to i32
  %19 = xor i32 %18, 4
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %16, align 2
  %21 = load i64, i64* %3, align 8
  call void @fio_force_event(i64 %21, i32 0)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_on_close(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %5 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  call void @http1_destroy(%struct.fio_protocol_s* %5)
  %6 = load i64, i64* %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_s_new(%struct.http_s*, %struct.http_fio_protocol_s*, %struct.http_vtable_s*) #0 {
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca %struct.http_fio_protocol_s*, align 8
  %6 = alloca %struct.http_vtable_s*, align 8
  %7 = alloca %struct.http_s, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  store %struct.http_fio_protocol_s* %1, %struct.http_fio_protocol_s** %5, align 8
  store %struct.http_vtable_s* %2, %struct.http_vtable_s** %6, align 8
  %8 = load %struct.http_s*, %struct.http_s** %4, align 8
  %9 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 0
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %11 = load %struct.http_vtable_s*, %struct.http_vtable_s** %6, align 8
  %12 = bitcast %struct.http_vtable_s* %11 to i8*
  store i8* %12, i8** %10, align 8
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %14 = load %struct.http_fio_protocol_s*, %struct.http_fio_protocol_s** %5, align 8
  %15 = ptrtoint %struct.http_fio_protocol_s* %14 to i64
  store i64 %15, i64* %13, align 8
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 2
  %17 = call i64 @fiobj_hash_new()
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 1
  %19 = call { i64, i64 } @fio_last_tick()
  %20 = bitcast %struct.timespec* %18 to { i64, i64 }*
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  %22 = extractvalue { i64, i64 } %19, 0
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  %24 = extractvalue { i64, i64 } %19, 1
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 5
  store i64 200, i64* %28, align 8
  %29 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 7
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 8
  %32 = call i64 @fiobj_hash_new()
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 9
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 10
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 11
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 12
  store i8* null, i8** %36, align 8
  %37 = bitcast %struct.http_s* %8 to i8*
  %38 = bitcast %struct.http_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 128, i1 false)
  ret void
}

declare dso_local void @fio_attach(i64, %struct.fio_protocol_s*) #4

declare dso_local void @fio_force_event(i64, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http1_destroy(%struct.fio_protocol_s*) #0 {
  %2 = alloca %struct.fio_protocol_s*, align 8
  %3 = alloca %struct.http1pr_s*, align 8
  store %struct.fio_protocol_s* %0, %struct.fio_protocol_s** %2, align 8
  %4 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %2, align 8
  %5 = bitcast %struct.fio_protocol_s* %4 to %struct.http1pr_s*
  store %struct.http1pr_s* %5, %struct.http1pr_s** %3, align 8
  %6 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %7 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.http_s, %struct.http_s* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %10 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %9, i32 0, i32 2
  call void @http_s_destroy(%struct.http_s* %10, i8 zeroext 0)
  %11 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %12 = bitcast %struct.http1pr_s* %11 to i8*
  call void @fio_free(i8* %12)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_s_destroy(%struct.http_s*, i8 zeroext) #0 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.http_s, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i8, i8* %4, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.http_s*, %struct.http_s** %3, align 8
  %11 = getelementptr inbounds %struct.http_s, %struct.http_s* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.http_s*, %struct.http_s** %3, align 8
  %16 = getelementptr inbounds %struct.http_s, %struct.http_s* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load %struct.http_s*, %struct.http_s** %3, align 8
  call void @http_write_log(%struct.http_s* %20)
  br label %21

21:                                               ; preds = %19, %14, %9, %2
  %22 = load %struct.http_s*, %struct.http_s** %3, align 8
  %23 = getelementptr inbounds %struct.http_s, %struct.http_s* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  call void @fiobj_free(i64 %24)
  %25 = load %struct.http_s*, %struct.http_s** %3, align 8
  %26 = getelementptr inbounds %struct.http_s, %struct.http_s* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  call void @fiobj_free(i64 %27)
  %28 = load %struct.http_s*, %struct.http_s** %3, align 8
  %29 = getelementptr inbounds %struct.http_s, %struct.http_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  call void @fiobj_free(i64 %31)
  %32 = load %struct.http_s*, %struct.http_s** %3, align 8
  %33 = getelementptr inbounds %struct.http_s, %struct.http_s* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  call void @fiobj_free(i64 %34)
  %35 = load %struct.http_s*, %struct.http_s** %3, align 8
  %36 = getelementptr inbounds %struct.http_s, %struct.http_s* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  call void @fiobj_free(i64 %37)
  %38 = load %struct.http_s*, %struct.http_s** %3, align 8
  %39 = getelementptr inbounds %struct.http_s, %struct.http_s* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  call void @fiobj_free(i64 %40)
  %41 = load %struct.http_s*, %struct.http_s** %3, align 8
  %42 = getelementptr inbounds %struct.http_s, %struct.http_s* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  call void @fiobj_free(i64 %43)
  %44 = load %struct.http_s*, %struct.http_s** %3, align 8
  %45 = getelementptr inbounds %struct.http_s, %struct.http_s* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  call void @fiobj_free(i64 %46)
  %47 = load %struct.http_s*, %struct.http_s** %3, align 8
  %48 = getelementptr inbounds %struct.http_s, %struct.http_s* %47, i32 0, i32 11
  %49 = load i64, i64* %48, align 8
  call void @fiobj_free(i64 %49)
  %50 = load %struct.http_s*, %struct.http_s** %3, align 8
  %51 = getelementptr inbounds %struct.http_s, %struct.http_s* %50, i32 0, i32 10
  %52 = load i64, i64* %51, align 8
  call void @fiobj_free(i64 %52)
  %53 = load %struct.http_s*, %struct.http_s** %3, align 8
  %54 = bitcast %struct.http_s* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %54, i8 0, i64 128, i1 false)
  %55 = getelementptr inbounds %struct.http_s, %struct.http_s* %5, i32 0, i32 0
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0
  %57 = load %struct.http_s*, %struct.http_s** %3, align 8
  %58 = getelementptr inbounds %struct.http_s, %struct.http_s* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %56, align 8
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 1
  %62 = load %struct.http_s*, %struct.http_s** %3, align 8
  %63 = getelementptr inbounds %struct.http_s, %struct.http_s* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %61, align 8
  %66 = bitcast %struct.http_s* %53 to i8*
  %67 = bitcast %struct.http_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 128, i1 false)
  ret void
}

declare dso_local void @fio_free(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @headers2str(%struct.http_s*, i64) #0 {
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
  store i64 %1, i64* %5, align 8
  %15 = load %struct.http_s*, %struct.http_s** %4, align 8
  %16 = getelementptr inbounds %struct.http_s, %struct.http_s* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.http_s*, %struct.http_s** %4, align 8
  %21 = getelementptr inbounds %struct.http_s, %struct.http_s* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i64 0, i64* %3, align 8
  br label %287

25:                                               ; preds = %19, %2
  %26 = load i64, i64* @headers2str.connection_hash, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 10)
  store i64 %29, i64* @headers2str.connection_hash, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load %struct.http_s*, %struct.http_s** %4, align 8
  %32 = getelementptr inbounds %struct.http_s, %struct.http_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @fiobj_hash_count(i64 %34)
  %36 = mul i64 %35, 64
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %37, %38
  %40 = call i64 @fiobj_str_buf(i64 %39)
  %41 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load %struct.http_s*, %struct.http_s** %4, align 8
  %43 = getelementptr inbounds %struct.http_s, %struct.http_s* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.http1pr_s*
  store %struct.http1pr_s* %46, %struct.http1pr_s** %8, align 8
  %47 = load %struct.http1pr_s*, %struct.http1pr_s** %8, align 8
  %48 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %47, i32 0, i32 7
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %188

52:                                               ; preds = %30
  %53 = load %struct.http_s*, %struct.http_s** %4, align 8
  %54 = getelementptr inbounds %struct.http_s, %struct.http_s* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  call void @http1pr_status2str(%struct.fio_str_info_s* sret %9, i64 %55)
  %56 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @fiobj_str_write(i64 %57, i8* %59, i64 %61)
  %63 = load %struct.http_s*, %struct.http_s** %4, align 8
  %64 = getelementptr inbounds %struct.http_s, %struct.http_s* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @headers2str.connection_hash, align 8
  %68 = call i64 @fiobj_hash_get2(i64 %66, i64 %67)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %52
  %72 = load i64, i64* %10, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %11, i64 %72)
  %73 = bitcast %struct.fio_str_info_s* %9 to i8*
  %74 = bitcast %struct.fio_str_info_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 24, i1 false)
  %75 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 99
  br i1 %80, label %88, label %81

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 67
  br i1 %87, label %88, label %91

88:                                               ; preds = %81, %71
  %89 = load %struct.http1pr_s*, %struct.http1pr_s** %8, align 8
  %90 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %89, i32 0, i32 6
  store i8 1, i8* %90, align 8
  br label %91

91:                                               ; preds = %88, %81
  br label %187

92:                                               ; preds = %52
  %93 = load %struct.http_s*, %struct.http_s** %4, align 8
  %94 = getelementptr inbounds %struct.http_s, %struct.http_s* %93, i32 0, i32 8
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @headers2str.connection_hash, align 8
  %97 = call i64 @fiobj_hash_get2(i64 %95, i64 %96)
  store i64 %97, i64* %10, align 8
  %98 = load i64, i64* %10, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %136

100:                                              ; preds = %92
  %101 = load i64, i64* %10, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %12, i64 %101)
  %102 = bitcast %struct.fio_str_info_s* %9 to i8*
  %103 = bitcast %struct.fio_str_info_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 24, i1 false)
  %104 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %125

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 107
  br i1 %117, label %125, label %118

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 75
  br i1 %124, label %125, label %129

125:                                              ; preds = %118, %111, %107, %100
  %126 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @fiobj_str_write(i64 %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 23)
  br label %135

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @fiobj_str_write(i64 %131, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 18)
  %133 = load %struct.http1pr_s*, %struct.http1pr_s** %8, align 8
  %134 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %133, i32 0, i32 6
  store i8 1, i8* %134, align 8
  br label %135

135:                                              ; preds = %129, %125
  br label %186

136:                                              ; preds = %92
  %137 = load %struct.http_s*, %struct.http_s** %4, align 8
  %138 = getelementptr inbounds %struct.http_s, %struct.http_s* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %13, i64 %139)
  %140 = bitcast %struct.fio_str_info_s* %9 to i8*
  %141 = bitcast %struct.fio_str_info_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 24, i1 false)
  %142 = load %struct.http1pr_s*, %struct.http1pr_s** %8, align 8
  %143 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %142, i32 0, i32 6
  %144 = load i8, i8* %143, align 8
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %179, label %146

146:                                              ; preds = %136
  %147 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ugt i64 %148, 7
  br i1 %149, label %150, label %179

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %179

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 5
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 49
  br i1 %160, label %161, label %179

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 6
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 46
  br i1 %167, label %168, label %179

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 7
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 49
  br i1 %174, label %175, label %179

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @fiobj_str_write(i64 %177, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 23)
  br label %185

179:                                              ; preds = %168, %161, %154, %150, %146, %136
  %180 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i64 @fiobj_str_write(i64 %181, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 18)
  %183 = load %struct.http1pr_s*, %struct.http1pr_s** %8, align 8
  %184 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %183, i32 0, i32 6
  store i8 1, i8* %184, align 8
  br label %185

185:                                              ; preds = %179, %175
  br label %186

186:                                              ; preds = %185, %135
  br label %187

187:                                              ; preds = %186, %91
  br label %275

188:                                              ; preds = %30
  %189 = load %struct.http_s*, %struct.http_s** %4, align 8
  %190 = getelementptr inbounds %struct.http_s, %struct.http_s* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.http_s*, %struct.http_s** %4, align 8
  %197 = getelementptr inbounds %struct.http_s, %struct.http_s* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = call i64 @fiobj_str_concat(i64 %195, i64 %198)
  %200 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i64 @fiobj_str_write(i64 %201, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64 1)
  br label %207

203:                                              ; preds = %188
  %204 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @fiobj_str_write(i64 %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 4)
  br label %207

207:                                              ; preds = %203, %193
  %208 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.http_s*, %struct.http_s** %4, align 8
  %211 = getelementptr inbounds %struct.http_s, %struct.http_s* %210, i32 0, i32 6
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @fiobj_str_concat(i64 %209, i64 %212)
  %214 = load %struct.http_s*, %struct.http_s** %4, align 8
  %215 = getelementptr inbounds %struct.http_s, %struct.http_s* %214, i32 0, i32 7
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %207
  %219 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i64 @fiobj_str_write(i64 %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 1)
  %222 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.http_s*, %struct.http_s** %4, align 8
  %225 = getelementptr inbounds %struct.http_s, %struct.http_s* %224, i32 0, i32 7
  %226 = load i64, i64* %225, align 8
  %227 = call i64 @fiobj_str_concat(i64 %223, i64 %226)
  br label %228

228:                                              ; preds = %218, %207
  %229 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = call i64 @fiobj_str_write(i64 %230, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 11)
  %232 = load i64, i64* @headers2str.host_hash, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %228
  %235 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 4)
  store i64 %235, i64* @headers2str.host_hash, align 8
  br label %236

236:                                              ; preds = %234, %228
  %237 = load %struct.http_s*, %struct.http_s** %4, align 8
  %238 = getelementptr inbounds %struct.http_s, %struct.http_s* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.anon, %struct.anon* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @headers2str.host_hash, align 8
  %242 = call i64 @fiobj_hash_get2(i64 %240, i64 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %262, label %244

244:                                              ; preds = %236
  %245 = load %struct.http_s*, %struct.http_s** %4, align 8
  %246 = getelementptr inbounds %struct.http_s, %struct.http_s* %245, i32 0, i32 8
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @headers2str.host_hash, align 8
  %249 = call i64 @fiobj_hash_get2(i64 %247, i64 %248)
  store i64 %249, i64* %14, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %262

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i64 @fiobj_str_write(i64 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 5)
  %255 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* %14, align 8
  %258 = call i64 @fiobj_str_concat(i64 %256, i64 %257)
  %259 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = call i64 @fiobj_str_write(i64 %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 2)
  br label %262

262:                                              ; preds = %251, %244, %236
  %263 = load %struct.http_s*, %struct.http_s** %4, align 8
  %264 = getelementptr inbounds %struct.http_s, %struct.http_s* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.anon, %struct.anon* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @headers2str.connection_hash, align 8
  %268 = call i64 @fiobj_hash_get2(i64 %266, i64 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %262
  %271 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = call i64 @fiobj_str_write(i64 %272, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 23)
  br label %274

274:                                              ; preds = %270, %262
  br label %275

275:                                              ; preds = %274, %187
  %276 = load %struct.http_s*, %struct.http_s** %4, align 8
  %277 = getelementptr inbounds %struct.http_s, %struct.http_s* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.anon, %struct.anon* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = bitcast %struct.header_writer_s* %6 to i8*
  %281 = call i64 @fiobj_each1(i64 %279, i64 0, i32 (i64, i8*)* @write_header, i8* %280)
  %282 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = call i64 @fiobj_str_write(i64 %283, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 2)
  %285 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %6, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %3, align 8
  br label %287

287:                                              ; preds = %275, %24
  %288 = load i64, i64* %3, align 8
  ret i64 %288
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_after_finish(%struct.http_s*) #0 {
  %2 = alloca %struct.http_s*, align 8
  %3 = alloca %struct.http1pr_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  %4 = load %struct.http_s*, %struct.http_s** %2, align 8
  %5 = getelementptr inbounds %struct.http_s, %struct.http_s* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.http1pr_s*
  store %struct.http1pr_s* %8, %struct.http1pr_s** %3, align 8
  %9 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %10 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %9, i32 0, i32 8
  %11 = load i8, i8* %10, align 2
  %12 = zext i8 %11 to i64
  %13 = and i64 %12, -2
  %14 = trunc i64 %13 to i8
  %15 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %16 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %15, i32 0, i32 8
  store i8 %14, i8* %16, align 2
  %17 = load %struct.http_s*, %struct.http_s** %2, align 8
  %18 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %19 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %18, i32 0, i32 2
  %20 = icmp ne %struct.http_s* %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.http_s*, %struct.http_s** %2, align 8
  call void @http_s_destroy(%struct.http_s* %22, i8 zeroext 0)
  %23 = load %struct.http_s*, %struct.http_s** %2, align 8
  %24 = bitcast %struct.http_s* %23 to i8*
  call void @fio_free(i8* %24)
  br label %33

25:                                               ; preds = %1
  %26 = load %struct.http_s*, %struct.http_s** %2, align 8
  %27 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %28 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %28, i32 0, i32 2
  %30 = load %struct.http_settings_s*, %struct.http_settings_s** %29, align 8
  %31 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %30, i32 0, i32 17
  %32 = load i8, i8* %31, align 2
  call void @http_s_clear(%struct.http_s* %26, i8 zeroext %32)
  br label %33

33:                                               ; preds = %25, %21
  %34 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %35 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %34, i32 0, i32 6
  %36 = load i8, i8* %35, align 8
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %40 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  call void @fio_close(i64 %42)
  br label %43

43:                                               ; preds = %38, %33
  ret void
}

declare dso_local i64 @fiobj_str_write(i64, i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_send_free(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_str_info_s, align 8
  %6 = alloca %struct.fio_write_args_s, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %5, i64 %7)
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to i8**
  %11 = load i64, i64* %4, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %10, align 8
  %13 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 1
  %14 = bitcast %union.anon.0* %13 to void (i8*)**
  store void (i8*)* @fiobj4sock_dealloc, void (i8*)** %14, align 8
  %15 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 2
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 3
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = load i64, i64* %4, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %18, align 8
  %24 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %25 = load i8, i8* %24, align 8
  %26 = and i8 %25, -2
  store i8 %26, i8* %24, align 8
  %27 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %28 = load i8, i8* %27, align 8
  %29 = and i8 %28, -3
  store i8 %29, i8* %27, align 8
  %30 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %31 = load i8, i8* %30, align 8
  %32 = and i8 %31, -5
  store i8 %32, i8* %30, align 8
  %33 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %6, i32 0, i32 4
  %34 = load i8, i8* %33, align 8
  %35 = and i8 %34, -9
  store i8 %35, i8* %33, align 8
  %36 = call i64 @fio_write2_fn(i64 %8, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %6)
  ret i64 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_hash_string(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @fio_siphash13(i8* %5, i64 %6, i64 ptrtoint (i64 (i64, i32 (i64, i8*)*, i8*)* @fiobj_each2 to i64), i64 ptrtoint (void (i64)* @fiobj_free_complex_object to i64))
  ret i64 %7
}

declare dso_local i64 @fiobj_hash_count(i64) #4

declare dso_local i64 @fiobj_str_buf(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1pr_status2str(%struct.fio_str_info_s* noalias sret, i64) #0 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  %4 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 24, i1 false)
  %5 = load i64, i64* %3, align 8
  %6 = icmp uge i64 %5, 100
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = sub i64 %8, 100
  %10 = icmp ult i64 %9, 412
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 %12, 100
  %14 = getelementptr inbounds [412 x %struct.fio_str_info_s], [412 x %struct.fio_str_info_s]* @http1pr_status2str.status2str, i64 0, i64 %13
  %15 = bitcast %struct.fio_str_info_s* %0 to i8*
  %16 = bitcast %struct.fio_str_info_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  br label %17

17:                                               ; preds = %11, %7, %2
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 16 bitcast (%struct.fio_str_info_s* getelementptr inbounds ([412 x %struct.fio_str_info_s], [412 x %struct.fio_str_info_s]* @http1pr_status2str.status2str, i64 0, i64 400) to i8*), i64 24, i1 false)
  br label %23

23:                                               ; preds = %21, %17
  ret void
}

declare dso_local i64 @fiobj_hash_get2(i64, i64) #4

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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.78 to i8*), i64 24, i1 false)
  br label %37

25:                                               ; preds = %19
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.80 to i8*), i64 24, i1 false)
  br label %37

27:                                               ; preds = %19
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.82 to i8*), i64 24, i1 false)
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

declare dso_local i64 @fiobj_str_concat(i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_each1(i64, i64, i32 (i64, i8*)*, i8*) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (i64, i8*)*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 (i64, i8*)* %2, i32 (i64, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %4
  %13 = load i64, i64* %6, align 8
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = and i64 %17, 6
  %19 = icmp ne i64 %18, 6
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %21)
  %23 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %22, i32 0, i32 5
  %24 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %23, align 8
  %25 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  %28 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %27)
  %29 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %28, i32 0, i32 5
  %30 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32 (i64, i8*)*, i32 (i64, i8*)** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 %30(i64 %31, i64 %32, i32 (i64, i8*)* %33, i8* %34)
  store i64 %35, i64* %5, align 8
  br label %37

36:                                               ; preds = %20, %16, %12, %4
  store i64 0, i64* %5, align 8
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_header(i64, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.header_writer_s*, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.header_writer_s*
  store %struct.header_writer_s* %10, %struct.header_writer_s** %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

14:                                               ; preds = %2
  %15 = call i64 @fiobj_hash_key_in_loop()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = call i64 @fiobj_hash_key_in_loop()
  %19 = load %struct.header_writer_s*, %struct.header_writer_s** %6, align 8
  %20 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @fiobj_type_is(i64 %22, i8 zeroext 41)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.header_writer_s*, %struct.header_writer_s** %6, align 8
  %28 = bitcast %struct.header_writer_s* %27 to i8*
  %29 = call i64 @fiobj_each1(i64 %26, i64 0, i32 (i64, i8*)* @write_header, i8* %28)
  store i32 0, i32* %3, align 4
  br label %64

30:                                               ; preds = %21
  %31 = load %struct.header_writer_s*, %struct.header_writer_s** %6, align 8
  %32 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %33)
  %34 = load i64, i64* %4, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %8, i64 %34)
  %35 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %64

39:                                               ; preds = %30
  %40 = load %struct.header_writer_s*, %struct.header_writer_s** %6, align 8
  %41 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @fiobj_str_write(i64 %42, i8* %44, i64 %46)
  %48 = load %struct.header_writer_s*, %struct.header_writer_s** %6, align 8
  %49 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @fiobj_str_write(i64 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i64 0, i64 0), i64 1)
  %52 = load %struct.header_writer_s*, %struct.header_writer_s** %6, align 8
  %53 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @fiobj_str_write(i64 %54, i8* %56, i64 %58)
  %60 = load %struct.header_writer_s*, %struct.header_writer_s** %6, align 8
  %61 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @fiobj_str_write(i64 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 2)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %39, %38, %25, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @fio_siphash13(i8*, i64, i64, i64) #4

declare dso_local i64 @fiobj_each2(i64, i32 (i64, i8*)*, i8*) #4

declare dso_local void @fiobj_free_complex_object(i64) #4

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

declare dso_local i64 @fiobj_hash_key_in_loop() #4

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

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_s_clear(%struct.http_s*, i8 zeroext) #0 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca i8, align 1
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.http_s*, %struct.http_s** %3, align 8
  %6 = load i8, i8* %4, align 1
  call void @http_s_destroy(%struct.http_s* %5, i8 zeroext %6)
  %7 = load %struct.http_s*, %struct.http_s** %3, align 8
  %8 = load %struct.http_s*, %struct.http_s** %3, align 8
  %9 = getelementptr inbounds %struct.http_s, %struct.http_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.http_fio_protocol_s*
  %13 = load %struct.http_s*, %struct.http_s** %3, align 8
  %14 = getelementptr inbounds %struct.http_s, %struct.http_s* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.http_vtable_s*
  call void @http_s_new(%struct.http_s* %7, %struct.http_fio_protocol_s* %12, %struct.http_vtable_s* %17)
  ret void
}

declare dso_local void @fio_close(i64) #4

declare dso_local i64 @fio_write2_fn(i64, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj4sock_dealloc(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = ptrtoint i8* %3 to i64
  call void @fiobj_free(i64 %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_free(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, 6
  %14 = icmp ne i64 %13, 6
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %7, %1
  br label %50

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8
  %18 = and i64 %17, -8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.fiobj_object_header_s*
  %21 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %20, i32 0, i32 1
  store i32 1, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = atomicrmw sub i32* %21, i32 %22 seq_cst
  %24 = sub i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %50

28:                                               ; preds = %16
  %29 = load i64, i64* %2, align 8
  %30 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %29)
  %31 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %30, i32 0, i32 5
  %32 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %31, align 8
  %33 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i64, i64* %2, align 8
  %36 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %35)
  %37 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %36, i32 0, i32 2
  %38 = load i64 (i64)*, i64 (i64)** %37, align 8
  %39 = load i64, i64* %2, align 8
  %40 = call i64 %38(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i64, i64* %2, align 8
  call void @fiobj_free_complex_object(i64 %43)
  br label %50

44:                                               ; preds = %34, %28
  %45 = load i64, i64* %2, align 8
  %46 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %45)
  %47 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %46, i32 0, i32 1
  %48 = load void (i64, void (i64, i8*)*, i8*)*, void (i64, void (i64, i8*)*, i8*)** %47, align 8
  %49 = load i64, i64* %2, align 8
  call void %48(i64 %49, void (i64, i8*)* null, i8* null)
  br label %50

50:                                               ; preds = %15, %27, %44, %42
  ret void
}

declare dso_local i32 @close(i32) #4

declare dso_local i64 @fiobj_str_capa_assert(i64, i64) #4

declare dso_local i64 @pread(i32, i8*, i64, i64) #4

declare dso_local void @fiobj_str_resize(i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_sendfile(i64, i64, i64, i64) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fio_write_args_s, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 0
  %12 = bitcast %union.anon* %11 to i64*
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 1
  %15 = bitcast %union.anon.0* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 2
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 3
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4
  %21 = load i8, i8* %20, align 8
  %22 = and i8 %21, -2
  store i8 %22, i8* %20, align 8
  %23 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4
  %24 = load i8, i8* %23, align 8
  %25 = and i8 %24, -3
  %26 = or i8 %25, 2
  store i8 %26, i8* %23, align 8
  %27 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4
  %28 = load i8, i8* %27, align 8
  %29 = and i8 %28, -5
  store i8 %29, i8* %27, align 8
  %30 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %9, i32 0, i32 4
  %31 = load i8, i8* %30, align 8
  %32 = and i8 %31, -9
  store i8 %32, i8* %30, align 8
  %33 = call i64 @fio_write2_fn(i64 %10, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %9)
  ret i64 %33
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_http2websocket_server(%struct.http_s*, %struct.websocket_settings_s*) #0 {
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
  store %struct.websocket_settings_s* %1, %struct.websocket_settings_s** %5, align 8
  %14 = load i64, i64* @http1_http2websocket_server.sec_version, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i64 0, i64 0), i64 21)
  store i64 %17, i64* @http1_http2websocket_server.sec_version, align 8
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i64, i64* @http1_http2websocket_server.sec_key, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i64 0, i64 0), i64 17)
  store i64 %22, i64* @http1_http2websocket_server.sec_key, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load %struct.http_s*, %struct.http_s** %4, align 8
  %25 = getelementptr inbounds %struct.http_s, %struct.http_s* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @http1_http2websocket_server.sec_version, align 8
  %28 = call i64 @fiobj_hash_get2(i64 %26, i64 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %142

32:                                               ; preds = %23
  %33 = load i64, i64* %6, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %33)
  %34 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 2
  br i1 %36, label %51, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 49
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 51
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %37, %32
  br label %142

52:                                               ; preds = %44
  %53 = load %struct.http_s*, %struct.http_s** %4, align 8
  %54 = getelementptr inbounds %struct.http_s, %struct.http_s* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @http1_http2websocket_server.sec_key, align 8
  %57 = call i64 @fiobj_hash_get2(i64 %55, i64 %56)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  br label %142

61:                                               ; preds = %52
  %62 = load i64, i64* %6, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %8, i64 %62)
  %63 = bitcast %struct.fio_str_info_s* %7 to i8*
  %64 = bitcast %struct.fio_str_info_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 24, i1 false)
  call void @fio_sha1_init(%struct.fio_sha1_s* sret %9)
  %65 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  call void @fio_sha1_write(%struct.fio_sha1_s* %9, i8* %66, i64 %68)
  call void @fio_sha1_write(%struct.fio_sha1_s* %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @http1_http2websocket_server.ws_key_accpt_str, i64 0, i64 0), i64 36)
  %69 = call i64 @fiobj_str_buf(i64 32)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %10, i64 %70)
  %71 = bitcast %struct.fio_str_info_s* %7 to i8*
  %72 = bitcast %struct.fio_str_info_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 24, i1 false)
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @fio_sha1_result(%struct.fio_sha1_s* %9)
  %77 = call i32 @fio_base64_encode(i8* %75, i8* %76, i32 20)
  %78 = sext i32 %77 to i64
  call void @fiobj_str_resize(i64 %73, i64 %78)
  %79 = load %struct.http_s*, %struct.http_s** %4, align 8
  %80 = load i64, i64* @HTTP_HEADER_CONNECTION, align 8
  %81 = load i64, i64* @HTTP_HVALUE_WS_UPGRADE, align 8
  %82 = call i64 @fiobj_dup(i64 %81)
  %83 = call i32 @http_set_header(%struct.http_s* %79, i64 %80, i64 %82)
  %84 = load %struct.http_s*, %struct.http_s** %4, align 8
  %85 = load i64, i64* @HTTP_HEADER_UPGRADE, align 8
  %86 = load i64, i64* @HTTP_HVALUE_WEBSOCKET, align 8
  %87 = call i64 @fiobj_dup(i64 %86)
  %88 = call i32 @http_set_header(%struct.http_s* %84, i64 %85, i64 %87)
  %89 = load %struct.http_s*, %struct.http_s** %4, align 8
  %90 = load i64, i64* @HTTP_HEADER_WS_SEC_KEY, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @http_set_header(%struct.http_s* %89, i64 %90, i64 %91)
  %93 = load %struct.http_s*, %struct.http_s** %4, align 8
  %94 = getelementptr inbounds %struct.http_s, %struct.http_s* %93, i32 0, i32 5
  store i64 101, i64* %94, align 8
  %95 = load %struct.http_s*, %struct.http_s** %4, align 8
  %96 = getelementptr inbounds %struct.http_s, %struct.http_s* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to %struct.http1pr_s*
  store %struct.http1pr_s* %99, %struct.http1pr_s** %11, align 8
  %100 = load %struct.http_s*, %struct.http_s** %4, align 8
  %101 = getelementptr inbounds %struct.http_s, %struct.http_s* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.anon, %struct.anon* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.http1pr_s*
  %105 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %12, align 8
  %108 = load %struct.http_s*, %struct.http_s** %4, align 8
  %109 = getelementptr inbounds %struct.http_s, %struct.http_s* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.anon, %struct.anon* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.http1pr_s*
  %113 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %113, i32 0, i32 2
  %115 = load %struct.http_settings_s*, %struct.http_settings_s** %114, align 8
  store %struct.http_settings_s* %115, %struct.http_settings_s** %13, align 8
  %116 = load %struct.http_s*, %struct.http_s** %4, align 8
  call void @http_finish(%struct.http_s* %116)
  %117 = load %struct.http1pr_s*, %struct.http1pr_s** %11, align 8
  %118 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %117, i32 0, i32 8
  store i8 1, i8* %118, align 2
  %119 = load i64, i64* %12, align 8
  %120 = load %struct.http_settings_s*, %struct.http_settings_s** %13, align 8
  %121 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %5, align 8
  %122 = load %struct.http1pr_s*, %struct.http1pr_s** %11, align 8
  %123 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.http1pr_s*, %struct.http1pr_s** %11, align 8
  %128 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.http1pr_s*, %struct.http1pr_s** %11, align 8
  %131 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.http1pr_s*, %struct.http1pr_s** %11, align 8
  %136 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %135, i32 0, i32 9
  %137 = getelementptr inbounds [0 x i8], [0 x i8]* %136, i64 0, i64 0
  %138 = ptrtoint i8* %134 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sub i64 %129, %140
  call void @websocket_attach(i64 %119, %struct.http_settings_s* %120, %struct.websocket_settings_s* %121, i8* %126, i64 %141)
  store i32 0, i32* %3, align 4
  br label %157

142:                                              ; preds = %60, %51, %31
  %143 = load %struct.http_s*, %struct.http_s** %4, align 8
  %144 = call i32 @http_send_error(%struct.http_s* %143, i64 400)
  %145 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %5, align 8
  %146 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %145, i32 0, i32 4
  %147 = load void (i64, i8*)*, void (i64, i8*)** %146, align 8
  %148 = icmp ne void (i64, i8*)* %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %5, align 8
  %151 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %150, i32 0, i32 4
  %152 = load void (i64, i8*)*, void (i64, i8*)** %151, align 8
  %153 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %5, align 8
  %154 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %153, i32 0, i32 5
  %155 = load i8*, i8** %154, align 8
  call void %152(i64 0, i8* %155)
  br label %156

156:                                              ; preds = %149, %142
  store i32 -1, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %61
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_http2websocket_client(%struct.http_s*, %struct.websocket_settings_s*) #0 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca %struct.websocket_settings_s*, align 8
  %5 = alloca %struct.http1pr_s*, align 8
  %6 = alloca [2 x i64], align 16
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fio_str_info_s, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  store %struct.websocket_settings_s* %1, %struct.websocket_settings_s** %4, align 8
  %11 = load %struct.http_s*, %struct.http_s** %3, align 8
  %12 = getelementptr inbounds %struct.http_s, %struct.http_s* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.http1pr_s*
  store %struct.http1pr_s* %15, %struct.http1pr_s** %5, align 8
  %16 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %17 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %17, i32 0, i32 2
  %19 = load %struct.http_settings_s*, %struct.http_settings_s** %18, align 8
  %20 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %19, i32 0, i32 3
  %21 = load void (%struct.http_settings_s*)*, void (%struct.http_settings_s*)** %20, align 8
  %22 = icmp ne void (%struct.http_settings_s*)* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %25 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %25, i32 0, i32 2
  %27 = load %struct.http_settings_s*, %struct.http_settings_s** %26, align 8
  %28 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %27, i32 0, i32 3
  %29 = load void (%struct.http_settings_s*)*, void (%struct.http_settings_s*)** %28, align 8
  %30 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %31 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %31, i32 0, i32 2
  %33 = load %struct.http_settings_s*, %struct.http_settings_s** %32, align 8
  call void %29(%struct.http_settings_s* %33)
  br label %34

34:                                               ; preds = %23, %2
  %35 = call noalias i8* @fio_malloc(i64 48)
  %36 = ptrtoint i8* %35 to i64
  %37 = and i64 %36, 15
  %38 = icmp eq i64 %37, 0
  call void @llvm.assume(i1 %38)
  %39 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %40 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %40, i32 0, i32 2
  %42 = load %struct.http_settings_s*, %struct.http_settings_s** %41, align 8
  %43 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %42, i32 0, i32 4
  store i8* %35, i8** %43, align 8
  %44 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %45 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %45, i32 0, i32 2
  %47 = load %struct.http_settings_s*, %struct.http_settings_s** %46, align 8
  %48 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = bitcast i8* %49 to %struct.websocket_settings_s*
  %51 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %50, i64 0
  %52 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %4, align 8
  %53 = bitcast %struct.websocket_settings_s* %51 to i8*
  %54 = bitcast %struct.websocket_settings_s* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 48, i1 false)
  %55 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %56 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %56, i32 0, i32 2
  %58 = load %struct.http_settings_s*, %struct.http_settings_s** %57, align 8
  %59 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %58, i32 0, i32 3
  store void (%struct.http_settings_s*)* @http1_websocket_client_on_hangup, void (%struct.http_settings_s*)** %59, align 8
  %60 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %61 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %61, i32 0, i32 2
  %63 = load %struct.http_settings_s*, %struct.http_settings_s** %62, align 8
  %64 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %63, i32 0, i32 1
  store void (%struct.http_s*, i8*, i64)* @http1_websocket_client_on_upgrade, void (%struct.http_s*, i8*, i64)** %64, align 8
  %65 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %66 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %66, i32 0, i32 2
  %68 = load %struct.http_settings_s*, %struct.http_settings_s** %67, align 8
  %69 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %68, i32 0, i32 2
  store void (%struct.http_s*)* @http1_websocket_client_on_failed, void (%struct.http_s*)** %69, align 8
  %70 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %71 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %71, i32 0, i32 2
  %73 = load %struct.http_settings_s*, %struct.http_settings_s** %72, align 8
  %74 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %73, i32 0, i32 0
  store void (%struct.http_s*)* @http1_websocket_client_on_failed, void (%struct.http_s*)** %74, align 8
  %75 = load %struct.http_s*, %struct.http_s** %3, align 8
  %76 = load i64, i64* @HTTP_HEADER_CONNECTION, align 8
  %77 = load i64, i64* @HTTP_HVALUE_WS_UPGRADE, align 8
  %78 = call i64 @fiobj_dup(i64 %77)
  %79 = call i32 @http_set_header(%struct.http_s* %75, i64 %76, i64 %78)
  %80 = load %struct.http_s*, %struct.http_s** %3, align 8
  %81 = load i64, i64* @HTTP_HEADER_UPGRADE, align 8
  %82 = load i64, i64* @HTTP_HVALUE_WEBSOCKET, align 8
  %83 = call i64 @fiobj_dup(i64 %82)
  %84 = call i32 @http_set_header(%struct.http_s* %80, i64 %81, i64 %83)
  %85 = load %struct.http_s*, %struct.http_s** %3, align 8
  %86 = load i64, i64* @HTTP_HVALUE_WS_SEC_VERSION, align 8
  %87 = load i64, i64* @HTTP_HVALUE_WS_VERSION, align 8
  %88 = call i64 @fiobj_dup(i64 %87)
  %89 = call i32 @http_set_header(%struct.http_s* %85, i64 %86, i64 %88)
  %90 = load %struct.http_s*, %struct.http_s** %3, align 8
  %91 = ptrtoint %struct.http_s* %90 to i64
  %92 = call { i64, i64 } @fio_last_tick()
  %93 = bitcast %struct.timespec* %7 to { i64, i64 }*
  %94 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %93, i32 0, i32 0
  %95 = extractvalue { i64, i64 } %92, 0
  store i64 %95, i64* %94, align 8
  %96 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %93, i32 0, i32 1
  %97 = extractvalue { i64, i64 } %92, 1
  store i64 %97, i64* %96, align 8
  %98 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = xor i64 %91, %99
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  store i64 %100, i64* %101, align 16
  %102 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %4, align 8
  %103 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %102, i32 0, i32 5
  %104 = load i8*, i8** %103, align 8
  %105 = ptrtoint i8* %104 to i64
  %106 = call { i64, i64 } @fio_last_tick()
  %107 = bitcast %struct.timespec* %8 to { i64, i64 }*
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 0
  %109 = extractvalue { i64, i64 } %106, 0
  store i64 %109, i64* %108, align 8
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 1
  %111 = extractvalue { i64, i64 } %106, 1
  store i64 %111, i64* %110, align 8
  %112 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = xor i64 %105, %113
  %115 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  store i64 %114, i64* %115, align 8
  %116 = call i64 @fiobj_str_buf(i64 26)
  store i64 %116, i64* %9, align 8
  %117 = load i64, i64* %9, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %10, i64 %117)
  %118 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %121 = bitcast i64* %120 to i8*
  %122 = call i32 @fio_base64_encode(i8* %119, i8* %121, i32 16)
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 1
  store i64 %123, i64* %124, align 8
  %125 = load i64, i64* %9, align 8
  %126 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  call void @fiobj_str_resize(i64 %125, i64 %127)
  %128 = load %struct.http_s*, %struct.http_s** %3, align 8
  %129 = load i64, i64* @HTTP_HEADER_WS_SEC_CLIENT_KEY, align 8
  %130 = load i64, i64* %9, align 8
  %131 = call i32 @http_set_header(%struct.http_s* %128, i64 %129, i64 %130)
  %132 = load %struct.http_s*, %struct.http_s** %3, align 8
  call void @http_finish(%struct.http_s* %132)
  ret i32 0
}

declare dso_local void @fio_sha1_init(%struct.fio_sha1_s* sret) #4

declare dso_local void @fio_sha1_write(%struct.fio_sha1_s*, i8*, i64) #4

declare dso_local i32 @fio_base64_encode(i8*, i8*, i32) #4

declare dso_local i8* @fio_sha1_result(%struct.fio_sha1_s*) #4

declare dso_local i32 @http_set_header(%struct.http_s*, i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_dup(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, 6
  %14 = icmp ne i64 %13, 6
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8
  %17 = and i64 %16, -8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.fiobj_object_header_s*
  %20 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %19, i32 0, i32 1
  store i32 1, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = atomicrmw add i32* %20, i32 %21 seq_cst
  %23 = add i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  br label %25

25:                                               ; preds = %15, %11, %7, %1
  %26 = load i64, i64* %2, align 8
  ret i64 %26
}

declare dso_local void @http_finish(%struct.http_s*) #4

declare dso_local void @websocket_attach(i64, %struct.http_settings_s*, %struct.websocket_settings_s*, i8*, i64) #4

declare dso_local i32 @http_send_error(%struct.http_s*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_websocket_client_on_hangup(%struct.http_settings_s*) #0 {
  %2 = alloca %struct.http_settings_s*, align 8
  %3 = alloca %struct.websocket_settings_s*, align 8
  store %struct.http_settings_s* %0, %struct.http_settings_s** %2, align 8
  %4 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %5 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %4, i32 0, i32 4
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.websocket_settings_s*
  store %struct.websocket_settings_s* %7, %struct.websocket_settings_s** %3, align 8
  %8 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8
  %9 = icmp ne %struct.websocket_settings_s* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8
  %12 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %11, i32 0, i32 4
  %13 = load void (i64, i8*)*, void (i64, i8*)** %12, align 8
  %14 = icmp ne void (i64, i8*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8
  %17 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %16, i32 0, i32 4
  %18 = load void (i64, i8*)*, void (i64, i8*)** %17, align 8
  %19 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8
  %20 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %19, i32 0, i32 5
  %21 = load i8*, i8** %20, align 8
  call void %18(i64 0, i8* %21)
  br label %22

22:                                               ; preds = %15, %10
  %23 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %24 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %23, i32 0, i32 4
  %25 = load i8*, i8** %24, align 8
  call void @fio_free(i8* %25)
  %26 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %27 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %26, i32 0, i32 4
  store i8* null, i8** %27, align 8
  br label %28

28:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_websocket_client_on_upgrade(%struct.http_s*, i8*, i64) #0 {
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.http1pr_s*, align 8
  %8 = alloca %struct.websocket_settings_s*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.http_settings_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.http_s*, %struct.http_s** %4, align 8
  %12 = getelementptr inbounds %struct.http_s, %struct.http_s* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.http1pr_s*
  store %struct.http1pr_s* %15, %struct.http1pr_s** %7, align 8
  %16 = load %struct.http_s*, %struct.http_s** %4, align 8
  %17 = getelementptr inbounds %struct.http_s, %struct.http_s* %16, i32 0, i32 12
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.websocket_settings_s*
  store %struct.websocket_settings_s* %19, %struct.websocket_settings_s** %8, align 8
  %20 = load %struct.http_s*, %struct.http_s** %4, align 8
  %21 = getelementptr inbounds %struct.http_s, %struct.http_s* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.http1pr_s*
  %25 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.http_s*, %struct.http_s** %4, align 8
  %29 = getelementptr inbounds %struct.http_s, %struct.http_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.http1pr_s*
  %33 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %33, i32 0, i32 2
  %35 = load %struct.http_settings_s*, %struct.http_settings_s** %34, align 8
  store %struct.http_settings_s* %35, %struct.http_settings_s** %10, align 8
  %36 = load %struct.http_settings_s*, %struct.http_settings_s** %10, align 8
  %37 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %36, i32 0, i32 4
  store i8* null, i8** %37, align 8
  %38 = load %struct.http_s*, %struct.http_s** %4, align 8
  call void @http_finish(%struct.http_s* %38)
  %39 = load %struct.http1pr_s*, %struct.http1pr_s** %7, align 8
  %40 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %39, i32 0, i32 8
  store i8 1, i8* %40, align 2
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.http_settings_s*, %struct.http_settings_s** %10, align 8
  %43 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8
  %44 = load %struct.http1pr_s*, %struct.http1pr_s** %7, align 8
  %45 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.http1pr_s*, %struct.http1pr_s** %7, align 8
  %50 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.http1pr_s*, %struct.http1pr_s** %7, align 8
  %53 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.http1pr_s*, %struct.http1pr_s** %7, align 8
  %58 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %57, i32 0, i32 9
  %59 = getelementptr inbounds [0 x i8], [0 x i8]* %58, i64 0, i64 0
  %60 = ptrtoint i8* %56 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sub i64 %51, %62
  call void @websocket_attach(i64 %41, %struct.http_settings_s* %42, %struct.websocket_settings_s* %43, i8* %48, i64 %63)
  %64 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %8, align 8
  %65 = bitcast %struct.websocket_settings_s* %64 to i8*
  call void @fio_free(i8* %65)
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_websocket_client_on_failed(%struct.http_s*) #0 {
  %2 = alloca %struct.http_s*, align 8
  %3 = alloca %struct.websocket_settings_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  %4 = load %struct.http_s*, %struct.http_s** %2, align 8
  %5 = getelementptr inbounds %struct.http_s, %struct.http_s* %4, i32 0, i32 12
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.websocket_settings_s*
  store %struct.websocket_settings_s* %7, %struct.websocket_settings_s** %3, align 8
  %8 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8
  %9 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %8, i32 0, i32 4
  %10 = load void (i64, i8*)*, void (i64, i8*)** %9, align 8
  %11 = icmp ne void (i64, i8*)* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8
  %14 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %13, i32 0, i32 4
  %15 = load void (i64, i8*)*, void (i64, i8*)** %14, align 8
  %16 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8
  %17 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %16, i32 0, i32 5
  %18 = load i8*, i8** %17, align 8
  call void %15(i64 0, i8* %18)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.http_s*, %struct.http_s** %2, align 8
  %21 = getelementptr inbounds %struct.http_s, %struct.http_s* %20, i32 0, i32 12
  %22 = load i8*, i8** %21, align 8
  call void @fio_free(i8* %22)
  %23 = load %struct.http_s*, %struct.http_s** %2, align 8
  %24 = call %struct.http_settings_s* @http_settings(%struct.http_s* %23)
  %25 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %24, i32 0, i32 4
  store i8* null, i8** %25, align 8
  %26 = load %struct.http_s*, %struct.http_s** %2, align 8
  %27 = getelementptr inbounds %struct.http_s, %struct.http_s* %26, i32 0, i32 12
  store i8* null, i8** %27, align 8
  ret void
}

declare dso_local { i64, i64 } @fio_last_tick() #4

declare dso_local %struct.http_settings_s* @http_settings(%struct.http_s*) #4

declare dso_local void @fio_suspend(i64) #4

declare dso_local i64 @fiobj_str_new(i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_sse_on_ready(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.http1_sse_fio_protocol_s*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %6 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %7 = bitcast %struct.fio_protocol_s* %6 to %struct.http1_sse_fio_protocol_s*
  store %struct.http1_sse_fio_protocol_s* %7, %struct.http1_sse_fio_protocol_s** %5, align 8
  %8 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8
  %9 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %8, i32 0, i32 1
  %10 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %9, align 8
  %11 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %11, i32 0, i32 1
  %13 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %12, align 8
  %14 = icmp ne void (%struct.http_sse_s*)* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8
  %17 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %16, i32 0, i32 1
  %18 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %17, align 8
  %19 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %19, i32 0, i32 1
  %21 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %20, align 8
  %22 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8
  %23 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %22, i32 0, i32 1
  %24 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %23, align 8
  %25 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %24, i32 0, i32 0
  call void %21(%struct.http_sse_s* %25)
  br label %26

26:                                               ; preds = %15, %2
  %27 = load i64, i64* %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @http1_sse_on_shutdown(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.http1_sse_fio_protocol_s*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %6 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %7 = bitcast %struct.fio_protocol_s* %6 to %struct.http1_sse_fio_protocol_s*
  store %struct.http1_sse_fio_protocol_s* %7, %struct.http1_sse_fio_protocol_s** %5, align 8
  %8 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8
  %9 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %8, i32 0, i32 1
  %10 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %9, align 8
  %11 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %11, i32 0, i32 2
  %13 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %12, align 8
  %14 = icmp ne void (%struct.http_sse_s*)* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8
  %17 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %16, i32 0, i32 1
  %18 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %17, align 8
  %19 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %19, i32 0, i32 2
  %21 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %20, align 8
  %22 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8
  %23 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %22, i32 0, i32 1
  %24 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %23, align 8
  %25 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %24, i32 0, i32 0
  call void %21(%struct.http_sse_s* %25)
  br label %26

26:                                               ; preds = %15, %2
  ret i8 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_sse_on_close(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.http1_sse_fio_protocol_s*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %6 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %7 = bitcast %struct.fio_protocol_s* %6 to %struct.http1_sse_fio_protocol_s*
  store %struct.http1_sse_fio_protocol_s* %7, %struct.http1_sse_fio_protocol_s** %5, align 8
  %8 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8
  %9 = getelementptr inbounds %struct.http1_sse_fio_protocol_s, %struct.http1_sse_fio_protocol_s* %8, i32 0, i32 1
  %10 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %9, align 8
  call void @http_sse_destroy(%struct.http_sse_internal_s* %10)
  %11 = load %struct.http1_sse_fio_protocol_s*, %struct.http1_sse_fio_protocol_s** %5, align 8
  %12 = bitcast %struct.http1_sse_fio_protocol_s* %11 to i8*
  call void @fio_free(i8* %12)
  %13 = load i64, i64* %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_sse_ping(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.fio_write_args_s, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 0
  %8 = bitcast %union.anon* %7 to i8**
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 1
  %10 = bitcast %union.anon.0* %9 to void (i8*)**
  store void (i8*)* @FIO_DEALLOC_NOOP, void (i8*)** %10, align 8
  %11 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 2
  store i64 8, i64* %11, align 8
  %12 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4
  %14 = load i8, i8* %13, align 8
  %15 = and i8 %14, -2
  store i8 %15, i8* %13, align 8
  %16 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4
  %17 = load i8, i8* %16, align 8
  %18 = and i8 %17, -3
  store i8 %18, i8* %16, align 8
  %19 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4
  %20 = load i8, i8* %19, align 8
  %21 = and i8 %20, -5
  store i8 %21, i8* %19, align 8
  %22 = getelementptr inbounds %struct.fio_write_args_s, %struct.fio_write_args_s* %5, i32 0, i32 4
  %23 = load i8, i8* %22, align 8
  %24 = and i8 %23, -9
  store i8 %24, i8* %22, align 8
  %25 = call i64 @fio_write2_fn(i64 %6, %struct.fio_write_args_s* byval(%struct.fio_write_args_s) align 8 %5)
  %26 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_sse_init(%struct.http_sse_internal_s*, i64, %struct.http_vtable_s*, %struct.http_sse_s*) #0 {
  %5 = alloca %struct.http_sse_internal_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.http_vtable_s*, align 8
  %8 = alloca %struct.http_sse_s*, align 8
  %9 = alloca %struct.http_sse_internal_s, align 8
  store %struct.http_sse_internal_s* %0, %struct.http_sse_internal_s** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.http_vtable_s* %2, %struct.http_vtable_s** %7, align 8
  store %struct.http_sse_s* %3, %struct.http_sse_s** %8, align 8
  %10 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8
  %11 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %9, i32 0, i32 0
  %12 = load %struct.http_sse_s*, %struct.http_sse_s** %8, align 8
  %13 = bitcast %struct.http_sse_s* %11 to i8*
  %14 = bitcast %struct.http_sse_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 40, i1 false)
  %15 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %9, i32 0, i32 1
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %9, i32 0, i32 2
  %18 = load %struct.http_vtable_s*, %struct.http_vtable_s** %7, align 8
  store %struct.http_vtable_s* %18, %struct.http_vtable_s** %17, align 8
  %19 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %9, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %9, i32 0, i32 4
  %21 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %20, i32 0, i32 0
  %22 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8
  %23 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %22, i32 0, i32 4
  store %struct.fio_ls_s* %23, %struct.fio_ls_s** %21, align 8
  %24 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %20, i32 0, i32 1
  %25 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8
  %26 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %25, i32 0, i32 4
  store %struct.fio_ls_s* %26, %struct.fio_ls_s** %24, align 8
  %27 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %20, i32 0, i32 2
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %9, i32 0, i32 5
  store volatile i8 0, i8* %28, align 8
  %29 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %9, i32 0, i32 6
  store i64 1, i64* %29, align 8
  %30 = bitcast %struct.http_sse_internal_s* %10 to i8*
  %31 = bitcast %struct.http_sse_internal_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 104, i1 true)
  ret void
}

declare dso_local void @fio_timeout_set(i64, i8 zeroext) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_sse_destroy(%struct.http_sse_internal_s*) #0 {
  %2 = alloca %struct.http_sse_internal_s*, align 8
  %3 = alloca i8*, align 8
  store %struct.http_sse_internal_s* %0, %struct.http_sse_internal_s** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8
  %6 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %5, i32 0, i32 4
  %7 = call i32 @fio_ls_any(%struct.fio_ls_s* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8
  %11 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %10, i32 0, i32 4
  %12 = call i8* @fio_ls_pop(%struct.fio_ls_s* %11)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.subscription_s*
  call void @fio_unsubscribe(%struct.subscription_s* %14)
  br label %4

15:                                               ; preds = %4
  %16 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8
  %17 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %17, i32 0, i32 3
  %19 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %18, align 8
  %20 = icmp ne void (%struct.http_sse_s*)* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8
  %23 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %23, i32 0, i32 3
  %25 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %24, align 8
  %26 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8
  %27 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %26, i32 0, i32 0
  call void %25(%struct.http_sse_s* %27)
  br label %28

28:                                               ; preds = %21, %15
  %29 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8
  %30 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %29, i32 0, i32 1
  store i64 -1, i64* %30, align 8
  %31 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8
  call void @http_sse_try_free(%struct.http_sse_internal_s* %31)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ls_any(%struct.fio_ls_s*) #0 {
  %2 = alloca %struct.fio_ls_s*, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %2, align 8
  %3 = load %struct.fio_ls_s*, %struct.fio_ls_s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %3, i32 0, i32 1
  %5 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8
  %6 = load %struct.fio_ls_s*, %struct.fio_ls_s** %2, align 8
  %7 = icmp ne %struct.fio_ls_s* %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fio_ls_pop(%struct.fio_ls_s*) #0 {
  %2 = alloca %struct.fio_ls_s*, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %2, align 8
  %3 = load %struct.fio_ls_s*, %struct.fio_ls_s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %3, i32 0, i32 0
  %5 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8
  %6 = call i8* @fio_ls_remove(%struct.fio_ls_s* %5)
  ret i8* %6
}

declare dso_local void @fio_unsubscribe(%struct.subscription_s*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_sse_try_free(%struct.http_sse_internal_s*) #0 {
  %2 = alloca %struct.http_sse_internal_s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.http_sse_internal_s* %0, %struct.http_sse_internal_s** %2, align 8
  %5 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8
  %6 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %5, i32 0, i32 6
  store i64 1, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = atomicrmw sub i64* %6, i64 %7 seq_cst
  %9 = sub i64 %8, %7
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %2, align 8
  %15 = bitcast %struct.http_sse_internal_s* %14 to i8*
  call void @fio_free(i8* %15)
  br label %16

16:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fio_ls_remove(%struct.fio_ls_s*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fio_ls_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %3, align 8
  %5 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %6 = icmp ne %struct.fio_ls_s* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %9 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %8, i32 0, i32 1
  %10 = load %struct.fio_ls_s*, %struct.fio_ls_s** %9, align 8
  %11 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %12 = icmp eq %struct.fio_ls_s* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %1
  store i8* null, i8** %2, align 8
  br label %35

14:                                               ; preds = %7
  %15 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %16 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %4, align 8
  %18 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %19 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %18, i32 0, i32 0
  %20 = load %struct.fio_ls_s*, %struct.fio_ls_s** %19, align 8
  %21 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %22 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %21, i32 0, i32 1
  %23 = load %struct.fio_ls_s*, %struct.fio_ls_s** %22, align 8
  %24 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %23, i32 0, i32 0
  store %struct.fio_ls_s* %20, %struct.fio_ls_s** %24, align 8
  %25 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %26 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %25, i32 0, i32 1
  %27 = load %struct.fio_ls_s*, %struct.fio_ls_s** %26, align 8
  %28 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %29 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %28, i32 0, i32 0
  %30 = load %struct.fio_ls_s*, %struct.fio_ls_s** %29, align 8
  %31 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %30, i32 0, i32 1
  store %struct.fio_ls_s* %27, %struct.fio_ls_s** %31, align 8
  %32 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  %33 = bitcast %struct.fio_ls_s* %32 to i8*
  call void @free(i8* %33) #1
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %14, %13
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

declare dso_local void @FIO_DEALLOC_NOOP(i8*) #4

declare dso_local i64 @fio_read(i64, i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_on_data(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.http1pr_s*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %7 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %8 = bitcast %struct.fio_protocol_s* %7 to %struct.http1pr_s*
  store %struct.http1pr_s* %8, %struct.http1pr_s** %5, align 8
  %9 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %10 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %9, i32 0, i32 8
  %11 = load i8, i8* %10, align 2
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  call void @fio_suspend(i64 %14)
  br label %47

15:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %16 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %17 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 8192, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %24 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %23, i32 0, i32 9
  %25 = getelementptr inbounds [0 x i8], [0 x i8]* %24, i64 0, i64 0
  %26 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %27 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %31 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 8192, %32
  %34 = call i64 @fio_read(i64 %22, i8* %29, i64 %33)
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %21, %15
  %36 = load i64, i64* %6, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  %41 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %39
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i64, i64* %3, align 8
  %46 = load %struct.http1pr_s*, %struct.http1pr_s** %5, align 8
  call void @http1_consume_data(i64 %45, %struct.http1pr_s* %46)
  br label %47

47:                                               ; preds = %44, %13
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http1_consume_data(i64, %struct.http1pr_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.http1pr_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fio_str_info_s, align 8
  %9 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  store %struct.http1pr_s* %1, %struct.http1pr_s** %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @fio_pending(i64 %10)
  %12 = icmp ugt i64 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %123

14:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  %15 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %16 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  store i32 8, i32* %7, align 4
  %18 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %19 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %143

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %64, %23
  %25 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %26 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %25, i32 0, i32 1
  %27 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %28 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %27, i32 0, i32 9
  %29 = getelementptr inbounds [0 x i8], [0 x i8]* %28, i64 0, i64 0
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %32 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  %35 = getelementptr inbounds i8, i8* %29, i64 %34
  %36 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %37 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @http1_parse(%struct.http1_parser_s* %26, i8* %35, i64 %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %42 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %24
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %52 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %60 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %59, i32 0, i32 8
  %61 = load i8, i8* %60, align 2
  %62 = icmp ne i8 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %58, %55, %50, %47
  %65 = phi i1 [ false, %55 ], [ false, %50 ], [ false, %47 ], [ %63, %58 ]
  br i1 %65, label %24, label %66

66:                                               ; preds = %64
  %67 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %68 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %74 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %79 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %78, i32 0, i32 9
  %80 = getelementptr inbounds [0 x i8], [0 x i8]* %79, i64 0, i64 0
  %81 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %82 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %81, i32 0, i32 9
  %83 = getelementptr inbounds [0 x i8], [0 x i8]* %82, i64 0, i64 0
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %86 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %84, %87
  %89 = getelementptr inbounds i8, i8* %83, i64 %88
  %90 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %91 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %80, i8* align 1 %89, i64 %92, i1 false)
  br label %93

93:                                               ; preds = %77, %71, %66
  %94 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %95 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 8192
  br i1 %97, label %98, label %117

98:                                               ; preds = %93
  %99 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %100 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.http_s, %struct.http_s* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %106 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %105, i32 0, i32 2
  %107 = call i32 @http_send_error(%struct.http_s* %106, i64 413)
  br label %116

108:                                              ; preds = %98
  %109 = call i64 @fiobj_str_tmp()
  %110 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %111 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.http_s, %struct.http_s* %111, i32 0, i32 2
  store i64 %109, i64* %112, align 8
  %113 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %114 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %113, i32 0, i32 2
  %115 = call i32 @http_send_error(%struct.http_s* %114, i64 413)
  br label %116

116:                                              ; preds = %108, %104
  br label %117

117:                                              ; preds = %116, %93
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %3, align 8
  call void @fio_force_event(i64 %121, i32 0)
  br label %122

122:                                              ; preds = %120, %117
  br label %143

123:                                              ; preds = %13
  %124 = load %struct.http1pr_s*, %struct.http1pr_s** %4, align 8
  %125 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %124, i32 0, i32 8
  %126 = load i8, i8* %125, align 2
  %127 = zext i8 %126 to i32
  %128 = or i32 %127, 4
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %125, align 2
  %130 = load i64, i64* %3, align 8
  call void @fio_suspend(i64 %130)
  br label %131

131:                                              ; preds = %123
  %132 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %133 = icmp sle i32 5, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %131
  %135 = load i64, i64* %3, align 8
  call void @fio_peer_addr(%struct.fio_str_info_s* sret %8, i64 %135)
  %136 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i64, i64* %3, align 8
  call void @fio_peer_addr(%struct.fio_str_info_s* sret %9, i64 %139)
  %140 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.92, i64 0, i64 0), i32 %138, i8* %141)
  br label %142

142:                                              ; preds = %134, %131
  br label %143

143:                                              ; preds = %22, %122, %142
  ret void
}

declare dso_local i64 @fio_pending(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http1_parse(%struct.http1_parser_s*, i8*, i64) #0 {
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
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %290

18:                                               ; preds = %3
  %19 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %20 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %20, i32 0, i32 2
  store i8* null, i8** %21, align 8
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %10, align 8
  store i8 0, i8* %11, align 1
  br label %27

27:                                               ; preds = %239, %18
  %28 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %29 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 8
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 7
  switch i32 %33, label %241 [
    i32 0, label %34
    i32 1, label %155
    i32 3, label %232
  ]

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ult i8* %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 13
  br i1 %43, label %59, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br label %59

59:                                               ; preds = %54, %49, %44, %39
  %60 = phi i1 [ true, %49 ], [ true, %44 ], [ true, %39 ], [ %58, %54 ]
  br label %61

61:                                               ; preds = %59, %35
  %62 = phi i1 [ false, %35 ], [ %60, %59 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  br label %35

66:                                               ; preds = %61
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %9, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call zeroext i8 @seek2eol(i8** %9, i8* %68)
  store i8 %69, i8* %11, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %8, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = load i8*, i8** %6, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = sub i64 %73, %75
  store i64 %76, i64* %4, align 8
  br label %290

77:                                               ; preds = %66
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 72
  br i1 %82, label %83, label %115

83:                                               ; preds = %77
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 84
  br i1 %88, label %89, label %115

89:                                               ; preds = %83
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 84
  br i1 %94, label %95, label %115

95:                                               ; preds = %89
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 3
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 80
  br i1 %100, label %101, label %115

101:                                              ; preds = %95
  %102 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load i8, i8* %11, align 1
  %106 = zext i8 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = sub i64 0, %107
  %109 = getelementptr inbounds i8, i8* %104, i64 %108
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = call i32 @http1_consume_response_line(%struct.http1_parser_s* %102, i8* %103, i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  br label %280

114:                                              ; preds = %101
  br label %145

115:                                              ; preds = %95, %89, %83, %77
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = call zeroext i8 @http_tolower(i8 zeroext %118)
  %120 = zext i8 %119 to i32
  %121 = icmp sge i32 %120, 97
  br i1 %121, label %122, label %143

122:                                              ; preds = %115
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = call zeroext i8 @http_tolower(i8 zeroext %125)
  %127 = zext i8 %126 to i32
  %128 = icmp sle i32 %127, 122
  br i1 %128, label %129, label %143

129:                                              ; preds = %122
  %130 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = load i8, i8* %11, align 1
  %134 = zext i8 %133 to i32
  %135 = sext i32 %134 to i64
  %136 = sub i64 0, %135
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = call i32 @http1_consume_request_line(%struct.http1_parser_s* %130, i8* %131, i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %129
  br label %280

142:                                              ; preds = %129
  br label %144

143:                                              ; preds = %122, %115
  br label %280

144:                                              ; preds = %142
  br label %145

145:                                              ; preds = %144, %114
  %146 = load i8*, i8** %9, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  store i8* %147, i8** %8, align 8
  store i8* %147, i8** %9, align 8
  %148 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %149 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %149, i32 0, i32 3
  %151 = load i8, i8* %150, align 8
  %152 = zext i8 %151 to i32
  %153 = or i32 %152, 1
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %150, align 8
  br label %155

155:                                              ; preds = %27, %145
  br label %156

156:                                              ; preds = %204, %155
  %157 = load i8*, i8** %8, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = icmp uge i8* %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load i8*, i8** %8, align 8
  %162 = ptrtoint i8* %161 to i64
  %163 = load i8*, i8** %6, align 8
  %164 = ptrtoint i8* %163 to i64
  %165 = sub i64 %162, %164
  store i64 %165, i64* %4, align 8
  br label %290

166:                                              ; preds = %156
  %167 = load i8*, i8** %8, align 8
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %169, 13
  br i1 %170, label %176, label %171

171:                                              ; preds = %166
  %172 = load i8*, i8** %8, align 8
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %174, 10
  br i1 %175, label %176, label %177

176:                                              ; preds = %171, %166
  br label %213

177:                                              ; preds = %171
  %178 = load i8*, i8** %8, align 8
  store i8* %178, i8** %9, align 8
  %179 = load i8*, i8** %10, align 8
  %180 = call zeroext i8 @seek2eol(i8** %9, i8* %179)
  store i8 %180, i8* %11, align 1
  %181 = icmp ne i8 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %177
  %183 = load i8*, i8** %8, align 8
  %184 = ptrtoint i8* %183 to i64
  %185 = load i8*, i8** %6, align 8
  %186 = ptrtoint i8* %185 to i64
  %187 = sub i64 %184, %186
  store i64 %187, i64* %4, align 8
  br label %290

188:                                              ; preds = %177
  %189 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %190 = load i8*, i8** %8, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = load i8, i8* %11, align 1
  %193 = zext i8 %192 to i32
  %194 = sext i32 %193 to i64
  %195 = sub i64 0, %194
  %196 = getelementptr inbounds i8, i8* %191, i64 %195
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  %198 = call i32 @http1_consume_header(%struct.http1_parser_s* %189, i8* %190, i8* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %188
  br label %280

201:                                              ; preds = %188
  %202 = load i8*, i8** %9, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  store i8* %203, i8** %8, align 8
  store i8* %203, i8** %9, align 8
  br label %204

204:                                              ; preds = %201
  %205 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %206 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %206, i32 0, i32 3
  %208 = load i8, i8* %207, align 8
  %209 = zext i8 %208 to i32
  %210 = and i32 %209, 2
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %156, label %212

212:                                              ; preds = %204
  br label %213

213:                                              ; preds = %212, %176
  %214 = load i8*, i8** %8, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %8, align 8
  %216 = load i8*, i8** %8, align 8
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = icmp eq i32 %218, 10
  br i1 %219, label %220, label %223

220:                                              ; preds = %213
  %221 = load i8*, i8** %8, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %8, align 8
  br label %223

223:                                              ; preds = %220, %213
  %224 = load i8*, i8** %8, align 8
  store i8* %224, i8** %9, align 8
  %225 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %226 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %226, i32 0, i32 3
  %228 = load i8, i8* %227, align 8
  %229 = zext i8 %228 to i32
  %230 = or i32 %229, 2
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %227, align 8
  br label %232

232:                                              ; preds = %27, %223
  %233 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %234 = load i8*, i8** %6, align 8
  %235 = load i64, i64* %7, align 8
  %236 = call i32 @http1_consume_body(%struct.http1_parser_s* %233, i8* %234, i64 %235, i8** %8)
  store i32 %236, i32* %12, align 4
  %237 = load i32, i32* %12, align 4
  switch i32 %237, label %240 [
    i32 -1, label %238
    i32 -2, label %239
  ]

238:                                              ; preds = %232
  br label %280

239:                                              ; preds = %232
  br label %27

240:                                              ; preds = %232
  br label %241

241:                                              ; preds = %27, %240
  %242 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %243 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %243, i32 0, i32 3
  %245 = load i8, i8* %244, align 8
  %246 = zext i8 %245 to i32
  %247 = and i32 %246, 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %274

249:                                              ; preds = %241
  %250 = load i8*, i8** %8, align 8
  %251 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %252 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %252, i32 0, i32 2
  store i8* %250, i8** %253, align 8
  %254 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %255 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %255, i32 0, i32 3
  %257 = load i8, i8* %256, align 8
  %258 = zext i8 %257 to i32
  %259 = and i32 %258, 128
  %260 = icmp ne i32 %259, 0
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i32 (%struct.http1_parser_s*)* @http1_on_response, i32 (%struct.http1_parser_s*)* @http1_on_request
  %263 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %264 = call i32 %262(%struct.http1_parser_s* %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %249
  br label %280

267:                                              ; preds = %249
  %268 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %269 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %268, i32 0, i32 0
  %270 = bitcast %struct.http1_parser_protected_read_only_state_s* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %270, i8 0, i64 32, i1 false)
  %271 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %13, i32 0, i32 0
  store i64 0, i64* %271, align 8
  %272 = bitcast %struct.http1_parser_protected_read_only_state_s* %269 to i8*
  %273 = bitcast %struct.http1_parser_protected_read_only_state_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %272, i8* align 8 %273, i64 32, i1 false)
  br label %274

274:                                              ; preds = %267, %241
  %275 = load i8*, i8** %8, align 8
  %276 = ptrtoint i8* %275 to i64
  %277 = load i8*, i8** %6, align 8
  %278 = ptrtoint i8* %277 to i64
  %279 = sub i64 %276, %278
  store i64 %279, i64* %4, align 8
  br label %290

280:                                              ; preds = %266, %238, %200, %143, %141, %113
  %281 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %282 = call i32 @http1_on_error(%struct.http1_parser_s* %281)
  %283 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %284 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %283, i32 0, i32 0
  %285 = bitcast %struct.http1_parser_protected_read_only_state_s* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %285, i8 0, i64 32, i1 false)
  %286 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %14, i32 0, i32 0
  store i64 0, i64* %286, align 8
  %287 = bitcast %struct.http1_parser_protected_read_only_state_s* %284 to i8*
  %288 = bitcast %struct.http1_parser_protected_read_only_state_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %287, i8* align 8 %288, i64 32, i1 false)
  %289 = load i64, i64* %7, align 8
  store i64 %289, i64* %4, align 8
  br label %290

290:                                              ; preds = %280, %274, %182, %160, %71, %17
  %291 = load i64, i64* %4, align 8
  ret i64 %291
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @fiobj_str_tmp() #4

declare dso_local void @fio_peer_addr(%struct.fio_str_info_s* sret, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @seek2eol(i8**, i8*) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call zeroext i8 @seek2ch(i8** %6, i8* %7, i8 zeroext 10)
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i8 0, i8* %3, align 1
  br label %20

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 -1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 13
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i8 2, i8* %3, align 1
  br label %20

19:                                               ; preds = %11
  store i8 1, i8* %3, align 1
  br label %20

20:                                               ; preds = %19, %18, %10
  %21 = load i8, i8* %3, align 1
  ret i8 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_response_line(%struct.http1_parser_s*, i8*, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http1_parser_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %10 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %10, i32 0, i32 3
  %12 = load i8, i8* %11, align 8
  %13 = zext i8 %12 to i32
  %14 = or i32 %13, 128
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %11, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call zeroext i8 @seek2ch(i8** %8, i8* %17, i8 zeroext 32)
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %54

21:                                               ; preds = %3
  %22 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = call i32 @http1_on_version(%struct.http1_parser_s* %22, i8* %23, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %54

32:                                               ; preds = %21
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %6, align 8
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call zeroext i8 @seek2ch(i8** %8, i8* %35, i8 zeroext 32)
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %54

39:                                               ; preds = %32
  %40 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @http1_atol(i8* %41, i8** null)
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = call i32 @http1_on_status(%struct.http1_parser_s* %40, i64 %42, i8* %44, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %54

53:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %52, %38, %31, %20
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @http_tolower(i8 zeroext) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp sge i32 %4, 65
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp sle i32 %8, 90
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i8, i8* %2, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %12, 32
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %2, align 1
  br label %15

15:                                               ; preds = %10, %6, %1
  %16 = load i8, i8* %2, align 1
  ret i8 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_request_line(%struct.http1_parser_s*, i8*, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http1_parser_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call zeroext i8 @seek2ch(i8** %8, i8* %12, i8 zeroext 32)
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %219

16:                                               ; preds = %3
  %17 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = call i32 @http1_on_method(%struct.http1_parser_s* %17, i8* %18, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %219

27:                                               ; preds = %16
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %29, i8** %6, align 8
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 104
  br i1 %34, label %35, label %123

35:                                               ; preds = %27
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 116
  br i1 %40, label %41, label %123

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 116
  br i1 %46, label %47, label %123

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 112
  br i1 %52, label %53, label %123

53:                                               ; preds = %47
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 58
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 5
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 47
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 6
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 47
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 7
  store i8* %73, i8** %6, align 8
  store i8* %73, i8** %9, align 8
  store i8* %73, i8** %10, align 8
  store i8* %73, i8** %8, align 8
  br label %103

74:                                               ; preds = %65, %59, %53
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 115
  br i1 %79, label %80, label %101

80:                                               ; preds = %74
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 5
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 58
  br i1 %85, label %86, label %101

86:                                               ; preds = %80
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 6
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, 47
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 7
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 47
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 8
  store i8* %100, i8** %6, align 8
  store i8* %100, i8** %9, align 8
  store i8* %100, i8** %10, align 8
  store i8* %100, i8** %8, align 8
  br label %102

101:                                              ; preds = %92, %86, %80, %74
  br label %124

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %71
  %104 = load i8*, i8** %7, align 8
  %105 = call zeroext i8 @seek2ch(i8** %8, i8* %104, i8 zeroext 32)
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  store i32 -1, i32* %4, align 4
  br label %219

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  store i8 32, i8* %109, align 1
  %110 = load i8*, i8** %8, align 8
  %111 = call zeroext i8 @seek2ch(i8** %10, i8* %110, i8 zeroext 47)
  %112 = icmp ne i8 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %108
  %114 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %115 = call i32 @http1_on_path(%struct.http1_parser_s* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i64 0, i64 0), i64 1)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 -1, i32* %4, align 4
  br label %219

118:                                              ; preds = %113
  br label %185

119:                                              ; preds = %108
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 47, i8* %121, align 1
  %122 = load i8*, i8** %10, align 8
  store i8* %122, i8** %6, align 8
  br label %123

123:                                              ; preds = %119, %47, %41, %35, %27
  br label %124

124:                                              ; preds = %123, %101
  %125 = load i8*, i8** %6, align 8
  store i8* %125, i8** %8, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = call zeroext i8 @seek2ch(i8** %8, i8* %126, i8 zeroext 63)
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %129, label %166

129:                                              ; preds = %124
  %130 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = call i32 @http1_on_path(%struct.http1_parser_s* %130, i8* %131, i64 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  store i32 -1, i32* %4, align 4
  br label %219

140:                                              ; preds = %129
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  store i8* %142, i8** %6, align 8
  store i8* %142, i8** %8, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = call zeroext i8 @seek2ch(i8** %8, i8* %143, i8 zeroext 32)
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %140
  store i32 -1, i32* %4, align 4
  br label %219

147:                                              ; preds = %140
  %148 = load i8*, i8** %8, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %147
  %155 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = call i32 @http1_on_query(%struct.http1_parser_s* %155, i8* %156, i64 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  store i32 -1, i32* %4, align 4
  br label %219

165:                                              ; preds = %154, %147
  br label %184

166:                                              ; preds = %124
  %167 = load i8*, i8** %6, align 8
  store i8* %167, i8** %8, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = call zeroext i8 @seek2ch(i8** %8, i8* %168, i8 zeroext 32)
  %170 = icmp ne i8 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %166
  store i32 -1, i32* %4, align 4
  br label %219

172:                                              ; preds = %166
  %173 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = load i8*, i8** %6, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = call i32 @http1_on_path(%struct.http1_parser_s* %173, i8* %174, i64 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  store i32 -1, i32* %4, align 4
  br label %219

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183, %165
  br label %185

185:                                              ; preds = %184, %118
  %186 = load i8*, i8** %8, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 1
  store i8* %187, i8** %6, align 8
  %188 = load i8*, i8** %6, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 5
  %190 = load i8*, i8** %7, align 8
  %191 = icmp uge i8* %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  store i32 -1, i32* %4, align 4
  br label %219

193:                                              ; preds = %185
  %194 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %195 = load i8*, i8** %6, align 8
  %196 = load i8*, i8** %7, align 8
  %197 = load i8*, i8** %6, align 8
  %198 = ptrtoint i8* %196 to i64
  %199 = ptrtoint i8* %197 to i64
  %200 = sub i64 %198, %199
  %201 = call i32 @http1_on_version(%struct.http1_parser_s* %194, i8* %195, i64 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %193
  store i32 -1, i32* %4, align 4
  br label %219

204:                                              ; preds = %193
  %205 = load i8*, i8** %9, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %218

207:                                              ; preds = %204
  %208 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %209 = load i8*, i8** %9, align 8
  %210 = load i8*, i8** %10, align 8
  %211 = load i8*, i8** %9, align 8
  %212 = ptrtoint i8* %210 to i64
  %213 = ptrtoint i8* %211 to i64
  %214 = sub i64 %212, %213
  %215 = call i32 @http1_on_header(%struct.http1_parser_s* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 4, i8* %209, i64 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %207
  store i32 -1, i32* %4, align 4
  br label %219

218:                                              ; preds = %207, %204
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %218, %217, %203, %192, %182, %171, %164, %146, %139, %117, %107, %26, %15
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_header(%struct.http1_parser_s*, i8*, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http1_parser_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call zeroext i8 @seek2ch(i8** %8, i8* %12, i8 zeroext 58)
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %83

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16
  store i32 -1, i32* %4, align 4
  br label %83

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %40, %29
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ult i8* %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call zeroext i8 @http_tolower(i8 zeroext %37)
  %39 = load i8*, i8** %9, align 8
  store i8 %38, i8* %39, align 1
  br label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %9, align 8
  br label %31

43:                                               ; preds = %31
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %10, align 8
  br label %46

46:                                               ; preds = %66, %43
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 32
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 9
  br label %62

62:                                               ; preds = %56, %50
  %63 = phi i1 [ true, %50 ], [ %61, %56 ]
  br label %64

64:                                               ; preds = %62, %46
  %65 = phi i1 [ false, %46 ], [ %63, %62 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %10, align 8
  br label %46

69:                                               ; preds = %64
  %70 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %71 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 (%struct.http1_parser_s*, i8*, i8*, i8*, i8*)* @http1_consume_header_trailer, i32 (%struct.http1_parser_s*, i8*, i8*, i8*, i8*)* @http1_consume_header_top
  %77 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 %76(%struct.http1_parser_s* %77, i8* %78, i8* %79, i8* %80, i8* %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %69, %28, %15
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_body(%struct.http1_parser_s*, i8*, i64, i8**) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.http1_parser_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %10 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %11 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %4
  %16 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %17 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %21 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %19, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = call i32 @http1_consume_body_streamed(%struct.http1_parser_s* %26, i8* %27, i64 %28, i8** %29)
  store i32 %30, i32* %5, align 4
  br label %61

31:                                               ; preds = %15, %4
  %32 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %33 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %39 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %39, i32 0, i32 3
  %41 = load i8, i8* %40, align 8
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 64
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i8**, i8*** %9, align 8
  %50 = call i32 @http1_consume_body_chunked(%struct.http1_parser_s* %46, i8* %47, i64 %48, i8** %49)
  store i32 %50, i32* %5, align 4
  br label %61

51:                                               ; preds = %37, %31
  %52 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %53 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %53, i32 0, i32 3
  %55 = load i8, i8* %54, align 8
  %56 = zext i8 %55 to i32
  %57 = or i32 %56, 4
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 8
  br label %59

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %45, %25
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_response(%struct.http1_parser_s*) #0 {
  %2 = alloca %struct.http1_parser_s*, align 8
  %3 = alloca %struct.http1pr_s*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %2, align 8
  %4 = load %struct.http1_parser_s*, %struct.http1_parser_s** %2, align 8
  %5 = ptrtoint %struct.http1_parser_s* %4 to i64
  %6 = sub i64 %5, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %7 = inttoptr i64 %6 to %struct.http1pr_s*
  store %struct.http1pr_s* %7, %struct.http1pr_s** %3, align 8
  %8 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %9 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %8, i32 0, i32 2
  %10 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %11 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %11, i32 0, i32 2
  %13 = load %struct.http_settings_s*, %struct.http_settings_s** %12, align 8
  call void @http_on_response_handler______internal(%struct.http_s* %9, %struct.http_settings_s* %13)
  %14 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %15 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.http_s, %struct.http_s* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %21 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %20, i32 0, i32 8
  %22 = load i8, i8* %21, align 2
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %26 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %25, i32 0, i32 2
  call void @http_finish(%struct.http_s* %26)
  br label %27

27:                                               ; preds = %24, %19, %1
  %28 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  call void @h1_reset(%struct.http1pr_s* %28)
  %29 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %30 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @fio_is_closed(i64 %32)
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_request(%struct.http1_parser_s*) #0 {
  %2 = alloca %struct.http1_parser_s*, align 8
  %3 = alloca %struct.http1pr_s*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %2, align 8
  %4 = load %struct.http1_parser_s*, %struct.http1_parser_s** %2, align 8
  %5 = ptrtoint %struct.http1_parser_s* %4 to i64
  %6 = sub i64 %5, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %7 = inttoptr i64 %6 to %struct.http1pr_s*
  store %struct.http1pr_s* %7, %struct.http1pr_s** %3, align 8
  %8 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %9 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %8, i32 0, i32 2
  %10 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %11 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %11, i32 0, i32 2
  %13 = load %struct.http_settings_s*, %struct.http_settings_s** %12, align 8
  call void @http_on_request_handler______internal(%struct.http_s* %9, %struct.http_settings_s* %13)
  %14 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %15 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.http_s, %struct.http_s* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %21 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %20, i32 0, i32 8
  %22 = load i8, i8* %21, align 2
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %26 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %25, i32 0, i32 2
  call void @http_finish(%struct.http_s* %26)
  br label %27

27:                                               ; preds = %24, %19, %1
  %28 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  call void @h1_reset(%struct.http1pr_s* %28)
  %29 = load %struct.http1pr_s*, %struct.http1pr_s** %3, align 8
  %30 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @fio_is_closed(i64 %32)
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_error(%struct.http1_parser_s*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.http1_parser_s*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %3, align 8
  %4 = load %struct.http1_parser_s*, %struct.http1_parser_s** %3, align 8
  %5 = ptrtoint %struct.http1_parser_s* %4 to i64
  %6 = sub i64 %5, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %7 = inttoptr i64 %6 to %struct.http1pr_s*
  %8 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %7, i32 0, i32 6
  %9 = load i8, i8* %8, align 8
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12
  %14 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %15 = icmp sle i32 5, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.99, i64 0, i64 0))
  br label %17

17:                                               ; preds = %16, %13
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.http1_parser_s*, %struct.http1_parser_s** %3, align 8
  %20 = ptrtoint %struct.http1_parser_s* %19 to i64
  %21 = sub i64 %20, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %22 = inttoptr i64 %21 to %struct.http1pr_s*
  %23 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  call void @fio_close(i64 %25)
  store i32 -1, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @seek2ch(i8**, i8*, i8 zeroext) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp uge i8* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8 0, i8* %4, align 1
  br label %43

14:                                               ; preds = %3
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i8 1, i8* %4, align 1
  br label %43

23:                                               ; preds = %14
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8*, i8** %6, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = ptrtoint i8* %28 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = call i8* @memchr(i8* %25, i32 %27, i64 %33) #10
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i8*, i8** %8, align 8
  %39 = load i8**, i8*** %5, align 8
  store i8* %38, i8** %39, align 8
  store i8 1, i8* %4, align 1
  br label %43

40:                                               ; preds = %23
  %41 = load i8*, i8** %6, align 8
  %42 = load i8**, i8*** %5, align 8
  store i8* %41, i8** %42, align 8
  store i8 0, i8* %4, align 1
  br label %43

43:                                               ; preds = %40, %37, %22, %13
  %44 = load i8, i8* %4, align 1
  ret i8 %44
}

; Function Attrs: nounwind readonly
declare dso_local i8* @memchr(i8*, i32, i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_version(%struct.http1_parser_s*, i8*, i64) #0 {
  %4 = alloca %struct.http1_parser_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @fiobj_str_new(i8* %8, i64 %9)
  %11 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8
  %12 = ptrtoint %struct.http1_parser_s* %11 to i64
  %13 = sub i64 %12, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %14 = inttoptr i64 %13 to %struct.http1pr_s*
  %15 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.http_s, %struct.http_s* %15, i32 0, i32 4
  store i64 %10, i64* %16, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8
  %19 = ptrtoint %struct.http1_parser_s* %18 to i64
  %20 = sub i64 %19, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %21 = inttoptr i64 %20 to %struct.http1pr_s*
  %22 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, %17
  store i64 %24, i64* %22, align 8
  %25 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8
  %26 = ptrtoint %struct.http1_parser_s* %25 to i64
  %27 = sub i64 %26, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %28 = inttoptr i64 %27 to %struct.http1pr_s*
  %29 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.http_s, %struct.http_s* %29, i32 0, i32 1
  %31 = call { i64, i64 } @fio_last_tick()
  %32 = bitcast %struct.timespec* %7 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %34 = extractvalue { i64, i64 } %31, 0
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %36 = extractvalue { i64, i64 } %31, 1
  store i64 %36, i64* %35, align 8
  %37 = bitcast %struct.timespec* %30 to i8*
  %38 = bitcast %struct.timespec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_status(%struct.http1_parser_s*, i64, i8*, i64) #0 {
  %5 = alloca %struct.http1_parser_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load i64, i64* %8, align 8
  %11 = call i64 @fiobj_str_new(i8* %9, i64 %10)
  %12 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %13 = ptrtoint %struct.http1_parser_s* %12 to i64
  %14 = sub i64 %13, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %15 = inttoptr i64 %14 to %struct.http1pr_s*
  %16 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.http_s, %struct.http_s* %16, i32 0, i32 3
  store i64 %11, i64* %17, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %20 = ptrtoint %struct.http1_parser_s* %19 to i64
  %21 = sub i64 %20, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %22 = inttoptr i64 %21 to %struct.http1pr_s*
  %23 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.http_s, %struct.http_s* %23, i32 0, i32 5
  store i64 %18, i64* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %27 = ptrtoint %struct.http1_parser_s* %26 to i64
  %28 = sub i64 %27, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %29 = inttoptr i64 %28 to %struct.http1pr_s*
  %30 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, %25
  store i64 %32, i64* %30, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http1_atol(i8*, i8**) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i64 0, i64* %5, align 8
  store i8 0, i8* %6, align 1
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 9
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 12
  br label %22

22:                                               ; preds = %17, %12, %7
  %23 = phi i1 [ true, %12 ], [ true, %7 ], [ %21, %17 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  br label %7

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i8*, i8** %3, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 43
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ true, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %51

40:                                               ; preds = %38
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %3, align 8
  %43 = load i8, i8* %41, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 45
  %46 = zext i1 %45 to i32
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = xor i32 %48, %46
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %6, align 1
  br label %28

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %67, %51
  %53 = load i64, i64* %5, align 8
  %54 = icmp ule i64 %53, 922337203685477580
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i8*, i8** %3, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp sge i32 %58, 48
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %3, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp sle i32 %63, 57
  br label %65

65:                                               ; preds = %60, %55, %52
  %66 = phi i1 [ false, %55 ], [ false, %52 ], [ %64, %60 ]
  br i1 %66, label %67, label %79

67:                                               ; preds = %65
  %68 = load i64, i64* %5, align 8
  %69 = mul i64 %68, 10
  store i64 %69, i64* %5, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = sub nsw i32 %72, 48
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %5, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %5, align 8
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %3, align 8
  br label %52

79:                                               ; preds = %65
  %80 = load i64, i64* %5, align 8
  %81 = icmp uge i64 %80, -9223372036854775808
  br i1 %81, label %92, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %3, align 8
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp sge i32 %85, 48
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i8*, i8** %3, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp sle i32 %90, 57
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %79
  store i64 9223372036854775807, i64* %5, align 8
  br label %93

93:                                               ; preds = %92, %87, %82
  %94 = load i8, i8* %6, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i64, i64* %5, align 8
  %98 = sub i64 0, %97
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i8**, i8*** %4, align 8
  %101 = icmp ne i8** %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i8*, i8** %3, align 8
  %104 = load i8**, i8*** %4, align 8
  store i8* %103, i8** %104, align 8
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i64, i64* %5, align 8
  ret i64 %106
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_method(%struct.http1_parser_s*, i8*, i64) #0 {
  %4 = alloca %struct.http1_parser_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i64 @fiobj_str_new(i8* %7, i64 %8)
  %10 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8
  %11 = ptrtoint %struct.http1_parser_s* %10 to i64
  %12 = sub i64 %11, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %13 = inttoptr i64 %12 to %struct.http1pr_s*
  %14 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.http_s, %struct.http_s* %14, i32 0, i32 2
  store i64 %9, i64* %15, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8
  %18 = ptrtoint %struct.http1_parser_s* %17 to i64
  %19 = sub i64 %18, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %20 = inttoptr i64 %19 to %struct.http1pr_s*
  %21 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, %16
  store i64 %23, i64* %21, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_path(%struct.http1_parser_s*, i8*, i64) #0 {
  %4 = alloca %struct.http1_parser_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i64 @fiobj_str_new(i8* %7, i64 %8)
  %10 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8
  %11 = ptrtoint %struct.http1_parser_s* %10 to i64
  %12 = sub i64 %11, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %13 = inttoptr i64 %12 to %struct.http1pr_s*
  %14 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.http_s, %struct.http_s* %14, i32 0, i32 6
  store i64 %9, i64* %15, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8
  %18 = ptrtoint %struct.http1_parser_s* %17 to i64
  %19 = sub i64 %18, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %20 = inttoptr i64 %19 to %struct.http1pr_s*
  %21 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, %16
  store i64 %23, i64* %21, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_query(%struct.http1_parser_s*, i8*, i64) #0 {
  %4 = alloca %struct.http1_parser_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i64 @fiobj_str_new(i8* %7, i64 %8)
  %10 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8
  %11 = ptrtoint %struct.http1_parser_s* %10 to i64
  %12 = sub i64 %11, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %13 = inttoptr i64 %12 to %struct.http1pr_s*
  %14 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.http_s, %struct.http_s* %14, i32 0, i32 7
  store i64 %9, i64* %15, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.http1_parser_s*, %struct.http1_parser_s** %4, align 8
  %18 = ptrtoint %struct.http1_parser_s* %17 to i64
  %19 = sub i64 %18, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %20 = inttoptr i64 %19 to %struct.http1pr_s*
  %21 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, %16
  store i64 %23, i64* %21, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_header(%struct.http1_parser_s*, i8*, i64, i8*, i64) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.http1_parser_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %15 = ptrtoint %struct.http1_parser_s* %14 to i64
  %16 = sub i64 %15, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %17 = inttoptr i64 %16 to %struct.http1pr_s*
  %18 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.http_s, %struct.http_s* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %25 = icmp sle i32 2, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %10, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.94, i64 0, i64 0), i8* %27, i8* %28)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %32 = ptrtoint %struct.http1_parser_s* %31 to i64
  %33 = sub i64 %32, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %34 = inttoptr i64 %33 to %struct.http1pr_s*
  %35 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %39 = ptrtoint %struct.http1_parser_s* %38 to i64
  %40 = sub i64 %39, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %41 = inttoptr i64 %40 to %struct.http1pr_s*
  %42 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %42, i32 0, i32 2
  %44 = load %struct.http_settings_s*, %struct.http_settings_s** %43, align 8
  %45 = call i32 @http_send_error2(i64 500, i64 %37, %struct.http_settings_s* %44)
  store i32 -1, i32* %6, align 4
  br label %122

46:                                               ; preds = %5
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %47, %48
  %50 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %51 = ptrtoint %struct.http1_parser_s* %50 to i64
  %52 = sub i64 %51, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %53 = inttoptr i64 %52 to %struct.http1pr_s*
  %54 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %49
  store i64 %56, i64* %54, align 8
  %57 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %58 = ptrtoint %struct.http1_parser_s* %57 to i64
  %59 = sub i64 %58, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %60 = inttoptr i64 %59 to %struct.http1pr_s*
  %61 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %64 = ptrtoint %struct.http1_parser_s* %63 to i64
  %65 = sub i64 %64, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %66 = inttoptr i64 %65 to %struct.http1pr_s*
  %67 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp uge i64 %62, %68
  br i1 %69, label %80, label %70

70:                                               ; preds = %46
  %71 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %72 = ptrtoint %struct.http1_parser_s* %71 to i64
  %73 = sub i64 %72, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %74 = inttoptr i64 %73 to %struct.http1pr_s*
  %75 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.http_s, %struct.http_s* %75, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @fiobj_hash_count(i64 %77)
  %79 = icmp ugt i64 %78, 128
  br i1 %79, label %80, label %105

80:                                               ; preds = %70, %46
  %81 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %82 = ptrtoint %struct.http1_parser_s* %81 to i64
  %83 = sub i64 %82, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %84 = inttoptr i64 %83 to %struct.http1pr_s*
  %85 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %85, i32 0, i32 2
  %87 = load %struct.http_settings_s*, %struct.http_settings_s** %86, align 8
  %88 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %87, i32 0, i32 17
  %89 = load i8, i8* %88, align 2
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %94 = icmp sle i32 3, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.95, i64 0, i64 0))
  br label %96

96:                                               ; preds = %95, %92
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %80
  %99 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %100 = ptrtoint %struct.http1_parser_s* %99 to i64
  %101 = sub i64 %100, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %102 = inttoptr i64 %101 to %struct.http1pr_s*
  %103 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %102, i32 0, i32 2
  %104 = call i32 @http_send_error(%struct.http_s* %103, i64 413)
  store i32 -1, i32* %6, align 4
  br label %122

105:                                              ; preds = %70
  %106 = load i8*, i8** %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i64 @fiobj_str_new(i8* %106, i64 %107)
  store i64 %108, i64* %12, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = load i64, i64* %11, align 8
  %111 = call i64 @fiobj_str_new(i8* %109, i64 %110)
  store i64 %111, i64* %13, align 8
  %112 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %113 = ptrtoint %struct.http1_parser_s* %112 to i64
  %114 = sub i64 %113, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %115 = inttoptr i64 %114 to %struct.http1pr_s*
  %116 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.http_s, %struct.http_s* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* %13, align 8
  call void @set_header_add(i64 %118, i64 %119, i64 %120)
  %121 = load i64, i64* %12, align 8
  call void @fiobj_free(i64 %121)
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %105, %98, %30
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @http_send_error2(i64, i64, %struct.http_settings_s*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_header_add(i64, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @fiobj_hash_replace(i64 %10, i64 %11, i64 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %62

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8
  call void @fiobj_free(i64 %21)
  br label %62

22:                                               ; preds = %17
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @fiobj_type_is(i64 %23, i8 zeroext 41)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = call i64 @fiobj_ary_new()
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  call void @fiobj_ary_push(i64 %28, i64 %29)
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @fiobj_type_is(i64 %32, i8 zeroext 41)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %47, %35
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @fiobj_ary_count(i64 %38)
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @fiobj_ary_index(i64 %43, i64 %44)
  %46 = call i64 @fiobj_dup(i64 %45)
  call void @fiobj_ary_push(i64 %42, i64 %46)
  br label %47

47:                                               ; preds = %41
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %36

50:                                               ; preds = %36
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @fiobj_hash_set(i64 %51, i64 %52, i64 %53)
  br label %62

55:                                               ; preds = %31
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %6, align 8
  call void @fiobj_ary_push(i64 %56, i64 %57)
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @fiobj_hash_replace(i64 %58, i64 %59, i64 %60)
  br label %62

62:                                               ; preds = %55, %50, %20, %16
  ret void
}

declare dso_local i64 @fiobj_hash_replace(i64, i64, i64) #4

declare dso_local i64 @fiobj_ary_new() #4

declare dso_local void @fiobj_ary_push(i64, i64) #4

declare dso_local i64 @fiobj_ary_count(i64) #4

declare dso_local i64 @fiobj_ary_index(i64, i64) #4

declare dso_local i32 @fiobj_hash_set(i64, i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_header_trailer(%struct.http1_parser_s*, i8*, i8*, i8*, i8*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.http1_parser_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [2 x %struct.anon.2], align 16
  %13 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = icmp sgt i64 %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 120
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %64

27:                                               ; preds = %20, %5
  %28 = bitcast [2 x %struct.anon.2]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([2 x %struct.anon.2]* @__const.http1_consume_header_trailer.http1_trailer_white_list to i8*), i64 32, i1 false)
  store i64 0, i64* %13, align 8
  br label %29

29:                                               ; preds = %60, %27
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds [2 x %struct.anon.2], [2 x %struct.anon.2]* %12, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 16
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds [2 x %struct.anon.2], [2 x %struct.anon.2]* %12, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %40, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %35
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds [2 x %struct.anon.2], [2 x %struct.anon.2]* %12, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 16
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds [2 x %struct.anon.2], [2 x %struct.anon.2]* %12, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @memcmp(i8* %47, i8* %51, i64 %55) #10
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  br label %64

59:                                               ; preds = %46, %35
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %13, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %13, align 8
  br label %29

63:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %82

64:                                               ; preds = %58, %26
  %65 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = call i32 @http1_on_header(%struct.http1_parser_s* %65, i8* %66, i64 %71, i8* %72, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  store i32 -1, i32* %6, align 4
  br label %82

81:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %80, %63
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_header_top(%struct.http1_parser_s*, i8*, i8*, i8*, i8*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.http1_parser_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = ptrtoint i8* %13 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = icmp eq i64 %17, 14
  br i1 %18, label %19, label %65

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @memcmp(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i64 0, i64 0), i64 14) #10
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %65, label %23

23:                                               ; preds = %19
  %24 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %25 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %25, i32 0, i32 3
  %27 = load i8, i8* %26, align 8
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 64
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %115

32:                                               ; preds = %23
  %33 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %34 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %12, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @http1_atol(i8* %37, i8** null)
  %39 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %40 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %43 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %43, i32 0, i32 3
  %45 = load i8, i8* %44, align 8
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %32
  %50 = load i64, i64* %12, align 8
  %51 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %52 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 -1, i32* %6, align 4
  br label %115

57:                                               ; preds = %49, %32
  %58 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %59 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %59, i32 0, i32 3
  %61 = load i8, i8* %60, align 8
  %62 = zext i8 %61 to i32
  %63 = or i32 %62, 8
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %60, align 8
  br label %97

65:                                               ; preds = %19, %5
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = icmp eq i64 %70, 17
  br i1 %71, label %72, label %96

72:                                               ; preds = %65
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = icmp sge i64 %77, 7
  br i1 %78, label %79, label %96

79:                                               ; preds = %72
  %80 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %81 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %79
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @memcmp(i8* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.98, i64 0, i64 0), i64 17) #10
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 @http1_consume_header_transfer_encoding(%struct.http1_parser_s* %90, i8* %91, i8* %92, i8* %93, i8* %94)
  store i32 %95, i32* %6, align 4
  br label %115

96:                                               ; preds = %85, %79, %72, %65
  br label %97

97:                                               ; preds = %96, %57
  %98 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = call i32 @http1_on_header(%struct.http1_parser_s* %98, i8* %99, i64 %104, i8* %105, i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %97
  store i32 -1, i32* %6, align 4
  br label %115

114:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %114, %113, %89, %56, %31
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_header_transfer_encoding(%struct.http1_parser_s*, i8*, i8*, i8*, i8*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.http1_parser_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  br label %12

12:                                               ; preds = %32, %5
  %13 = load i8*, i8** %10, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i8*, i8** %11, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 44
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 32
  br label %28

28:                                               ; preds = %22, %16
  %29 = phi i1 [ true, %16 ], [ %27, %22 ]
  br label %30

30:                                               ; preds = %28, %12
  %31 = phi i1 [ false, %12 ], [ %29, %28 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 -1
  store i8* %34, i8** %11, align 8
  br label %12

35:                                               ; preds = %30
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = icmp eq i64 %40, 7
  br i1 %41, label %42, label %134

42:                                               ; preds = %35
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %46, 32
  %48 = icmp eq i32 %47, 99
  br i1 %48, label %49, label %134

49:                                               ; preds = %42
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %53, 32
  %55 = icmp eq i32 %54, 104
  br i1 %55, label %56, label %134

56:                                               ; preds = %49
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 %60, 32
  %62 = icmp eq i32 %61, 117
  br i1 %62, label %63, label %134

63:                                               ; preds = %56
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %67, 32
  %69 = icmp eq i32 %68, 110
  br i1 %69, label %70, label %134

70:                                               ; preds = %63
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %74, 32
  %76 = icmp eq i32 %75, 107
  br i1 %76, label %77, label %134

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 5
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %81, 32
  %83 = icmp eq i32 %82, 101
  br i1 %83, label %84, label %134

84:                                               ; preds = %77
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 6
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %88, 32
  %90 = icmp eq i32 %89, 100
  br i1 %90, label %91, label %134

91:                                               ; preds = %84
  %92 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %93 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %93, i32 0, i32 3
  %95 = load i8, i8* %94, align 8
  %96 = zext i8 %95 to i32
  %97 = or i32 %96, 64
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %94, align 8
  %99 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %100 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 7
  store i8* %103, i8** %10, align 8
  br label %104

104:                                              ; preds = %122, %91
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = icmp ult i8* %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = load i8*, i8** %10, align 8
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 44
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load i8*, i8** %10, align 8
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %116, 32
  br label %118

118:                                              ; preds = %113, %108
  %119 = phi i1 [ true, %108 ], [ %117, %113 ]
  br label %120

120:                                              ; preds = %118, %104
  %121 = phi i1 [ false, %104 ], [ %119, %118 ]
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %10, align 8
  br label %104

125:                                              ; preds = %120
  %126 = load i8*, i8** %11, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %125
  store i32 0, i32* %6, align 4
  br label %254

133:                                              ; preds = %125
  br label %236

134:                                              ; preds = %84, %77, %70, %63, %56, %49, %42, %35
  %135 = load i8*, i8** %11, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = icmp sgt i64 %139, 7
  br i1 %140, label %141, label %235

141:                                              ; preds = %134
  %142 = load i8*, i8** %11, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 -7
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = or i32 %145, 32
  %147 = icmp eq i32 %146, 99
  br i1 %147, label %148, label %235

148:                                              ; preds = %141
  %149 = load i8*, i8** %11, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 -6
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = or i32 %152, 32
  %154 = icmp eq i32 %153, 104
  br i1 %154, label %155, label %235

155:                                              ; preds = %148
  %156 = load i8*, i8** %11, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 -5
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %159, 32
  %161 = icmp eq i32 %160, 117
  br i1 %161, label %162, label %235

162:                                              ; preds = %155
  %163 = load i8*, i8** %11, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 -4
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = or i32 %166, 32
  %168 = icmp eq i32 %167, 110
  br i1 %168, label %169, label %235

169:                                              ; preds = %162
  %170 = load i8*, i8** %11, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 -3
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = or i32 %173, 32
  %175 = icmp eq i32 %174, 107
  br i1 %175, label %176, label %235

176:                                              ; preds = %169
  %177 = load i8*, i8** %11, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 -2
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = or i32 %180, 32
  %182 = icmp eq i32 %181, 101
  br i1 %182, label %183, label %235

183:                                              ; preds = %176
  %184 = load i8*, i8** %11, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 -1
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = or i32 %187, 32
  %189 = icmp eq i32 %188, 100
  br i1 %189, label %190, label %235

190:                                              ; preds = %183
  %191 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %192 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %192, i32 0, i32 3
  %194 = load i8, i8* %193, align 8
  %195 = zext i8 %194 to i32
  %196 = or i32 %195, 64
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %193, align 8
  %198 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %199 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %199, i32 0, i32 0
  store i64 0, i64* %200, align 8
  %201 = load i8*, i8** %11, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 -7
  store i8* %202, i8** %11, align 8
  br label %203

203:                                              ; preds = %223, %190
  %204 = load i8*, i8** %10, align 8
  %205 = load i8*, i8** %11, align 8
  %206 = icmp ult i8* %204, %205
  br i1 %206, label %207, label %221

207:                                              ; preds = %203
  %208 = load i8*, i8** %11, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 -1
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp eq i32 %211, 44
  br i1 %212, label %219, label %213

213:                                              ; preds = %207
  %214 = load i8*, i8** %11, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 -1
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = icmp eq i32 %217, 32
  br label %219

219:                                              ; preds = %213, %207
  %220 = phi i1 [ true, %207 ], [ %218, %213 ]
  br label %221

221:                                              ; preds = %219, %203
  %222 = phi i1 [ false, %203 ], [ %220, %219 ]
  br i1 %222, label %223, label %226

223:                                              ; preds = %221
  %224 = load i8*, i8** %11, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 -1
  store i8* %225, i8** %11, align 8
  br label %203

226:                                              ; preds = %221
  %227 = load i8*, i8** %11, align 8
  %228 = load i8*, i8** %10, align 8
  %229 = ptrtoint i8* %227 to i64
  %230 = ptrtoint i8* %228 to i64
  %231 = sub i64 %229, %230
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %226
  store i32 0, i32* %6, align 4
  br label %254

234:                                              ; preds = %226
  br label %235

235:                                              ; preds = %234, %183, %176, %169, %162, %155, %148, %141, %134
  br label %236

236:                                              ; preds = %235, %133
  %237 = load %struct.http1_parser_s*, %struct.http1_parser_s** %7, align 8
  %238 = load i8*, i8** %8, align 8
  %239 = load i8*, i8** %9, align 8
  %240 = load i8*, i8** %8, align 8
  %241 = ptrtoint i8* %239 to i64
  %242 = ptrtoint i8* %240 to i64
  %243 = sub i64 %241, %242
  %244 = load i8*, i8** %10, align 8
  %245 = load i8*, i8** %11, align 8
  %246 = load i8*, i8** %10, align 8
  %247 = ptrtoint i8* %245 to i64
  %248 = ptrtoint i8* %246 to i64
  %249 = sub i64 %247, %248
  %250 = call i32 @http1_on_header(%struct.http1_parser_s* %237, i8* %238, i64 %243, i8* %244, i64 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %236
  store i32 -1, i32* %6, align 4
  br label %254

253:                                              ; preds = %236
  store i32 0, i32* %6, align 4
  br label %254

254:                                              ; preds = %253, %252, %233, %132
  %255 = load i32, i32* %6, align 4
  ret i32 %255
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_body_streamed(%struct.http1_parser_s*, i8*, i64, i8**) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.http1_parser_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8**, i8*** %9, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %15 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  %19 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %20 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 0, %22
  %24 = getelementptr inbounds i8, i8* %18, i64 %23
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ugt i8* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i8*, i8** %11, align 8
  store i8* %32, i8** %10, align 8
  br label %33

33:                                               ; preds = %31, %4
  %34 = load i8*, i8** %10, align 8
  %35 = load i8**, i8*** %9, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ugt i8* %34, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %40 = load i8**, i8*** %9, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i8**, i8*** %9, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %42 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = call i32 @http1_on_body_chunk(%struct.http1_parser_s* %39, i8* %41, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %83

51:                                               ; preds = %38, %33
  %52 = load i8*, i8** %10, align 8
  %53 = load i8**, i8*** %9, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %52 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %59 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %57
  store i64 %62, i64* %60, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i8**, i8*** %9, align 8
  store i8* %63, i8** %64, align 8
  %65 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %66 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %70 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sle i64 %68, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %51
  %75 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %76 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %76, i32 0, i32 3
  %78 = load i8, i8* %77, align 8
  %79 = zext i8 %78 to i32
  %80 = or i32 %79, 4
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %77, align 8
  br label %82

82:                                               ; preds = %74, %51
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %50
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_consume_body_chunked(%struct.http1_parser_s*, i8*, i64, i8**) #0 {
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
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %10, align 8
  %20 = load i8**, i8*** %9, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %11, align 8
  br label %22

22:                                               ; preds = %238, %4
  %23 = load i8**, i8*** %9, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %263

27:                                               ; preds = %22
  %28 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %29 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %206

33:                                               ; preds = %27
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8*, i8** %10, align 8
  %37 = icmp uge i8* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %264

39:                                               ; preds = %33
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 13
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i8**, i8*** %9, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i8*, i8** %10, align 8
  %59 = icmp uge i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %264

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %45, %39
  %63 = load i8*, i8** %11, align 8
  %64 = call i64 @http1_atol16(i8* %63, i8** %11)
  store i64 %64, i64* %12, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ugt i8* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %264

70:                                               ; preds = %62
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %74, 13
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %80, 10
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %70
  store i32 -1, i32* %5, align 4
  br label %264

83:                                               ; preds = %76
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  store i8* %85, i8** %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = sub nsw i64 0, %86
  %88 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %89 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i8**, i8*** %9, align 8
  store i8* %91, i8** %92, align 8
  %93 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %94 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %205

98:                                               ; preds = %83
  %99 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %100 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %104 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %104, i32 0, i32 0
  store i64 %102, i64* %105, align 8
  store i64 512, i64* %14, align 8
  %106 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %107 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %15, align 8
  %110 = load i64, i64* %14, align 8
  %111 = add i64 %110, -1
  store i64 %111, i64* %14, align 8
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 %111
  store i8 0, i8* %112, align 1
  br label %113

113:                                              ; preds = %116, %98
  %114 = load i64, i64* %15, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i64, i64* %15, align 8
  %118 = udiv i64 %117, 10
  store i64 %118, i64* %16, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load i64, i64* %16, align 8
  %121 = mul i64 %120, 10
  %122 = sub i64 %119, %121
  %123 = add i64 48, %122
  %124 = trunc i64 %123 to i8
  %125 = load i64, i64* %14, align 8
  %126 = add i64 %125, -1
  store i64 %126, i64* %14, align 8
  %127 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 %126
  store i8 %124, i8* %127, align 1
  %128 = load i64, i64* %16, align 8
  store i64 %128, i64* %15, align 8
  br label %113

129:                                              ; preds = %113
  %130 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %131 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %131, i32 0, i32 3
  %133 = load i8, i8* %132, align 8
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %129
  %138 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %139 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %140 = load i64, i64* %14, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = load i64, i64* %14, align 8
  %143 = sub i64 511, %142
  %144 = call i32 @http1_on_header(%struct.http1_parser_s* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i64 0, i64 0), i64 14, i8* %141, i64 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  store i32 -1, i32* %5, align 4
  br label %264

147:                                              ; preds = %137, %129
  %148 = load i8**, i8*** %9, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8*, i8** %10, align 8
  %152 = icmp ule i8* %150, %151
  br i1 %152, label %153, label %193

153:                                              ; preds = %147
  %154 = load i8**, i8*** %9, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 0
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %159, 13
  br i1 %160, label %169, label %161

161:                                              ; preds = %153
  %162 = load i8**, i8*** %9, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 0
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = icmp eq i32 %167, 10
  br i1 %168, label %169, label %193

169:                                              ; preds = %161, %153
  %170 = load i8**, i8*** %9, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 0
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp eq i32 %175, 13
  br i1 %176, label %185, label %177

177:                                              ; preds = %169
  %178 = load i8**, i8*** %9, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 0
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp eq i32 %183, 10
  br label %185

185:                                              ; preds = %177, %169
  %186 = phi i1 [ true, %169 ], [ %184, %177 ]
  %187 = zext i1 %186 to i32
  %188 = add nsw i32 1, %187
  %189 = load i8**, i8*** %9, align 8
  %190 = load i8*, i8** %189, align 8
  %191 = sext i32 %188 to i64
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  store i8* %192, i8** %189, align 8
  br label %197

193:                                              ; preds = %161, %147
  %194 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %195 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %195, i32 0, i32 3
  store i8 9, i8* %196, align 8
  store i32 -2, i32* %5, align 4
  br label %264

197:                                              ; preds = %185
  %198 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %199 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %199, i32 0, i32 3
  %201 = load i8, i8* %200, align 8
  %202 = zext i8 %201 to i32
  %203 = or i32 %202, 4
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %200, align 8
  store i32 0, i32* %5, align 4
  br label %264

205:                                              ; preds = %83
  br label %206

206:                                              ; preds = %205, %27
  %207 = load i8**, i8*** %9, align 8
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %210 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = sub nsw i64 0, %212
  %214 = getelementptr inbounds i8, i8* %208, i64 %213
  store i8* %214, i8** %11, align 8
  %215 = load i8*, i8** %11, align 8
  %216 = load i8*, i8** %10, align 8
  %217 = icmp ugt i8* %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %206
  %219 = load i8*, i8** %10, align 8
  store i8* %219, i8** %11, align 8
  br label %220

220:                                              ; preds = %218, %206
  %221 = load i8*, i8** %11, align 8
  %222 = load i8**, i8*** %9, align 8
  %223 = load i8*, i8** %222, align 8
  %224 = icmp ugt i8* %221, %223
  br i1 %224, label %225, label %238

225:                                              ; preds = %220
  %226 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %227 = load i8**, i8*** %9, align 8
  %228 = load i8*, i8** %227, align 8
  %229 = load i8*, i8** %11, align 8
  %230 = load i8**, i8*** %9, align 8
  %231 = load i8*, i8** %230, align 8
  %232 = ptrtoint i8* %229 to i64
  %233 = ptrtoint i8* %231 to i64
  %234 = sub i64 %232, %233
  %235 = call i32 @http1_on_body_chunk(%struct.http1_parser_s* %226, i8* %228, i64 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %225
  store i32 -1, i32* %5, align 4
  br label %264

238:                                              ; preds = %225, %220
  %239 = load i8*, i8** %11, align 8
  %240 = load i8**, i8*** %9, align 8
  %241 = load i8*, i8** %240, align 8
  %242 = ptrtoint i8* %239 to i64
  %243 = ptrtoint i8* %241 to i64
  %244 = sub i64 %242, %243
  %245 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %246 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, %244
  store i64 %249, i64* %247, align 8
  %250 = load i8*, i8** %11, align 8
  %251 = load i8**, i8*** %9, align 8
  %252 = load i8*, i8** %251, align 8
  %253 = ptrtoint i8* %250 to i64
  %254 = ptrtoint i8* %252 to i64
  %255 = sub i64 %253, %254
  %256 = load %struct.http1_parser_s*, %struct.http1_parser_s** %6, align 8
  %257 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = add nsw i64 %259, %255
  store i64 %260, i64* %258, align 8
  %261 = load i8*, i8** %11, align 8
  %262 = load i8**, i8*** %9, align 8
  store i8* %261, i8** %262, align 8
  br label %22

263:                                              ; preds = %22
  store i32 0, i32* %5, align 4
  br label %264

264:                                              ; preds = %263, %237, %197, %193, %146, %82, %69, %60, %38
  %265 = load i32, i32* %5, align 4
  ret i32 %265
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http1_on_body_chunk(%struct.http1_parser_s*, i8*, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http1_parser_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.http1_parser_s* %0, %struct.http1_parser_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %9 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %13 = ptrtoint %struct.http1_parser_s* %12 to i64
  %14 = sub i64 %13, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %15 = inttoptr i64 %14 to %struct.http1pr_s*
  %16 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %16, i32 0, i32 2
  %18 = load %struct.http_settings_s*, %struct.http_settings_s** %17, align 8
  %19 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %11, %20
  br i1 %21, label %37, label %22

22:                                               ; preds = %3
  %23 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %24 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %28 = ptrtoint %struct.http1_parser_s* %27 to i64
  %29 = sub i64 %28, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %30 = inttoptr i64 %29 to %struct.http1pr_s*
  %31 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %31, i32 0, i32 2
  %33 = load %struct.http_settings_s*, %struct.http_settings_s** %32, align 8
  %34 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %26, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %22, %3
  %38 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %39 = ptrtoint %struct.http1_parser_s* %38 to i64
  %40 = sub i64 %39, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %41 = inttoptr i64 %40 to %struct.http1pr_s*
  %42 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %41, i32 0, i32 2
  %43 = call i32 @http_send_error(%struct.http_s* %42, i64 413)
  store i32 -1, i32* %4, align 4
  br label %90

44:                                               ; preds = %22
  %45 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %46 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %79, label %50

50:                                               ; preds = %44
  %51 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %52 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %58 = getelementptr inbounds %struct.http1_parser_s, %struct.http1_parser_s* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.http1_parser_protected_read_only_state_s, %struct.http1_parser_protected_read_only_state_s* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %60, 8192
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = call i64 @fiobj_data_newstr()
  %64 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %65 = ptrtoint %struct.http1_parser_s* %64 to i64
  %66 = sub i64 %65, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %67 = inttoptr i64 %66 to %struct.http1pr_s*
  %68 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.http_s, %struct.http_s* %68, i32 0, i32 11
  store i64 %63, i64* %69, align 8
  br label %78

70:                                               ; preds = %56, %50
  %71 = call i64 @fiobj_data_newtmpfile()
  %72 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %73 = ptrtoint %struct.http1_parser_s* %72 to i64
  %74 = sub i64 %73, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %75 = inttoptr i64 %74 to %struct.http1pr_s*
  %76 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.http_s, %struct.http_s* %76, i32 0, i32 11
  store i64 %71, i64* %77, align 8
  br label %78

78:                                               ; preds = %70, %62
  br label %79

79:                                               ; preds = %78, %44
  %80 = load %struct.http1_parser_s*, %struct.http1_parser_s** %5, align 8
  %81 = ptrtoint %struct.http1_parser_s* %80 to i64
  %82 = sub i64 %81, ptrtoint (%struct.http1_parser_s* getelementptr inbounds (%struct.http1pr_s, %struct.http1pr_s* null, i32 0, i32 1) to i64)
  %83 = inttoptr i64 %82 to %struct.http1pr_s*
  %84 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.http_s, %struct.http_s* %84, i32 0, i32 11
  %86 = load i64, i64* %85, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i64 @fiobj_data_write(i64 %86, i8* %87, i64 %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %79, %37
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @fiobj_data_newstr() #4

declare dso_local i64 @fiobj_data_newtmpfile() #4

declare dso_local i64 @fiobj_data_write(i64, i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http1_atol16(i8*, i8**) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i64 0, i64* %5, align 8
  store i8 0, i8* %6, align 1
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %33, %2
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 12
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %15, %10
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 32
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i1 [ false, %20 ], [ %27, %25 ]
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %10

36:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %63, %36
  %38 = load i8*, i8** %3, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 45
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %3, align 8
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 43
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 32
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i1 [ false, %42 ], [ %49, %47 ]
  br i1 %51, label %52, label %66

52:                                               ; preds = %50
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  %55 = load i8, i8* %53, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 45
  %58 = zext i1 %57 to i32
  %59 = load i8, i8* %6, align 1
  %60 = zext i8 %59 to i32
  %61 = xor i32 %60, %58
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %6, align 1
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %37

66:                                               ; preds = %50
  %67 = load i8*, i8** %3, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 48
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %3, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %3, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i8*, i8** %3, align 8
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %77, 32
  %79 = icmp eq i32 %78, 120
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %3, align 8
  br label %83

83:                                               ; preds = %80, %74
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %97, %83
  %85 = load i8*, i8** %3, align 8
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 48
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 32
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi i1 [ false, %84 ], [ %91, %89 ]
  br i1 %93, label %94, label %100

94:                                               ; preds = %92
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %3, align 8
  br label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %84

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %151, %100
  %102 = load i64, i64* %5, align 8
  %103 = and i64 %102, -1152921504606846976
  %104 = icmp ne i64 %103, 0
  %105 = xor i1 %104, true
  br i1 %105, label %106, label %154

106:                                              ; preds = %101
  %107 = load i8*, i8** %3, align 8
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp sge i32 %109, 48
  br i1 %110, label %111, label %126

111:                                              ; preds = %106
  %112 = load i8*, i8** %3, align 8
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp sle i32 %114, 57
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load i64, i64* %5, align 8
  %118 = shl i64 %117, 4
  store i64 %118, i64* %5, align 8
  %119 = load i8*, i8** %3, align 8
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = sub nsw i32 %121, 48
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %5, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %5, align 8
  br label %151

126:                                              ; preds = %111, %106
  %127 = load i8*, i8** %3, align 8
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = or i32 %129, 32
  %131 = icmp sge i32 %130, 97
  br i1 %131, label %132, label %149

132:                                              ; preds = %126
  %133 = load i8*, i8** %3, align 8
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = or i32 %135, 32
  %137 = icmp sle i32 %136, 102
  br i1 %137, label %138, label %149

138:                                              ; preds = %132
  %139 = load i64, i64* %5, align 8
  %140 = shl i64 %139, 4
  store i64 %140, i64* %5, align 8
  %141 = load i8*, i8** %3, align 8
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = or i32 %143, 32
  %145 = sub nsw i32 %144, 87
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %5, align 8
  %148 = or i64 %147, %146
  store i64 %148, i64* %5, align 8
  br label %150

149:                                              ; preds = %132, %126
  br label %154

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150, %116
  %152 = load i8*, i8** %3, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %3, align 8
  br label %101

154:                                              ; preds = %149, %101
  %155 = load i8, i8* %6, align 1
  %156 = icmp ne i8 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i64, i64* %5, align 8
  %159 = sub i64 0, %158
  store i64 %159, i64* %5, align 8
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i8**, i8*** %4, align 8
  %162 = icmp ne i8** %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i8*, i8** %3, align 8
  %165 = load i8**, i8*** %4, align 8
  store i8* %164, i8** %165, align 8
  br label %166

166:                                              ; preds = %163, %160
  %167 = load i64, i64* %5, align 8
  ret i64 %167
}

declare dso_local void @http_on_response_handler______internal(%struct.http_s*, %struct.http_settings_s*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h1_reset(%struct.http1pr_s*) #0 {
  %2 = alloca %struct.http1pr_s*, align 8
  store %struct.http1pr_s* %0, %struct.http1pr_s** %2, align 8
  %3 = load %struct.http1pr_s*, %struct.http1pr_s** %2, align 8
  %4 = getelementptr inbounds %struct.http1pr_s, %struct.http1pr_s* %3, i32 0, i32 5
  store i64 0, i64* %4, align 8
  ret void
}

declare dso_local i32 @fio_is_closed(i64) #4

declare dso_local void @http_on_request_handler______internal(%struct.http_s*, %struct.http_settings_s*) #4

declare dso_local i64 @fiobj_hash_new() #4

declare dso_local void @http_write_log(%struct.http_s*) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
