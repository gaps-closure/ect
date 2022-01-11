; ModuleID = './examples/secdesk/c/refactored/http.mod.c'
source_filename = "./examples/secdesk/c/refactored/http.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fio_mime_set_s = type { i64, i64, i64, %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__map_s_*, i8, i8, i8 }
%struct.fio_mime_set__ordered_s_ = type { i64, i64 }
%struct.fio_mime_set__map_s_ = type { i64, %struct.fio_mime_set__ordered_s_* }
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.http_s = type { %struct.anon, %struct.timespec, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8* }
%struct.anon = type { i8*, i64, i64 }
%struct.fiobj_object_header_s = type { i8, i32 }
%struct.http_cookie_args_s = type { i8*, i8*, i8*, i8*, i64, i64, i64, i64, i32, i8 }
%struct.http_settings_s = type { void (%struct.http_s*)*, void (%struct.http_s*, i8*, i64)*, void (%struct.http_s*)*, void (%struct.http_settings_s*)*, i8*, i8*, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8, i8, i8, i8 }
%struct.http_fio_protocol_s = type { %struct.fio_protocol_s, i64, %struct.http_settings_s* }
%struct.fio_protocol_s = type { void (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)*, i8 (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)*, i64 }
%struct.http_vtable_s = type { i32 (%struct.http_s*, i8*, i64)*, i32 (%struct.http_s*, i32, i64, i64)*, i32 (%struct.http_s*, i8*, i64)*, void (%struct.http_s*)*, i32 (%struct.http_s*, i8*, i64, i64)*, i32 (%struct.http_s*, %struct.websocket_settings_s*)*, i32 (%struct.http_s*, i64, i64)*, void (%struct.http_s*, %struct.http_fio_protocol_s*)*, void (%struct.http_s*, %struct.http_fio_protocol_s*)*, i64 (%struct.http_s*, %struct.fio_str_info_s*)*, i32 (%struct.http_s*, %struct.http_sse_s*)*, i32 (%struct.http_sse_s*, i64)*, i32 (%struct.http_sse_s*)* }
%struct.websocket_settings_s = type { void (%struct.ws_s*, %struct.fio_str_info_s*, i8)*, void (%struct.ws_s*)*, void (%struct.ws_s*)*, void (%struct.ws_s*)*, void (i64, i8*)*, i8* }
%struct.ws_s = type opaque
%struct.http_sse_s = type { void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.http_pause_handle_s = type { i64, %struct.http_s*, i8*, void (%struct.http_s*)*, void (i8*)* }
%struct.fio_defer_iotask_args_s = type { i32, void (i64, %struct.fio_protocol_s*, i8*)*, i8*, void (i64, i8*)* }
%struct.fio_listen_args = type { void (i64, i8*)*, i8*, i8*, i8*, i8*, void (i64, i8*)*, void (i64, i8*)* }
%struct.fio_url_s = type { %struct.fio_str_info_s, %struct.fio_str_info_s, %struct.fio_str_info_s, %struct.fio_str_info_s, %struct.fio_str_info_s, %struct.fio_str_info_s, %struct.fio_str_info_s, %struct.fio_str_info_s }
%struct.fio_connect_args = type { i8*, i8*, void (i64, i8*)*, void (i64, i8*)*, i8*, i8*, i8 }
%struct.http_sse_subscribe_args = type { %struct.fio_str_info_s, void (%struct.http_sse_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (i8*)*, i8*, i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)* }
%struct.http_sse_internal_s = type { %struct.http_sse_s, i64, %struct.http_vtable_s*, i64, %struct.fio_ls_s, i8, i64 }
%struct.fio_ls_s = type { %struct.fio_ls_s*, %struct.fio_ls_s*, i8* }
%struct.subscription_s = type opaque
%struct.subscribe_args_s = type { i32, %struct.fio_str_info_s, i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)*, void (%struct.fio_msg_s*)*, void (i8*, i8*)*, i8*, i8* }
%struct.fio_msg_s = type { i32, %struct.fio_str_info_s, %struct.fio_str_info_s, i8*, i8*, i8 }
%struct.http_sse_write_args = type { %struct.fio_str_info_s, %struct.fio_str_info_s, %struct.fio_str_info_s, i64 }
%struct.http_fio_mime_s = type { %struct.http_mime_parser_s, %struct.http_s*, %struct.fio_str_info_s, i64, i64, i64, i64 }
%struct.http_mime_parser_s = type { i8*, i64, i8, i8, i8 }
%struct.header_writer_s = type { i64, i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"FATAL: HTTP SSL/TLS required but unavailable!\00", align 1
@http_set_cookie.warn_illegal = internal global i32 0, align 4
@invalid_cookie_name_char = internal global [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\00\00\00\00\00\01\01\00\00\01\00\00\01\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@.str.3 = private unnamed_addr constant [91 x i8] c"WARNING: illegal char 0x%.2x in cookie name (in %s)\0A         automatic %% encoding applied\00", align 1
@hex_chars = internal constant [16 x i8] c"0123456789ABCDEF", align 16
@invalid_cookie_value_char = internal global [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@.str.4 = private unnamed_addr constant [92 x i8] c"WARNING: illegal char 0x%.2x in cookie value (in %s)\0A         automatic %% encoding applied\00", align 1
@HTTP_HEADER_COOKIE = external dso_local global i64, align 8
@http_set_cookie.cookie_hash = internal global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Max-Age=\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"domain=\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"path=\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"HttpOnly;\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"secure;\00", align 1
@HTTP_HEADER_SET_COOKIE = external dso_local global i64, align 8
@http_sendfile2.accept_enc_hash = internal global i64 0, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"accept-encoding\00", align 1
@http_sendfile2.range_hash = internal global i64 0, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"index.html\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@HTTP_HEADER_LAST_MODIFIED = external dso_local global i64, align 8
@HTTP_HEADER_CACHE_CONTROL = external dso_local global i64, align 8
@HTTP_HVALUE_MAX_AGE = external dso_local global i64, align 8
@HTTP_HEADER_ETAG = external dso_local global i64, align 8
@http_sendfile2.none_match_hash = internal global i64 0, align 8
@.str.17 = private unnamed_addr constant [14 x i8] c"if-none-match\00", align 1
@http_sendfile2.ifrange_hash = internal global i64 0, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"if-range\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"bytes=\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"bytes %lu-%lu/%lu\00", align 1
@HTTP_HEADER_CONTENT_RANGE = external dso_local global i64, align 8
@HTTP_HEADER_ACCEPT_RANGES = external dso_local global i64, align 8
@HTTP_HVALUE_BYTES = external dso_local global i64, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"GET, HEAD\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@HTTP_HEADER_CONTENT_LENGTH = external dso_local global i64, align 8
@.str.26 = private unnamed_addr constant [38 x i8] c"ERROR: (HTTP) couldn't open file %s!\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@HTTP_HEADER_CONTENT_ENCODING = external dso_local global i64, align 8
@HTTP_HVALUE_GZIP = external dso_local global i64, align 8
@HTTP_HEADER_CONTENT_TYPE = external dso_local global i64, align 8
@.str.28 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"ERROR: `http_upgrade2ws` requires a valid `http_s` handle.\00", align 1
@.str.30 = private unnamed_addr constant [65 x i8] c"ERROR: http_listen requires the .on_request parameter to be set\0A\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"http/1.1\00", align 1
@.str.32 = private unnamed_addr constant [80 x i8] c"ERROR: http_connect requires either an on_response  or an on_upgrade callback.\0A\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"ERROR: http_connect requires a valid address.\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"ERROR: Secure connections (%.*s) require a TLS object.\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"443\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@.str.37 = private unnamed_addr constant [95 x i8] c"FATAL: (./examples/secdesk/c/refactored/http.mod.c:1123) HTTP Client handler allocation failed\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"     errno\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.40 = private unnamed_addr constant [79 x i8] c"FATAL: memory allocation error ./examples/secdesk/c/refactored/http.mod.c:1283\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"id: \00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"event: \00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"retry: \00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"data: \00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [60 x i8] c"WARNING: (http) attempting to parse cookies more than once.\00", align 1
@http_parse_cookies.setcookie_header_hash = internal global i64 0, align 8
@http_parse_body.content_type_hash = internal global i64 0, align 8
@.str.47 = private unnamed_addr constant [13 x i8] c"content-type\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"application/x-www-form-urlencoded\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"application/json\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"JSON\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c" HTTP/1.1\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"[unknown]\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c" - - [\00", align 1
@date_lock = internal global i8 0, align 1
@current_date = internal global i64 0, align 8
@.str.56 = private unnamed_addr constant [4 x i8] c"] \22\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"\22 \00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"b \00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c" -- \00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"ms\0D\0A\00", align 1
@DAY_NAMES = internal global [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.154, i32 0, i32 0)], align 16
@MONTH_NAMES = internal global [12 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i32 0, i32 0)], align 16
@GMT_STR = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.167, i32 0, i32 0), align 8
@http_time2str.cached_tick = internal thread_local global i64 0, align 8
@http_time2str.cached_httpdate = internal thread_local global [48 x i8] zeroinitializer, align 16
@http_time2str.cached_len = internal thread_local global i64 0, align 8
@fio_http_mime_types = internal global %struct.fio_mime_set_s zeroinitializer, align 8
@.str.61 = private unnamed_addr constant [50 x i8] c"WARNING: mime-type collision: %.*s was %s, now %s\00", align 1
@.str.62 = private unnamed_addr constant [102 x i8] c"DEBUG (./examples/secdesk/c/refactored/http.mod.c:2505): HTTP MIME hash storage count/capa: %zu / %zu\00", align 1
@http_mimetype_find2.buffer = internal thread_local global [16 x i8] zeroinitializer, align 16
@HTTP_HVALUE_CONTENT_TYPE_DEFAULT = external dso_local global i64, align 8
@last_date_added = internal global i64 0, align 8
@http_status2str.status2str = internal constant [412 x %struct.fio_str_info_s] [%struct.fio_str_info_s { i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.84, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.85, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.88, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.92, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.94, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.97, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.98, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.100, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.101, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.102, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.103, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.104, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.105, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.107, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.108, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.108, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.110, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.111, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.108, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.112, i32 0, i32 0) }, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s zeroinitializer, %struct.fio_str_info_s { i64 0, i64 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.113, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.114, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.116, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.117, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.118, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.119, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.120, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.121, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.108, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.122, i32 0, i32 0) }, %struct.fio_str_info_s { i64 0, i64 31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i32 0, i32 0) }], align 16
@.str.63 = private unnamed_addr constant [9 x i8] c"Continue\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"Switching Protocols\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"Processing\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"Early Hints\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"Created\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"Accepted\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"Non-Authoritative Information\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"No Content\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"Reset Content\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"Partial Content\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"Multi-Status\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"Already Reported\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"IM Used\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"Multiple Choices\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"Moved Permanently\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"Found\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"See Other\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"Not Modified\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"Use Proxy\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"(Unused), \00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"Temporary Redirect\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"Permanent Redirect\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"Bad Request\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"Unauthorized\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"Payment Required\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"Forbidden\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"Not Found\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"Method Not Allowed\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"Not Acceptable\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"Proxy Authentication Required\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"Request Timeout\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"Conflict\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"Gone\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"Length Required\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"Precondition Failed\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"Payload Too Large\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"URI Too Long\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"Unsupported Media Type\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"Range Not Satisfiable\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"Expectation Failed\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"Misdirected Request\00", align 1
@.str.105 = private unnamed_addr constant [21 x i8] c"Unprocessable Entity\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"Locked\00", align 1
@.str.107 = private unnamed_addr constant [18 x i8] c"Failed Dependency\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"Unassigned\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"Upgrade Required\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"Precondition Required\00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c"Too Many Requests\00", align 1
@.str.112 = private unnamed_addr constant [32 x i8] c"Request Header Fields Too Large\00", align 1
@.str.113 = private unnamed_addr constant [22 x i8] c"Internal Server Error\00", align 1
@.str.114 = private unnamed_addr constant [16 x i8] c"Not Implemented\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"Bad Gateway\00", align 1
@.str.116 = private unnamed_addr constant [20 x i8] c"Service Unavailable\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"Gateway Timeout\00", align 1
@.str.118 = private unnamed_addr constant [27 x i8] c"HTTP Version Not Supported\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"Variant Also Negotiates\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"Insufficient Storage\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"Loop Detected\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"Not Extended\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"Network Authentication Required\00", align 1
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_ARRAY = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_HASH = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_DATA = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@.str.124 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@__const.fiobj_obj2cstr.ret = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.124, i32 0, i32 0) }, align 8
@__const.fiobj_obj2cstr.ret.125 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.124, i32 0, i32 0) }, align 8
@.str.126 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const.fiobj_obj2cstr.ret.127 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0) }, align 8
@.str.128 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@__const.fiobj_obj2cstr.ret.129 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0) }, align 8
@add_content_length.cl_hash = internal global i64 0, align 8
@.str.130 = private unnamed_addr constant [15 x i8] c"content-length\00", align 1
@add_date.date_hash = internal global i64 0, align 8
@.str.131 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@add_date.mod_hash = internal global i64 0, align 8
@.str.132 = private unnamed_addr constant [14 x i8] c"last-modified\00", align 1
@HTTP_HEADER_DATE = external dso_local global i64, align 8
@add_content_type.ct_hash = internal global i64 0, align 8
@.str.133 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@fio_http_at_capa = internal global i8 0, align 1
@.str.134 = private unnamed_addr constant [33 x i8] c"WARNING: HTTP server at capacity\00", align 1
@.str.135 = private unnamed_addr constant [74 x i8] c"WARNING: (websocket client) path not specified in address, assuming root!\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@__const.fio_reschedule_thread.tm = private unnamed_addr constant %struct.timespec { i64 0, i64 1 }, align 8
@.str.137 = private unnamed_addr constant [74 x i8] c"FATAL: memory allocation error ./examples/secdesk/c/refactored/fio.h:3313\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"multipart/form\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"boundary=\00", align 1
@.str.140 = private unnamed_addr constant [21 x i8] c"content-disposition:\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.143 = private unnamed_addr constant [14 x i8] c"content-type:\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"[type]\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"[data]\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"Mon\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"Tue\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"Wed\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"Thu\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"Fri\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"Sat\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"Jan \00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"Feb \00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"Mar \00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"Apr \00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"May \00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"Jun \00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"Jul \00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"Aug \00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"Sep \00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"Oct \00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"Nov \00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"Dec \00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"GMT\00", align 1
@.str.168 = private unnamed_addr constant [65 x i8] c"WARNING: (fio hash map) too many full collisions - under attack?\00", align 1
@.str.169 = private unnamed_addr constant [274 x i8] c"FATAL: facil.io Set / Hash Map has too many collisions (%zu/%zu).\0A\09\09this is a fatal implementation error,please report this issue at facio.io's open source project\0A\09\09Note: hash maps and sets should never reach this point.\0A\09\09They should be guarded against collision attacks.\00", align 1
@.str.170 = private unnamed_addr constant [51 x i8] c"FATAL ERROR: couldn't allocate memory for Set data\00", align 1

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
define weak dso_local void @fio_tls_alpn_add(i8*, i8*, void (i64, i8*, i8*)*, i8*, void (i8*)*) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca void (i64, i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca void (i8*)*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store void (i64, i8*, i8*)* %2, void (i64, i8*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store void (i8*)* %4, void (i8*)** %10, align 8
  br label %11

11:                                               ; preds = %5
  %12 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %13 = icmp sle i32 1, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %15

15:                                               ; preds = %14, %11
  br label %16

16:                                               ; preds = %15
  call void @exit(i32 -1) #8
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_set_header(%struct.http_s*, i64, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.http_s*, %struct.http_s** %5, align 8
  %9 = icmp ne %struct.http_s* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %3
  %11 = load %struct.http_s*, %struct.http_s** %5, align 8
  %12 = getelementptr inbounds %struct.http_s, %struct.http_s* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = load %struct.http_s*, %struct.http_s** %5, align 8
  %17 = getelementptr inbounds %struct.http_s, %struct.http_s* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.http_s*, %struct.http_s** %5, align 8
  %22 = getelementptr inbounds %struct.http_s, %struct.http_s* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %15, %10
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %20, %3
  %29 = load i64, i64* %7, align 8
  call void @fiobj_free(i64 %29)
  store i32 -1, i32* %4, align 4
  br label %37

30:                                               ; preds = %25
  %31 = load %struct.http_s*, %struct.http_s** %5, align 8
  %32 = getelementptr inbounds %struct.http_s, %struct.http_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  call void @set_header_add(i64 %34, i64 %35, i64 %36)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %30, %28
  %38 = load i32, i32* %4, align 4
  ret i32 %38
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_set_header2(%struct.http_s*, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.http_s* %0, %struct.http_s** %5, align 8
  %8 = load %struct.http_s*, %struct.http_s** %5, align 8
  %9 = icmp ne %struct.http_s* %8, null
  br i1 %9, label %10, label %41

10:                                               ; preds = %3
  %11 = load %struct.http_s*, %struct.http_s** %5, align 8
  %12 = getelementptr inbounds %struct.http_s, %struct.http_s* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = load %struct.http_s*, %struct.http_s** %5, align 8
  %17 = getelementptr inbounds %struct.http_s, %struct.http_s* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.http_s*, %struct.http_s** %5, align 8
  %22 = getelementptr inbounds %struct.http_s, %struct.http_s* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20, %15, %10
  %26 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %2, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %2, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %29, %25, %20, %3
  store i32 -1, i32* %4, align 4
  br label %58

42:                                               ; preds = %37, %33
  %43 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %1, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @fiobj_str_new(i8* %44, i64 %46)
  store i64 %47, i64* %6, align 8
  %48 = load %struct.http_s*, %struct.http_s** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %2, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %2, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @fiobj_str_new(i8* %51, i64 %53)
  %55 = call i32 @http_set_header(%struct.http_s* %48, i64 %49, i64 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i64, i64* %6, align 8
  call void @fiobj_free(i64 %56)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %42, %41
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @fiobj_str_new(i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_set_cookie(%struct.http_s*, %struct.http_cookie_args_s* byval(%struct.http_cookie_args_s) align 8) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fio_str_info_s, align 8
  %11 = alloca %struct.fio_str_info_s, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.fio_str_info_s, align 8
  %14 = alloca %struct.fio_str_info_s, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.fio_str_info_s, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  %17 = load %struct.http_s*, %struct.http_s** %4, align 8
  %18 = icmp ne %struct.http_s* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %2
  %20 = load %struct.http_s*, %struct.http_s** %4, align 8
  %21 = getelementptr inbounds %struct.http_s, %struct.http_s* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.http_s*, %struct.http_s** %4, align 8
  %26 = getelementptr inbounds %struct.http_s, %struct.http_s* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.http_s*, %struct.http_s** %4, align 8
  %31 = getelementptr inbounds %struct.http_s, %struct.http_s* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29, %24, %19
  %35 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp uge i64 %36, 32768
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %40, 131072
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34, %29, %2
  store i32 -1, i32* %3, align 4
  br label %681

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %45, %47
  %49 = add i64 %48, 128
  store i64 %49, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @fiobj_str_buf(i64 %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %8, i64 %52)
  %53 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %267

56:                                               ; preds = %43
  store i64 0, i64* %9, align 8
  %57 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %162

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %160, %60
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %66, label %161

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* @invalid_cookie_name_char, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %133

76:                                               ; preds = %66
  %77 = load i32, i32* @http_set_cookie.warn_illegal, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @http_set_cookie.warn_illegal, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @http_set_cookie.warn_illegal, align 4
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %84 = icmp sle i32 3, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0), i32 %91, i8* %93)
  br label %94

94:                                               ; preds = %85, %82
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %76
  %97 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %6, align 8
  %101 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8 37, i8* %101, align 1
  %102 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = ashr i32 %107, 4
  %109 = and i32 %108, 15
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_chars, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %6, align 8
  %117 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8 %112, i8* %117, align 1
  %118 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = and i32 %123, 15
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_chars, i64 0, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %6, align 8
  %132 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8 %127, i8* %132, align 1
  br label %144

133:                                              ; preds = %66
  %134 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load i64, i64* %9, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = load i64, i64* %6, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %6, align 8
  %143 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8 %138, i8* %143, align 1
  br label %144

144:                                              ; preds = %133, %96
  %145 = load i64, i64* %9, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %9, align 8
  %147 = load i64, i64* %5, align 8
  %148 = load i64, i64* %6, align 8
  %149 = add i64 %148, 3
  %150 = icmp ule i64 %147, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %144
  %152 = load i64, i64* %5, align 8
  %153 = add i64 %152, 32
  store i64 %153, i64* %5, align 8
  %154 = load i64, i64* %7, align 8
  %155 = load i64, i64* %5, align 8
  %156 = call i64 @fiobj_str_capa_assert(i64 %154, i64 %155)
  %157 = load i64, i64* %7, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %10, i64 %157)
  %158 = bitcast %struct.fio_str_info_s* %8 to i8*
  %159 = bitcast %struct.fio_str_info_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 24, i1 false)
  br label %160

160:                                              ; preds = %151, %144
  br label %61

161:                                              ; preds = %61
  br label %266

162:                                              ; preds = %56
  br label %163

163:                                              ; preds = %264, %162
  %164 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i64, i64* %9, align 8
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = icmp ne i8 %168, 0
  br i1 %169, label %170, label %265

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load i64, i64* %9, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i64
  %177 = getelementptr inbounds [256 x i8], [256 x i8]* @invalid_cookie_name_char, i64 0, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = icmp ne i8 %178, 0
  br i1 %179, label %180, label %237

180:                                              ; preds = %170
  %181 = load i32, i32* @http_set_cookie.warn_illegal, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %200, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* @http_set_cookie.warn_illegal, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* @http_set_cookie.warn_illegal, align 4
  br label %186

186:                                              ; preds = %183
  %187 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %188 = icmp sle i32 3, %187
  br i1 %188, label %189, label %198

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = load i64, i64* %9, align 8
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0), i32 %195, i8* %197)
  br label %198

198:                                              ; preds = %189, %186
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199, %180
  %201 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = load i64, i64* %6, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %6, align 8
  %205 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8 37, i8* %205, align 1
  %206 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load i64, i64* %9, align 8
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = ashr i32 %211, 4
  %213 = and i32 %212, 15
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_chars, i64 0, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = load i64, i64* %6, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %6, align 8
  %221 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8 %216, i8* %221, align 1
  %222 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = load i64, i64* %9, align 8
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = and i32 %227, 15
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_chars, i64 0, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  %234 = load i64, i64* %6, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %6, align 8
  %236 = getelementptr inbounds i8, i8* %233, i64 %234
  store i8 %231, i8* %236, align 1
  br label %248

237:                                              ; preds = %170
  %238 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load i64, i64* %9, align 8
  %241 = getelementptr inbounds i8, i8* %239, i64 %240
  %242 = load i8, i8* %241, align 1
  %243 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %244 = load i8*, i8** %243, align 8
  %245 = load i64, i64* %6, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %6, align 8
  %247 = getelementptr inbounds i8, i8* %244, i64 %245
  store i8 %242, i8* %247, align 1
  br label %248

248:                                              ; preds = %237, %200
  %249 = load i64, i64* %9, align 8
  %250 = add i64 %249, 1
  store i64 %250, i64* %9, align 8
  %251 = load i64, i64* %5, align 8
  %252 = load i64, i64* %6, align 8
  %253 = add i64 %252, 3
  %254 = icmp ule i64 %251, %253
  br i1 %254, label %255, label %264

255:                                              ; preds = %248
  %256 = load i64, i64* %5, align 8
  %257 = add i64 %256, 32
  store i64 %257, i64* %5, align 8
  %258 = load i64, i64* %7, align 8
  %259 = load i64, i64* %5, align 8
  %260 = call i64 @fiobj_str_capa_assert(i64 %258, i64 %259)
  %261 = load i64, i64* %7, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %11, i64 %261)
  %262 = bitcast %struct.fio_str_info_s* %8 to i8*
  %263 = bitcast %struct.fio_str_info_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %262, i8* align 8 %263, i64 24, i1 false)
  br label %264

264:                                              ; preds = %255, %248
  br label %163

265:                                              ; preds = %163
  br label %266

266:                                              ; preds = %265, %161
  br label %267

267:                                              ; preds = %266, %43
  %268 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %269 = load i8*, i8** %268, align 8
  %270 = load i64, i64* %6, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %6, align 8
  %272 = getelementptr inbounds i8, i8* %269, i64 %270
  store i8 61, i8* %272, align 1
  %273 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %487

276:                                              ; preds = %267
  store i64 0, i64* %12, align 8
  %277 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 5
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %382

280:                                              ; preds = %276
  br label %281

281:                                              ; preds = %380, %280
  %282 = load i64, i64* %12, align 8
  %283 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 5
  %284 = load i64, i64* %283, align 8
  %285 = icmp ult i64 %282, %284
  br i1 %285, label %286, label %381

286:                                              ; preds = %281
  %287 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = load i64, i64* %12, align 8
  %290 = getelementptr inbounds i8, i8* %288, i64 %289
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i64
  %293 = getelementptr inbounds [256 x i8], [256 x i8]* @invalid_cookie_value_char, i64 0, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = icmp ne i8 %294, 0
  br i1 %295, label %296, label %353

296:                                              ; preds = %286
  %297 = load i32, i32* @http_set_cookie.warn_illegal, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %316, label %299

299:                                              ; preds = %296
  %300 = load i32, i32* @http_set_cookie.warn_illegal, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* @http_set_cookie.warn_illegal, align 4
  br label %302

302:                                              ; preds = %299
  %303 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %304 = icmp sle i32 3, %303
  br i1 %304, label %305, label %314

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  %308 = load i64, i64* %12, align 8
  %309 = getelementptr inbounds i8, i8* %307, i64 %308
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %313 = load i8*, i8** %312, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.4, i64 0, i64 0), i32 %311, i8* %313)
  br label %314

314:                                              ; preds = %305, %302
  br label %315

315:                                              ; preds = %314
  br label %316

316:                                              ; preds = %315, %296
  %317 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %318 = load i8*, i8** %317, align 8
  %319 = load i64, i64* %6, align 8
  %320 = add i64 %319, 1
  store i64 %320, i64* %6, align 8
  %321 = getelementptr inbounds i8, i8* %318, i64 %319
  store i8 37, i8* %321, align 1
  %322 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %323 = load i8*, i8** %322, align 8
  %324 = load i64, i64* %12, align 8
  %325 = getelementptr inbounds i8, i8* %323, i64 %324
  %326 = load i8, i8* %325, align 1
  %327 = zext i8 %326 to i32
  %328 = ashr i32 %327, 4
  %329 = and i32 %328, 15
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_chars, i64 0, i64 %330
  %332 = load i8, i8* %331, align 1
  %333 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %334 = load i8*, i8** %333, align 8
  %335 = load i64, i64* %6, align 8
  %336 = add i64 %335, 1
  store i64 %336, i64* %6, align 8
  %337 = getelementptr inbounds i8, i8* %334, i64 %335
  store i8 %332, i8* %337, align 1
  %338 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %339 = load i8*, i8** %338, align 8
  %340 = load i64, i64* %12, align 8
  %341 = getelementptr inbounds i8, i8* %339, i64 %340
  %342 = load i8, i8* %341, align 1
  %343 = zext i8 %342 to i32
  %344 = and i32 %343, 15
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_chars, i64 0, i64 %345
  %347 = load i8, i8* %346, align 1
  %348 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %349 = load i8*, i8** %348, align 8
  %350 = load i64, i64* %6, align 8
  %351 = add i64 %350, 1
  store i64 %351, i64* %6, align 8
  %352 = getelementptr inbounds i8, i8* %349, i64 %350
  store i8 %347, i8* %352, align 1
  br label %364

353:                                              ; preds = %286
  %354 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %355 = load i8*, i8** %354, align 8
  %356 = load i64, i64* %12, align 8
  %357 = getelementptr inbounds i8, i8* %355, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %360 = load i8*, i8** %359, align 8
  %361 = load i64, i64* %6, align 8
  %362 = add i64 %361, 1
  store i64 %362, i64* %6, align 8
  %363 = getelementptr inbounds i8, i8* %360, i64 %361
  store i8 %358, i8* %363, align 1
  br label %364

364:                                              ; preds = %353, %316
  %365 = load i64, i64* %12, align 8
  %366 = add i64 %365, 1
  store i64 %366, i64* %12, align 8
  %367 = load i64, i64* %5, align 8
  %368 = load i64, i64* %6, align 8
  %369 = add i64 %368, 3
  %370 = icmp ule i64 %367, %369
  br i1 %370, label %371, label %380

371:                                              ; preds = %364
  %372 = load i64, i64* %5, align 8
  %373 = add i64 %372, 32
  store i64 %373, i64* %5, align 8
  %374 = load i64, i64* %7, align 8
  %375 = load i64, i64* %5, align 8
  %376 = call i64 @fiobj_str_capa_assert(i64 %374, i64 %375)
  %377 = load i64, i64* %7, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %13, i64 %377)
  %378 = bitcast %struct.fio_str_info_s* %8 to i8*
  %379 = bitcast %struct.fio_str_info_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %378, i8* align 8 %379, i64 24, i1 false)
  br label %380

380:                                              ; preds = %371, %364
  br label %281

381:                                              ; preds = %281
  br label %486

382:                                              ; preds = %276
  br label %383

383:                                              ; preds = %484, %382
  %384 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %385 = load i8*, i8** %384, align 8
  %386 = load i64, i64* %12, align 8
  %387 = getelementptr inbounds i8, i8* %385, i64 %386
  %388 = load i8, i8* %387, align 1
  %389 = icmp ne i8 %388, 0
  br i1 %389, label %390, label %485

390:                                              ; preds = %383
  %391 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %392 = load i8*, i8** %391, align 8
  %393 = load i64, i64* %12, align 8
  %394 = getelementptr inbounds i8, i8* %392, i64 %393
  %395 = load i8, i8* %394, align 1
  %396 = zext i8 %395 to i64
  %397 = getelementptr inbounds [256 x i8], [256 x i8]* @invalid_cookie_value_char, i64 0, i64 %396
  %398 = load i8, i8* %397, align 1
  %399 = icmp ne i8 %398, 0
  br i1 %399, label %400, label %457

400:                                              ; preds = %390
  %401 = load i32, i32* @http_set_cookie.warn_illegal, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %420, label %403

403:                                              ; preds = %400
  %404 = load i32, i32* @http_set_cookie.warn_illegal, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* @http_set_cookie.warn_illegal, align 4
  br label %406

406:                                              ; preds = %403
  %407 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %408 = icmp sle i32 3, %407
  br i1 %408, label %409, label %418

409:                                              ; preds = %406
  %410 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %411 = load i8*, i8** %410, align 8
  %412 = load i64, i64* %12, align 8
  %413 = getelementptr inbounds i8, i8* %411, i64 %412
  %414 = load i8, i8* %413, align 1
  %415 = sext i8 %414 to i32
  %416 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %417 = load i8*, i8** %416, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.4, i64 0, i64 0), i32 %415, i8* %417)
  br label %418

418:                                              ; preds = %409, %406
  br label %419

419:                                              ; preds = %418
  br label %420

420:                                              ; preds = %419, %400
  %421 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %422 = load i8*, i8** %421, align 8
  %423 = load i64, i64* %6, align 8
  %424 = add i64 %423, 1
  store i64 %424, i64* %6, align 8
  %425 = getelementptr inbounds i8, i8* %422, i64 %423
  store i8 37, i8* %425, align 1
  %426 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %427 = load i8*, i8** %426, align 8
  %428 = load i64, i64* %12, align 8
  %429 = getelementptr inbounds i8, i8* %427, i64 %428
  %430 = load i8, i8* %429, align 1
  %431 = zext i8 %430 to i32
  %432 = ashr i32 %431, 4
  %433 = and i32 %432, 15
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_chars, i64 0, i64 %434
  %436 = load i8, i8* %435, align 1
  %437 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %438 = load i8*, i8** %437, align 8
  %439 = load i64, i64* %6, align 8
  %440 = add i64 %439, 1
  store i64 %440, i64* %6, align 8
  %441 = getelementptr inbounds i8, i8* %438, i64 %439
  store i8 %436, i8* %441, align 1
  %442 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %443 = load i8*, i8** %442, align 8
  %444 = load i64, i64* %12, align 8
  %445 = getelementptr inbounds i8, i8* %443, i64 %444
  %446 = load i8, i8* %445, align 1
  %447 = zext i8 %446 to i32
  %448 = and i32 %447, 15
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_chars, i64 0, i64 %449
  %451 = load i8, i8* %450, align 1
  %452 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %453 = load i8*, i8** %452, align 8
  %454 = load i64, i64* %6, align 8
  %455 = add i64 %454, 1
  store i64 %455, i64* %6, align 8
  %456 = getelementptr inbounds i8, i8* %453, i64 %454
  store i8 %451, i8* %456, align 1
  br label %468

457:                                              ; preds = %390
  %458 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %459 = load i8*, i8** %458, align 8
  %460 = load i64, i64* %12, align 8
  %461 = getelementptr inbounds i8, i8* %459, i64 %460
  %462 = load i8, i8* %461, align 1
  %463 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %464 = load i8*, i8** %463, align 8
  %465 = load i64, i64* %6, align 8
  %466 = add i64 %465, 1
  store i64 %466, i64* %6, align 8
  %467 = getelementptr inbounds i8, i8* %464, i64 %465
  store i8 %462, i8* %467, align 1
  br label %468

468:                                              ; preds = %457, %420
  %469 = load i64, i64* %12, align 8
  %470 = add i64 %469, 1
  store i64 %470, i64* %12, align 8
  %471 = load i64, i64* %5, align 8
  %472 = load i64, i64* %6, align 8
  %473 = add i64 %472, 3
  %474 = icmp ule i64 %471, %473
  br i1 %474, label %475, label %484

475:                                              ; preds = %468
  %476 = load i64, i64* %5, align 8
  %477 = add i64 %476, 32
  store i64 %477, i64* %5, align 8
  %478 = load i64, i64* %7, align 8
  %479 = load i64, i64* %5, align 8
  %480 = call i64 @fiobj_str_capa_assert(i64 %478, i64 %479)
  %481 = load i64, i64* %7, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %14, i64 %481)
  %482 = bitcast %struct.fio_str_info_s* %8 to i8*
  %483 = bitcast %struct.fio_str_info_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %482, i8* align 8 %483, i64 24, i1 false)
  br label %484

484:                                              ; preds = %475, %468
  br label %383

485:                                              ; preds = %383
  br label %486

486:                                              ; preds = %485, %381
  br label %489

487:                                              ; preds = %267
  %488 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 8
  store i32 -1, i32* %488, align 8
  br label %489

489:                                              ; preds = %487, %486
  %490 = load %struct.http_s*, %struct.http_s** %4, align 8
  %491 = call %struct.http_settings_s* @http_settings(%struct.http_s* %490)
  %492 = icmp ne %struct.http_settings_s* %491, null
  br i1 %492, label %493, label %513

493:                                              ; preds = %489
  %494 = load %struct.http_s*, %struct.http_s** %4, align 8
  %495 = call %struct.http_settings_s* @http_settings(%struct.http_s* %494)
  %496 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %495, i32 0, i32 18
  %497 = load i8, i8* %496, align 1
  %498 = zext i8 %497 to i32
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %513

500:                                              ; preds = %493
  %501 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 1
  %502 = load i8*, i8** %501, align 8
  %503 = icmp ne i8* %502, null
  br i1 %503, label %506, label %504

504:                                              ; preds = %500
  %505 = load i64, i64* %7, align 8
  call void @fiobj_free(i64 %505)
  store i32 -1, i32* %3, align 4
  br label %681

506:                                              ; preds = %500
  %507 = load %struct.http_s*, %struct.http_s** %4, align 8
  %508 = getelementptr inbounds %struct.http_s, %struct.http_s* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.anon, %struct.anon* %508, i32 0, i32 2
  %510 = load i64, i64* %509, align 8
  %511 = load i64, i64* @HTTP_HEADER_COOKIE, align 8
  %512 = load i64, i64* %7, align 8
  call void @set_header_add(i64 %510, i64 %511, i64 %512)
  store i32 0, i32* %3, align 4
  br label %681

513:                                              ; preds = %493, %489
  %514 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %515 = load i8*, i8** %514, align 8
  %516 = load i64, i64* %6, align 8
  %517 = add i64 %516, 1
  store i64 %517, i64* %6, align 8
  %518 = getelementptr inbounds i8, i8* %515, i64 %516
  store i8 59, i8* %518, align 1
  %519 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %520 = load i8*, i8** %519, align 8
  %521 = load i64, i64* %6, align 8
  %522 = add i64 %521, 1
  store i64 %522, i64* %6, align 8
  %523 = getelementptr inbounds i8, i8* %520, i64 %521
  store i8 32, i8* %523, align 1
  %524 = load %struct.http_s*, %struct.http_s** %4, align 8
  %525 = getelementptr inbounds %struct.http_s, %struct.http_s* %524, i32 0, i32 3
  %526 = load i64, i64* %525, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %533, label %528

528:                                              ; preds = %513
  %529 = load %struct.http_s*, %struct.http_s** %4, align 8
  %530 = getelementptr inbounds %struct.http_s, %struct.http_s* %529, i32 0, i32 5
  %531 = load i64, i64* %530, align 8
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %560, label %533

533:                                              ; preds = %528, %513
  %534 = load i64, i64* @http_set_cookie.cookie_hash, align 8
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %538, label %536

536:                                              ; preds = %533
  %537 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 6)
  store i64 %537, i64* @http_set_cookie.cookie_hash, align 8
  br label %538

538:                                              ; preds = %536, %533
  %539 = load %struct.http_s*, %struct.http_s** %4, align 8
  %540 = getelementptr inbounds %struct.http_s, %struct.http_s* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.anon, %struct.anon* %540, i32 0, i32 2
  %542 = load i64, i64* %541, align 8
  %543 = load i64, i64* @http_set_cookie.cookie_hash, align 8
  %544 = call i64 @fiobj_hash_get2(i64 %542, i64 %543)
  store i64 %544, i64* %15, align 8
  %545 = load i64, i64* %15, align 8
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %554, label %547

547:                                              ; preds = %538
  %548 = load %struct.http_s*, %struct.http_s** %4, align 8
  %549 = getelementptr inbounds %struct.http_s, %struct.http_s* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.anon, %struct.anon* %549, i32 0, i32 2
  %551 = load i64, i64* %550, align 8
  %552 = load i64, i64* @HTTP_HEADER_COOKIE, align 8
  %553 = load i64, i64* %7, align 8
  call void @set_header_add(i64 %551, i64 %552, i64 %553)
  br label %559

554:                                              ; preds = %538
  %555 = load i64, i64* %15, align 8
  %556 = load i64, i64* %7, align 8
  %557 = call i64 @fiobj_str_concat(i64 %555, i64 %556)
  %558 = load i64, i64* %7, align 8
  call void @fiobj_free(i64 %558)
  br label %559

559:                                              ; preds = %554, %547
  store i32 0, i32* %3, align 4
  br label %681

560:                                              ; preds = %528
  %561 = load i64, i64* %5, align 8
  %562 = load i64, i64* %6, align 8
  %563 = add i64 %562, 40
  %564 = icmp ule i64 %561, %563
  br i1 %564, label %565, label %574

565:                                              ; preds = %560
  %566 = load i64, i64* %6, align 8
  %567 = add i64 %566, 40
  store i64 %567, i64* %5, align 8
  %568 = load i64, i64* %7, align 8
  %569 = load i64, i64* %5, align 8
  %570 = call i64 @fiobj_str_capa_assert(i64 %568, i64 %569)
  %571 = load i64, i64* %7, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %16, i64 %571)
  %572 = bitcast %struct.fio_str_info_s* %8 to i8*
  %573 = bitcast %struct.fio_str_info_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %572, i8* align 8 %573, i64 24, i1 false)
  br label %574

574:                                              ; preds = %565, %560
  %575 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 8
  %576 = load i32, i32* %575, align 8
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %605

578:                                              ; preds = %574
  %579 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %580 = load i8*, i8** %579, align 8
  %581 = load i64, i64* %6, align 8
  %582 = getelementptr inbounds i8, i8* %580, i64 %581
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %582, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 8, i1 false)
  %583 = load i64, i64* %6, align 8
  %584 = add i64 %583, 8
  store i64 %584, i64* %6, align 8
  %585 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %586 = load i8*, i8** %585, align 8
  %587 = load i64, i64* %6, align 8
  %588 = getelementptr inbounds i8, i8* %586, i64 %587
  %589 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 8
  %590 = load i32, i32* %589, align 8
  %591 = sext i32 %590 to i64
  %592 = call i64 @fio_ltoa(i8* %588, i64 %591, i8 zeroext 10)
  %593 = load i64, i64* %6, align 8
  %594 = add i64 %593, %592
  store i64 %594, i64* %6, align 8
  %595 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %596 = load i8*, i8** %595, align 8
  %597 = load i64, i64* %6, align 8
  %598 = add i64 %597, 1
  store i64 %598, i64* %6, align 8
  %599 = getelementptr inbounds i8, i8* %596, i64 %597
  store i8 59, i8* %599, align 1
  %600 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %601 = load i8*, i8** %600, align 8
  %602 = load i64, i64* %6, align 8
  %603 = add i64 %602, 1
  store i64 %603, i64* %6, align 8
  %604 = getelementptr inbounds i8, i8* %601, i64 %602
  store i8 32, i8* %604, align 1
  br label %605

605:                                              ; preds = %578, %574
  %606 = load i64, i64* %7, align 8
  %607 = load i64, i64* %6, align 8
  call void @fiobj_str_resize(i64 %606, i64 %607)
  %608 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 2
  %609 = load i8*, i8** %608, align 8
  %610 = icmp ne i8* %609, null
  br i1 %610, label %611, label %631

611:                                              ; preds = %605
  %612 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 6
  %613 = load i64, i64* %612, align 8
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %631

615:                                              ; preds = %611
  %616 = load i64, i64* %7, align 8
  %617 = call i64 @fiobj_str_write(i64 %616, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 7)
  %618 = load i64, i64* %7, align 8
  %619 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 2
  %620 = load i8*, i8** %619, align 8
  %621 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 6
  %622 = load i64, i64* %621, align 8
  %623 = call i64 @fiobj_str_write(i64 %618, i8* %620, i64 %622)
  %624 = load i64, i64* %7, align 8
  %625 = call i64 @fiobj_str_write(i64 %624, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 1)
  %626 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %627 = load i8*, i8** %626, align 8
  %628 = load i64, i64* %6, align 8
  %629 = add i64 %628, 1
  store i64 %629, i64* %6, align 8
  %630 = getelementptr inbounds i8, i8* %627, i64 %628
  store i8 32, i8* %630, align 1
  br label %631

631:                                              ; preds = %615, %611, %605
  %632 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 3
  %633 = load i8*, i8** %632, align 8
  %634 = icmp ne i8* %633, null
  br i1 %634, label %635, label %655

635:                                              ; preds = %631
  %636 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 7
  %637 = load i64, i64* %636, align 8
  %638 = icmp ne i64 %637, 0
  br i1 %638, label %639, label %655

639:                                              ; preds = %635
  %640 = load i64, i64* %7, align 8
  %641 = call i64 @fiobj_str_write(i64 %640, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 5)
  %642 = load i64, i64* %7, align 8
  %643 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 3
  %644 = load i8*, i8** %643, align 8
  %645 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 7
  %646 = load i64, i64* %645, align 8
  %647 = call i64 @fiobj_str_write(i64 %642, i8* %644, i64 %646)
  %648 = load i64, i64* %7, align 8
  %649 = call i64 @fiobj_str_write(i64 %648, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 1)
  %650 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %651 = load i8*, i8** %650, align 8
  %652 = load i64, i64* %6, align 8
  %653 = add i64 %652, 1
  store i64 %653, i64* %6, align 8
  %654 = getelementptr inbounds i8, i8* %651, i64 %652
  store i8 32, i8* %654, align 1
  br label %655

655:                                              ; preds = %639, %635, %631
  %656 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 9
  %657 = load i8, i8* %656, align 4
  %658 = lshr i8 %657, 1
  %659 = and i8 %658, 1
  %660 = zext i8 %659 to i32
  %661 = icmp ne i32 %660, 0
  br i1 %661, label %662, label %665

662:                                              ; preds = %655
  %663 = load i64, i64* %7, align 8
  %664 = call i64 @fiobj_str_write(i64 %663, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i64 9)
  br label %665

665:                                              ; preds = %662, %655
  %666 = getelementptr inbounds %struct.http_cookie_args_s, %struct.http_cookie_args_s* %1, i32 0, i32 9
  %667 = load i8, i8* %666, align 4
  %668 = and i8 %667, 1
  %669 = zext i8 %668 to i32
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %674

671:                                              ; preds = %665
  %672 = load i64, i64* %7, align 8
  %673 = call i64 @fiobj_str_write(i64 %672, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i64 7)
  br label %674

674:                                              ; preds = %671, %665
  %675 = load %struct.http_s*, %struct.http_s** %4, align 8
  %676 = getelementptr inbounds %struct.http_s, %struct.http_s* %675, i32 0, i32 0
  %677 = getelementptr inbounds %struct.anon, %struct.anon* %676, i32 0, i32 2
  %678 = load i64, i64* %677, align 8
  %679 = load i64, i64* @HTTP_HEADER_SET_COOKIE, align 8
  %680 = load i64, i64* %7, align 8
  call void @set_header_add(i64 %678, i64 %679, i64 %680)
  store i32 0, i32* %3, align 4
  br label %681

681:                                              ; preds = %674, %559, %506, %504, %42
  %682 = load i32, i32* %3, align 4
  ret i32 %682
}

declare dso_local i64 @fiobj_str_buf(i64) #4

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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.125 to i8*), i64 24, i1 false)
  br label %37

25:                                               ; preds = %19
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.127 to i8*), i64 24, i1 false)
  br label %37

27:                                               ; preds = %19
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.129 to i8*), i64 24, i1 false)
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

declare dso_local i64 @fiobj_str_capa_assert(i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.http_settings_s* @http_settings(%struct.http_s*) #0 {
  %2 = alloca %struct.http_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  %3 = load %struct.http_s*, %struct.http_s** %2, align 8
  %4 = getelementptr inbounds %struct.http_s, %struct.http_s* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.http_fio_protocol_s*
  %8 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %7, i32 0, i32 2
  %9 = load %struct.http_settings_s*, %struct.http_settings_s** %8, align 8
  ret %struct.http_settings_s* %9
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

declare dso_local i64 @fiobj_hash_get2(i64, i64) #4

declare dso_local i64 @fiobj_str_concat(i64, i64) #4

declare dso_local i64 @fio_ltoa(i8*, i64, i8 zeroext) #4

declare dso_local void @fiobj_str_resize(i64, i64) #4

declare dso_local i64 @fiobj_str_write(i64, i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_send_body(%struct.http_s*, i8*, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.http_s*, %struct.http_s** %5, align 8
  %9 = icmp ne %struct.http_s* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load %struct.http_s*, %struct.http_s** %5, align 8
  %12 = getelementptr inbounds %struct.http_s, %struct.http_s* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = load %struct.http_s*, %struct.http_s** %5, align 8
  %17 = getelementptr inbounds %struct.http_s, %struct.http_s* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.http_s*, %struct.http_s** %5, align 8
  %22 = getelementptr inbounds %struct.http_s, %struct.http_s* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %3
  store i32 -1, i32* %4, align 4
  br label %49

26:                                               ; preds = %20, %15, %10
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.http_s*, %struct.http_s** %5, align 8
  call void @http_finish(%struct.http_s* %33)
  store i32 0, i32* %4, align 4
  br label %49

34:                                               ; preds = %29
  %35 = load %struct.http_s*, %struct.http_s** %5, align 8
  %36 = load i64, i64* %7, align 8
  call void @add_content_length(%struct.http_s* %35, i64 %36)
  %37 = load %struct.http_s*, %struct.http_s** %5, align 8
  call void @add_date(%struct.http_s* %37)
  %38 = load %struct.http_s*, %struct.http_s** %5, align 8
  %39 = getelementptr inbounds %struct.http_s, %struct.http_s* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = bitcast i8* %41 to %struct.http_vtable_s*
  %43 = getelementptr inbounds %struct.http_vtable_s, %struct.http_vtable_s* %42, i32 0, i32 0
  %44 = load i32 (%struct.http_s*, i8*, i64)*, i32 (%struct.http_s*, i8*, i64)** %43, align 8
  %45 = load %struct.http_s*, %struct.http_s** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 %44(%struct.http_s* %45, i8* %46, i64 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %34, %32, %25
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_finish(%struct.http_s*) #0 {
  %2 = alloca %struct.http_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  %3 = load %struct.http_s*, %struct.http_s** %2, align 8
  %4 = icmp ne %struct.http_s* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.http_s*, %struct.http_s** %2, align 8
  %7 = getelementptr inbounds %struct.http_s, %struct.http_s* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5, %1
  br label %23

12:                                               ; preds = %5
  %13 = load %struct.http_s*, %struct.http_s** %2, align 8
  call void @add_content_length(%struct.http_s* %13, i64 0)
  %14 = load %struct.http_s*, %struct.http_s** %2, align 8
  call void @add_date(%struct.http_s* %14)
  %15 = load %struct.http_s*, %struct.http_s** %2, align 8
  %16 = getelementptr inbounds %struct.http_s, %struct.http_s* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.http_vtable_s*
  %20 = getelementptr inbounds %struct.http_vtable_s, %struct.http_vtable_s* %19, i32 0, i32 3
  %21 = load void (%struct.http_s*)*, void (%struct.http_s*)** %20, align 8
  %22 = load %struct.http_s*, %struct.http_s** %2, align 8
  call void %21(%struct.http_s* %22)
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_content_length(%struct.http_s*, i64) #0 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* @add_content_length.cl_hash, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.130, i64 0, i64 0), i64 14)
  store i64 %8, i64* @add_content_length.cl_hash, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = load %struct.http_s*, %struct.http_s** %3, align 8
  %11 = getelementptr inbounds %struct.http_s, %struct.http_s* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @add_content_length.cl_hash, align 8
  %15 = call i64 @fiobj_hash_get2(i64 %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %9
  %18 = load %struct.http_s*, %struct.http_s** %3, align 8
  %19 = getelementptr inbounds %struct.http_s, %struct.http_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HTTP_HEADER_CONTENT_LENGTH, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @fiobj_num_new(i64 %23)
  %25 = call i32 @fiobj_hash_set(i64 %21, i64 %22, i64 %24)
  br label %26

26:                                               ; preds = %17, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_date(%struct.http_s*) #0 {
  %2 = alloca %struct.http_s*, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.timespec, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  %10 = load i64, i64* @add_date.date_hash, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i64 4)
  store i64 %13, i64* @add_date.date_hash, align 8
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i64, i64* @add_date.mod_hash, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.132, i64 0, i64 0), i64 13)
  store i64 %18, i64* @add_date.mod_hash, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = call { i64, i64 } @fio_last_tick()
  %21 = bitcast %struct.timespec* %3 to { i64, i64 }*
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %23 = extractvalue { i64, i64 } %20, 0
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %25 = extractvalue { i64, i64 } %20, 1
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @last_date_added, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %19
  call void @fio_lock(i8* @date_lock)
  %31 = call { i64, i64 } @fio_last_tick()
  %32 = bitcast %struct.timespec* %4 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %34 = extractvalue { i64, i64 } %31, 0
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %36 = extractvalue { i64, i64 } %31, 1
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @last_date_added, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %30
  %42 = call i64 @fiobj_str_buf(i64 32)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* @current_date, align 8
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %45)
  %46 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call { i64, i64 } @fio_last_tick()
  %49 = bitcast %struct.timespec* %8 to { i64, i64 }*
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0
  %51 = extractvalue { i64, i64 } %48, 0
  store i64 %51, i64* %50, align 8
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1
  %53 = extractvalue { i64, i64 } %48, 1
  store i64 %53, i64* %52, align 8
  %54 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @http_time2str(i8* %47, i64 %55)
  call void @fiobj_str_resize(i64 %44, i64 %56)
  %57 = call { i64, i64 } @fio_last_tick()
  %58 = bitcast %struct.timespec* %9 to { i64, i64 }*
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 0
  %60 = extractvalue { i64, i64 } %57, 0
  store i64 %60, i64* %59, align 8
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 1
  %62 = extractvalue { i64, i64 } %57, 1
  store i64 %62, i64* %61, align 8
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* @last_date_added, align 8
  %65 = load i64, i64* %5, align 8
  store i64 %65, i64* @current_date, align 8
  %66 = load i64, i64* %6, align 8
  call void @fiobj_free(i64 %66)
  br label %67

67:                                               ; preds = %41, %30
  %68 = call i32 @fio_unlock(i8* @date_lock)
  br label %69

69:                                               ; preds = %67, %19
  %70 = load %struct.http_s*, %struct.http_s** %2, align 8
  %71 = getelementptr inbounds %struct.http_s, %struct.http_s* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @add_date.date_hash, align 8
  %75 = call i64 @fiobj_hash_get2(i64 %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %69
  %78 = load %struct.http_s*, %struct.http_s** %2, align 8
  %79 = getelementptr inbounds %struct.http_s, %struct.http_s* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @HTTP_HEADER_DATE, align 8
  %83 = load i64, i64* @current_date, align 8
  %84 = call i64 @fiobj_dup(i64 %83)
  %85 = call i32 @fiobj_hash_set(i64 %81, i64 %82, i64 %84)
  br label %86

86:                                               ; preds = %77, %69
  %87 = load %struct.http_s*, %struct.http_s** %2, align 8
  %88 = getelementptr inbounds %struct.http_s, %struct.http_s* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %86
  %92 = load %struct.http_s*, %struct.http_s** %2, align 8
  %93 = getelementptr inbounds %struct.http_s, %struct.http_s* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @add_date.mod_hash, align 8
  %97 = call i64 @fiobj_hash_get2(i64 %95, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %91
  %100 = load %struct.http_s*, %struct.http_s** %2, align 8
  %101 = getelementptr inbounds %struct.http_s, %struct.http_s* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.anon, %struct.anon* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @HTTP_HEADER_LAST_MODIFIED, align 8
  %105 = load i64, i64* @current_date, align 8
  %106 = call i64 @fiobj_dup(i64 %105)
  %107 = call i32 @fiobj_hash_set(i64 %103, i64 %104, i64 %106)
  br label %108

108:                                              ; preds = %99, %91, %86
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_sendfile(%struct.http_s*, i32, i64, i64) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.http_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.http_s*, %struct.http_s** %6, align 8
  %11 = icmp ne %struct.http_s* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %4
  %13 = load %struct.http_s*, %struct.http_s** %6, align 8
  %14 = getelementptr inbounds %struct.http_s, %struct.http_s* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = load %struct.http_s*, %struct.http_s** %6, align 8
  %19 = getelementptr inbounds %struct.http_s, %struct.http_s* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load %struct.http_s*, %struct.http_s** %6, align 8
  %24 = getelementptr inbounds %struct.http_s, %struct.http_s* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @close(i32 %28)
  store i32 -1, i32* %5, align 4
  br label %47

30:                                               ; preds = %22, %17, %12
  %31 = load %struct.http_s*, %struct.http_s** %6, align 8
  %32 = load i64, i64* %8, align 8
  call void @add_content_length(%struct.http_s* %31, i64 %32)
  %33 = load %struct.http_s*, %struct.http_s** %6, align 8
  call void @add_content_type(%struct.http_s* %33)
  %34 = load %struct.http_s*, %struct.http_s** %6, align 8
  call void @add_date(%struct.http_s* %34)
  %35 = load %struct.http_s*, %struct.http_s** %6, align 8
  %36 = getelementptr inbounds %struct.http_s, %struct.http_s* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast i8* %38 to %struct.http_vtable_s*
  %40 = getelementptr inbounds %struct.http_vtable_s, %struct.http_vtable_s* %39, i32 0, i32 1
  %41 = load i32 (%struct.http_s*, i32, i64, i64)*, i32 (%struct.http_s*, i32, i64, i64)** %40, align 8
  %42 = load %struct.http_s*, %struct.http_s** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 %41(%struct.http_s* %42, i32 %43, i64 %44, i64 %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %30, %27
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @close(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_content_type(%struct.http_s*) #0 {
  %2 = alloca %struct.http_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  %3 = load i64, i64* @add_content_type.ct_hash, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i64 12)
  store i64 %6, i64* @add_content_type.ct_hash, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = load %struct.http_s*, %struct.http_s** %2, align 8
  %9 = getelementptr inbounds %struct.http_s, %struct.http_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @add_content_type.ct_hash, align 8
  %13 = call i64 @fiobj_hash_get2(i64 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %7
  %16 = load %struct.http_s*, %struct.http_s** %2, align 8
  %17 = getelementptr inbounds %struct.http_s, %struct.http_s* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HTTP_HEADER_CONTENT_TYPE, align 8
  %21 = load %struct.http_s*, %struct.http_s** %2, align 8
  %22 = getelementptr inbounds %struct.http_s, %struct.http_s* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @http_mimetype_find2(i64 %23)
  %25 = call i32 @fiobj_hash_set(i64 %19, i64 %20, i64 %24)
  br label %26

26:                                               ; preds = %15, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_sendfile2(%struct.http_s*, i8*, i64, i8*, i64) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.http_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stat, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.fio_str_info_s, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca %struct.fio_str_info_s, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.fio_str_info_s, align 8
  %22 = alloca %struct.fio_str_info_s, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.fio_str_info_s, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.fio_str_info_s, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.fio_str_info_s, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca %struct.fio_str_info_s, align 8
  %38 = alloca %struct.fio_str_info_s, align 8
  %39 = alloca %struct.fio_str_info_s, align 8
  %40 = alloca %struct.fio_str_info_s, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %43 = load %struct.http_s*, %struct.http_s** %7, align 8
  %44 = icmp ne %struct.http_s* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %5
  %46 = load %struct.http_s*, %struct.http_s** %7, align 8
  %47 = getelementptr inbounds %struct.http_s, %struct.http_s* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %45
  %51 = load %struct.http_s*, %struct.http_s** %7, align 8
  %52 = getelementptr inbounds %struct.http_s, %struct.http_s* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.http_s*, %struct.http_s** %7, align 8
  %57 = getelementptr inbounds %struct.http_s, %struct.http_s* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %5
  store i32 -1, i32* %6, align 4
  br label %644

61:                                               ; preds = %55, %50, %45
  %62 = bitcast %struct.stat* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %62, i8 0, i64 144, i1 false)
  %63 = load i64, i64* @http_sendfile2.accept_enc_hash, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i64 15)
  store i64 %66, i64* @http_sendfile2.accept_enc_hash, align 8
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i64, i64* @http_sendfile2.range_hash, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 5)
  store i64 %71, i64* @http_sendfile2.range_hash, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = call i64 @fiobj_str_tmp()
  store i64 %73, i64* %13, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %110

76:                                               ; preds = %72
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %76
  %80 = load i8*, i8** %10, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load i8*, i8** %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = sub i64 %84, 1
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 47
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 47
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %97, -1
  store i64 %98, i64* %9, align 8
  br label %99

99:                                               ; preds = %96, %90, %82, %79
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %101, %102
  %104 = add i64 %103, 4
  %105 = call i64 @fiobj_str_capa_assert(i64 %100, i64 %104)
  %106 = load i64, i64* %13, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @fiobj_str_write(i64 %106, i8* %107, i64 %108)
  br label %110

110:                                              ; preds = %99, %76, %72
  %111 = load i64, i64* %13, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %14, i64 %111)
  %112 = load i8*, i8** %10, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %177

114:                                              ; preds = %110
  %115 = load i8*, i8** %10, align 8
  store i8* %115, i8** %15, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %16, align 8
  br label %119

119:                                              ; preds = %155, %114
  %120 = load i8*, i8** %15, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = icmp ult i8* %120, %121
  br i1 %122, label %123, label %156

123:                                              ; preds = %119
  %124 = load i8*, i8** %15, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 37
  br i1 %127, label %128, label %145

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %14, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %14, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8*, i8** %15, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = call i32 @hex2byte(i8* %133, i8* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  store i32 -1, i32* %6, align 4
  br label %644

139:                                              ; preds = %128
  %140 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %14, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %140, align 8
  %143 = load i8*, i8** %15, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 3
  store i8* %144, i8** %15, align 8
  br label %155

145:                                              ; preds = %123
  %146 = load i8*, i8** %15, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %15, align 8
  %148 = load i8, i8* %146, align 1
  %149 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %14, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %14, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %151, align 8
  %154 = getelementptr inbounds i8, i8* %150, i64 %152
  store i8 %148, i8* %154, align 1
  br label %155

155:                                              ; preds = %145, %139
  br label %119

156:                                              ; preds = %119
  %157 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %14, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %14, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  store i8 0, i8* %161, align 1
  %162 = load i64, i64* %13, align 8
  %163 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %14, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  call void @fiobj_str_resize(i64 %162, i64 %164)
  %165 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %14, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = load i64, i64* %9, align 8
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  %169 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %14, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %9, align 8
  %172 = sub i64 %170, %171
  %173 = call i32 @http_test_encoded_path(i8* %168, i64 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %156
  store i32 -1, i32* %6, align 4
  br label %644

176:                                              ; preds = %156
  br label %177

177:                                              ; preds = %176, %110
  %178 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %14, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %14, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = sub i64 %181, 1
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 47
  br i1 %186, label %187, label %190

187:                                              ; preds = %177
  %188 = load i64, i64* %13, align 8
  %189 = call i64 @fiobj_str_write(i64 %188, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 10)
  br label %190

190:                                              ; preds = %187, %177
  store i32 -1, i32* %17, align 4
  store i8 0, i8* %18, align 1
  %191 = load i64, i64* %13, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %19, i64 %191)
  %192 = load %struct.http_s*, %struct.http_s** %7, align 8
  %193 = getelementptr inbounds %struct.http_s, %struct.http_s* %192, i32 0, i32 8
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @http_sendfile2.accept_enc_hash, align 8
  %196 = call i64 @fiobj_hash_get2(i64 %194, i64 %195)
  store i64 %196, i64* %20, align 8
  %197 = load i64, i64* %20, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %190
  br label %268

200:                                              ; preds = %190
  %201 = load i64, i64* %20, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %21, i64 %201)
  %202 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %21, i32 0, i32 2
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %21, i32 0, i32 2
  %207 = load i8*, i8** %206, align 8
  %208 = call i8* @strstr(i8* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #9
  %209 = icmp ne i8* %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %205, %200
  br label %268

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %213 = load i8*, i8** %212, align 8
  %214 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = sub i64 %215, 3
  %217 = getelementptr inbounds i8, i8* %213, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp ne i32 %219, 46
  br i1 %220, label %241, label %221

221:                                              ; preds = %211
  %222 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %223 = load i8*, i8** %222, align 8
  %224 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = sub i64 %225, 2
  %227 = getelementptr inbounds i8, i8* %223, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp ne i32 %229, 103
  br i1 %230, label %241, label %231

231:                                              ; preds = %221
  %232 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = sub i64 %235, 1
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %239, 122
  br i1 %240, label %241, label %267

241:                                              ; preds = %231, %221, %211
  %242 = load i64, i64* %13, align 8
  %243 = call i64 @fiobj_str_write(i64 %242, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i64 3)
  %244 = load i64, i64* %13, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %22, i64 %244)
  %245 = bitcast %struct.fio_str_info_s* %19 to i8*
  %246 = bitcast %struct.fio_str_info_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %245, i8* align 8 %246, i64 24, i1 false)
  %247 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @stat(i8* %248, %struct.stat* %12) #1
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %262, label %251

251:                                              ; preds = %241
  %252 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = and i32 %253, 61440
  %255 = icmp eq i32 %254, 32768
  br i1 %255, label %261, label %256

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = and i32 %258, 61440
  %260 = icmp eq i32 %259, 40960
  br i1 %260, label %261, label %262

261:                                              ; preds = %256, %251
  store i8 1, i8* %18, align 1
  br label %285

262:                                              ; preds = %256, %241
  %263 = load i64, i64* %13, align 8
  %264 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = sub i64 %265, 3
  call void @fiobj_str_resize(i64 %263, i64 %266)
  br label %267

267:                                              ; preds = %262, %231
  br label %268

268:                                              ; preds = %267, %210, %199
  %269 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @stat(i8* %270, %struct.stat* %12) #1
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %283, label %273

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = and i32 %275, 61440
  %277 = icmp eq i32 %276, 32768
  br i1 %277, label %284, label %278

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = and i32 %280, 61440
  %282 = icmp eq i32 %281, 40960
  br i1 %282, label %284, label %283

283:                                              ; preds = %278, %268
  store i32 -1, i32* %6, align 4
  br label %644

284:                                              ; preds = %278, %273
  br label %285

285:                                              ; preds = %284, %261
  %286 = call i64 @fiobj_str_buf(i64 32)
  store i64 %286, i64* %23, align 8
  %287 = load i64, i64* %23, align 8
  %288 = load i64, i64* %23, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %24, i64 %288)
  %289 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %24, i32 0, i32 2
  %290 = load i8*, i8** %289, align 8
  %291 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 12
  %292 = getelementptr inbounds %struct.timespec, %struct.timespec* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = call i64 @http_time2str(i8* %290, i64 %293)
  call void @fiobj_str_resize(i64 %287, i64 %294)
  %295 = load %struct.http_s*, %struct.http_s** %7, align 8
  %296 = load i64, i64* @HTTP_HEADER_LAST_MODIFIED, align 8
  %297 = load i64, i64* %23, align 8
  %298 = call i32 @http_set_header(%struct.http_s* %295, i64 %296, i64 %297)
  %299 = load %struct.http_s*, %struct.http_s** %7, align 8
  %300 = load i64, i64* @HTTP_HEADER_CACHE_CONTROL, align 8
  %301 = load i64, i64* @HTTP_HVALUE_MAX_AGE, align 8
  %302 = call i64 @fiobj_dup(i64 %301)
  %303 = call i32 @http_set_header(%struct.http_s* %299, i64 %300, i64 %302)
  %304 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 8
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %25, align 8
  %306 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 12
  %307 = getelementptr inbounds %struct.timespec, %struct.timespec* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* %25, align 8
  %310 = xor i64 %309, %308
  store i64 %310, i64* %25, align 8
  %311 = bitcast i64* %25 to i8*
  %312 = call i64 @fiobj_hash_string(i8* %311, i64 8)
  store i64 %312, i64* %25, align 8
  %313 = call i64 @fiobj_str_buf(i64 32)
  store i64 %313, i64* %26, align 8
  %314 = load i64, i64* %26, align 8
  %315 = load i64, i64* %26, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %27, i64 %315)
  %316 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %27, i32 0, i32 2
  %317 = load i8*, i8** %316, align 8
  %318 = bitcast i64* %25 to i8*
  %319 = call i32 @fio_base64_encode(i8* %317, i8* %318, i32 8)
  %320 = sext i32 %319 to i64
  call void @fiobj_str_resize(i64 %314, i64 %320)
  %321 = load %struct.http_s*, %struct.http_s** %7, align 8
  %322 = load i64, i64* @HTTP_HEADER_ETAG, align 8
  %323 = load i64, i64* %26, align 8
  %324 = call i32 @http_set_header(%struct.http_s* %321, i64 %322, i64 %323)
  %325 = load i64, i64* @http_sendfile2.none_match_hash, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %329, label %327

327:                                              ; preds = %285
  %328 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i64 13)
  store i64 %328, i64* @http_sendfile2.none_match_hash, align 8
  br label %329

329:                                              ; preds = %327, %285
  %330 = load %struct.http_s*, %struct.http_s** %7, align 8
  %331 = getelementptr inbounds %struct.http_s, %struct.http_s* %330, i32 0, i32 8
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @http_sendfile2.none_match_hash, align 8
  %334 = call i64 @fiobj_hash_get2(i64 %332, i64 %333)
  store i64 %334, i64* %28, align 8
  %335 = load i64, i64* %28, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %346

337:                                              ; preds = %329
  %338 = load i64, i64* %28, align 8
  %339 = load i64, i64* %26, align 8
  %340 = call i32 @fiobj_iseq(i64 %338, i64 %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %337
  %343 = load %struct.http_s*, %struct.http_s** %7, align 8
  %344 = getelementptr inbounds %struct.http_s, %struct.http_s* %343, i32 0, i32 5
  store i64 304, i64* %344, align 8
  %345 = load %struct.http_s*, %struct.http_s** %7, align 8
  call void @http_finish(%struct.http_s* %345)
  store i32 0, i32* %6, align 4
  br label %644

346:                                              ; preds = %337, %329
  store i64 0, i64* %29, align 8
  %347 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 8
  %348 = load i64, i64* %347, align 8
  store i64 %348, i64* %30, align 8
  %349 = load i64, i64* @http_sendfile2.ifrange_hash, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %353, label %351

351:                                              ; preds = %346
  %352 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i64 8)
  store i64 %352, i64* @http_sendfile2.ifrange_hash, align 8
  br label %353

353:                                              ; preds = %351, %346
  %354 = load %struct.http_s*, %struct.http_s** %7, align 8
  %355 = getelementptr inbounds %struct.http_s, %struct.http_s* %354, i32 0, i32 8
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @http_sendfile2.ifrange_hash, align 8
  %358 = call i64 @fiobj_hash_get2(i64 %356, i64 %357)
  store i64 %358, i64* %31, align 8
  %359 = load i64, i64* %31, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %372

361:                                              ; preds = %353
  %362 = load i64, i64* %31, align 8
  %363 = load i64, i64* %26, align 8
  %364 = call i32 @fiobj_iseq(i64 %362, i64 %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %372

366:                                              ; preds = %361
  %367 = load %struct.http_s*, %struct.http_s** %7, align 8
  %368 = getelementptr inbounds %struct.http_s, %struct.http_s* %367, i32 0, i32 8
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @http_sendfile2.range_hash, align 8
  %371 = call i32 @fiobj_hash_delete2(i64 %369, i64 %370)
  br label %488

372:                                              ; preds = %361, %353
  %373 = load %struct.http_s*, %struct.http_s** %7, align 8
  %374 = getelementptr inbounds %struct.http_s, %struct.http_s* %373, i32 0, i32 8
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @http_sendfile2.range_hash, align 8
  %377 = call i64 @fiobj_hash_get2(i64 %375, i64 %376)
  store i64 %377, i64* %31, align 8
  %378 = load i64, i64* %31, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %487

380:                                              ; preds = %372
  %381 = load i64, i64* %31, align 8
  %382 = call i64 @fiobj_type_is(i64 %381, i8 zeroext 41)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %380
  %385 = load i64, i64* %31, align 8
  %386 = call i64 @fiobj_ary_index(i64 %385, i64 0)
  store i64 %386, i64* %31, align 8
  br label %387

387:                                              ; preds = %384, %380
  %388 = load i64, i64* %31, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %32, i64 %388)
  %389 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %32, i32 0, i32 2
  %390 = load i8*, i8** %389, align 8
  %391 = icmp ne i8* %390, null
  br i1 %391, label %392, label %397

392:                                              ; preds = %387
  %393 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %32, i32 0, i32 2
  %394 = load i8*, i8** %393, align 8
  %395 = call i32 @memcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* %394, i64 6) #9
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %392, %387
  br label %537

398:                                              ; preds = %392
  %399 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %32, i32 0, i32 2
  %400 = load i8*, i8** %399, align 8
  %401 = getelementptr inbounds i8, i8* %400, i64 6
  store i8* %401, i8** %33, align 8
  store i64 0, i64* %34, align 8
  store i64 0, i64* %35, align 8
  %402 = call i64 @fio_atol(i8** %33)
  store i64 %402, i64* %34, align 8
  %403 = load i64, i64* %34, align 8
  %404 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 8
  %405 = load i64, i64* %404, align 8
  %406 = icmp sge i64 %403, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %398
  br label %537

408:                                              ; preds = %398
  %409 = load i64, i64* %34, align 8
  %410 = icmp sge i64 %409, 0
  br i1 %410, label %411, label %419

411:                                              ; preds = %408
  %412 = load i8*, i8** %33, align 8
  %413 = getelementptr inbounds i8, i8* %412, i32 1
  store i8* %413, i8** %33, align 8
  %414 = call i64 @fio_atol(i8** %33)
  store i64 %414, i64* %35, align 8
  %415 = load i64, i64* %35, align 8
  %416 = icmp sle i64 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %411
  br label %537

418:                                              ; preds = %411
  br label %419

419:                                              ; preds = %418, %408
  %420 = load i64, i64* %34, align 8
  %421 = icmp slt i64 %420, 0
  br i1 %421, label %422, label %436

422:                                              ; preds = %419
  %423 = load i64, i64* %34, align 8
  %424 = sub nsw i64 0, %423
  %425 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 8
  %426 = load i64, i64* %425, align 8
  %427 = icmp slt i64 %424, %426
  br i1 %427, label %428, label %435

428:                                              ; preds = %422
  %429 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 8
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* %34, align 8
  %432 = sub nsw i64 %430, %431
  store i64 %432, i64* %29, align 8
  %433 = load i64, i64* %34, align 8
  %434 = sub nsw i64 0, %433
  store i64 %434, i64* %30, align 8
  br label %435

435:                                              ; preds = %428, %422
  br label %465

436:                                              ; preds = %419
  %437 = load i64, i64* %35, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %459

439:                                              ; preds = %436
  %440 = load i64, i64* %34, align 8
  store i64 %440, i64* %29, align 8
  %441 = load i64, i64* %35, align 8
  %442 = load i64, i64* %34, align 8
  %443 = sub nsw i64 %441, %442
  %444 = add nsw i64 %443, 1
  store i64 %444, i64* %30, align 8
  %445 = load i64, i64* %30, align 8
  %446 = load i64, i64* %34, align 8
  %447 = add nsw i64 %445, %446
  %448 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 8
  %449 = load i64, i64* %448, align 8
  %450 = icmp sgt i64 %447, %449
  br i1 %450, label %454, label %451

451:                                              ; preds = %439
  %452 = load i64, i64* %30, align 8
  %453 = icmp sle i64 %452, 0
  br i1 %453, label %454, label %458

454:                                              ; preds = %451, %439
  %455 = load i64, i64* %30, align 8
  %456 = load i64, i64* %34, align 8
  %457 = sub nsw i64 %455, %456
  store i64 %457, i64* %30, align 8
  br label %458

458:                                              ; preds = %454, %451
  br label %464

459:                                              ; preds = %436
  %460 = load i64, i64* %34, align 8
  store i64 %460, i64* %29, align 8
  %461 = load i64, i64* %30, align 8
  %462 = load i64, i64* %34, align 8
  %463 = sub nsw i64 %461, %462
  store i64 %463, i64* %30, align 8
  br label %464

464:                                              ; preds = %459, %458
  br label %465

465:                                              ; preds = %464, %435
  %466 = load %struct.http_s*, %struct.http_s** %7, align 8
  %467 = getelementptr inbounds %struct.http_s, %struct.http_s* %466, i32 0, i32 5
  store i64 206, i64* %467, align 8
  %468 = call i64 @fiobj_str_buf(i64 1)
  store i64 %468, i64* %36, align 8
  %469 = load i64, i64* %36, align 8
  %470 = load i64, i64* %34, align 8
  %471 = load i64, i64* %34, align 8
  %472 = load i64, i64* %30, align 8
  %473 = add nsw i64 %471, %472
  %474 = sub nsw i64 %473, 1
  %475 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 8
  %476 = load i64, i64* %475, align 8
  %477 = call i64 (i64, i8*, ...) @fiobj_str_printf(i64 %469, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i64 %470, i64 %474, i64 %476)
  %478 = load %struct.http_s*, %struct.http_s** %7, align 8
  %479 = load i64, i64* @HTTP_HEADER_CONTENT_RANGE, align 8
  %480 = load i64, i64* %36, align 8
  %481 = call i32 @http_set_header(%struct.http_s* %478, i64 %479, i64 %480)
  %482 = load %struct.http_s*, %struct.http_s** %7, align 8
  %483 = load i64, i64* @HTTP_HEADER_ACCEPT_RANGES, align 8
  %484 = load i64, i64* @HTTP_HVALUE_BYTES, align 8
  %485 = call i64 @fiobj_dup(i64 %484)
  %486 = call i32 @http_set_header(%struct.http_s* %482, i64 %483, i64 %485)
  br label %487

487:                                              ; preds = %465, %372
  br label %488

488:                                              ; preds = %487, %366
  %489 = load %struct.http_s*, %struct.http_s** %7, align 8
  %490 = getelementptr inbounds %struct.http_s, %struct.http_s* %489, i32 0, i32 2
  %491 = load i64, i64* %490, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %37, i64 %491)
  %492 = bitcast %struct.fio_str_info_s* %19 to i8*
  %493 = bitcast %struct.fio_str_info_s* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %492, i8* align 8 %493, i64 24, i1 false)
  %494 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 1
  %495 = load i64, i64* %494, align 8
  switch i64 %495, label %534 [
    i64 7, label %496
    i64 3, label %514
    i64 4, label %521
  ]

496:                                              ; preds = %488
  %497 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %498 = load i8*, i8** %497, align 8
  %499 = call i32 @strncasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* %498, i64 7) #9
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %513, label %501

501:                                              ; preds = %496
  %502 = load %struct.http_s*, %struct.http_s** %7, align 8
  %503 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %38, i32 0, i32 0
  store i64 0, i64* %503, align 8
  %504 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %38, i32 0, i32 1
  store i64 5, i64* %504, align 8
  %505 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %38, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8** %505, align 8
  %506 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %39, i32 0, i32 0
  store i64 0, i64* %506, align 8
  %507 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %39, i32 0, i32 1
  store i64 9, i64* %507, align 8
  %508 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %39, i32 0, i32 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8** %508, align 8
  %509 = call i32 @http_set_header2(%struct.http_s* %502, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %38, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %39)
  %510 = load %struct.http_s*, %struct.http_s** %7, align 8
  %511 = getelementptr inbounds %struct.http_s, %struct.http_s* %510, i32 0, i32 5
  store i64 200, i64* %511, align 8
  %512 = load %struct.http_s*, %struct.http_s** %7, align 8
  call void @http_finish(%struct.http_s* %512)
  store i32 0, i32* %6, align 4
  br label %644

513:                                              ; preds = %496
  br label %534

514:                                              ; preds = %488
  %515 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %516 = load i8*, i8** %515, align 8
  %517 = call i32 @strncasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* %516, i64 3) #9
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %520, label %519

519:                                              ; preds = %514
  br label %537

520:                                              ; preds = %514
  br label %534

521:                                              ; preds = %488
  %522 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %523 = load i8*, i8** %522, align 8
  %524 = call i32 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* %523, i64 4) #9
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %533, label %526

526:                                              ; preds = %521
  %527 = load %struct.http_s*, %struct.http_s** %7, align 8
  %528 = load i64, i64* @HTTP_HEADER_CONTENT_LENGTH, align 8
  %529 = load i64, i64* %30, align 8
  %530 = call i64 @fiobj_num_new(i64 %529)
  %531 = call i32 @http_set_header(%struct.http_s* %527, i64 %528, i64 %530)
  %532 = load %struct.http_s*, %struct.http_s** %7, align 8
  call void @http_finish(%struct.http_s* %532)
  store i32 0, i32* %6, align 4
  br label %644

533:                                              ; preds = %521
  br label %534

534:                                              ; preds = %488, %533, %520, %513
  %535 = load %struct.http_s*, %struct.http_s** %7, align 8
  %536 = call i32 @http_send_error(%struct.http_s* %535, i64 403)
  store i32 0, i32* %6, align 4
  br label %644

537:                                              ; preds = %519, %417, %407, %397
  %538 = load i64, i64* %13, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %40, i64 %538)
  %539 = bitcast %struct.fio_str_info_s* %19 to i8*
  %540 = bitcast %struct.fio_str_info_s* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %539, i8* align 8 %540, i64 24, i1 false)
  %541 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %542 = load i8*, i8** %541, align 8
  %543 = call i32 (i8*, i32, ...) @open(i8* %542, i32 0)
  store i32 %543, i32* %17, align 4
  %544 = load i32, i32* %17, align 4
  %545 = icmp eq i32 %544, -1
  br i1 %545, label %546, label %557

546:                                              ; preds = %537
  br label %547

547:                                              ; preds = %546
  %548 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %549 = icmp sle i32 2, %548
  br i1 %549, label %550, label %553

550:                                              ; preds = %547
  %551 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %552 = load i8*, i8** %551, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0), i8* %552)
  br label %553

553:                                              ; preds = %550, %547
  br label %554

554:                                              ; preds = %553
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %555 = load %struct.http_s*, %struct.http_s** %7, align 8
  %556 = call i32 @http_send_error(%struct.http_s* %555, i64 500)
  store i32 0, i32* %6, align 4
  br label %644

557:                                              ; preds = %537
  store i64 0, i64* %41, align 8
  store i64 0, i64* %42, align 8
  %558 = load i8, i8* %18, align 1
  %559 = icmp ne i8 %558, 0
  br i1 %559, label %560, label %598

560:                                              ; preds = %557
  %561 = load %struct.http_s*, %struct.http_s** %7, align 8
  %562 = load i64, i64* @HTTP_HEADER_CONTENT_ENCODING, align 8
  %563 = load i64, i64* @HTTP_HVALUE_GZIP, align 8
  %564 = call i64 @fiobj_dup(i64 %563)
  %565 = call i32 @http_set_header(%struct.http_s* %561, i64 %562, i64 %564)
  %566 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 1
  %567 = load i64, i64* %566, align 8
  %568 = sub i64 %567, 4
  store i64 %568, i64* %42, align 8
  br label %569

569:                                              ; preds = %582, %560
  %570 = load i64, i64* %42, align 8
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %580

572:                                              ; preds = %569
  %573 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %574 = load i8*, i8** %573, align 8
  %575 = load i64, i64* %42, align 8
  %576 = getelementptr inbounds i8, i8* %574, i64 %575
  %577 = load i8, i8* %576, align 1
  %578 = sext i8 %577 to i32
  %579 = icmp ne i32 %578, 46
  br label %580

580:                                              ; preds = %572, %569
  %581 = phi i1 [ false, %569 ], [ %579, %572 ]
  br i1 %581, label %582, label %585

582:                                              ; preds = %580
  %583 = load i64, i64* %42, align 8
  %584 = add i64 %583, -1
  store i64 %584, i64* %42, align 8
  br label %569

585:                                              ; preds = %580
  %586 = load i64, i64* %42, align 8
  %587 = add i64 %586, 1
  store i64 %587, i64* %42, align 8
  %588 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %589 = load i8*, i8** %588, align 8
  %590 = load i64, i64* %42, align 8
  %591 = getelementptr inbounds i8, i8* %589, i64 %590
  %592 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 1
  %593 = load i64, i64* %592, align 8
  %594 = load i64, i64* %42, align 8
  %595 = sub i64 %593, %594
  %596 = sub i64 %595, 3
  %597 = call i64 @http_mimetype_find(i8* %591, i64 %596)
  store i64 %597, i64* %41, align 8
  br label %630

598:                                              ; preds = %557
  %599 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 1
  %600 = load i64, i64* %599, align 8
  %601 = sub i64 %600, 1
  store i64 %601, i64* %42, align 8
  br label %602

602:                                              ; preds = %615, %598
  %603 = load i64, i64* %42, align 8
  %604 = icmp ne i64 %603, 0
  br i1 %604, label %605, label %613

605:                                              ; preds = %602
  %606 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %607 = load i8*, i8** %606, align 8
  %608 = load i64, i64* %42, align 8
  %609 = getelementptr inbounds i8, i8* %607, i64 %608
  %610 = load i8, i8* %609, align 1
  %611 = sext i8 %610 to i32
  %612 = icmp ne i32 %611, 46
  br label %613

613:                                              ; preds = %605, %602
  %614 = phi i1 [ false, %602 ], [ %612, %605 ]
  br i1 %614, label %615, label %618

615:                                              ; preds = %613
  %616 = load i64, i64* %42, align 8
  %617 = add i64 %616, -1
  store i64 %617, i64* %42, align 8
  br label %602

618:                                              ; preds = %613
  %619 = load i64, i64* %42, align 8
  %620 = add i64 %619, 1
  store i64 %620, i64* %42, align 8
  %621 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %622 = load i8*, i8** %621, align 8
  %623 = load i64, i64* %42, align 8
  %624 = getelementptr inbounds i8, i8* %622, i64 %623
  %625 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 1
  %626 = load i64, i64* %625, align 8
  %627 = load i64, i64* %42, align 8
  %628 = sub i64 %626, %627
  %629 = call i64 @http_mimetype_find(i8* %624, i64 %628)
  store i64 %629, i64* %41, align 8
  br label %630

630:                                              ; preds = %618, %585
  %631 = load i64, i64* %41, align 8
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %638

633:                                              ; preds = %630
  %634 = load %struct.http_s*, %struct.http_s** %7, align 8
  %635 = load i64, i64* @HTTP_HEADER_CONTENT_TYPE, align 8
  %636 = load i64, i64* %41, align 8
  %637 = call i32 @http_set_header(%struct.http_s* %634, i64 %635, i64 %636)
  br label %638

638:                                              ; preds = %633, %630
  %639 = load %struct.http_s*, %struct.http_s** %7, align 8
  %640 = load i32, i32* %17, align 4
  %641 = load i64, i64* %30, align 8
  %642 = load i64, i64* %29, align 8
  %643 = call i32 @http_sendfile(%struct.http_s* %639, i32 %640, i64 %641, i64 %642)
  store i32 0, i32* %6, align 4
  br label %644

644:                                              ; preds = %638, %554, %534, %526, %501, %342, %283, %175, %138, %60
  %645 = load i32, i32* %6, align 4
  ret i32 %645
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i64 @fiobj_str_tmp() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hex2byte(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp sge i32 %9, 48
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp sle i32 %15, 57
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = sub nsw i32 %21, 48
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %4, align 8
  store i8 %23, i8* %24, align 1
  br label %60

25:                                               ; preds = %11, %2
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sge i32 %29, 97
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sle i32 %35, 102
  br i1 %36, label %49, label %37

37:                                               ; preds = %31, %25
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sge i32 %41, 65
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp sle i32 %47, 70
  br i1 %48, label %49, label %58

49:                                               ; preds = %43, %31
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %53, 32
  %55 = sub nsw i32 %54, 87
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %4, align 8
  store i8 %56, i8* %57, align 1
  br label %59

58:                                               ; preds = %43, %37
  store i32 -1, i32* %3, align 4
  br label %127

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %17
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 %63, 4
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 1
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp sge i32 %69, 48
  br i1 %70, label %71, label %88

71:                                               ; preds = %60
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp sle i32 %75, 57
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = sub nsw i32 %81, 48
  %83 = load i8*, i8** %4, align 8
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = or i32 %85, %82
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %83, align 1
  br label %126

88:                                               ; preds = %71, %60
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp sge i32 %92, 97
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp sle i32 %98, 102
  br i1 %99, label %112, label %100

100:                                              ; preds = %94, %88
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp sge i32 %104, 65
  br i1 %105, label %106, label %124

106:                                              ; preds = %100
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp sle i32 %110, 70
  br i1 %111, label %112, label %124

112:                                              ; preds = %106, %94
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %116, 32
  %118 = sub nsw i32 %117, 87
  %119 = load i8*, i8** %4, align 8
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = or i32 %121, %118
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %119, align 1
  br label %125

124:                                              ; preds = %106, %100
  store i32 -1, i32* %3, align 4
  br label %127

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125, %77
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %124, %58
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_test_encoded_path(i8*, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  store i8* %10, i8** %7, align 8
  br label %11

11:                                               ; preds = %58, %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ult i8* %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i8* @memchr(i8* %16, i32 47, i64 %17) #9
  store i8* %18, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i1 [ false, %11 ], [ %19, %15 ]
  br i1 %21, label %22, label %59

22:                                               ; preds = %20
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  store i64 %27, i64* %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %60

36:                                               ; preds = %22
  %37 = load i64, i64* %5, align 8
  %38 = icmp ugt i64 %37, 3
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 46
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 46
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 47
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %60

58:                                               ; preds = %51, %45, %39, %36
  br label %11

59:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %57, %35
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #6

; Function Attrs: nounwind
declare dso_local i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_time2str(i8*, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.tm, align 8
  %9 = alloca %struct.tm, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = call { i64, i64 } @fio_last_tick()
  %11 = bitcast %struct.timespec* %7 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = extractvalue { i64, i64 } %10, 0
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = extractvalue { i64, i64 } %10, 1
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = or i64 %18, 7
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.tm* @http_gmtime(i64 %23, %struct.tm* %8)
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @http_date2str(i8* %25, %struct.tm* %8)
  store i64 %26, i64* %3, align 8
  br label %40

27:                                               ; preds = %2
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @http_time2str.cached_tick, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  store i64 %32, i64* @http_time2str.cached_tick, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call %struct.tm* @http_gmtime(i64 %33, %struct.tm* %9)
  %35 = call i64 @http_date2str(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @http_time2str.cached_httpdate, i64 0, i64 0), %struct.tm* %9)
  store i64 %35, i64* @http_time2str.cached_len, align 8
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* @http_time2str.cached_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 16 getelementptr inbounds ([48 x i8], [48 x i8]* @http_time2str.cached_httpdate, i64 0, i64 0), i64 %38, i1 false)
  %39 = load i64, i64* @http_time2str.cached_len, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %36, %22
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

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

declare dso_local i32 @fio_base64_encode(i8*, i8*, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_iseq(i64, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %86

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10
  store i32 0, i32* %3, align 4
  br label %86

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, 1
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = and i64 %25, 6
  %27 = icmp ne i64 %26, 6
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i64, i64* %5, align 8
  %33 = and i64 %32, 1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = and i64 %36, 6
  %38 = icmp ne i64 %37, 6
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %31, %28, %24, %20, %17
  store i32 0, i32* %3, align 4
  br label %86

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = and i64 %41, -8
  %43 = inttoptr i64 %42 to i8*
  %44 = bitcast i8* %43 to %struct.fiobj_object_header_s*
  %45 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %44, i32 0, i32 0
  %46 = load i8, i8* %45, align 4
  %47 = zext i8 %46 to i32
  %48 = load i64, i64* %5, align 8
  %49 = and i64 %48, -8
  %50 = inttoptr i64 %49 to i8*
  %51 = bitcast i8* %50 to %struct.fiobj_object_header_s*
  %52 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 4
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %47, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %86

57:                                               ; preds = %40
  %58 = load i64, i64* %4, align 8
  %59 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %58)
  %60 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %59, i32 0, i32 4
  %61 = load i64 (i64, i64)*, i64 (i64, i64)** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i64 %61(i64 %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %86

67:                                               ; preds = %57
  %68 = load i64, i64* %4, align 8
  %69 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %68)
  %70 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %69, i32 0, i32 5
  %71 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %70, align 8
  %72 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load i64, i64* %4, align 8
  %75 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %74)
  %76 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %75, i32 0, i32 2
  %77 = load i64 (i64)*, i64 (i64)** %76, align 8
  %78 = load i64, i64* %4, align 8
  %79 = call i64 %77(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @fiobj_iseq____internal_complex__(i64 %82, i64 %83)
  store i32 %84, i32* %3, align 4
  br label %86

85:                                               ; preds = %73, %67
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %81, %66, %56, %39, %16, %9
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @fiobj_hash_delete2(i64, i64) #4

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

declare dso_local i64 @fiobj_ary_index(i64, i64) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #6

declare dso_local i64 @fio_atol(i8**) #4

declare dso_local i64 @fiobj_str_printf(i64, i8*, ...) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @strncasecmp(i8*, i8*, i64) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_num_new(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, -4611686018427387904
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, -4611686018427387904
  %12 = icmp eq i64 %11, -4611686018427387904
  br i1 %12, label %13, label %23

13:                                               ; preds = %9, %1
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, 9223372036854775807
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %3, align 8
  %17 = and i64 %16, -9223372036854775808
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = shl i64 %18, 1
  %20 = load i64, i64* %5, align 8
  %21 = or i64 %19, %20
  %22 = or i64 %21, 1
  store i64 %22, i64* %2, align 8
  br label %26

23:                                               ; preds = %9
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @fiobj_num_new_bignum(i64 %24)
  store i64 %25, i64* %2, align 8
  br label %26

26:                                               ; preds = %23, %13
  %27 = load i64, i64* %2, align 8
  ret i64 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_send_error(%struct.http_s*, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.http_s*, %struct.http_s** %4, align 8
  %10 = icmp ne %struct.http_s* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.http_s*, %struct.http_s** %4, align 8
  %13 = getelementptr inbounds %struct.http_s, %struct.http_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11, %2
  store i32 -1, i32* %3, align 4
  br label %88

18:                                               ; preds = %11
  %19 = load i64, i64* %5, align 8
  %20 = icmp ult i64 %19, 100
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = icmp uge i64 %22, 1000
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18
  store i64 500, i64* %5, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.http_s*, %struct.http_s** %4, align 8
  %28 = getelementptr inbounds %struct.http_s, %struct.http_s* %27, i32 0, i32 5
  store i64 %26, i64* %28, align 8
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  store i8 47, i8* %29, align 16
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @fio_ltoa(i8* %31, i64 %32, i8 zeroext 10)
  %34 = add i64 1, %33
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %35
  store i8 46, i8* %37, align 1
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %38
  store i8 104, i8* %40, align 1
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %41
  store i8 116, i8* %43, align 1
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %44
  store i8 109, i8* %46, align 1
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %7, align 8
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %47
  store i8 108, i8* %49, align 1
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load %struct.http_s*, %struct.http_s** %4, align 8
  %53 = load %struct.http_s*, %struct.http_s** %4, align 8
  %54 = getelementptr inbounds %struct.http_s, %struct.http_s* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.http_fio_protocol_s*
  %58 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %57, i32 0, i32 2
  %59 = load %struct.http_settings_s*, %struct.http_settings_s** %58, align 8
  %60 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %59, i32 0, i32 5
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.http_s*, %struct.http_s** %4, align 8
  %63 = getelementptr inbounds %struct.http_s, %struct.http_s* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.http_fio_protocol_s*
  %67 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %66, i32 0, i32 2
  %68 = load %struct.http_settings_s*, %struct.http_settings_s** %67, align 8
  %69 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @http_sendfile2(%struct.http_s* %52, i8* %61, i64 %70, i8* %71, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %25
  %76 = load %struct.http_s*, %struct.http_s** %4, align 8
  %77 = load i64, i64* @HTTP_HEADER_CONTENT_TYPE, align 8
  %78 = call i64 @http_mimetype_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 3)
  %79 = call i32 @http_set_header(%struct.http_s* %76, i64 %77, i64 %78)
  %80 = load i64, i64* %5, align 8
  call void @http_status2str(%struct.fio_str_info_s* sret %8, i64 %80)
  %81 = load %struct.http_s*, %struct.http_s** %4, align 8
  %82 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @http_send_body(%struct.http_s* %81, i8* %83, i64 %85)
  br label %87

87:                                               ; preds = %75, %25
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %17
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @open(i8*, i32, ...) #4

declare dso_local void @perror(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_mimetype_find(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @fio_siphash13(i8* %6, i64 %7, i64 0, i64 0)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @fio_mime_set_find(%struct.fio_mime_set_s* @fio_http_mime_types, i64 %9, i64 0)
  %11 = call i64 @fiobj_dup(i64 %10)
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_status2str(%struct.fio_str_info_s* noalias sret, i64) #0 {
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
  %14 = getelementptr inbounds [412 x %struct.fio_str_info_s], [412 x %struct.fio_str_info_s]* @http_status2str.status2str, i64 0, i64 %13
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 16 bitcast (%struct.fio_str_info_s* getelementptr inbounds ([412 x %struct.fio_str_info_s], [412 x %struct.fio_str_info_s]* @http_status2str.status2str, i64 0, i64 400) to i8*), i64 24, i1 false)
  br label %23

23:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_push_data(%struct.http_s*, i8*, i64, i64) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.http_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.http_s*, %struct.http_s** %6, align 8
  %11 = icmp ne %struct.http_s* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load %struct.http_s*, %struct.http_s** %6, align 8
  %14 = getelementptr inbounds %struct.http_s, %struct.http_s* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.http_fio_protocol_s*
  %18 = icmp ne %struct.http_fio_protocol_s* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %4
  store i32 -1, i32* %5, align 4
  br label %33

20:                                               ; preds = %12
  %21 = load %struct.http_s*, %struct.http_s** %6, align 8
  %22 = getelementptr inbounds %struct.http_s, %struct.http_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.http_vtable_s*
  %26 = getelementptr inbounds %struct.http_vtable_s, %struct.http_vtable_s* %25, i32 0, i32 4
  %27 = load i32 (%struct.http_s*, i8*, i64, i64)*, i32 (%struct.http_s*, i8*, i64, i64)** %26, align 8
  %28 = load %struct.http_s*, %struct.http_s** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 %27(%struct.http_s* %28, i8* %29, i64 %30, i64 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %20, %19
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_push_file(%struct.http_s*, i64, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.http_s*, %struct.http_s** %5, align 8
  %9 = icmp ne %struct.http_s* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load %struct.http_s*, %struct.http_s** %5, align 8
  %12 = getelementptr inbounds %struct.http_s, %struct.http_s* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = load %struct.http_s*, %struct.http_s** %5, align 8
  %17 = getelementptr inbounds %struct.http_s, %struct.http_s* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.http_s*, %struct.http_s** %5, align 8
  %22 = getelementptr inbounds %struct.http_s, %struct.http_s* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %3
  store i32 -1, i32* %4, align 4
  br label %38

26:                                               ; preds = %20, %15, %10
  %27 = load %struct.http_s*, %struct.http_s** %5, align 8
  %28 = getelementptr inbounds %struct.http_s, %struct.http_s* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to %struct.http_vtable_s*
  %32 = getelementptr inbounds %struct.http_vtable_s, %struct.http_vtable_s* %31, i32 0, i32 6
  %33 = load i32 (%struct.http_s*, i64, i64)*, i32 (%struct.http_s*, i64, i64)** %32, align 8
  %34 = load %struct.http_s*, %struct.http_s** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 %33(%struct.http_s* %34, i64 %35, i64 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %26, %25
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_upgrade2ws(%struct.http_s*, %struct.websocket_settings_s* byval(%struct.websocket_settings_s) align 8) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.http_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  %5 = load %struct.http_s*, %struct.http_s** %4, align 8
  %6 = icmp ne %struct.http_s* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7
  %9 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %10 = icmp sle i32 2, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.29, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %8
  br label %13

13:                                               ; preds = %12
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.http_s*, %struct.http_s** %4, align 8
  %16 = icmp ne %struct.http_s* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load %struct.http_s*, %struct.http_s** %4, align 8
  %19 = getelementptr inbounds %struct.http_s, %struct.http_s* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = load %struct.http_s*, %struct.http_s** %4, align 8
  %24 = getelementptr inbounds %struct.http_s, %struct.http_s* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.http_s*, %struct.http_s** %4, align 8
  %29 = getelementptr inbounds %struct.http_s, %struct.http_s* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %14
  br label %43

33:                                               ; preds = %27, %22, %17
  %34 = load %struct.http_s*, %struct.http_s** %4, align 8
  %35 = getelementptr inbounds %struct.http_s, %struct.http_s* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to %struct.http_vtable_s*
  %39 = getelementptr inbounds %struct.http_vtable_s, %struct.http_vtable_s* %38, i32 0, i32 5
  %40 = load i32 (%struct.http_s*, %struct.websocket_settings_s*)*, i32 (%struct.http_s*, %struct.websocket_settings_s*)** %39, align 8
  %41 = load %struct.http_s*, %struct.http_s** %4, align 8
  %42 = call i32 %40(%struct.http_s* %41, %struct.websocket_settings_s* %1)
  store i32 %42, i32* %3, align 4
  br label %53

43:                                               ; preds = %32, %13
  %44 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %1, i32 0, i32 4
  %45 = load void (i64, i8*)*, void (i64, i8*)** %44, align 8
  %46 = icmp ne void (i64, i8*)* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %1, i32 0, i32 4
  %49 = load void (i64, i8*)*, void (i64, i8*)** %48, align 8
  %50 = getelementptr inbounds %struct.websocket_settings_s, %struct.websocket_settings_s* %1, i32 0, i32 5
  %51 = load i8*, i8** %50, align 8
  call void %49(i64 -1, i8* %51)
  br label %52

52:                                               ; preds = %47, %43
  store i32 -1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @http_paused_udata_get(%struct.http_pause_handle_s*) #0 {
  %2 = alloca %struct.http_pause_handle_s*, align 8
  store %struct.http_pause_handle_s* %0, %struct.http_pause_handle_s** %2, align 8
  %3 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %2, align 8
  %4 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %3, i32 0, i32 2
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @http_paused_udata_set(%struct.http_pause_handle_s*, i8*) #0 {
  %3 = alloca %struct.http_pause_handle_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.http_pause_handle_s* %0, %struct.http_pause_handle_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %3, align 8
  %7 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %3, align 8
  %11 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** %5, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_pause(%struct.http_s*, void (%struct.http_pause_handle_s*)*) #0 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca void (%struct.http_pause_handle_s*)*, align 8
  %5 = alloca %struct.http_fio_protocol_s*, align 8
  %6 = alloca %struct.http_vtable_s*, align 8
  %7 = alloca %struct.http_pause_handle_s*, align 8
  %8 = alloca %struct.http_pause_handle_s, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  store void (%struct.http_pause_handle_s*)* %1, void (%struct.http_pause_handle_s*)** %4, align 8
  %9 = load %struct.http_s*, %struct.http_s** %3, align 8
  %10 = icmp ne %struct.http_s* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.http_s*, %struct.http_s** %3, align 8
  %13 = getelementptr inbounds %struct.http_s, %struct.http_s* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = load %struct.http_s*, %struct.http_s** %3, align 8
  %18 = getelementptr inbounds %struct.http_s, %struct.http_s* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.http_s*, %struct.http_s** %3, align 8
  %23 = getelementptr inbounds %struct.http_s, %struct.http_s* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %2
  br label %69

27:                                               ; preds = %21, %16, %11
  %28 = load %struct.http_s*, %struct.http_s** %3, align 8
  %29 = getelementptr inbounds %struct.http_s, %struct.http_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.http_fio_protocol_s*
  store %struct.http_fio_protocol_s* %32, %struct.http_fio_protocol_s** %5, align 8
  %33 = load %struct.http_s*, %struct.http_s** %3, align 8
  %34 = getelementptr inbounds %struct.http_s, %struct.http_s* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.http_vtable_s*
  store %struct.http_vtable_s* %37, %struct.http_vtable_s** %6, align 8
  %38 = call noalias i8* @fio_malloc(i64 40)
  %39 = ptrtoint i8* %38 to i64
  %40 = and i64 %39, 15
  %41 = icmp eq i64 %40, 0
  call void @llvm.assume(i1 %41)
  %42 = bitcast i8* %38 to %struct.http_pause_handle_s*
  store %struct.http_pause_handle_s* %42, %struct.http_pause_handle_s** %7, align 8
  %43 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %7, align 8
  %44 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %8, i32 0, i32 0
  %45 = load %struct.http_fio_protocol_s*, %struct.http_fio_protocol_s** %5, align 8
  %46 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %44, align 8
  %48 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %8, i32 0, i32 1
  %49 = load %struct.http_s*, %struct.http_s** %3, align 8
  store %struct.http_s* %49, %struct.http_s** %48, align 8
  %50 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %8, i32 0, i32 2
  %51 = load %struct.http_s*, %struct.http_s** %3, align 8
  %52 = getelementptr inbounds %struct.http_s, %struct.http_s* %51, i32 0, i32 12
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %50, align 8
  %54 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %8, i32 0, i32 3
  store void (%struct.http_s*)* null, void (%struct.http_s*)** %54, align 8
  %55 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %8, i32 0, i32 4
  store void (i8*)* null, void (i8*)** %55, align 8
  %56 = bitcast %struct.http_pause_handle_s* %43 to i8*
  %57 = bitcast %struct.http_pause_handle_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 40, i1 false)
  %58 = load %struct.http_vtable_s*, %struct.http_vtable_s** %6, align 8
  %59 = getelementptr inbounds %struct.http_vtable_s, %struct.http_vtable_s* %58, i32 0, i32 7
  %60 = load void (%struct.http_s*, %struct.http_fio_protocol_s*)*, void (%struct.http_s*, %struct.http_fio_protocol_s*)** %59, align 8
  %61 = load %struct.http_s*, %struct.http_s** %3, align 8
  %62 = load %struct.http_fio_protocol_s*, %struct.http_fio_protocol_s** %5, align 8
  call void %60(%struct.http_s* %61, %struct.http_fio_protocol_s* %62)
  %63 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %7, align 8
  %64 = bitcast %struct.http_pause_handle_s* %63 to i8*
  %65 = load void (%struct.http_pause_handle_s*)*, void (%struct.http_pause_handle_s*)** %4, align 8
  %66 = ptrtoint void (%struct.http_pause_handle_s*)* %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @fio_defer(void (i8*, i8*)* @http_pause_wrapper, i8* %64, i8* %67)
  br label %69

69:                                               ; preds = %27, %26
  ret void
}

declare dso_local noalias i8* @fio_malloc(i64) #4

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

declare dso_local i32 @fio_defer(void (i8*, i8*)*, i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_pause_wrapper(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca void (i8*)*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = inttoptr i64 %7 to void (i8*)*
  store void (i8*)* %8, void (i8*)** %5, align 8
  %9 = load void (i8*)*, void (i8*)** %5, align 8
  %10 = load i8*, i8** %3, align 8
  call void %9(i8* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_resume(%struct.http_pause_handle_s*, void (%struct.http_s*)*, void (i8*)*) #0 {
  %4 = alloca %struct.http_pause_handle_s*, align 8
  %5 = alloca void (%struct.http_s*)*, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca %struct.fio_defer_iotask_args_s, align 8
  store %struct.http_pause_handle_s* %0, %struct.http_pause_handle_s** %4, align 8
  store void (%struct.http_s*)* %1, void (%struct.http_s*)** %5, align 8
  store void (i8*)* %2, void (i8*)** %6, align 8
  %8 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %4, align 8
  %9 = icmp ne %struct.http_pause_handle_s* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %27

11:                                               ; preds = %3
  %12 = load void (%struct.http_s*)*, void (%struct.http_s*)** %5, align 8
  %13 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %4, align 8
  %14 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %13, i32 0, i32 3
  store void (%struct.http_s*)* %12, void (%struct.http_s*)** %14, align 8
  %15 = load void (i8*)*, void (i8*)** %6, align 8
  %16 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %4, align 8
  %17 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %16, i32 0, i32 4
  store void (i8*)* %15, void (i8*)** %17, align 8
  %18 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %4, align 8
  %19 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.fio_defer_iotask_args_s, %struct.fio_defer_iotask_args_s* %7, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.fio_defer_iotask_args_s, %struct.fio_defer_iotask_args_s* %7, i32 0, i32 1
  store void (i64, %struct.fio_protocol_s*, i8*)* @http_resume_wrapper, void (i64, %struct.fio_protocol_s*, i8*)** %22, align 8
  %23 = getelementptr inbounds %struct.fio_defer_iotask_args_s, %struct.fio_defer_iotask_args_s* %7, i32 0, i32 2
  %24 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %4, align 8
  %25 = bitcast %struct.http_pause_handle_s* %24 to i8*
  store i8* %25, i8** %23, align 8
  %26 = getelementptr inbounds %struct.fio_defer_iotask_args_s, %struct.fio_defer_iotask_args_s* %7, i32 0, i32 3
  store void (i64, i8*)* @http_resume_fallback_wrapper, void (i64, i8*)** %26, align 8
  call void @fio_defer_io_task(i64 %20, %struct.fio_defer_iotask_args_s* byval(%struct.fio_defer_iotask_args_s) align 8 %7)
  br label %27

27:                                               ; preds = %11, %10
  ret void
}

declare dso_local void @fio_defer_io_task(i64, %struct.fio_defer_iotask_args_s* byval(%struct.fio_defer_iotask_args_s) align 8) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_resume_wrapper(i64, %struct.fio_protocol_s*, i8*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_protocol_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_fio_protocol_s*, align 8
  %8 = alloca %struct.http_pause_handle_s*, align 8
  %9 = alloca %struct.http_s*, align 8
  %10 = alloca %struct.http_vtable_s*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %5, align 8
  %12 = bitcast %struct.fio_protocol_s* %11 to %struct.http_fio_protocol_s*
  store %struct.http_fio_protocol_s* %12, %struct.http_fio_protocol_s** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.http_pause_handle_s*
  store %struct.http_pause_handle_s* %14, %struct.http_pause_handle_s** %8, align 8
  %15 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %8, align 8
  %16 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %15, i32 0, i32 1
  %17 = load %struct.http_s*, %struct.http_s** %16, align 8
  store %struct.http_s* %17, %struct.http_s** %9, align 8
  %18 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %8, align 8
  %19 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.http_s*, %struct.http_s** %9, align 8
  %22 = getelementptr inbounds %struct.http_s, %struct.http_s* %21, i32 0, i32 12
  store i8* %20, i8** %22, align 8
  %23 = load %struct.http_s*, %struct.http_s** %9, align 8
  %24 = getelementptr inbounds %struct.http_s, %struct.http_s* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.http_vtable_s*
  store %struct.http_vtable_s* %27, %struct.http_vtable_s** %10, align 8
  %28 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %8, align 8
  %29 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %28, i32 0, i32 3
  %30 = load void (%struct.http_s*)*, void (%struct.http_s*)** %29, align 8
  %31 = icmp ne void (%struct.http_s*)* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %8, align 8
  %34 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %33, i32 0, i32 3
  %35 = load void (%struct.http_s*)*, void (%struct.http_s*)** %34, align 8
  %36 = load %struct.http_s*, %struct.http_s** %9, align 8
  call void %35(%struct.http_s* %36)
  br label %37

37:                                               ; preds = %32, %3
  %38 = load %struct.http_vtable_s*, %struct.http_vtable_s** %10, align 8
  %39 = getelementptr inbounds %struct.http_vtable_s, %struct.http_vtable_s* %38, i32 0, i32 8
  %40 = load void (%struct.http_s*, %struct.http_fio_protocol_s*)*, void (%struct.http_s*, %struct.http_fio_protocol_s*)** %39, align 8
  %41 = load %struct.http_s*, %struct.http_s** %9, align 8
  %42 = load %struct.http_fio_protocol_s*, %struct.http_fio_protocol_s** %7, align 8
  call void %40(%struct.http_s* %41, %struct.http_fio_protocol_s* %42)
  %43 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %8, align 8
  %44 = bitcast %struct.http_pause_handle_s* %43 to i8*
  call void @fio_free(i8* %44)
  %45 = load i64, i64* %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_resume_fallback_wrapper(i64, i8*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.http_pause_handle_s*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.http_pause_handle_s*
  store %struct.http_pause_handle_s* %7, %struct.http_pause_handle_s** %5, align 8
  %8 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %5, align 8
  %9 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %8, i32 0, i32 4
  %10 = load void (i8*)*, void (i8*)** %9, align 8
  %11 = icmp ne void (i8*)* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %5, align 8
  %14 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %13, i32 0, i32 4
  %15 = load void (i8*)*, void (i8*)** %14, align 8
  %16 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %5, align 8
  %17 = getelementptr inbounds %struct.http_pause_handle_s, %struct.http_pause_handle_s* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  call void %15(i8* %18)
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.http_pause_handle_s*, %struct.http_pause_handle_s** %5, align 8
  %21 = bitcast %struct.http_pause_handle_s* %20 to i8*
  call void @fio_free(i8* %21)
  %22 = load i64, i64* %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_hijack(%struct.http_s*, %struct.fio_str_info_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca %struct.fio_str_info_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  store %struct.fio_str_info_s* %1, %struct.fio_str_info_s** %5, align 8
  %6 = load %struct.http_s*, %struct.http_s** %4, align 8
  %7 = icmp ne %struct.http_s* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i64 -1, i64* %3, align 8
  br label %20

9:                                                ; preds = %2
  %10 = load %struct.http_s*, %struct.http_s** %4, align 8
  %11 = getelementptr inbounds %struct.http_s, %struct.http_s* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.http_vtable_s*
  %15 = getelementptr inbounds %struct.http_vtable_s, %struct.http_vtable_s* %14, i32 0, i32 9
  %16 = load i64 (%struct.http_s*, %struct.fio_str_info_s*)*, i64 (%struct.http_s*, %struct.fio_str_info_s*)** %15, align 8
  %17 = load %struct.http_s*, %struct.http_s** %4, align 8
  %18 = load %struct.fio_str_info_s*, %struct.fio_str_info_s** %5, align 8
  %19 = call i64 %16(%struct.http_s* %17, %struct.fio_str_info_s* %18)
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %9, %8
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_listen(i8*, i8*, %struct.http_settings_s* byval(%struct.http_settings_s) align 8) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.http_settings_s*, align 8
  %7 = alloca %struct.fio_listen_args, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 0
  %9 = load void (%struct.http_s*)*, void (%struct.http_s*)** %8, align 8
  %10 = icmp eq void (%struct.http_s*)* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11
  %13 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %14 = icmp sle i32 2, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.30, i64 0, i64 0))
  br label %16

16:                                               ; preds = %15, %12
  br label %17

17:                                               ; preds = %16
  %18 = call i32 @kill(i32 0, i32 2) #1
  call void @exit(i32 11) #8
  unreachable

19:                                               ; preds = %3
  %20 = call %struct.http_settings_s* @http_settings_new(%struct.http_settings_s* byval(%struct.http_settings_s) align 8 %2)
  store %struct.http_settings_s* %20, %struct.http_settings_s** %6, align 8
  %21 = load %struct.http_settings_s*, %struct.http_settings_s** %6, align 8
  %22 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %21, i32 0, i32 18
  store i8 0, i8* %22, align 1
  %23 = load %struct.http_settings_s*, %struct.http_settings_s** %6, align 8
  %24 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %23, i32 0, i32 10
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.http_settings_s*, %struct.http_settings_s** %6, align 8
  %29 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %28, i32 0, i32 10
  %30 = load i8*, i8** %29, align 8
  call void @fio_tls_alpn_add(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), void (i64, i8*, i8*)* @http_on_server_protocol_http1, i8* null, void (i8*)* null)
  br label %31

31:                                               ; preds = %27, %19
  %32 = getelementptr inbounds %struct.fio_listen_args, %struct.fio_listen_args* %7, i32 0, i32 0
  store void (i64, i8*)* @http_on_open, void (i64, i8*)** %32, align 8
  %33 = getelementptr inbounds %struct.fio_listen_args, %struct.fio_listen_args* %7, i32 0, i32 1
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %33, align 8
  %35 = getelementptr inbounds %struct.fio_listen_args, %struct.fio_listen_args* %7, i32 0, i32 2
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %35, align 8
  %37 = getelementptr inbounds %struct.fio_listen_args, %struct.fio_listen_args* %7, i32 0, i32 3
  %38 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 10
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %37, align 8
  %40 = getelementptr inbounds %struct.fio_listen_args, %struct.fio_listen_args* %7, i32 0, i32 4
  %41 = load %struct.http_settings_s*, %struct.http_settings_s** %6, align 8
  %42 = bitcast %struct.http_settings_s* %41 to i8*
  store i8* %42, i8** %40, align 8
  %43 = getelementptr inbounds %struct.fio_listen_args, %struct.fio_listen_args* %7, i32 0, i32 5
  store void (i64, i8*)* null, void (i64, i8*)** %43, align 8
  %44 = getelementptr inbounds %struct.fio_listen_args, %struct.fio_listen_args* %7, i32 0, i32 6
  store void (i64, i8*)* @http_on_finish, void (i64, i8*)** %44, align 8
  %45 = call i64 @fio_listen(%struct.fio_listen_args* byval(%struct.fio_listen_args) align 8 %7)
  ret i64 %45
}

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.http_settings_s* @http_settings_new(%struct.http_settings_s* byval(%struct.http_settings_s) align 8) #0 {
  %2 = alloca %struct.http_settings_s*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 0
  %7 = load void (%struct.http_s*)*, void (%struct.http_s*)** %6, align 8
  %8 = icmp ne void (%struct.http_s*)* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 0
  store void (%struct.http_s*)* @http_on_request_fallback, void (%struct.http_s*)** %10, align 8
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 2
  %13 = load void (%struct.http_s*)*, void (%struct.http_s*)** %12, align 8
  %14 = icmp ne void (%struct.http_s*)* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 2
  store void (%struct.http_s*)* @http_on_response_fallback, void (%struct.http_s*)** %16, align 8
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 1
  %19 = load void (%struct.http_s*, i8*, i64)*, void (%struct.http_s*, i8*, i64)** %18, align 8
  %20 = icmp ne void (%struct.http_s*, i8*, i64)* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 1
  store void (%struct.http_s*, i8*, i64)* @http_on_upgrade_fallback, void (%struct.http_s*, i8*, i64)** %22, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 8
  store i64 52428800, i64* %28, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 15
  %31 = load i8, i8* %30, align 8
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 15
  store i8 40, i8* %34, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 14
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 14
  store i64 262144, i64* %40, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 16
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 16
  store i8 40, i8* %46, align 1
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 7
  store i64 32768, i64* %52, align 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 9
  %55 = load i64, i64* %54, align 8
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 9
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 64
  %61 = call i64 @fio_capa()
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57, %53
  %64 = call i64 @fio_capa()
  %65 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 9
  store i64 %64, i64* %65, align 8
  %66 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 9
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 64
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 9
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, 64
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %70, %63
  br label %75

75:                                               ; preds = %74, %57
  %76 = call noalias i8* @malloc(i64 136) #1
  %77 = bitcast i8* %76 to %struct.http_settings_s*
  store %struct.http_settings_s* %77, %struct.http_settings_s** %2, align 8
  %78 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %79 = bitcast %struct.http_settings_s* %78 to i8*
  %80 = bitcast %struct.http_settings_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 128, i1 false)
  %81 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %82 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %81, i32 0, i32 5
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %178

85:                                               ; preds = %75
  %86 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %87 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %86, i32 0, i32 5
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @strlen(i8* %88) #9
  %90 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %91 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %90, i32 0, i32 6
  store i64 %89, i64* %91, align 8
  %92 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %93 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %92, i32 0, i32 5
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 126
  br i1 %98, label %99, label %154

99:                                               ; preds = %85
  %100 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %101 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %100, i32 0, i32 5
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 47
  br i1 %106, label %107, label %154

107:                                              ; preds = %99
  %108 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0)) #1
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %154

110:                                              ; preds = %107
  %111 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0)) #1
  store i8* %111, i8** %3, align 8
  %112 = load i8*, i8** %3, align 8
  %113 = call i64 @strlen(i8* %112) #9
  store i64 %113, i64* %4, align 8
  %114 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %115 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %4, align 8
  %118 = add i64 %116, %117
  %119 = add i64 %118, 1
  %120 = call noalias i8* @malloc(i64 %119) #1
  store i8* %120, i8** %5, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = load i8*, i8** %3, align 8
  %123 = load i64, i64* %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %121, i8* align 1 %122, i64 %123, i1 false)
  %124 = load i8*, i8** %3, align 8
  %125 = load i64, i64* %4, align 8
  %126 = sub i64 %125, 1
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 47
  br i1 %130, label %131, label %134

131:                                              ; preds = %110
  %132 = load i64, i64* %4, align 8
  %133 = add i64 %132, -1
  store i64 %133, i64* %4, align 8
  br label %134

134:                                              ; preds = %131, %110
  %135 = load i8*, i8** %5, align 8
  %136 = load i64, i64* %4, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %139 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %138, i32 0, i32 5
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  %142 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %143 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %137, i8* align 1 %141, i64 %144, i1 false)
  %145 = load i8*, i8** %5, align 8
  %146 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %147 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %146, i32 0, i32 5
  store i8* %145, i8** %147, align 8
  %148 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %149 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %148, i32 0, i32 5
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @strlen(i8* %150) #9
  %152 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %153 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %152, i32 0, i32 6
  store i64 %151, i64* %153, align 8
  br label %177

154:                                              ; preds = %107, %99, %85
  %155 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %156 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 1
  %159 = call noalias i8* @malloc(i64 %158) #1
  %160 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %161 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %160, i32 0, i32 5
  store i8* %159, i8** %161, align 8
  %162 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %163 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %162, i32 0, i32 5
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %0, i32 0, i32 5
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %168 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %167, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %164, i8* align 1 %166, i64 %169, i1 false)
  %170 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %171 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %170, i32 0, i32 5
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %174 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i8, i8* %172, i64 %175
  store i8 0, i8* %176, align 1
  br label %177

177:                                              ; preds = %154, %134
  br label %178

178:                                              ; preds = %177, %75
  %179 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  ret %struct.http_settings_s* %179
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_on_server_protocol_http1(i64, i8*, i8*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fio_protocol_s*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.http_settings_s*
  %11 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %10, i32 0, i32 15
  %12 = load i8, i8* %11, align 8
  call void @fio_timeout_set(i64 %8, i8 zeroext %12)
  %13 = load i64, i64* %4, align 8
  %14 = lshr i64 %13, 8
  %15 = trunc i64 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.http_settings_s*
  %19 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %18, i32 0, i32 9
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %16, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %3
  %23 = load i8, i8* @fio_http_at_capa, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %28 = icmp sle i32 3, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.134, i64 0, i64 0))
  br label %30

30:                                               ; preds = %29, %26
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31, %22
  store i8 1, i8* @fio_http_at_capa, align 1
  %33 = load i64, i64* %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = bitcast i8* %34 to %struct.http_settings_s*
  %36 = call i32 @http_send_error2(i64 %33, i64 503, %struct.http_settings_s* %35)
  %37 = load i64, i64* %4, align 8
  call void @fio_close(i64 %37)
  br label %49

38:                                               ; preds = %3
  store i8 0, i8* @fio_http_at_capa, align 1
  %39 = load i64, i64* %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = bitcast i8* %40 to %struct.http_settings_s*
  %42 = call %struct.fio_protocol_s* @http1_new(i64 %39, %struct.http_settings_s* %41, i8* null, i64 0)
  store %struct.fio_protocol_s* %42, %struct.fio_protocol_s** %7, align 8
  %43 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %7, align 8
  %44 = icmp ne %struct.fio_protocol_s* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load i64, i64* %4, align 8
  call void @fio_close(i64 %46)
  br label %47

47:                                               ; preds = %45, %38
  %48 = load i8*, i8** %6, align 8
  br label %49

49:                                               ; preds = %47, %32
  ret void
}

declare dso_local i64 @fio_listen(%struct.fio_listen_args* byval(%struct.fio_listen_args) align 8) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_on_open(i64, i8*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i8*, i8** %4, align 8
  call void @http_on_server_protocol_http1(i64 %5, i8* %6, i8* null)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_on_finish(i64, i8*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.http_settings_s*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.http_settings_s*
  store %struct.http_settings_s* %7, %struct.http_settings_s** %5, align 8
  %8 = load %struct.http_settings_s*, %struct.http_settings_s** %5, align 8
  %9 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %8, i32 0, i32 3
  %10 = load void (%struct.http_settings_s*)*, void (%struct.http_settings_s*)** %9, align 8
  %11 = icmp ne void (%struct.http_settings_s*)* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.http_settings_s*, %struct.http_settings_s** %5, align 8
  %14 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %13, i32 0, i32 3
  %15 = load void (%struct.http_settings_s*)*, void (%struct.http_settings_s*)** %14, align 8
  %16 = load %struct.http_settings_s*, %struct.http_settings_s** %5, align 8
  call void %15(%struct.http_settings_s* %16)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.http_settings_s*, %struct.http_settings_s** %5, align 8
  call void @http_settings_free(%struct.http_settings_s* %18)
  %19 = load i64, i64* %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_peer_addr(%struct.fio_str_info_s* noalias sret, %struct.http_s*) #0 {
  %3 = alloca %struct.http_s*, align 8
  store %struct.http_s* %1, %struct.http_s** %3, align 8
  %4 = load %struct.http_s*, %struct.http_s** %3, align 8
  %5 = getelementptr inbounds %struct.http_s, %struct.http_s* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.http_fio_protocol_s*
  %9 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  call void @fio_peer_addr(%struct.fio_str_info_s* sret %0, i64 %10)
  ret void
}

declare dso_local void @fio_peer_addr(%struct.fio_str_info_s* sret, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_connect(i8*, i8*, %struct.http_settings_s* byval(%struct.http_settings_s) align 8) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca %struct.fio_url_s, align 8
  %16 = alloca %struct.http_settings_s*, align 8
  %17 = alloca %struct.http_s*, align 8
  %18 = alloca %struct.fio_str_info_s, align 8
  %19 = alloca %struct.fio_str_info_s, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.fio_connect_args, align 8
  %22 = alloca %struct.fio_connect_args, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  %23 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 2
  %24 = load void (%struct.http_s*)*, void (%struct.http_s*)** %23, align 8
  %25 = icmp ne void (%struct.http_s*)* %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 1
  %28 = load void (%struct.http_s*, i8*, i64)*, void (%struct.http_s*, i8*, i64)** %27, align 8
  %29 = icmp ne void (%struct.http_s*, i8*, i64)* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %33 = icmp sle i32 2, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.32, i64 0, i64 0))
  br label %35

35:                                               ; preds = %34, %31
  br label %36

36:                                               ; preds = %35
  %37 = call i32* @__errno_location() #10
  store i32 22, i32* %37, align 4
  br label %422

38:                                               ; preds = %26, %3
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i64 0, i64* %14, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %47 = icmp sle i32 2, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0))
  br label %49

49:                                               ; preds = %48, %45
  br label %50

50:                                               ; preds = %49
  %51 = call i32* @__errno_location() #10
  store i32 22, i32* %51, align 4
  br label %422

52:                                               ; preds = %41, %38
  %53 = load i8*, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %308

55:                                               ; preds = %52
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 @strlen(i8* %57) #9
  call void @fio_url_parse(%struct.fio_url_s* sret %15, i8* %56, i64 %58)
  %59 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %60 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %104

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %65 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 2
  br i1 %67, label %81, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %70 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %73, label %104

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %75 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 115
  br i1 %80, label %81, label %104

81:                                               ; preds = %73, %63
  %82 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %83 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 119
  br i1 %88, label %89, label %104

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %91 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 115
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  store i8 1, i8* %12, align 1
  %98 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %99 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 3
  %102 = zext i1 %101 to i32
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %13, align 1
  br label %167

104:                                              ; preds = %89, %81, %73, %68, %55
  %105 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %106 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %166

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %111 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 4
  br i1 %113, label %127, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %116 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 5
  br i1 %118, label %119, label %166

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %121 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 4
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 115
  br i1 %126, label %127, label %166

127:                                              ; preds = %119, %109
  %128 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %129 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 104
  br i1 %134, label %135, label %166

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %137 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 116
  br i1 %142, label %143, label %166

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %145 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 2
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 116
  br i1 %150, label %151, label %166

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %153 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 3
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 112
  br i1 %158, label %159, label %166

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %161 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 5
  %164 = zext i1 %163 to i32
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %13, align 1
  br label %166

166:                                              ; preds = %159, %151, %143, %135, %127, %119, %114, %104
  br label %167

167:                                              ; preds = %166, %97
  %168 = load i8, i8* %13, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %190

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 10
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %190, label %175

175:                                              ; preds = %171
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %178 = icmp sle i32 2, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %181 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 0
  %185 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.34, i64 0, i64 0), i32 %183, i8* %186)
  br label %187

187:                                              ; preds = %179, %176
  br label %188

188:                                              ; preds = %187
  %189 = call i32* @__errno_location() #10
  store i32 22, i32* %189, align 4
  br label %422

190:                                              ; preds = %171, %167
  %191 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 5
  %192 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 5
  %197 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 5
  %200 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = call i64 @strlen(i8* %201) #9
  %203 = call i64 @fiobj_str_new(i8* %198, i64 %202)
  store i64 %203, i64* %14, align 8
  br label %204

204:                                              ; preds = %195, %190
  %205 = load i8*, i8** %6, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load i8*, i8** %6, align 8
  store i8* %208, i8** %9, align 8
  %209 = load i8*, i8** %9, align 8
  %210 = call i64 @strlen(i8* %209) #9
  store i64 %210, i64* %7, align 8
  store i64 %210, i64* %8, align 8
  %211 = load i8*, i8** %9, align 8
  store i8* %211, i8** %11, align 8
  br label %295

212:                                              ; preds = %204
  %213 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 3
  %214 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %213, i32 0, i32 2
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %225, label %217

217:                                              ; preds = %212
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %220 = icmp sle i32 2, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0))
  br label %222

222:                                              ; preds = %221, %218
  br label %223

223:                                              ; preds = %222
  %224 = call i32* @__errno_location() #10
  store i32 22, i32* %224, align 4
  br label %422

225:                                              ; preds = %212
  %226 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 3
  %227 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %228, 1
  %230 = call noalias i8* @fio_malloc(i64 %229)
  %231 = ptrtoint i8* %230 to i64
  %232 = and i64 %231, 15
  %233 = icmp eq i64 %232, 0
  call void @llvm.assume(i1 %233)
  store i8* %230, i8** %9, align 8
  %234 = load i8*, i8** %9, align 8
  %235 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 3
  %236 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %235, i32 0, i32 2
  %237 = load i8*, i8** %236, align 8
  %238 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 3
  %239 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %234, i8* align 1 %237, i64 %240, i1 false)
  %241 = load i8*, i8** %9, align 8
  %242 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 3
  %243 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds i8, i8* %241, i64 %244
  store i8 0, i8* %245, align 1
  %246 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 3
  %247 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %7, align 8
  %249 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 4
  %250 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %249, i32 0, i32 2
  %251 = load i8*, i8** %250, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %274

253:                                              ; preds = %225
  %254 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 4
  %255 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = add i64 %256, 1
  %258 = call noalias i8* @fio_malloc(i64 %257)
  %259 = ptrtoint i8* %258 to i64
  %260 = and i64 %259, 15
  %261 = icmp eq i64 %260, 0
  call void @llvm.assume(i1 %261)
  store i8* %258, i8** %10, align 8
  %262 = load i8*, i8** %10, align 8
  %263 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 4
  %264 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %263, i32 0, i32 2
  %265 = load i8*, i8** %264, align 8
  %266 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 4
  %267 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %262, i8* align 1 %265, i64 %268, i1 false)
  %269 = load i8*, i8** %10, align 8
  %270 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 4
  %271 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds i8, i8* %269, i64 %272
  store i8 0, i8* %273, align 1
  br label %294

274:                                              ; preds = %225
  %275 = load i8, i8* %13, align 1
  %276 = icmp ne i8 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %274
  %278 = call noalias i8* @fio_malloc(i64 4)
  %279 = ptrtoint i8* %278 to i64
  %280 = and i64 %279, 15
  %281 = icmp eq i64 %280, 0
  call void @llvm.assume(i1 %281)
  store i8* %278, i8** %10, align 8
  %282 = load i8*, i8** %10, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %282, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i64 3, i1 false)
  %283 = load i8*, i8** %10, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 3
  store i8 0, i8* %284, align 1
  br label %293

285:                                              ; preds = %274
  %286 = call noalias i8* @fio_malloc(i64 3)
  %287 = ptrtoint i8* %286 to i64
  %288 = and i64 %287, 15
  %289 = icmp eq i64 %288, 0
  call void @llvm.assume(i1 %289)
  store i8* %286, i8** %10, align 8
  %290 = load i8*, i8** %10, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %290, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i64 2, i1 false)
  %291 = load i8*, i8** %10, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 2
  store i8 0, i8* %292, align 1
  br label %293

293:                                              ; preds = %285, %277
  br label %294

294:                                              ; preds = %293, %253
  br label %295

295:                                              ; preds = %294, %207
  %296 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 3
  %297 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %296, i32 0, i32 2
  %298 = load i8*, i8** %297, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %307

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 3
  %302 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %301, i32 0, i32 2
  %303 = load i8*, i8** %302, align 8
  store i8* %303, i8** %11, align 8
  %304 = getelementptr inbounds %struct.fio_url_s, %struct.fio_url_s* %15, i32 0, i32 3
  %305 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %8, align 8
  br label %307

307:                                              ; preds = %300, %295
  br label %308

308:                                              ; preds = %307, %52
  %309 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 15
  %310 = load i8, i8* %309, align 8
  %311 = icmp ne i8 %310, 0
  br i1 %311, label %314, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 15
  store i8 30, i8* %313, align 8
  br label %314

314:                                              ; preds = %312, %308
  %315 = call %struct.http_settings_s* @http_settings_new(%struct.http_settings_s* byval(%struct.http_settings_s) align 8 %2)
  store %struct.http_settings_s* %315, %struct.http_settings_s** %16, align 8
  %316 = load %struct.http_settings_s*, %struct.http_settings_s** %16, align 8
  %317 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %316, i32 0, i32 18
  store i8 1, i8* %317, align 1
  %318 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 16
  %319 = load i8, i8* %318, align 1
  %320 = icmp ne i8 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %314
  %322 = load %struct.http_settings_s*, %struct.http_settings_s** %16, align 8
  %323 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %322, i32 0, i32 16
  store i8 0, i8* %323, align 1
  br label %324

324:                                              ; preds = %321, %314
  %325 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 15
  %326 = load i8, i8* %325, align 8
  %327 = icmp ne i8 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %324
  %329 = load %struct.http_settings_s*, %struct.http_settings_s** %16, align 8
  %330 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %329, i32 0, i32 15
  store i8 0, i8* %330, align 8
  br label %331

331:                                              ; preds = %328, %324
  %332 = call noalias i8* @fio_malloc(i64 128)
  %333 = ptrtoint i8* %332 to i64
  %334 = and i64 %333, 15
  %335 = icmp eq i64 %334, 0
  call void @llvm.assume(i1 %335)
  %336 = bitcast i8* %332 to %struct.http_s*
  store %struct.http_s* %336, %struct.http_s** %17, align 8
  %337 = load %struct.http_s*, %struct.http_s** %17, align 8
  %338 = icmp ne %struct.http_s* %337, null
  br i1 %338, label %346, label %339

339:                                              ; preds = %331
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %342 = icmp sle i32 1, %341
  br i1 %342, label %343, label %344

343:                                              ; preds = %340
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.37, i64 0, i64 0))
  br label %344

344:                                              ; preds = %343, %340
  br label %345

345:                                              ; preds = %344
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0))
  call void @exit(i32 -1) #8
  unreachable

346:                                              ; preds = %331
  %347 = load %struct.http_s*, %struct.http_s** %17, align 8
  %348 = call i8* @http1_vtable()
  %349 = bitcast i8* %348 to %struct.http_vtable_s*
  call void @http_s_new(%struct.http_s* %347, %struct.http_fio_protocol_s* null, %struct.http_vtable_s* %349)
  %350 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 4
  %351 = load i8*, i8** %350, align 8
  %352 = load %struct.http_s*, %struct.http_s** %17, align 8
  %353 = getelementptr inbounds %struct.http_s, %struct.http_s* %352, i32 0, i32 12
  store i8* %351, i8** %353, align 8
  %354 = load %struct.http_s*, %struct.http_s** %17, align 8
  %355 = getelementptr inbounds %struct.http_s, %struct.http_s* %354, i32 0, i32 5
  store i64 0, i64* %355, align 8
  %356 = load i64, i64* %14, align 8
  %357 = load %struct.http_s*, %struct.http_s** %17, align 8
  %358 = getelementptr inbounds %struct.http_s, %struct.http_s* %357, i32 0, i32 6
  store i64 %356, i64* %358, align 8
  %359 = load %struct.http_s*, %struct.http_s** %17, align 8
  %360 = bitcast %struct.http_s* %359 to i8*
  %361 = load %struct.http_settings_s*, %struct.http_settings_s** %16, align 8
  %362 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %361, i32 0, i32 4
  store i8* %360, i8** %362, align 8
  %363 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 10
  %364 = load i8*, i8** %363, align 8
  %365 = load %struct.http_settings_s*, %struct.http_settings_s** %16, align 8
  %366 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %365, i32 0, i32 10
  store i8* %364, i8** %366, align 8
  %367 = load i8*, i8** %11, align 8
  %368 = icmp ne i8* %367, null
  br i1 %368, label %369, label %380

369:                                              ; preds = %346
  %370 = load %struct.http_s*, %struct.http_s** %17, align 8
  %371 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %18, i32 0, i32 0
  store i64 0, i64* %371, align 8
  %372 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %18, i32 0, i32 1
  store i64 4, i64* %372, align 8
  %373 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %18, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8** %373, align 8
  %374 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 0
  store i64 0, i64* %374, align 8
  %375 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 1
  %376 = load i64, i64* %8, align 8
  store i64 %376, i64* %375, align 8
  %377 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %19, i32 0, i32 2
  %378 = load i8*, i8** %11, align 8
  store i8* %378, i8** %377, align 8
  %379 = call i32 @http_set_header2(%struct.http_s* %370, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %18, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %19)
  br label %380

380:                                              ; preds = %369, %346
  %381 = load i8, i8* %12, align 1
  %382 = icmp ne i8 %381, 0
  br i1 %382, label %383, label %398

383:                                              ; preds = %380
  %384 = getelementptr inbounds %struct.fio_connect_args, %struct.fio_connect_args* %21, i32 0, i32 0
  %385 = load i8*, i8** %9, align 8
  store i8* %385, i8** %384, align 8
  %386 = getelementptr inbounds %struct.fio_connect_args, %struct.fio_connect_args* %21, i32 0, i32 1
  %387 = load i8*, i8** %10, align 8
  store i8* %387, i8** %386, align 8
  %388 = getelementptr inbounds %struct.fio_connect_args, %struct.fio_connect_args* %21, i32 0, i32 2
  store void (i64, i8*)* @http_on_open_client, void (i64, i8*)** %388, align 8
  %389 = getelementptr inbounds %struct.fio_connect_args, %struct.fio_connect_args* %21, i32 0, i32 3
  store void (i64, i8*)* @http_on_client_failed, void (i64, i8*)** %389, align 8
  %390 = getelementptr inbounds %struct.fio_connect_args, %struct.fio_connect_args* %21, i32 0, i32 4
  %391 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 10
  %392 = load i8*, i8** %391, align 8
  store i8* %392, i8** %390, align 8
  %393 = getelementptr inbounds %struct.fio_connect_args, %struct.fio_connect_args* %21, i32 0, i32 5
  %394 = load %struct.http_settings_s*, %struct.http_settings_s** %16, align 8
  %395 = bitcast %struct.http_settings_s* %394 to i8*
  store i8* %395, i8** %393, align 8
  %396 = getelementptr inbounds %struct.fio_connect_args, %struct.fio_connect_args* %21, i32 0, i32 6
  store i8 0, i8* %396, align 8
  %397 = call i64 @fio_connect(%struct.fio_connect_args* byval(%struct.fio_connect_args) align 8 %21)
  store i64 %397, i64* %20, align 8
  br label %413

398:                                              ; preds = %380
  %399 = getelementptr inbounds %struct.fio_connect_args, %struct.fio_connect_args* %22, i32 0, i32 0
  %400 = load i8*, i8** %9, align 8
  store i8* %400, i8** %399, align 8
  %401 = getelementptr inbounds %struct.fio_connect_args, %struct.fio_connect_args* %22, i32 0, i32 1
  %402 = load i8*, i8** %10, align 8
  store i8* %402, i8** %401, align 8
  %403 = getelementptr inbounds %struct.fio_connect_args, %struct.fio_connect_args* %22, i32 0, i32 2
  store void (i64, i8*)* @http_on_open_client, void (i64, i8*)** %403, align 8
  %404 = getelementptr inbounds %struct.fio_connect_args, %struct.fio_connect_args* %22, i32 0, i32 3
  store void (i64, i8*)* @http_on_client_failed, void (i64, i8*)** %404, align 8
  %405 = getelementptr inbounds %struct.fio_connect_args, %struct.fio_connect_args* %22, i32 0, i32 4
  %406 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 10
  %407 = load i8*, i8** %406, align 8
  store i8* %407, i8** %405, align 8
  %408 = getelementptr inbounds %struct.fio_connect_args, %struct.fio_connect_args* %22, i32 0, i32 5
  %409 = load %struct.http_settings_s*, %struct.http_settings_s** %16, align 8
  %410 = bitcast %struct.http_settings_s* %409 to i8*
  store i8* %410, i8** %408, align 8
  %411 = getelementptr inbounds %struct.fio_connect_args, %struct.fio_connect_args* %22, i32 0, i32 6
  store i8 0, i8* %411, align 8
  %412 = call i64 @fio_connect(%struct.fio_connect_args* byval(%struct.fio_connect_args) align 8 %22)
  store i64 %412, i64* %20, align 8
  br label %413

413:                                              ; preds = %398, %383
  %414 = load i8*, i8** %9, align 8
  %415 = load i8*, i8** %6, align 8
  %416 = icmp ne i8* %414, %415
  br i1 %416, label %417, label %419

417:                                              ; preds = %413
  %418 = load i8*, i8** %9, align 8
  call void @fio_free(i8* %418)
  br label %419

419:                                              ; preds = %417, %413
  %420 = load i8*, i8** %10, align 8
  call void @fio_free(i8* %420)
  %421 = load i64, i64* %20, align 8
  store i64 %421, i64* %4, align 8
  br label %430

422:                                              ; preds = %223, %188, %50, %36
  %423 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 3
  %424 = load void (%struct.http_settings_s*)*, void (%struct.http_settings_s*)** %423, align 8
  %425 = icmp ne void (%struct.http_settings_s*)* %424, null
  br i1 %425, label %426, label %429

426:                                              ; preds = %422
  %427 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %2, i32 0, i32 3
  %428 = load void (%struct.http_settings_s*)*, void (%struct.http_settings_s*)** %427, align 8
  call void %428(%struct.http_settings_s* %2)
  br label %429

429:                                              ; preds = %426, %422
  store i64 -1, i64* %4, align 8
  br label %430

430:                                              ; preds = %429, %419
  %431 = load i64, i64* %4, align 8
  ret i64 %431
}

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #7

declare dso_local void @fio_url_parse(%struct.fio_url_s* sret, i8*, i64) #4

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #6

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

declare dso_local i8* @http1_vtable() #4

declare dso_local i64 @fio_connect(%struct.fio_connect_args* byval(%struct.fio_connect_args) align 8) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_on_open_client(i64, i8*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i8*, i8** %4, align 8
  call void @http_on_open_client_http1(i64 %5, i8* %6, i8* null)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_on_client_failed(i64, i8*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.http_settings_s*, align 8
  %6 = alloca %struct.http_s*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.http_settings_s*
  store %struct.http_settings_s* %8, %struct.http_settings_s** %5, align 8
  %9 = load %struct.http_settings_s*, %struct.http_settings_s** %5, align 8
  %10 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %9, i32 0, i32 4
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.http_s*
  store %struct.http_s* %12, %struct.http_s** %6, align 8
  %13 = load %struct.http_s*, %struct.http_s** %6, align 8
  %14 = getelementptr inbounds %struct.http_s, %struct.http_s* %13, i32 0, i32 12
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.http_settings_s*, %struct.http_settings_s** %5, align 8
  %17 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load %struct.http_s*, %struct.http_s** %6, align 8
  call void @http_s_destroy(%struct.http_s* %18, i8 zeroext 0)
  %19 = load %struct.http_s*, %struct.http_s** %6, align 8
  %20 = bitcast %struct.http_s* %19 to i8*
  call void @fio_free(i8* %20)
  %21 = load %struct.http_settings_s*, %struct.http_settings_s** %5, align 8
  %22 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %21, i32 0, i32 3
  %23 = load void (%struct.http_settings_s*)*, void (%struct.http_settings_s*)** %22, align 8
  %24 = icmp ne void (%struct.http_settings_s*)* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.http_settings_s*, %struct.http_settings_s** %5, align 8
  %27 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %26, i32 0, i32 3
  %28 = load void (%struct.http_settings_s*)*, void (%struct.http_settings_s*)** %27, align 8
  %29 = load %struct.http_settings_s*, %struct.http_settings_s** %5, align 8
  call void %28(%struct.http_settings_s* %29)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.http_settings_s*, %struct.http_settings_s** %5, align 8
  call void @http_settings_free(%struct.http_settings_s* %31)
  %32 = load i64, i64* %3, align 8
  ret void
}

declare dso_local void @fio_free(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @websocket_connect(i8*, %struct.websocket_settings_s* byval(%struct.websocket_settings_s) align 8) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.websocket_settings_s*, align 8
  %5 = alloca %struct.http_settings_s, align 8
  store i8* %0, i8** %3, align 8
  %6 = call noalias i8* @fio_malloc(i64 48)
  %7 = ptrtoint i8* %6 to i64
  %8 = and i64 %7, 15
  %9 = icmp eq i64 %8, 0
  call void @llvm.assume(i1 %9)
  %10 = bitcast i8* %6 to %struct.websocket_settings_s*
  store %struct.websocket_settings_s* %10, %struct.websocket_settings_s** %4, align 8
  %11 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %4, align 8
  %12 = bitcast %struct.websocket_settings_s* %11 to i8*
  %13 = bitcast %struct.websocket_settings_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 48, i1 false)
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast %struct.http_settings_s* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 128, i1 false)
  %16 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %5, i32 0, i32 0
  store void (%struct.http_s*)* @on_websocket_http_connected, void (%struct.http_s*)** %16, align 8
  %17 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %5, i32 0, i32 2
  store void (%struct.http_s*)* @on_websocket_http_connected, void (%struct.http_s*)** %17, align 8
  %18 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %5, i32 0, i32 3
  store void (%struct.http_settings_s*)* @on_websocket_http_connection_finished, void (%struct.http_settings_s*)** %18, align 8
  %19 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %5, i32 0, i32 4
  %20 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %4, align 8
  %21 = bitcast %struct.websocket_settings_s* %20 to i8*
  store i8* %21, i8** %19, align 8
  %22 = call i64 @http_connect(i8* %14, i8* null, %struct.http_settings_s* byval(%struct.http_settings_s) align 8 %5)
  %23 = trunc i64 %22 to i32
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_websocket_http_connected(%struct.http_s*) #0 {
  %2 = alloca %struct.http_s*, align 8
  %3 = alloca %struct.websocket_settings_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  %4 = load %struct.http_s*, %struct.http_s** %2, align 8
  %5 = getelementptr inbounds %struct.http_s, %struct.http_s* %4, i32 0, i32 12
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.websocket_settings_s*
  store %struct.websocket_settings_s* %7, %struct.websocket_settings_s** %3, align 8
  %8 = load %struct.http_s*, %struct.http_s** %2, align 8
  %9 = call %struct.http_settings_s* @http_settings(%struct.http_s* %8)
  %10 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %9, i32 0, i32 4
  store i8* null, i8** %10, align 8
  %11 = load %struct.http_s*, %struct.http_s** %2, align 8
  %12 = getelementptr inbounds %struct.http_s, %struct.http_s* %11, i32 0, i32 12
  store i8* null, i8** %12, align 8
  %13 = load %struct.http_s*, %struct.http_s** %2, align 8
  %14 = getelementptr inbounds %struct.http_s, %struct.http_s* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %20 = icmp sle i32 3, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.135, i64 0, i64 0))
  br label %22

22:                                               ; preds = %21, %18
  br label %23

23:                                               ; preds = %22
  %24 = call i64 @fiobj_str_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0), i64 1)
  %25 = load %struct.http_s*, %struct.http_s** %2, align 8
  %26 = getelementptr inbounds %struct.http_s, %struct.http_s* %25, i32 0, i32 6
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.http_s*, %struct.http_s** %2, align 8
  %29 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8
  %30 = call i32 @http_upgrade2ws(%struct.http_s* %28, %struct.websocket_settings_s* byval(%struct.websocket_settings_s) align 8 %29)
  %31 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8
  %32 = bitcast %struct.websocket_settings_s* %31 to i8*
  call void @fio_free(i8* %32)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_websocket_http_connection_finished(%struct.http_settings_s*) #0 {
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
  br i1 %9, label %10, label %25

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
  %23 = load %struct.websocket_settings_s*, %struct.websocket_settings_s** %3, align 8
  %24 = bitcast %struct.websocket_settings_s* %23 to i8*
  call void @fio_free(i8* %24)
  br label %25

25:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_sse_subscribe(%struct.http_sse_s*, %struct.http_sse_subscribe_args* byval(%struct.http_sse_subscribe_args) align 8) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.http_sse_s*, align 8
  %5 = alloca %struct.http_sse_internal_s*, align 8
  %6 = alloca %struct.http_sse_subscribe_args*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.subscription_s*, align 8
  %10 = alloca %struct.subscribe_args_s, align 8
  %11 = alloca %struct.fio_ls_s*, align 8
  store %struct.http_sse_s* %0, %struct.http_sse_s** %4, align 8
  %12 = load %struct.http_sse_s*, %struct.http_sse_s** %4, align 8
  %13 = ptrtoint %struct.http_sse_s* %12 to i64
  %14 = sub i64 %13, 0
  %15 = inttoptr i64 %14 to %struct.http_sse_internal_s*
  store %struct.http_sse_internal_s* %15, %struct.http_sse_internal_s** %5, align 8
  %16 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8
  %17 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %88

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.http_sse_subscribe_args, %struct.http_sse_subscribe_args* %1, i32 0, i32 1
  %23 = load void (%struct.http_sse_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.http_sse_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %22, align 8
  %24 = icmp ne void (%struct.http_sse_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.http_sse_subscribe_args, %struct.http_sse_subscribe_args* %1, i32 0, i32 1
  store void (%struct.http_sse_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)* @http_sse_on_message__direct, void (%struct.http_sse_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %26, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = call noalias i8* @fio_malloc(i64 56)
  %29 = ptrtoint i8* %28 to i64
  %30 = and i64 %29, 15
  %31 = icmp eq i64 %30, 0
  call void @llvm.assume(i1 %31)
  %32 = bitcast i8* %28 to %struct.http_sse_subscribe_args*
  store %struct.http_sse_subscribe_args* %32, %struct.http_sse_subscribe_args** %6, align 8
  %33 = load %struct.http_sse_subscribe_args*, %struct.http_sse_subscribe_args** %6, align 8
  %34 = icmp ne %struct.http_sse_subscribe_args* %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %38 = icmp sle i32 1, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.40, i64 0, i64 0))
  br label %40

40:                                               ; preds = %39, %36
  br label %41

41:                                               ; preds = %40
  %42 = call i32 @kill(i32 0, i32 2) #1
  %43 = call i32* @__errno_location() #10
  %44 = load i32, i32* %43, align 4
  call void @exit(i32 %44) #8
  unreachable

45:                                               ; preds = %27
  %46 = load %struct.http_sse_subscribe_args*, %struct.http_sse_subscribe_args** %6, align 8
  %47 = bitcast %struct.http_sse_subscribe_args* %46 to i8*
  %48 = bitcast %struct.http_sse_subscribe_args* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 56, i1 false)
  %49 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8
  %50 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %49, i32 0, i32 6
  store i64 1, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = atomicrmw add i64* %50, i64 %51 seq_cst
  %53 = add i64 %52, %51
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %10, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %10, i32 0, i32 1
  %57 = getelementptr inbounds %struct.http_sse_subscribe_args, %struct.http_sse_subscribe_args* %1, i32 0, i32 0
  %58 = bitcast %struct.fio_str_info_s* %56 to i8*
  %59 = bitcast %struct.fio_str_info_s* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 24, i1 false)
  %60 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %10, i32 0, i32 2
  %61 = getelementptr inbounds %struct.http_sse_subscribe_args, %struct.http_sse_subscribe_args* %1, i32 0, i32 4
  %62 = load i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)*, i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)** %61, align 8
  store i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)* %62, i32 (%struct.fio_str_info_s*, %struct.fio_str_info_s*)** %60, align 8
  %63 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %10, i32 0, i32 3
  store void (%struct.fio_msg_s*)* @http_sse_on_message, void (%struct.fio_msg_s*)** %63, align 8
  %64 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %10, i32 0, i32 4
  store void (i8*, i8*)* @http_sse_on_unsubscribe, void (i8*, i8*)** %64, align 8
  %65 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %10, i32 0, i32 5
  %66 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8
  %67 = bitcast %struct.http_sse_internal_s* %66 to i8*
  store i8* %67, i8** %65, align 8
  %68 = getelementptr inbounds %struct.subscribe_args_s, %struct.subscribe_args_s* %10, i32 0, i32 6
  %69 = load %struct.http_sse_subscribe_args*, %struct.http_sse_subscribe_args** %6, align 8
  %70 = bitcast %struct.http_sse_subscribe_args* %69 to i8*
  store i8* %70, i8** %68, align 8
  %71 = call %struct.subscription_s* @fio_subscribe(%struct.subscribe_args_s* byval(%struct.subscribe_args_s) align 8 %10)
  store %struct.subscription_s* %71, %struct.subscription_s** %9, align 8
  %72 = load %struct.subscription_s*, %struct.subscription_s** %9, align 8
  %73 = icmp ne %struct.subscription_s* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %45
  store i64 0, i64* %3, align 8
  br label %88

75:                                               ; preds = %45
  %76 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8
  %77 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %76, i32 0, i32 5
  call void @fio_lock(i8* %77)
  %78 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8
  %79 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %78, i32 0, i32 4
  %80 = load %struct.subscription_s*, %struct.subscription_s** %9, align 8
  %81 = bitcast %struct.subscription_s* %80 to i8*
  %82 = call %struct.fio_ls_s* @fio_ls_push(%struct.fio_ls_s* %79, i8* %81)
  store %struct.fio_ls_s* %82, %struct.fio_ls_s** %11, align 8
  %83 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8
  %84 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %83, i32 0, i32 5
  %85 = call i32 @fio_unlock(i8* %84)
  %86 = load %struct.fio_ls_s*, %struct.fio_ls_s** %11, align 8
  %87 = ptrtoint %struct.fio_ls_s* %86 to i64
  store i64 %87, i64* %3, align 8
  br label %88

88:                                               ; preds = %75, %74, %20
  %89 = load i64, i64* %3, align 8
  ret i64 %89
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_sse_on_message__direct(%struct.http_sse_s*, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8, i8*) #0 {
  %5 = alloca %struct.http_sse_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_sse_write_args, align 8
  store %struct.http_sse_s* %0, %struct.http_sse_s** %5, align 8
  store i8* %3, i8** %6, align 8
  %8 = load %struct.http_sse_s*, %struct.http_sse_s** %5, align 8
  %9 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %7, i32 0, i32 0
  %10 = bitcast %struct.fio_str_info_s* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %7, i32 0, i32 1
  %12 = bitcast %struct.fio_str_info_s* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %7, i32 0, i32 2
  %14 = bitcast %struct.fio_str_info_s* %13 to i8*
  %15 = bitcast %struct.fio_str_info_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  %16 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %7, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = call i32 @http_sse_write(%struct.http_sse_s* %8, %struct.http_sse_write_args* byval(%struct.http_sse_write_args) align 8 %7)
  %18 = load i8*, i8** %6, align 8
  ret void
}

declare dso_local %struct.subscription_s* @fio_subscribe(%struct.subscribe_args_s* byval(%struct.subscribe_args_s) align 8) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_sse_on_message(%struct.fio_msg_s*) #0 {
  %2 = alloca %struct.fio_msg_s*, align 8
  %3 = alloca %struct.http_sse_internal_s*, align 8
  %4 = alloca %struct.http_sse_subscribe_args*, align 8
  %5 = alloca %struct.fio_protocol_s*, align 8
  store %struct.fio_msg_s* %0, %struct.fio_msg_s** %2, align 8
  %6 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8
  %7 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %6, i32 0, i32 3
  %8 = load i8*, i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.http_sse_internal_s*
  store %struct.http_sse_internal_s* %9, %struct.http_sse_internal_s** %3, align 8
  %10 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8
  %11 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %10, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.http_sse_subscribe_args*
  store %struct.http_sse_subscribe_args* %13, %struct.http_sse_subscribe_args** %4, align 8
  %14 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %3, align 8
  %15 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.fio_protocol_s* @fio_protocol_try_lock(i64 %16, i32 0)
  store %struct.fio_protocol_s* %17, %struct.fio_protocol_s** %5, align 8
  %18 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %5, align 8
  %19 = icmp ne %struct.fio_protocol_s* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.http_sse_subscribe_args*, %struct.http_sse_subscribe_args** %4, align 8
  %23 = getelementptr inbounds %struct.http_sse_subscribe_args, %struct.http_sse_subscribe_args* %22, i32 0, i32 1
  %24 = load void (%struct.http_sse_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)*, void (%struct.http_sse_s*, %struct.fio_str_info_s*, %struct.fio_str_info_s*, i8*)** %23, align 8
  %25 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %3, align 8
  %26 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %25, i32 0, i32 0
  %27 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8
  %28 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %27, i32 0, i32 1
  %29 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8
  %30 = getelementptr inbounds %struct.fio_msg_s, %struct.fio_msg_s* %29, i32 0, i32 2
  %31 = load %struct.http_sse_subscribe_args*, %struct.http_sse_subscribe_args** %4, align 8
  %32 = getelementptr inbounds %struct.http_sse_subscribe_args, %struct.http_sse_subscribe_args* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  call void %24(%struct.http_sse_s* %26, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %28, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %30, i8* %33)
  %34 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %5, align 8
  call void @fio_protocol_unlock(%struct.fio_protocol_s* %34, i32 0)
  br label %42

35:                                               ; preds = %20
  %36 = call i32* @__errno_location() #10
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 9
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %42

40:                                               ; preds = %35
  %41 = load %struct.fio_msg_s*, %struct.fio_msg_s** %2, align 8
  call void @fio_message_defer(%struct.fio_msg_s* %41)
  br label %42

42:                                               ; preds = %40, %39, %21
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_sse_on_unsubscribe(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.http_sse_internal_s*, align 8
  %6 = alloca %struct.http_sse_subscribe_args*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.http_sse_internal_s*
  store %struct.http_sse_internal_s* %8, %struct.http_sse_internal_s** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.http_sse_subscribe_args*
  store %struct.http_sse_subscribe_args* %10, %struct.http_sse_subscribe_args** %6, align 8
  %11 = load %struct.http_sse_subscribe_args*, %struct.http_sse_subscribe_args** %6, align 8
  %12 = getelementptr inbounds %struct.http_sse_subscribe_args, %struct.http_sse_subscribe_args* %11, i32 0, i32 2
  %13 = load void (i8*)*, void (i8*)** %12, align 8
  %14 = icmp ne void (i8*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.http_sse_subscribe_args*, %struct.http_sse_subscribe_args** %6, align 8
  %17 = getelementptr inbounds %struct.http_sse_subscribe_args, %struct.http_sse_subscribe_args* %16, i32 0, i32 2
  %18 = load void (i8*)*, void (i8*)** %17, align 8
  %19 = load %struct.http_sse_subscribe_args*, %struct.http_sse_subscribe_args** %6, align 8
  %20 = getelementptr inbounds %struct.http_sse_subscribe_args, %struct.http_sse_subscribe_args* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  call void %18(i8* %21)
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.http_sse_subscribe_args*, %struct.http_sse_subscribe_args** %6, align 8
  %24 = bitcast %struct.http_sse_subscribe_args* %23 to i8*
  call void @fio_free(i8* %24)
  %25 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8
  call void @http_sse_try_free(%struct.http_sse_internal_s* %25)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_lock(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %7, %1
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @fio_trylock(i8* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  call void @fio_reschedule_thread()
  br label %3

8:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fio_ls_s* @fio_ls_push(%struct.fio_ls_s*, i8*) #0 {
  %3 = alloca %struct.fio_ls_s*, align 8
  %4 = alloca %struct.fio_ls_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fio_ls_s*, align 8
  %7 = alloca %struct.fio_ls_s, align 8
  store %struct.fio_ls_s* %0, %struct.fio_ls_s** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8
  %9 = icmp ne %struct.fio_ls_s* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.fio_ls_s* null, %struct.fio_ls_s** %3, align 8
  br label %47

11:                                               ; preds = %2
  %12 = call noalias i8* @calloc(i64 24, i64 1) #1
  %13 = bitcast i8* %12 to %struct.fio_ls_s*
  store %struct.fio_ls_s* %13, %struct.fio_ls_s** %6, align 8
  %14 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8
  %15 = icmp ne %struct.fio_ls_s* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %19 = icmp sle i32 1, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.137, i64 0, i64 0))
  br label %21

21:                                               ; preds = %20, %17
  br label %22

22:                                               ; preds = %21
  %23 = call i32 @kill(i32 0, i32 2) #1
  %24 = call i32* @__errno_location() #10
  %25 = load i32, i32* %24, align 4
  call void @exit(i32 %25) #8
  unreachable

26:                                               ; preds = %11
  %27 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8
  %28 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %7, i32 0, i32 0
  %29 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8
  %30 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %29, i32 0, i32 0
  %31 = load %struct.fio_ls_s*, %struct.fio_ls_s** %30, align 8
  store %struct.fio_ls_s* %31, %struct.fio_ls_s** %28, align 8
  %32 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %7, i32 0, i32 1
  %33 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8
  store %struct.fio_ls_s* %33, %struct.fio_ls_s** %32, align 8
  %34 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %7, i32 0, i32 2
  %35 = load i8*, i8** %5, align 8
  store i8* %35, i8** %34, align 8
  %36 = bitcast %struct.fio_ls_s* %27 to i8*
  %37 = bitcast %struct.fio_ls_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 24, i1 false)
  %38 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8
  %39 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8
  %40 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %39, i32 0, i32 0
  %41 = load %struct.fio_ls_s*, %struct.fio_ls_s** %40, align 8
  %42 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %41, i32 0, i32 1
  store %struct.fio_ls_s* %38, %struct.fio_ls_s** %42, align 8
  %43 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8
  %44 = load %struct.fio_ls_s*, %struct.fio_ls_s** %4, align 8
  %45 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %44, i32 0, i32 0
  store %struct.fio_ls_s* %43, %struct.fio_ls_s** %45, align 8
  %46 = load %struct.fio_ls_s*, %struct.fio_ls_s** %6, align 8
  store %struct.fio_ls_s* %46, %struct.fio_ls_s** %3, align 8
  br label %47

47:                                               ; preds = %26, %10
  %48 = load %struct.fio_ls_s*, %struct.fio_ls_s** %3, align 8
  ret %struct.fio_ls_s* %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_unlock(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  %6 = load i8*, i8** %2, align 8
  store i8 0, i8* %4, align 1
  %7 = load i8, i8* %4, align 1
  %8 = atomicrmw volatile xchg i8* %6, i8 %7 seq_cst
  store i8 %8, i8* %5, align 1
  %9 = load i8, i8* %5, align 1
  store volatile i8 %9, i8* %3, align 1
  %10 = load volatile i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_sse_unsubscribe(%struct.http_sse_s*, i64) #0 {
  %3 = alloca %struct.http_sse_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.http_sse_internal_s*, align 8
  %6 = alloca %struct.subscription_s*, align 8
  store %struct.http_sse_s* %0, %struct.http_sse_s** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.http_sse_s*, %struct.http_sse_s** %3, align 8
  %8 = icmp ne %struct.http_sse_s* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %32

13:                                               ; preds = %9
  %14 = load %struct.http_sse_s*, %struct.http_sse_s** %3, align 8
  %15 = ptrtoint %struct.http_sse_s* %14 to i64
  %16 = sub i64 %15, 0
  %17 = inttoptr i64 %16 to %struct.http_sse_internal_s*
  store %struct.http_sse_internal_s* %17, %struct.http_sse_internal_s** %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = inttoptr i64 %18 to %struct.fio_ls_s*
  %20 = getelementptr inbounds %struct.fio_ls_s, %struct.fio_ls_s* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.subscription_s*
  store %struct.subscription_s* %22, %struct.subscription_s** %6, align 8
  %23 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8
  %24 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %23, i32 0, i32 5
  call void @fio_lock(i8* %24)
  %25 = load i64, i64* %4, align 8
  %26 = inttoptr i64 %25 to %struct.fio_ls_s*
  %27 = call i8* @fio_ls_remove(%struct.fio_ls_s* %26)
  %28 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8
  %29 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %28, i32 0, i32 5
  %30 = call i32 @fio_unlock(i8* %29)
  %31 = load %struct.subscription_s*, %struct.subscription_s** %6, align 8
  call void @fio_unsubscribe(%struct.subscription_s* %31)
  br label %32

32:                                               ; preds = %13, %12
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

declare dso_local void @fio_unsubscribe(%struct.subscription_s*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_upgrade2sse(%struct.http_s*, %struct.http_sse_s* byval(%struct.http_sse_s) align 8) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.http_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  %5 = load %struct.http_s*, %struct.http_s** %4, align 8
  %6 = icmp ne %struct.http_s* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load %struct.http_s*, %struct.http_s** %4, align 8
  %9 = getelementptr inbounds %struct.http_s, %struct.http_s* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = load %struct.http_s*, %struct.http_s** %4, align 8
  %14 = getelementptr inbounds %struct.http_s, %struct.http_s* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = load %struct.http_s*, %struct.http_s** %4, align 8
  %19 = getelementptr inbounds %struct.http_s, %struct.http_s* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17, %2
  %23 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %1, i32 0, i32 3
  %24 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %23, align 8
  %25 = icmp ne void (%struct.http_sse_s*)* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.http_sse_s, %struct.http_sse_s* %1, i32 0, i32 3
  %28 = load void (%struct.http_sse_s*)*, void (%struct.http_sse_s*)** %27, align 8
  call void %28(%struct.http_sse_s* %1)
  br label %29

29:                                               ; preds = %26, %22
  store i32 -1, i32* %3, align 4
  br label %40

30:                                               ; preds = %17, %12, %7
  %31 = load %struct.http_s*, %struct.http_s** %4, align 8
  %32 = getelementptr inbounds %struct.http_s, %struct.http_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to %struct.http_vtable_s*
  %36 = getelementptr inbounds %struct.http_vtable_s, %struct.http_vtable_s* %35, i32 0, i32 10
  %37 = load i32 (%struct.http_s*, %struct.http_sse_s*)*, i32 (%struct.http_s*, %struct.http_sse_s*)** %36, align 8
  %38 = load %struct.http_s*, %struct.http_s** %4, align 8
  %39 = call i32 %37(%struct.http_s* %38, %struct.http_sse_s* %1)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %29
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_sse_set_timout(%struct.http_sse_s*, i8 zeroext) #0 {
  %3 = alloca %struct.http_sse_s*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.http_sse_internal_s*, align 8
  store %struct.http_sse_s* %0, %struct.http_sse_s** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.http_sse_s*, %struct.http_sse_s** %3, align 8
  %7 = icmp ne %struct.http_sse_s* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %18

9:                                                ; preds = %2
  %10 = load %struct.http_sse_s*, %struct.http_sse_s** %3, align 8
  %11 = ptrtoint %struct.http_sse_s* %10 to i64
  %12 = sub i64 %11, 0
  %13 = inttoptr i64 %12 to %struct.http_sse_internal_s*
  store %struct.http_sse_internal_s* %13, %struct.http_sse_internal_s** %5, align 8
  %14 = load %struct.http_sse_internal_s*, %struct.http_sse_internal_s** %5, align 8
  %15 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i8, i8* %4, align 1
  call void @fio_timeout_set(i64 %16, i8 zeroext %17)
  br label %18

18:                                               ; preds = %9, %8
  ret void
}

declare dso_local void @fio_timeout_set(i64, i8 zeroext) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_sse_write(%struct.http_sse_s*, %struct.http_sse_write_args* byval(%struct.http_sse_write_args) align 8) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.http_sse_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.http_sse_s* %0, %struct.http_sse_s** %4, align 8
  %8 = load %struct.http_sse_s*, %struct.http_sse_s** %4, align 8
  %9 = icmp ne %struct.http_sse_s* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %1, i32 0, i32 0
  %12 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %1, i32 0, i32 2
  %15 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  %18 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %1, i32 0, i32 1
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %17, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %10
  %24 = load %struct.http_sse_s*, %struct.http_sse_s** %4, align 8
  %25 = ptrtoint %struct.http_sse_s* %24 to i64
  %26 = sub i64 %25, 0
  %27 = inttoptr i64 %26 to %struct.http_sse_internal_s*
  %28 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @fio_is_closed(i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23, %10, %2
  store i32 -1, i32* %3, align 4
  br label %89

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %1, i32 0, i32 0
  %35 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add i64 4, %36
  %38 = add i64 %37, 2
  %39 = add i64 %38, 7
  %40 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %1, i32 0, i32 1
  %41 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  %44 = add i64 %43, 2
  %45 = add i64 %44, 6
  %46 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %1, i32 0, i32 2
  %47 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %45, %48
  %50 = add i64 %49, 2
  %51 = add i64 %50, 7
  %52 = add i64 %51, 10
  %53 = add i64 %52, 4
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @fiobj_str_buf(i64 %54)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %1, i32 0, i32 0
  call void @http_sse_copy2str(i64 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i64 4, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %57)
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %1, i32 0, i32 1
  call void @http_sse_copy2str(i64 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i64 7, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %59)
  %60 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %1, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %33
  %64 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %1, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @fiobj_num_new(i64 %65)
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i64 @fiobj_str_write(i64 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), i64 7)
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i64 @fiobj_str_concat(i64 %69, i64 %70)
  %72 = load i64, i64* %7, align 8
  call void @fiobj_free(i64 %72)
  br label %73

73:                                               ; preds = %63, %33
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct.http_sse_write_args, %struct.http_sse_write_args* %1, i32 0, i32 2
  call void @http_sse_copy2str(i64 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i64 6, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8 %75)
  %76 = load i64, i64* %5, align 8
  %77 = call i64 @fiobj_str_write(i64 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 2)
  %78 = load %struct.http_sse_s*, %struct.http_sse_s** %4, align 8
  %79 = ptrtoint %struct.http_sse_s* %78 to i64
  %80 = sub i64 %79, 0
  %81 = inttoptr i64 %80 to %struct.http_sse_internal_s*
  %82 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %81, i32 0, i32 2
  %83 = load %struct.http_vtable_s*, %struct.http_vtable_s** %82, align 8
  %84 = getelementptr inbounds %struct.http_vtable_s, %struct.http_vtable_s* %83, i32 0, i32 11
  %85 = load i32 (%struct.http_sse_s*, i64)*, i32 (%struct.http_sse_s*, i64)** %84, align 8
  %86 = load %struct.http_sse_s*, %struct.http_sse_s** %4, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 %85(%struct.http_sse_s* %86, i64 %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %73, %32
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @fio_is_closed(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_sse_copy2str(i64, i8*, i64, %struct.fio_str_info_s* byval(%struct.fio_str_info_s) align 8) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %90

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %8, align 8
  br label %20

20:                                               ; preds = %78, %14
  %21 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %90

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @fiobj_str_write(i64 %25, i8* %26, i64 %27)
  %29 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %47, %24
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ult i8* %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 10
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 13
  br label %45

45:                                               ; preds = %40, %35, %31
  %46 = phi i1 [ false, %35 ], [ false, %31 ], [ %44, %40 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %9, align 8
  br label %31

50:                                               ; preds = %45
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %54 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = call i64 @fiobj_str_write(i64 %51, i8* %53, i64 %59)
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @fiobj_str_write(i64 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 2)
  %63 = load i8*, i8** %9, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 13
  br i1 %66, label %67, label %70

67:                                               ; preds = %50
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %9, align 8
  br label %70

70:                                               ; preds = %67, %50
  %71 = load i8*, i8** %9, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 10
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %9, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %79 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 %86, %84
  store i64 %87, i64* %85, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  store i8* %88, i8** %89, align 8
  br label %20

90:                                               ; preds = %13, %20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_sse2uuid(%struct.http_sse_s*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.http_sse_s*, align 8
  store %struct.http_sse_s* %0, %struct.http_sse_s** %3, align 8
  %4 = load %struct.http_sse_s*, %struct.http_sse_s** %3, align 8
  %5 = icmp ne %struct.http_sse_s* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load %struct.http_sse_s*, %struct.http_sse_s** %3, align 8
  %8 = ptrtoint %struct.http_sse_s* %7 to i64
  %9 = sub i64 %8, 0
  %10 = inttoptr i64 %9 to %struct.http_sse_internal_s*
  %11 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @fio_is_closed(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %6, %1
  store i64 -1, i64* %2, align 8
  br label %23

16:                                               ; preds = %6
  %17 = load %struct.http_sse_s*, %struct.http_sse_s** %3, align 8
  %18 = ptrtoint %struct.http_sse_s* %17 to i64
  %19 = sub i64 %18, 0
  %20 = inttoptr i64 %19 to %struct.http_sse_internal_s*
  %21 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %16, %15
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_sse_close(%struct.http_sse_s*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.http_sse_s*, align 8
  store %struct.http_sse_s* %0, %struct.http_sse_s** %3, align 8
  %4 = load %struct.http_sse_s*, %struct.http_sse_s** %3, align 8
  %5 = icmp ne %struct.http_sse_s* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load %struct.http_sse_s*, %struct.http_sse_s** %3, align 8
  %8 = ptrtoint %struct.http_sse_s* %7 to i64
  %9 = sub i64 %8, 0
  %10 = inttoptr i64 %9 to %struct.http_sse_internal_s*
  %11 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @fio_is_closed(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %6, %1
  store i32 -1, i32* %2, align 4
  br label %27

16:                                               ; preds = %6
  %17 = load %struct.http_sse_s*, %struct.http_sse_s** %3, align 8
  %18 = ptrtoint %struct.http_sse_s* %17 to i64
  %19 = sub i64 %18, 0
  %20 = inttoptr i64 %19 to %struct.http_sse_internal_s*
  %21 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %20, i32 0, i32 2
  %22 = load %struct.http_vtable_s*, %struct.http_vtable_s** %21, align 8
  %23 = getelementptr inbounds %struct.http_vtable_s, %struct.http_vtable_s* %22, i32 0, i32 12
  %24 = load i32 (%struct.http_sse_s*)*, i32 (%struct.http_sse_s*)** %23, align 8
  %25 = load %struct.http_sse_s*, %struct.http_sse_s** %3, align 8
  %26 = call i32 %24(%struct.http_sse_s* %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %16, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.http_sse_s* @http_sse_dup(%struct.http_sse_s*) #0 {
  %2 = alloca %struct.http_sse_s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.http_sse_s* %0, %struct.http_sse_s** %2, align 8
  %5 = load %struct.http_sse_s*, %struct.http_sse_s** %2, align 8
  %6 = ptrtoint %struct.http_sse_s* %5 to i64
  %7 = sub i64 %6, 0
  %8 = inttoptr i64 %7 to %struct.http_sse_internal_s*
  %9 = getelementptr inbounds %struct.http_sse_internal_s, %struct.http_sse_internal_s* %8, i32 0, i32 6
  store i64 1, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = atomicrmw add i64* %9, i64 %10 seq_cst
  %12 = add i64 %11, %10
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.http_sse_s*, %struct.http_sse_s** %2, align 8
  ret %struct.http_sse_s* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_sse_free(%struct.http_sse_s*) #0 {
  %2 = alloca %struct.http_sse_s*, align 8
  store %struct.http_sse_s* %0, %struct.http_sse_s** %2, align 8
  %3 = load %struct.http_sse_s*, %struct.http_sse_s** %2, align 8
  %4 = ptrtoint %struct.http_sse_s* %3 to i64
  %5 = sub i64 %4, 0
  %6 = inttoptr i64 %5 to %struct.http_sse_internal_s*
  call void @http_sse_try_free(%struct.http_sse_internal_s* %6)
  ret void
}

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
define dso_local void @http_parse_query(%struct.http_s*) #0 {
  %2 = alloca %struct.http_s*, align 8
  %3 = alloca %struct.fio_str_info_s, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  %6 = load %struct.http_s*, %struct.http_s** %2, align 8
  %7 = getelementptr inbounds %struct.http_s, %struct.http_s* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %124

11:                                               ; preds = %1
  %12 = load %struct.http_s*, %struct.http_s** %2, align 8
  %13 = getelementptr inbounds %struct.http_s, %struct.http_s* %12, i32 0, i32 10
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = call i64 @fiobj_hash_new()
  %18 = load %struct.http_s*, %struct.http_s** %2, align 8
  %19 = getelementptr inbounds %struct.http_s, %struct.http_s* %18, i32 0, i32 10
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.http_s*, %struct.http_s** %2, align 8
  %22 = getelementptr inbounds %struct.http_s, %struct.http_s* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %3, i64 %23)
  br label %24

24:                                               ; preds = %120, %20
  %25 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @memchr(i8* %26, i32 38, i64 %28) #9
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %32, %24
  %39 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %41 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = call i8* @memchr(i8* %40, i32 61, i64 %46) #9
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %38
  %51 = load %struct.http_s*, %struct.http_s** %2, align 8
  %52 = getelementptr inbounds %struct.http_s, %struct.http_s* %51, i32 0, i32 10
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %56 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8*, i8** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = ptrtoint i8* %64 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = call i32 @http_add2hash(i64 %53, i8* %55, i64 %61, i8* %63, i64 %69, i8 zeroext 1)
  br label %71

71:                                               ; preds = %50, %38
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 38
  br i1 %76, label %77, label %108

77:                                               ; preds = %71
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 97
  br i1 %82, label %83, label %104

83:                                               ; preds = %77
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 109
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 3
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 112
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 59
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 5
  store i8* %103, i8** %4, align 8
  br label %107

104:                                              ; preds = %95, %89, %83, %77
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8* %106, i8** %4, align 8
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %71
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = ptrtoint i8* %109 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub i64 %116, %114
  store i64 %117, i64* %115, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  store i8* %118, i8** %119, align 8
  br label %120

120:                                              ; preds = %108
  %121 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %24, label %124

124:                                              ; preds = %10, %120
  ret void
}

declare dso_local i64 @fiobj_hash_new() #4

; Function Attrs: nounwind readonly
declare dso_local i8* @memchr(i8*, i32, i64) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_add2hash(i64, i8*, i64, i8*, i64, i8 zeroext) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8 %5, i8* %12, align 1
  %13 = load i64, i64* %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i8, i8* %12, align 1
  %19 = call i64 @http_str2fiobj(i8* %16, i64 %17, i8 zeroext %18)
  %20 = load i8, i8* %12, align 1
  %21 = call i32 @http_add2hash2(i64 %13, i8* %14, i64 %15, i64 %19, i8 zeroext %20)
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_parse_cookies(%struct.http_s*, i8 zeroext) #0 {
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  store i8 %1, i8* %4, align 1
  %10 = load %struct.http_s*, %struct.http_s** %3, align 8
  %11 = getelementptr inbounds %struct.http_s, %struct.http_s* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %135

15:                                               ; preds = %2
  %16 = load %struct.http_s*, %struct.http_s** %3, align 8
  %17 = getelementptr inbounds %struct.http_s, %struct.http_s* %16, i32 0, i32 9
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.http_s*, %struct.http_s** %3, align 8
  %22 = getelementptr inbounds %struct.http_s, %struct.http_s* %21, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @fiobj_hash_count(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %29 = icmp sle i32 3, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.46, i64 0, i64 0))
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %31
  br label %135

33:                                               ; preds = %20, %15
  %34 = load i64, i64* @http_parse_cookies.setcookie_header_hash, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @HTTP_HEADER_SET_COOKIE, align 8
  %38 = call i64 @fiobj_obj2hash(i64 %37)
  store i64 %38, i64* @http_parse_cookies.setcookie_header_hash, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.http_s*, %struct.http_s** %3, align 8
  %41 = getelementptr inbounds %struct.http_s, %struct.http_s* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HTTP_HEADER_COOKIE, align 8
  %44 = call i64 @fiobj_obj2hash(i64 %43)
  %45 = call i64 @fiobj_hash_get2(i64 %42, i64 %44)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %87

48:                                               ; preds = %39
  %49 = load %struct.http_s*, %struct.http_s** %3, align 8
  %50 = getelementptr inbounds %struct.http_s, %struct.http_s* %49, i32 0, i32 9
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = call i64 @fiobj_hash_new()
  %55 = load %struct.http_s*, %struct.http_s** %3, align 8
  %56 = getelementptr inbounds %struct.http_s, %struct.http_s* %55, i32 0, i32 9
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @fiobj_type_is(i64 %58, i8 zeroext 41)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @fiobj_ary_count(i64 %62)
  store i64 %63, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %64

64:                                               ; preds = %76, %61
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load %struct.http_s*, %struct.http_s** %3, align 8
  %70 = getelementptr inbounds %struct.http_s, %struct.http_s* %69, i32 0, i32 9
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @fiobj_ary_index(i64 %72, i64 %73)
  %75 = load i8, i8* %4, align 1
  call void @http_parse_cookies_cookie_str(i64 %71, i64 %74, i8 zeroext %75)
  br label %76

76:                                               ; preds = %68
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %7, align 8
  br label %64

79:                                               ; preds = %64
  br label %86

80:                                               ; preds = %57
  %81 = load %struct.http_s*, %struct.http_s** %3, align 8
  %82 = getelementptr inbounds %struct.http_s, %struct.http_s* %81, i32 0, i32 9
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %5, align 8
  %85 = load i8, i8* %4, align 1
  call void @http_parse_cookies_cookie_str(i64 %83, i64 %84, i8 zeroext %85)
  br label %86

86:                                               ; preds = %80, %79
  br label %87

87:                                               ; preds = %86, %39
  %88 = load %struct.http_s*, %struct.http_s** %3, align 8
  %89 = getelementptr inbounds %struct.http_s, %struct.http_s* %88, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @HTTP_HEADER_SET_COOKIE, align 8
  %92 = call i64 @fiobj_obj2hash(i64 %91)
  %93 = call i64 @fiobj_hash_get2(i64 %90, i64 %92)
  store i64 %93, i64* %5, align 8
  %94 = load i64, i64* %5, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %135

96:                                               ; preds = %87
  %97 = load %struct.http_s*, %struct.http_s** %3, align 8
  %98 = getelementptr inbounds %struct.http_s, %struct.http_s* %97, i32 0, i32 9
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = call i64 @fiobj_hash_new()
  %103 = load %struct.http_s*, %struct.http_s** %3, align 8
  %104 = getelementptr inbounds %struct.http_s, %struct.http_s* %103, i32 0, i32 9
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i64, i64* %5, align 8
  %107 = call i64 @fiobj_type_is(i64 %106, i8 zeroext 41)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  %110 = load i64, i64* %5, align 8
  %111 = call i64 @fiobj_ary_count(i64 %110)
  store i64 %111, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %112

112:                                              ; preds = %124, %109
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* %8, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load %struct.http_s*, %struct.http_s** %3, align 8
  %118 = getelementptr inbounds %struct.http_s, %struct.http_s* %117, i32 0, i32 9
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* %9, align 8
  %122 = call i64 @fiobj_ary_index(i64 %120, i64 %121)
  %123 = load i8, i8* %4, align 1
  call void @http_parse_cookies_setcookie_str(i64 %119, i64 %122, i8 zeroext %123)
  br label %124

124:                                              ; preds = %116
  %125 = load i64, i64* %9, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %9, align 8
  br label %112

127:                                              ; preds = %112
  br label %134

128:                                              ; preds = %105
  %129 = load %struct.http_s*, %struct.http_s** %3, align 8
  %130 = getelementptr inbounds %struct.http_s, %struct.http_s* %129, i32 0, i32 9
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %5, align 8
  %133 = load i8, i8* %4, align 1
  call void @http_parse_cookies_setcookie_str(i64 %131, i64 %132, i8 zeroext %133)
  br label %134

134:                                              ; preds = %128, %127
  br label %135

135:                                              ; preds = %14, %32, %134, %87
  ret void
}

declare dso_local i64 @fiobj_hash_count(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_obj2hash(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @fiobj_type_is(i64 %5, i8 zeroext 40)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @fiobj_str_hash(i64 %9)
  store i64 %10, i64* %2, align 8
  br label %31

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = and i64 %19, 6
  %21 = icmp ne i64 %20, 6
  br i1 %21, label %24, label %22

22:                                               ; preds = %18, %14, %11
  %23 = load i64, i64* %3, align 8
  store i64 %23, i64* %2, align 8
  br label %31

24:                                               ; preds = %18
  %25 = load i64, i64* %3, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %4, i64 %25)
  %26 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @fio_siphash13(i8* %27, i64 %29, i64 ptrtoint (i64 (i64, i32 (i64, i8*)*, i8*)* @fiobj_each2 to i64), i64 ptrtoint (void (i64)* @fiobj_free_complex_object to i64))
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %24, %22, %8
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i64 @fiobj_ary_count(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_parse_cookies_cookie_str(i64, i64, i8 zeroext) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @fiobj_type_is(i64 %10, i8 zeroext 40)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %112

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %15)
  br label %16

16:                                               ; preds = %108, %27, %14
  %17 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %112

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  %31 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %31, align 8
  br label %16

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @memchr(i8* %36, i32 61, i64 %38) #9
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %42, %34
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %49 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sub i64 %48, %54
  %56 = call i8* @memchr(i8* %46, i32 59, i64 %55) #9
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %45
  %60 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8* %64, i8** %9, align 8
  br label %65

65:                                               ; preds = %59, %45
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = ptrtoint i8* %69 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = ptrtoint i8* %77 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = load i8, i8* %6, align 1
  %84 = call i32 @http_add2hash(i64 %66, i8* %68, i64 %74, i8* %76, i64 %82, i8 zeroext %83)
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %86 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ugt i64 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %65
  %96 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  store i64 0, i64* %96, align 8
  br label %108

97:                                               ; preds = %65
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = ptrtoint i8* %99 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %106, %104
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %97, %95
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  store i8* %110, i8** %111, align 8
  br label %16

112:                                              ; preds = %13, %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_parse_cookies_setcookie_str(i64, i64, i8 zeroext) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @fiobj_type_is(i64 %10, i8 zeroext 40)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %70

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %15)
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @memchr(i8* %17, i32 61, i64 %19) #9
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %23, %14
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = ptrtoint i8* %30 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sub i64 %29, %35
  %37 = call i8* @memchr(i8* %27, i32 59, i64 %36) #9
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %40, %26
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ugt i8* %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %54 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = ptrtoint i8* %62 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = load i8, i8* %6, align 1
  %69 = call i32 @http_add2hash(i64 %51, i8* %53, i64 %59, i8* %61, i64 %67, i8 zeroext %68)
  br label %70

70:                                               ; preds = %13, %50, %46
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_add2hash2(i64, i8*, i64, i64, i8 zeroext) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8 %4, i8* %11, align 1
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %5
  br label %418

35:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %36

36:                                               ; preds = %47, %35
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 91
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i1 [ false, %36 ], [ %44, %39 ]
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %9, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  br label %36

52:                                               ; preds = %45
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  br label %418

56:                                               ; preds = %52
  store i32 -1, i32* %14, align 4
  br label %57

57:                                               ; preds = %270, %204, %56
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  br label %418

61:                                               ; preds = %57
  %62 = load i32, i32* %14, align 4
  %63 = lshr i32 %62, 1
  store i32 %63, i32* %14, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i8* @memchr(i8* %64, i32 91, i64 %65) #9
  store i8* %66, i8** %13, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  br label %282

70:                                               ; preds = %61
  %71 = load i8*, i8** %13, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %418

75:                                               ; preds = %70
  %76 = load i8*, i8** %13, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = icmp eq i8* %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i64, i64* %9, align 8
  %84 = sub i64 %83, 1
  store i64 %84, i64* %9, align 8
  br label %347

85:                                               ; preds = %75
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 93
  br i1 %90, label %91, label %215

91:                                               ; preds = %85
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  %94 = load i8*, i8** %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = icmp eq i8* %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i64, i64* %9, align 8
  %100 = sub i64 %99, 2
  store i64 %100, i64* %9, align 8
  br label %347

101:                                              ; preds = %91
  %102 = load i8*, i8** %13, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 91
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load i8*, i8** %13, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 3
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 93
  br i1 %112, label %113, label %114

113:                                              ; preds = %107, %101
  br label %418

114:                                              ; preds = %107
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 -1
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 93
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load i8*, i8** %13, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 -1
  %123 = load i8*, i8** %8, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  br label %133

127:                                              ; preds = %114
  %128 = load i8*, i8** %13, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  br label %133

133:                                              ; preds = %127, %120
  %134 = phi i64 [ %126, %120 ], [ %132, %127 ]
  store i64 %134, i64* %15, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = load i64, i64* %15, align 8
  %137 = call i64 @fiobj_hash_string(i8* %135, i64 %136)
  store i64 %137, i64* %16, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %16, align 8
  %140 = call i64 @fiobj_hash_get2(i64 %138, i64 %139)
  store i64 %140, i64* %12, align 8
  %141 = load i64, i64* %12, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %163, label %143

143:                                              ; preds = %133
  %144 = load i8, i8* %11, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i8*, i8** %8, align 8
  %149 = load i64, i64* %15, align 8
  %150 = call i64 @http_urlstr2fiobj(i8* %148, i64 %149)
  br label %155

151:                                              ; preds = %143
  %152 = load i8*, i8** %8, align 8
  %153 = load i64, i64* %15, align 8
  %154 = call i64 @fiobj_str_new(i8* %152, i64 %153)
  br label %155

155:                                              ; preds = %151, %147
  %156 = phi i64 [ %150, %147 ], [ %154, %151 ]
  store i64 %156, i64* %17, align 8
  %157 = call i64 @fiobj_ary_new2(i64 4)
  store i64 %157, i64* %12, align 8
  %158 = load i64, i64* %7, align 8
  %159 = load i64, i64* %17, align 8
  %160 = load i64, i64* %12, align 8
  %161 = call i32 @fiobj_hash_set(i64 %158, i64 %159, i64 %160)
  %162 = load i64, i64* %17, align 8
  call void @fiobj_free(i64 %162)
  br label %191

163:                                              ; preds = %133
  %164 = load i64, i64* %12, align 8
  %165 = call i64 @fiobj_type_is(i64 %164, i8 zeroext 41)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %190, label %167

167:                                              ; preds = %163
  %168 = load i8, i8* %11, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i8*, i8** %8, align 8
  %173 = load i64, i64* %15, align 8
  %174 = call i64 @http_urlstr2fiobj(i8* %172, i64 %173)
  br label %179

175:                                              ; preds = %167
  %176 = load i8*, i8** %8, align 8
  %177 = load i64, i64* %15, align 8
  %178 = call i64 @fiobj_str_new(i8* %176, i64 %177)
  br label %179

179:                                              ; preds = %175, %171
  %180 = phi i64 [ %174, %171 ], [ %178, %175 ]
  store i64 %180, i64* %18, align 8
  %181 = call i64 @fiobj_ary_new2(i64 4)
  store i64 %181, i64* %19, align 8
  %182 = load i64, i64* %19, align 8
  %183 = load i64, i64* %12, align 8
  call void @fiobj_ary_push(i64 %182, i64 %183)
  %184 = load i64, i64* %19, align 8
  store i64 %184, i64* %12, align 8
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* %18, align 8
  %187 = load i64, i64* %12, align 8
  %188 = call i32 @fiobj_hash_set(i64 %185, i64 %186, i64 %187)
  %189 = load i64, i64* %18, align 8
  call void @fiobj_free(i64 %189)
  br label %190

190:                                              ; preds = %179, %163
  br label %191

191:                                              ; preds = %190, %155
  %192 = load i64, i64* %12, align 8
  %193 = call i64 @fiobj_ary_index(i64 %192, i64 -1)
  store i64 %193, i64* %7, align 8
  %194 = load i64, i64* %7, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load i64, i64* %7, align 8
  %198 = call i64 @fiobj_type_is(i64 %197, i8 zeroext 42)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %196, %191
  %201 = call i64 @fiobj_hash_new()
  store i64 %201, i64* %7, align 8
  %202 = load i64, i64* %12, align 8
  %203 = load i64, i64* %7, align 8
  call void @fiobj_ary_push(i64 %202, i64 %203)
  br label %204

204:                                              ; preds = %200, %196
  %205 = load i8*, i8** %13, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 3
  store i8* %206, i8** %13, align 8
  %207 = load i8*, i8** %13, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = ptrtoint i8* %207 to i64
  %210 = ptrtoint i8* %208 to i64
  %211 = sub i64 %209, %210
  %212 = load i64, i64* %9, align 8
  %213 = sub i64 %212, %211
  store i64 %213, i64* %9, align 8
  %214 = load i8*, i8** %13, align 8
  store i8* %214, i8** %8, align 8
  br label %57

215:                                              ; preds = %85
  %216 = load i8*, i8** %13, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 -1
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 93
  br i1 %220, label %221, label %228

221:                                              ; preds = %215
  %222 = load i8*, i8** %13, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 -1
  %224 = load i8*, i8** %8, align 8
  %225 = ptrtoint i8* %223 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  br label %234

228:                                              ; preds = %215
  %229 = load i8*, i8** %13, align 8
  %230 = load i8*, i8** %8, align 8
  %231 = ptrtoint i8* %229 to i64
  %232 = ptrtoint i8* %230 to i64
  %233 = sub i64 %231, %232
  br label %234

234:                                              ; preds = %228, %221
  %235 = phi i64 [ %227, %221 ], [ %233, %228 ]
  store i64 %235, i64* %20, align 8
  %236 = load i8*, i8** %8, align 8
  %237 = load i64, i64* %20, align 8
  %238 = call i64 @fiobj_hash_string(i8* %236, i64 %237)
  store i64 %238, i64* %21, align 8
  %239 = load i64, i64* %7, align 8
  %240 = load i64, i64* %21, align 8
  %241 = call i64 @fiobj_hash_get2(i64 %239, i64 %240)
  store i64 %241, i64* %22, align 8
  %242 = load i64, i64* %22, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %264, label %244

244:                                              ; preds = %234
  %245 = load i8, i8* %11, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %244
  %249 = load i8*, i8** %8, align 8
  %250 = load i64, i64* %20, align 8
  %251 = call i64 @http_urlstr2fiobj(i8* %249, i64 %250)
  br label %256

252:                                              ; preds = %244
  %253 = load i8*, i8** %8, align 8
  %254 = load i64, i64* %20, align 8
  %255 = call i64 @fiobj_str_new(i8* %253, i64 %254)
  br label %256

256:                                              ; preds = %252, %248
  %257 = phi i64 [ %251, %248 ], [ %255, %252 ]
  store i64 %257, i64* %23, align 8
  %258 = call i64 @fiobj_hash_new()
  store i64 %258, i64* %22, align 8
  %259 = load i64, i64* %7, align 8
  %260 = load i64, i64* %23, align 8
  %261 = load i64, i64* %22, align 8
  %262 = call i32 @fiobj_hash_set(i64 %259, i64 %260, i64 %261)
  %263 = load i64, i64* %23, align 8
  call void @fiobj_free(i64 %263)
  br label %270

264:                                              ; preds = %234
  %265 = load i64, i64* %22, align 8
  %266 = call i64 @fiobj_type_is(i64 %265, i8 zeroext 42)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %264
  br label %418

269:                                              ; preds = %264
  br label %270

270:                                              ; preds = %269, %256
  %271 = load i64, i64* %22, align 8
  store i64 %271, i64* %7, align 8
  store i64 0, i64* %12, align 8
  %272 = load i8*, i8** %13, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 1
  store i8* %273, i8** %13, align 8
  %274 = load i8*, i8** %13, align 8
  %275 = load i8*, i8** %8, align 8
  %276 = ptrtoint i8* %274 to i64
  %277 = ptrtoint i8* %275 to i64
  %278 = sub i64 %276, %277
  %279 = load i64, i64* %9, align 8
  %280 = sub i64 %279, %278
  store i64 %280, i64* %9, align 8
  %281 = load i8*, i8** %13, align 8
  store i8* %281, i8** %8, align 8
  br label %57

282:                                              ; preds = %69
  %283 = load i8*, i8** %8, align 8
  %284 = load i64, i64* %9, align 8
  %285 = sub i64 %284, 1
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %288, 93
  br i1 %289, label %290, label %293

290:                                              ; preds = %282
  %291 = load i64, i64* %9, align 8
  %292 = add i64 %291, -1
  store i64 %292, i64* %9, align 8
  br label %293

293:                                              ; preds = %290, %282
  %294 = load i8, i8* %11, align 1
  %295 = zext i8 %294 to i32
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load i8*, i8** %8, align 8
  %299 = load i64, i64* %9, align 8
  %300 = call i64 @http_urlstr2fiobj(i8* %298, i64 %299)
  br label %305

301:                                              ; preds = %293
  %302 = load i8*, i8** %8, align 8
  %303 = load i64, i64* %9, align 8
  %304 = call i64 @fiobj_str_new(i8* %302, i64 %303)
  br label %305

305:                                              ; preds = %301, %297
  %306 = phi i64 [ %300, %297 ], [ %304, %301 ]
  store i64 %306, i64* %24, align 8
  %307 = load i64, i64* %7, align 8
  %308 = load i64, i64* %24, align 8
  %309 = load i64, i64* %10, align 8
  %310 = call i64 @fiobj_hash_replace(i64 %307, i64 %308, i64 %309)
  store i64 %310, i64* %25, align 8
  %311 = load i64, i64* %25, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %345

313:                                              ; preds = %305
  %314 = load i64, i64* %12, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %328

316:                                              ; preds = %313
  %317 = load i64, i64* %7, align 8
  %318 = load i64, i64* %24, align 8
  %319 = load i64, i64* %25, align 8
  %320 = call i64 @fiobj_hash_replace(i64 %317, i64 %318, i64 %319)
  %321 = call i64 @fiobj_hash_new()
  store i64 %321, i64* %25, align 8
  %322 = load i64, i64* %25, align 8
  %323 = load i64, i64* %24, align 8
  %324 = load i64, i64* %10, align 8
  %325 = call i32 @fiobj_hash_set(i64 %322, i64 %323, i64 %324)
  %326 = load i64, i64* %12, align 8
  %327 = load i64, i64* %25, align 8
  call void @fiobj_ary_push(i64 %326, i64 %327)
  br label %344

328:                                              ; preds = %313
  %329 = load i64, i64* %25, align 8
  %330 = call i64 @fiobj_type_is(i64 %329, i8 zeroext 41)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %337, label %332

332:                                              ; preds = %328
  %333 = call i64 @fiobj_ary_new2(i64 4)
  store i64 %333, i64* %26, align 8
  %334 = load i64, i64* %26, align 8
  %335 = load i64, i64* %25, align 8
  call void @fiobj_ary_push(i64 %334, i64 %335)
  %336 = load i64, i64* %26, align 8
  store i64 %336, i64* %25, align 8
  br label %337

337:                                              ; preds = %332, %328
  %338 = load i64, i64* %25, align 8
  %339 = load i64, i64* %10, align 8
  call void @fiobj_ary_push(i64 %338, i64 %339)
  %340 = load i64, i64* %7, align 8
  %341 = load i64, i64* %24, align 8
  %342 = load i64, i64* %25, align 8
  %343 = call i64 @fiobj_hash_replace(i64 %340, i64 %341, i64 %342)
  br label %344

344:                                              ; preds = %337, %316
  br label %345

345:                                              ; preds = %344, %305
  %346 = load i64, i64* %24, align 8
  call void @fiobj_free(i64 %346)
  store i32 0, i32* %6, align 4
  br label %421

347:                                              ; preds = %98, %82
  %348 = load i8*, i8** %8, align 8
  %349 = load i64, i64* %9, align 8
  %350 = sub i64 %349, 1
  %351 = getelementptr inbounds i8, i8* %348, i64 %350
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp eq i32 %353, 93
  br i1 %354, label %355, label %358

355:                                              ; preds = %347
  %356 = load i64, i64* %9, align 8
  %357 = add i64 %356, -1
  store i64 %357, i64* %9, align 8
  br label %358

358:                                              ; preds = %355, %347
  %359 = load i8*, i8** %8, align 8
  %360 = load i64, i64* %9, align 8
  %361 = call i64 @fiobj_hash_string(i8* %359, i64 %360)
  store i64 %361, i64* %27, align 8
  %362 = load i64, i64* %7, align 8
  %363 = load i64, i64* %27, align 8
  %364 = call i64 @fiobj_hash_get2(i64 %362, i64 %363)
  store i64 %364, i64* %28, align 8
  %365 = load i64, i64* %28, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %387, label %367

367:                                              ; preds = %358
  %368 = load i8, i8* %11, align 1
  %369 = zext i8 %368 to i32
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %375

371:                                              ; preds = %367
  %372 = load i8*, i8** %8, align 8
  %373 = load i64, i64* %9, align 8
  %374 = call i64 @http_urlstr2fiobj(i8* %372, i64 %373)
  br label %379

375:                                              ; preds = %367
  %376 = load i8*, i8** %8, align 8
  %377 = load i64, i64* %9, align 8
  %378 = call i64 @fiobj_str_new(i8* %376, i64 %377)
  br label %379

379:                                              ; preds = %375, %371
  %380 = phi i64 [ %374, %371 ], [ %378, %375 ]
  store i64 %380, i64* %29, align 8
  %381 = call i64 @fiobj_ary_new2(i64 4)
  store i64 %381, i64* %28, align 8
  %382 = load i64, i64* %7, align 8
  %383 = load i64, i64* %29, align 8
  %384 = load i64, i64* %28, align 8
  %385 = call i32 @fiobj_hash_set(i64 %382, i64 %383, i64 %384)
  %386 = load i64, i64* %29, align 8
  call void @fiobj_free(i64 %386)
  br label %415

387:                                              ; preds = %358
  %388 = load i64, i64* %28, align 8
  %389 = call i64 @fiobj_type_is(i64 %388, i8 zeroext 41)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %414, label %391

391:                                              ; preds = %387
  %392 = call i64 @fiobj_ary_new2(i64 4)
  store i64 %392, i64* %30, align 8
  %393 = load i64, i64* %30, align 8
  %394 = load i64, i64* %28, align 8
  call void @fiobj_ary_push(i64 %393, i64 %394)
  %395 = load i64, i64* %30, align 8
  store i64 %395, i64* %28, align 8
  %396 = load i8, i8* %11, align 1
  %397 = zext i8 %396 to i32
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %391
  %400 = load i8*, i8** %8, align 8
  %401 = load i64, i64* %9, align 8
  %402 = call i64 @http_urlstr2fiobj(i8* %400, i64 %401)
  br label %407

403:                                              ; preds = %391
  %404 = load i8*, i8** %8, align 8
  %405 = load i64, i64* %9, align 8
  %406 = call i64 @fiobj_str_new(i8* %404, i64 %405)
  br label %407

407:                                              ; preds = %403, %399
  %408 = phi i64 [ %402, %399 ], [ %406, %403 ]
  store i64 %408, i64* %31, align 8
  %409 = load i64, i64* %7, align 8
  %410 = load i64, i64* %31, align 8
  %411 = load i64, i64* %28, align 8
  %412 = call i64 @fiobj_hash_replace(i64 %409, i64 %410, i64 %411)
  %413 = load i64, i64* %31, align 8
  call void @fiobj_free(i64 %413)
  br label %414

414:                                              ; preds = %407, %387
  br label %415

415:                                              ; preds = %414, %379
  %416 = load i64, i64* %28, align 8
  %417 = load i64, i64* %10, align 8
  call void @fiobj_ary_push(i64 %416, i64 %417)
  store i32 0, i32* %6, align 4
  br label %421

418:                                              ; preds = %268, %113, %74, %60, %55, %34
  %419 = load i64, i64* %10, align 8
  call void @fiobj_free(i64 %419)
  %420 = call i32* @__errno_location() #10
  store i32 95, i32* %420, align 4
  store i32 -1, i32* %6, align 4
  br label %421

421:                                              ; preds = %418, %415, %345
  %422 = load i32, i32* %6, align 4
  ret i32 %422
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http_urlstr2fiobj(i8*, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @fiobj_str_buf(i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %8, i64 %11)
  %12 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @http_decode_url(i8* %13, i8* %14, i64 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  call void @fiobj_free(i64 %20)
  %21 = call i64 @fiobj_str_new(i8* null, i64 0)
  store i64 %21, i64* %3, align 8
  br label %26

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  call void @fiobj_str_resize(i64 %23, i64 %24)
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local i64 @fiobj_ary_new2(i64) #4

declare dso_local i32 @fiobj_hash_set(i64, i64, i64) #4

declare dso_local void @fiobj_ary_push(i64, i64) #4

declare dso_local i64 @fiobj_hash_replace(i64, i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http_str2fiobj(i8*, i64, i8 zeroext) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca double, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  %12 = load i64, i64* %6, align 8
  switch i64 %12, label %35 [
    i64 0, label %13
    i64 4, label %15
    i64 5, label %28
  ]

13:                                               ; preds = %3
  %14 = call i64 @fiobj_str_new(i8* null, i64 0)
  store i64 %14, i64* %4, align 8
  br label %68

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strncasecmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i64 4) #9
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = call i64 @fiobj_true()
  store i64 %20, i64* %4, align 8
  br label %68

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strncasecmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.124, i64 0, i64 0), i64 4) #9
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i64 @fiobj_null()
  store i64 %26, i64* %4, align 8
  br label %68

27:                                               ; preds = %21
  br label %35

28:                                               ; preds = %3
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strncasecmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i64 0, i64 0), i64 5) #9
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call i64 @fiobj_false()
  store i64 %33, i64* %4, align 8
  br label %68

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %3, %27
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %8, align 8
  %37 = call i64 @fio_atol(i8** %8)
  store i64 %37, i64* %9, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = icmp eq i8* %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @fiobj_num_new(i64 %44)
  store i64 %45, i64* %4, align 8
  br label %68

46:                                               ; preds = %35
  %47 = load i8*, i8** %5, align 8
  store i8* %47, i8** %10, align 8
  %48 = call double @fio_atof(i8** %10)
  store double %48, double* %11, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = icmp eq i8* %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load double, double* %11, align 8
  %56 = call i64 @fiobj_float_new(double %55)
  store i64 %56, i64* %4, align 8
  br label %68

57:                                               ; preds = %46
  %58 = load i8, i8* %7, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @http_urlstr2fiobj(i8* %61, i64 %62)
  store i64 %63, i64* %4, align 8
  br label %68

64:                                               ; preds = %57
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @fiobj_str_new(i8* %65, i64 %66)
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %64, %60, %54, %43, %32, %25, %19, %13
  %69 = load i64, i64* %4, align 8
  ret i64 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_parse_body(%struct.http_s*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_str_info_s, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.http_fio_mime_s, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fio_str_info_s, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  %13 = load %struct.http_s*, %struct.http_s** %3, align 8
  %14 = getelementptr inbounds %struct.http_s, %struct.http_s* %13, i32 0, i32 11
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %182

18:                                               ; preds = %1
  %19 = load i64, i64* @http_parse_body.content_type_hash, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i64 @fiobj_hash_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i64 12)
  store i64 %22, i64* @http_parse_body.content_type_hash, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load %struct.http_s*, %struct.http_s** %3, align 8
  %25 = getelementptr inbounds %struct.http_s, %struct.http_s* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @http_parse_body.content_type_hash, align 8
  %28 = call i64 @fiobj_hash_get2(i64 %26, i64 %27)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %5, i64 %29)
  %30 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %31, 16
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %182

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp uge i64 %36, 33
  br i1 %37, label %38, label %65

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strncasecmp(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i64 0, i64 0), i8* %40, i64 33) #9
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %65, label %43

43:                                               ; preds = %38
  %44 = load %struct.http_s*, %struct.http_s** %3, align 8
  %45 = getelementptr inbounds %struct.http_s, %struct.http_s* %44, i32 0, i32 10
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = call i64 @fiobj_hash_new()
  %50 = load %struct.http_s*, %struct.http_s** %3, align 8
  %51 = getelementptr inbounds %struct.http_s, %struct.http_s* %50, i32 0, i32 10
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.http_s*, %struct.http_s** %3, align 8
  %54 = getelementptr inbounds %struct.http_s, %struct.http_s* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %6, align 8
  %56 = load %struct.http_s*, %struct.http_s** %3, align 8
  %57 = getelementptr inbounds %struct.http_s, %struct.http_s* %56, i32 0, i32 11
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.http_s*, %struct.http_s** %3, align 8
  %60 = getelementptr inbounds %struct.http_s, %struct.http_s* %59, i32 0, i32 7
  store i64 %58, i64* %60, align 8
  %61 = load %struct.http_s*, %struct.http_s** %3, align 8
  call void @http_parse_query(%struct.http_s* %61)
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.http_s*, %struct.http_s** %3, align 8
  %64 = getelementptr inbounds %struct.http_s, %struct.http_s* %63, i32 0, i32 7
  store i64 %62, i64* %64, align 8
  store i32 0, i32* %2, align 4
  br label %182

65:                                               ; preds = %38, %34
  %66 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp uge i64 %67, 16
  br i1 %68, label %69, label %117

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strncasecmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i8* %71, i64 16) #9
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %117, label %74

74:                                               ; preds = %69
  %75 = load %struct.http_s*, %struct.http_s** %3, align 8
  %76 = getelementptr inbounds %struct.http_s, %struct.http_s* %75, i32 0, i32 11
  %77 = load i64, i64* %76, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %7, i64 %77)
  %78 = bitcast %struct.fio_str_info_s* %5 to i8*
  %79 = bitcast %struct.fio_str_info_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 24, i1 false)
  %80 = load %struct.http_s*, %struct.http_s** %3, align 8
  %81 = getelementptr inbounds %struct.http_s, %struct.http_s* %80, i32 0, i32 10
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i32 -1, i32* %2, align 4
  br label %182

85:                                               ; preds = %74
  %86 = load %struct.http_s*, %struct.http_s** %3, align 8
  %87 = getelementptr inbounds %struct.http_s, %struct.http_s* %86, i32 0, i32 10
  %88 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @fiobj_json2obj(i64* %87, i8* %89, i64 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  store i32 -1, i32* %2, align 4
  br label %182

95:                                               ; preds = %85
  %96 = load %struct.http_s*, %struct.http_s** %3, align 8
  %97 = getelementptr inbounds %struct.http_s, %struct.http_s* %96, i32 0, i32 10
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @fiobj_type_is(i64 %98, i8 zeroext 42)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 0, i32* %2, align 4
  br label %182

102:                                              ; preds = %95
  %103 = load %struct.http_s*, %struct.http_s** %3, align 8
  %104 = getelementptr inbounds %struct.http_s, %struct.http_s* %103, i32 0, i32 10
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %8, align 8
  %106 = call i64 @fiobj_str_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i64 4)
  store i64 %106, i64* %9, align 8
  %107 = call i64 @fiobj_hash_new2(i64 4)
  %108 = load %struct.http_s*, %struct.http_s** %3, align 8
  %109 = getelementptr inbounds %struct.http_s, %struct.http_s* %108, i32 0, i32 10
  store i64 %107, i64* %109, align 8
  %110 = load %struct.http_s*, %struct.http_s** %3, align 8
  %111 = getelementptr inbounds %struct.http_s, %struct.http_s* %110, i32 0, i32 10
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @fiobj_hash_set(i64 %112, i64 %113, i64 %114)
  %116 = load i64, i64* %9, align 8
  call void @fiobj_free(i64 %116)
  store i32 0, i32* %2, align 4
  br label %182

117:                                              ; preds = %69, %65
  %118 = bitcast %struct.http_fio_mime_s* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %118, i8 0, i64 88, i1 false)
  %119 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %10, i32 0, i32 1
  %120 = load %struct.http_s*, %struct.http_s** %3, align 8
  store %struct.http_s* %120, %struct.http_s** %119, align 8
  %121 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %10, i32 0, i32 0
  %122 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @http_mime_parser_init(%struct.http_mime_parser_s* %121, i8* %123, i64 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  store i32 -1, i32* %2, align 4
  br label %182

129:                                              ; preds = %117
  %130 = load %struct.http_s*, %struct.http_s** %3, align 8
  %131 = getelementptr inbounds %struct.http_s, %struct.http_s* %130, i32 0, i32 10
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = call i64 @fiobj_hash_new()
  %136 = load %struct.http_s*, %struct.http_s** %3, align 8
  %137 = getelementptr inbounds %struct.http_s, %struct.http_s* %136, i32 0, i32 10
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %134, %129
  br label %139

139:                                              ; preds = %176, %138
  %140 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %10, i32 0, i32 0
  %141 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %10, i32 0, i32 2
  %142 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %10, i32 0, i32 2
  %145 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @http_mime_parse(%struct.http_mime_parser_s* %140, i8* %143, i64 %146)
  store i64 %147, i64* %11, align 8
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %10, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, %148
  store i64 %151, i64* %149, align 8
  %152 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %10, i32 0, i32 2
  %153 = load %struct.http_s*, %struct.http_s** %3, align 8
  %154 = getelementptr inbounds %struct.http_s, %struct.http_s* %153, i32 0, i32 11
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %10, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  call void @fiobj_data_pread(%struct.fio_str_info_s* sret %12, i64 %155, i64 %157, i64 4096)
  %158 = bitcast %struct.fio_str_info_s* %152 to i8*
  %159 = bitcast %struct.fio_str_info_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 24, i1 false)
  br label %160

160:                                              ; preds = %139
  %161 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %10, i32 0, i32 2
  %162 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %161, i32 0, i32 2
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %176

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %10, i32 0, i32 0
  %167 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %166, i32 0, i32 3
  %168 = load i8, i8* %167, align 1
  %169 = icmp ne i8 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %10, i32 0, i32 0
  %172 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %171, i32 0, i32 4
  %173 = load i8, i8* %172, align 2
  %174 = icmp ne i8 %173, 0
  %175 = xor i1 %174, true
  br label %176

176:                                              ; preds = %170, %165, %160
  %177 = phi i1 [ false, %165 ], [ false, %160 ], [ %175, %170 ]
  br i1 %177, label %139, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %10, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  call void @fiobj_free(i64 %180)
  %181 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %10, i32 0, i32 6
  store i64 0, i64* %181, align 8
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %178, %128, %102, %101, %94, %84, %52, %33, %17
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i64 @fiobj_json2obj(i64*, i8*, i64) #4

declare dso_local i64 @fiobj_hash_new2(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_mime_parser_init(%struct.http_mime_parser_s*, i8*, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http_mime_parser_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.http_mime_parser_s, align 8
  %9 = alloca i8*, align 8
  store %struct.http_mime_parser_s* %0, %struct.http_mime_parser_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %11 = bitcast %struct.http_mime_parser_s* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %8, i32 0, i32 3
  store i8 0, i8* %12, align 1
  %13 = bitcast %struct.http_mime_parser_s* %10 to i8*
  %14 = bitcast %struct.http_mime_parser_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 24, i1 false)
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %15, 14
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strncasecmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.138, i64 0, i64 0), i8* %18, i64 14) #9
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %3
  store i32 -1, i32* %4, align 4
  br label %95

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i8* @memchr(i8* %23, i32 59, i64 %24) #9
  store i8* %25, i8** %9, align 8
  br label %26

26:                                               ; preds = %63, %22
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %94

29:                                               ; preds = %26
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %50, %29
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 32
  br label %48

48:                                               ; preds = %42, %39
  %49 = phi i1 [ false, %39 ], [ %47, %42 ]
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %7, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  br label %39

55:                                               ; preds = %48
  %56 = load i64, i64* %7, align 8
  %57 = icmp ule i64 %56, 9
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %95

59:                                               ; preds = %55
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @strncasecmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i64 0, i64 0), i8* %60, i64 9) #9
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i8*, i8** %9, align 8
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i8* @memchr(i8* %65, i32 59, i64 %66) #9
  store i8* %67, i8** %9, align 8
  br label %26

68:                                               ; preds = %59
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 9
  store i8* %70, i8** %9, align 8
  %71 = load i64, i64* %7, align 8
  %72 = sub i64 %71, 9
  store i64 %72, i64* %7, align 8
  %73 = load i8*, i8** %9, align 8
  store i8* %73, i8** %6, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %76 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i8* @memchr(i8* %77, i32 59, i64 %78) #9
  store i8* %79, i8** %9, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %68
  %82 = load i8*, i8** %9, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %88 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %93

89:                                               ; preds = %68
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %92 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %81
  store i32 0, i32* %4, align 4
  br label %95

94:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %93, %58, %21
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http_mime_parse(%struct.http_mime_parser_s*, i8*, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.http_mime_parser_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i64, align 8
  store %struct.http_mime_parser_s* %0, %struct.http_mime_parser_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %10, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  br label %771

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %721, %34
  %36 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %37 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %36, i32 0, i32 2
  %38 = load i8, i8* %37, align 8
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %184

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  store i8* %42, i8** %12, align 8
  br label %43

43:                                               ; preds = %94, %40
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = call i8* @memchr(i8* %44, i32 10, i64 %49) #9
  store i8* %50, i8** %12, align 8
  br label %51

51:                                               ; preds = %43
  %52 = load i8*, i8** %12, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %94

54:                                               ; preds = %51
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %12, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %65 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add i64 4, %66
  %68 = icmp uge i64 %63, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %58
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 45
  br i1 %74, label %92, label %75

75:                                               ; preds = %69
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 45
  br i1 %80, label %92, label %81

81:                                               ; preds = %75
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %85 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %88 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @memcmp(i8* %83, i8* %86, i64 %89) #9
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %81, %75, %69
  %93 = phi i1 [ true, %75 ], [ true, %69 ], [ %91, %81 ]
  br label %94

94:                                               ; preds = %92, %58, %54, %51
  %95 = phi i1 [ false, %58 ], [ false, %54 ], [ false, %51 ], [ %93, %92 ]
  br i1 %95, label %43, label %96

96:                                               ; preds = %94
  %97 = load i8*, i8** %12, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %117, label %99

99:                                               ; preds = %96
  %100 = load i8*, i8** %10, align 8
  store i8* %100, i8** %12, align 8
  %101 = load i8*, i8** %12, align 8
  store i8* %101, i8** %9, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %99
  %109 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  call void @http_mime_parser_on_partial_data(%struct.http_mime_parser_s* %109, i8* %110, i64 %115)
  br label %116

116:                                              ; preds = %108, %99
  br label %771

117:                                              ; preds = %96
  %118 = load i8*, i8** %12, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 4
  %120 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %121 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load i8*, i8** %10, align 8
  %125 = icmp uge i8* %123, %124
  br i1 %125, label %126, label %154

126:                                              ; preds = %117
  %127 = load i8*, i8** %12, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 -2
  store i8* %128, i8** %12, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 13
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load i8*, i8** %12, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 -1
  store i8* %136, i8** %12, align 8
  br label %137

137:                                              ; preds = %134, %126
  %138 = load i8*, i8** %12, align 8
  store i8* %138, i8** %9, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %137
  %146 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  call void @http_mime_parser_on_partial_data(%struct.http_mime_parser_s* %146, i8* %147, i64 %152)
  br label %153

153:                                              ; preds = %145, %137
  br label %771

154:                                              ; preds = %117
  br label %155

155:                                              ; preds = %154
  %156 = load i8*, i8** %12, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = sub nsw i64 %160, 1
  store i64 %161, i64* %13, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = load i64, i64* %13, align 8
  %164 = sub i64 %163, 1
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 13
  br i1 %168, label %169, label %172

169:                                              ; preds = %155
  %170 = load i64, i64* %13, align 8
  %171 = add i64 %170, -1
  store i64 %171, i64* %13, align 8
  br label %172

172:                                              ; preds = %169, %155
  %173 = load i64, i64* %13, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %177 = load i8*, i8** %11, align 8
  %178 = load i64, i64* %13, align 8
  call void @http_mime_parser_on_partial_data(%struct.http_mime_parser_s* %176, i8* %177, i64 %178)
  br label %179

179:                                              ; preds = %175, %172
  %180 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  call void @http_mime_parser_on_partial_end(%struct.http_mime_parser_s* %180)
  %181 = load i8*, i8** %12, align 8
  store i8* %181, i8** %9, align 8
  %182 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %183 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %182, i32 0, i32 2
  store i8 0, i8* %183, align 8
  store i32 0, i32* %8, align 4
  br label %216

184:                                              ; preds = %35
  %185 = load i64, i64* %7, align 8
  %186 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %187 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = add i64 4, %188
  %190 = icmp ult i64 %185, %189
  br i1 %190, label %214, label %191

191:                                              ; preds = %184
  %192 = load i8*, i8** %9, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %195, 45
  br i1 %196, label %214, label %197

197:                                              ; preds = %191
  %198 = load i8*, i8** %9, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp ne i32 %201, 45
  br i1 %202, label %214, label %203

203:                                              ; preds = %197
  %204 = load i8*, i8** %9, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 2
  %206 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %207 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %210 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @memcmp(i8* %205, i8* %208, i64 %211) #9
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %203, %197, %191, %184
  br label %787

215:                                              ; preds = %203
  br label %216

216:                                              ; preds = %215, %179
  br label %217

217:                                              ; preds = %755, %216
  %218 = load i8*, i8** %9, align 8
  %219 = load i8*, i8** %10, align 8
  %220 = icmp ult i8* %218, %219
  br i1 %220, label %221, label %770

221:                                              ; preds = %217
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  store i32 0, i32* %19, align 4
  store i8* null, i8** %20, align 8
  store i32 0, i32* %21, align 4
  store i8* null, i8** %22, align 8
  store i32 0, i32* %23, align 4
  store i8 0, i8* %24, align 1
  %222 = load i8*, i8** %9, align 8
  %223 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %224 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = add i64 2, %225
  %227 = getelementptr inbounds i8, i8* %222, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 45
  br i1 %230, label %231, label %268

231:                                              ; preds = %221
  %232 = load i8*, i8** %9, align 8
  %233 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %234 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = add i64 3, %235
  %237 = getelementptr inbounds i8, i8* %232, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp eq i32 %239, 45
  br i1 %240, label %241, label %268

241:                                              ; preds = %231
  %242 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %243 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = add i64 5, %244
  %246 = load i8*, i8** %9, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 %245
  store i8* %247, i8** %9, align 8
  %248 = load i8*, i8** %9, align 8
  %249 = load i8*, i8** %10, align 8
  %250 = icmp ugt i8* %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %241
  %252 = load i8*, i8** %10, align 8
  store i8* %252, i8** %9, align 8
  br label %267

253:                                              ; preds = %241
  %254 = load i8*, i8** %9, align 8
  %255 = load i8*, i8** %10, align 8
  %256 = icmp ult i8* %254, %255
  br i1 %256, label %257, label %266

257:                                              ; preds = %253
  %258 = load i8*, i8** %9, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 0
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %261, 10
  br i1 %262, label %263, label %266

263:                                              ; preds = %257
  %264 = load i8*, i8** %9, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %9, align 8
  br label %266

266:                                              ; preds = %263, %257, %253
  br label %267

267:                                              ; preds = %266, %251
  br label %777

268:                                              ; preds = %231, %221
  %269 = load i8*, i8** %9, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 3
  %271 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %272 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds i8, i8* %270, i64 %273
  store i8* %274, i8** %14, align 8
  %275 = load i8*, i8** %14, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 0
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 10
  br i1 %279, label %280, label %283

280:                                              ; preds = %268
  %281 = load i8*, i8** %14, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %14, align 8
  br label %283

283:                                              ; preds = %280, %268
  br label %284

284:                                              ; preds = %628, %283
  %285 = load i8*, i8** %14, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 4
  %287 = load i8*, i8** %10, align 8
  %288 = icmp ult i8* %286, %287
  br i1 %288, label %289, label %301

289:                                              ; preds = %284
  %290 = load i8*, i8** %14, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 0
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp ne i32 %293, 10
  br i1 %294, label %295, label %301

295:                                              ; preds = %289
  %296 = load i8*, i8** %14, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 1
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp ne i32 %299, 10
  br label %301

301:                                              ; preds = %295, %289, %284
  %302 = phi i1 [ false, %289 ], [ false, %284 ], [ %300, %295 ]
  br i1 %302, label %303, label %629

303:                                              ; preds = %301
  %304 = load i8*, i8** %14, align 8
  %305 = load i8*, i8** %10, align 8
  %306 = load i8*, i8** %14, align 8
  %307 = ptrtoint i8* %305 to i64
  %308 = ptrtoint i8* %306 to i64
  %309 = sub i64 %307, %308
  %310 = call i8* @memchr(i8* %304, i32 10, i64 %309) #9
  store i8* %310, i8** %15, align 8
  %311 = load i8*, i8** %15, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %318, label %313

313:                                              ; preds = %303
  %314 = load i32, i32* %8, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %313
  br label %787

317:                                              ; preds = %313
  br label %771

318:                                              ; preds = %303
  %319 = load i8*, i8** %15, align 8
  %320 = load i8*, i8** %14, align 8
  %321 = ptrtoint i8* %319 to i64
  %322 = ptrtoint i8* %320 to i64
  %323 = sub i64 %321, %322
  %324 = icmp sgt i64 %323, 29
  br i1 %324, label %325, label %559

325:                                              ; preds = %318
  %326 = load i8*, i8** %14, align 8
  %327 = call i32 @strncasecmp(i8* %326, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.140, i64 0, i64 0), i64 20) #9
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %559, label %329

329:                                              ; preds = %325
  %330 = load i8*, i8** %14, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 20
  %332 = load i8*, i8** %15, align 8
  %333 = load i8*, i8** %14, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 20
  %335 = ptrtoint i8* %332 to i64
  %336 = ptrtoint i8* %334 to i64
  %337 = sub i64 %335, %336
  %338 = call i8* @memchr(i8* %331, i32 59, i64 %337) #9
  store i8* %338, i8** %14, align 8
  br label %339

339:                                              ; preds = %557, %475, %329
  %340 = load i8*, i8** %14, align 8
  %341 = icmp ne i8* %340, null
  br i1 %341, label %342, label %558

342:                                              ; preds = %339
  %343 = load i8*, i8** %14, align 8
  %344 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %344, i8** %14, align 8
  %345 = load i8*, i8** %14, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 0
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = icmp eq i32 %348, 32
  br i1 %349, label %350, label %353

350:                                              ; preds = %342
  %351 = load i8*, i8** %14, align 8
  %352 = getelementptr inbounds i8, i8* %351, i32 1
  store i8* %352, i8** %14, align 8
  br label %353

353:                                              ; preds = %350, %342
  %354 = load i8*, i8** %14, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 6
  %356 = load i8*, i8** %15, align 8
  %357 = icmp ult i8* %355, %356
  br i1 %357, label %358, label %422

358:                                              ; preds = %353
  %359 = load i8*, i8** %14, align 8
  %360 = call i32 @strncasecmp(i8* %359, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i64 0, i64 0), i64 5) #9
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %422, label %362

362:                                              ; preds = %358
  %363 = load i8*, i8** %14, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 5
  store i8* %364, i8** %16, align 8
  %365 = load i8*, i8** %16, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 0
  %367 = load i8, i8* %366, align 1
  %368 = sext i8 %367 to i32
  %369 = icmp eq i32 %368, 34
  br i1 %369, label %370, label %373

370:                                              ; preds = %362
  %371 = load i8*, i8** %16, align 8
  %372 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %372, i8** %16, align 8
  br label %373

373:                                              ; preds = %370, %362
  %374 = load i8*, i8** %16, align 8
  %375 = load i8*, i8** %15, align 8
  %376 = load i8*, i8** %14, align 8
  %377 = ptrtoint i8* %375 to i64
  %378 = ptrtoint i8* %376 to i64
  %379 = sub i64 %377, %378
  %380 = call i8* @memchr(i8* %374, i32 59, i64 %379) #9
  store i8* %380, i8** %14, align 8
  %381 = load i8*, i8** %14, align 8
  %382 = icmp ne i8* %381, null
  br i1 %382, label %402, label %383

383:                                              ; preds = %373
  %384 = load i8*, i8** %15, align 8
  %385 = load i8*, i8** %16, align 8
  %386 = ptrtoint i8* %384 to i64
  %387 = ptrtoint i8* %385 to i64
  %388 = sub i64 %386, %387
  %389 = trunc i64 %388 to i32
  store i32 %389, i32* %17, align 4
  %390 = load i8*, i8** %16, align 8
  %391 = load i32, i32* %17, align 4
  %392 = sub i32 %391, 1
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds i8, i8* %390, i64 %393
  %395 = load i8, i8* %394, align 1
  %396 = sext i8 %395 to i32
  %397 = icmp eq i32 %396, 13
  br i1 %397, label %398, label %401

398:                                              ; preds = %383
  %399 = load i32, i32* %17, align 4
  %400 = add i32 %399, -1
  store i32 %400, i32* %17, align 4
  br label %401

401:                                              ; preds = %398, %383
  br label %409

402:                                              ; preds = %373
  %403 = load i8*, i8** %14, align 8
  %404 = load i8*, i8** %16, align 8
  %405 = ptrtoint i8* %403 to i64
  %406 = ptrtoint i8* %404 to i64
  %407 = sub i64 %405, %406
  %408 = trunc i64 %407 to i32
  store i32 %408, i32* %17, align 4
  br label %409

409:                                              ; preds = %402, %401
  %410 = load i8*, i8** %16, align 8
  %411 = load i32, i32* %17, align 4
  %412 = sub i32 %411, 1
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %410, i64 %413
  %415 = load i8, i8* %414, align 1
  %416 = sext i8 %415 to i32
  %417 = icmp eq i32 %416, 34
  br i1 %417, label %418, label %421

418:                                              ; preds = %409
  %419 = load i32, i32* %17, align 4
  %420 = add i32 %419, -1
  store i32 %420, i32* %17, align 4
  br label %421

421:                                              ; preds = %418, %409
  br label %557

422:                                              ; preds = %358, %353
  %423 = load i8*, i8** %14, align 8
  %424 = getelementptr inbounds i8, i8* %423, i64 9
  %425 = load i8*, i8** %15, align 8
  %426 = icmp ult i8* %424, %425
  br i1 %426, label %427, label %548

427:                                              ; preds = %422
  %428 = load i8*, i8** %14, align 8
  %429 = call i32 @strncasecmp(i8* %428, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.142, i64 0, i64 0), i64 8) #9
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %548, label %431

431:                                              ; preds = %427
  store i8 0, i8* %25, align 1
  %432 = load i8*, i8** %14, align 8
  %433 = getelementptr inbounds i8, i8* %432, i64 8
  store i8* %433, i8** %14, align 8
  %434 = load i8*, i8** %14, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 0
  %436 = load i8, i8* %435, align 1
  %437 = sext i8 %436 to i32
  %438 = icmp eq i32 %437, 42
  br i1 %438, label %439, label %442

439:                                              ; preds = %431
  store i8 1, i8* %25, align 1
  %440 = load i8*, i8** %14, align 8
  %441 = getelementptr inbounds i8, i8* %440, i32 1
  store i8* %441, i8** %14, align 8
  br label %442

442:                                              ; preds = %439, %431
  %443 = load i8*, i8** %14, align 8
  %444 = getelementptr inbounds i8, i8* %443, i64 0
  %445 = load i8, i8* %444, align 1
  %446 = sext i8 %445 to i32
  %447 = icmp ne i32 %446, 61
  br i1 %447, label %448, label %449

448:                                              ; preds = %442
  br label %787

449:                                              ; preds = %442
  %450 = load i8*, i8** %14, align 8
  %451 = getelementptr inbounds i8, i8* %450, i32 1
  store i8* %451, i8** %14, align 8
  %452 = load i8*, i8** %14, align 8
  %453 = getelementptr inbounds i8, i8* %452, i64 0
  %454 = load i8, i8* %453, align 1
  %455 = sext i8 %454 to i32
  %456 = icmp eq i32 %455, 32
  br i1 %456, label %457, label %460

457:                                              ; preds = %449
  %458 = load i8*, i8** %14, align 8
  %459 = getelementptr inbounds i8, i8* %458, i32 1
  store i8* %459, i8** %14, align 8
  br label %460

460:                                              ; preds = %457, %449
  %461 = load i8*, i8** %14, align 8
  %462 = getelementptr inbounds i8, i8* %461, i64 0
  %463 = load i8, i8* %462, align 1
  %464 = sext i8 %463 to i32
  %465 = icmp eq i32 %464, 34
  br i1 %465, label %466, label %469

466:                                              ; preds = %460
  %467 = load i8*, i8** %14, align 8
  %468 = getelementptr inbounds i8, i8* %467, i32 1
  store i8* %468, i8** %14, align 8
  br label %469

469:                                              ; preds = %466, %460
  %470 = load i8*, i8** %20, align 8
  %471 = icmp ne i8* %470, null
  br i1 %471, label %472, label %483

472:                                              ; preds = %469
  %473 = load i8, i8* %25, align 1
  %474 = icmp ne i8 %473, 0
  br i1 %474, label %483, label %475

475:                                              ; preds = %472
  %476 = load i8*, i8** %20, align 8
  %477 = load i8*, i8** %15, align 8
  %478 = load i8*, i8** %14, align 8
  %479 = ptrtoint i8* %477 to i64
  %480 = ptrtoint i8* %478 to i64
  %481 = sub i64 %479, %480
  %482 = call i8* @memchr(i8* %476, i32 59, i64 %481) #9
  store i8* %482, i8** %14, align 8
  br label %339

483:                                              ; preds = %472, %469
  %484 = load i8*, i8** %14, align 8
  store i8* %484, i8** %20, align 8
  %485 = load i8*, i8** %20, align 8
  %486 = load i8*, i8** %15, align 8
  %487 = load i8*, i8** %14, align 8
  %488 = ptrtoint i8* %486 to i64
  %489 = ptrtoint i8* %487 to i64
  %490 = sub i64 %488, %489
  %491 = call i8* @memchr(i8* %485, i32 59, i64 %490) #9
  store i8* %491, i8** %14, align 8
  %492 = load i8*, i8** %14, align 8
  %493 = icmp ne i8* %492, null
  br i1 %493, label %513, label %494

494:                                              ; preds = %483
  %495 = load i8*, i8** %15, align 8
  %496 = load i8*, i8** %20, align 8
  %497 = ptrtoint i8* %495 to i64
  %498 = ptrtoint i8* %496 to i64
  %499 = sub i64 %497, %498
  %500 = trunc i64 %499 to i32
  store i32 %500, i32* %21, align 4
  %501 = load i8*, i8** %20, align 8
  %502 = load i32, i32* %21, align 4
  %503 = sub i32 %502, 1
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds i8, i8* %501, i64 %504
  %506 = load i8, i8* %505, align 1
  %507 = sext i8 %506 to i32
  %508 = icmp eq i32 %507, 13
  br i1 %508, label %509, label %512

509:                                              ; preds = %494
  %510 = load i32, i32* %21, align 4
  %511 = add i32 %510, -1
  store i32 %511, i32* %21, align 4
  br label %512

512:                                              ; preds = %509, %494
  br label %520

513:                                              ; preds = %483
  %514 = load i8*, i8** %14, align 8
  %515 = load i8*, i8** %20, align 8
  %516 = ptrtoint i8* %514 to i64
  %517 = ptrtoint i8* %515 to i64
  %518 = sub i64 %516, %517
  %519 = trunc i64 %518 to i32
  store i32 %519, i32* %21, align 4
  br label %520

520:                                              ; preds = %513, %512
  %521 = load i8*, i8** %20, align 8
  %522 = load i32, i32* %21, align 4
  %523 = sub i32 %522, 1
  %524 = zext i32 %523 to i64
  %525 = getelementptr inbounds i8, i8* %521, i64 %524
  %526 = load i8, i8* %525, align 1
  %527 = sext i8 %526 to i32
  %528 = icmp eq i32 %527, 34
  br i1 %528, label %529, label %532

529:                                              ; preds = %520
  %530 = load i32, i32* %21, align 4
  %531 = add i32 %530, -1
  store i32 %531, i32* %21, align 4
  br label %532

532:                                              ; preds = %529, %520
  %533 = load i8, i8* %25, align 1
  %534 = icmp ne i8 %533, 0
  br i1 %534, label %535, label %547

535:                                              ; preds = %532
  %536 = load i8*, i8** %20, align 8
  %537 = load i8*, i8** %20, align 8
  %538 = load i32, i32* %21, align 4
  %539 = zext i32 %538 to i64
  %540 = call i64 @http_mime_decode_url(i8* %536, i8* %537, i64 %539)
  store i64 %540, i64* %26, align 8
  %541 = load i64, i64* %26, align 8
  %542 = icmp sgt i64 %541, 0
  br i1 %542, label %543, label %546

543:                                              ; preds = %535
  %544 = load i64, i64* %26, align 8
  %545 = trunc i64 %544 to i32
  store i32 %545, i32* %21, align 4
  br label %546

546:                                              ; preds = %543, %535
  br label %547

547:                                              ; preds = %546, %532
  br label %556

548:                                              ; preds = %427, %422
  %549 = load i8*, i8** %14, align 8
  %550 = load i8*, i8** %15, align 8
  %551 = load i8*, i8** %14, align 8
  %552 = ptrtoint i8* %550 to i64
  %553 = ptrtoint i8* %551 to i64
  %554 = sub i64 %552, %553
  %555 = call i8* @memchr(i8* %549, i32 59, i64 %554) #9
  store i8* %555, i8** %14, align 8
  br label %556

556:                                              ; preds = %548, %547
  br label %557

557:                                              ; preds = %556, %421
  br label %339

558:                                              ; preds = %339
  br label %620

559:                                              ; preds = %325, %318
  %560 = load i8*, i8** %15, align 8
  %561 = load i8*, i8** %14, align 8
  %562 = ptrtoint i8* %560 to i64
  %563 = ptrtoint i8* %561 to i64
  %564 = sub i64 %562, %563
  %565 = icmp sgt i64 %564, 14
  br i1 %565, label %566, label %619

566:                                              ; preds = %559
  %567 = load i8*, i8** %14, align 8
  %568 = call i32 @strncasecmp(i8* %567, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.143, i64 0, i64 0), i64 13) #9
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %619, label %570

570:                                              ; preds = %566
  %571 = load i8*, i8** %14, align 8
  %572 = getelementptr inbounds i8, i8* %571, i64 13
  store i8* %572, i8** %14, align 8
  %573 = load i8*, i8** %14, align 8
  %574 = getelementptr inbounds i8, i8* %573, i64 0
  %575 = load i8, i8* %574, align 1
  %576 = sext i8 %575 to i32
  %577 = icmp eq i32 %576, 32
  br i1 %577, label %578, label %581

578:                                              ; preds = %570
  %579 = load i8*, i8** %14, align 8
  %580 = getelementptr inbounds i8, i8* %579, i32 1
  store i8* %580, i8** %14, align 8
  br label %581

581:                                              ; preds = %578, %570
  %582 = load i8*, i8** %14, align 8
  store i8* %582, i8** %22, align 8
  %583 = load i8*, i8** %14, align 8
  %584 = load i8*, i8** %15, align 8
  %585 = load i8*, i8** %14, align 8
  %586 = ptrtoint i8* %584 to i64
  %587 = ptrtoint i8* %585 to i64
  %588 = sub i64 %586, %587
  %589 = call i8* @memchr(i8* %583, i32 59, i64 %588) #9
  store i8* %589, i8** %14, align 8
  %590 = load i8*, i8** %14, align 8
  %591 = icmp ne i8* %590, null
  br i1 %591, label %611, label %592

592:                                              ; preds = %581
  %593 = load i8*, i8** %15, align 8
  %594 = load i8*, i8** %22, align 8
  %595 = ptrtoint i8* %593 to i64
  %596 = ptrtoint i8* %594 to i64
  %597 = sub i64 %595, %596
  %598 = trunc i64 %597 to i32
  store i32 %598, i32* %23, align 4
  %599 = load i8*, i8** %22, align 8
  %600 = load i32, i32* %23, align 4
  %601 = sub i32 %600, 1
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds i8, i8* %599, i64 %602
  %604 = load i8, i8* %603, align 1
  %605 = sext i8 %604 to i32
  %606 = icmp eq i32 %605, 13
  br i1 %606, label %607, label %610

607:                                              ; preds = %592
  %608 = load i32, i32* %23, align 4
  %609 = add i32 %608, -1
  store i32 %609, i32* %23, align 4
  br label %610

610:                                              ; preds = %607, %592
  br label %618

611:                                              ; preds = %581
  %612 = load i8*, i8** %14, align 8
  %613 = load i8*, i8** %22, align 8
  %614 = ptrtoint i8* %612 to i64
  %615 = ptrtoint i8* %613 to i64
  %616 = sub i64 %614, %615
  %617 = trunc i64 %616 to i32
  store i32 %617, i32* %23, align 4
  br label %618

618:                                              ; preds = %611, %610
  br label %619

619:                                              ; preds = %618, %566, %559
  br label %620

620:                                              ; preds = %619, %558
  %621 = load i8*, i8** %15, align 8
  %622 = getelementptr inbounds i8, i8* %621, i64 1
  store i8* %622, i8** %14, align 8
  %623 = load i8, i8* %24, align 1
  %624 = add i8 %623, 1
  store i8 %624, i8* %24, align 1
  %625 = zext i8 %623 to i32
  %626 = icmp sgt i32 %625, 4
  br i1 %626, label %627, label %628

627:                                              ; preds = %620
  br label %787

628:                                              ; preds = %620
  br label %284

629:                                              ; preds = %301
  %630 = load i8*, i8** %16, align 8
  %631 = icmp ne i8* %630, null
  br i1 %631, label %639, label %632

632:                                              ; preds = %629
  %633 = load i8*, i8** %14, align 8
  %634 = getelementptr inbounds i8, i8* %633, i64 4
  %635 = load i8*, i8** %10, align 8
  %636 = icmp uge i8* %634, %635
  br i1 %636, label %637, label %638

637:                                              ; preds = %632
  br label %771

638:                                              ; preds = %632
  br label %787

639:                                              ; preds = %629
  %640 = load i8*, i8** %14, align 8
  %641 = getelementptr inbounds i8, i8* %640, i32 1
  store i8* %641, i8** %14, align 8
  %642 = load i8*, i8** %14, align 8
  %643 = getelementptr inbounds i8, i8* %642, i64 0
  %644 = load i8, i8* %643, align 1
  %645 = sext i8 %644 to i32
  %646 = icmp eq i32 %645, 10
  br i1 %646, label %647, label %650

647:                                              ; preds = %639
  %648 = load i8*, i8** %14, align 8
  %649 = getelementptr inbounds i8, i8* %648, i32 1
  store i8* %649, i8** %14, align 8
  br label %650

650:                                              ; preds = %647, %639
  %651 = load i8*, i8** %14, align 8
  store i8* %651, i8** %18, align 8
  %652 = load i8*, i8** %14, align 8
  store i8* %652, i8** %15, align 8
  br label %653

653:                                              ; preds = %704, %650
  %654 = load i8*, i8** %15, align 8
  %655 = load i8*, i8** %10, align 8
  %656 = load i8*, i8** %15, align 8
  %657 = ptrtoint i8* %655 to i64
  %658 = ptrtoint i8* %656 to i64
  %659 = sub i64 %657, %658
  %660 = call i8* @memchr(i8* %654, i32 10, i64 %659) #9
  store i8* %660, i8** %15, align 8
  br label %661

661:                                              ; preds = %653
  %662 = load i8*, i8** %15, align 8
  %663 = icmp ne i8* %662, null
  br i1 %663, label %664, label %704

664:                                              ; preds = %661
  %665 = load i8*, i8** %15, align 8
  %666 = getelementptr inbounds i8, i8* %665, i32 1
  store i8* %666, i8** %15, align 8
  %667 = icmp ne i8* %666, null
  br i1 %667, label %668, label %704

668:                                              ; preds = %664
  %669 = load i8*, i8** %10, align 8
  %670 = load i8*, i8** %15, align 8
  %671 = ptrtoint i8* %669 to i64
  %672 = ptrtoint i8* %670 to i64
  %673 = sub i64 %671, %672
  %674 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %675 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %674, i32 0, i32 1
  %676 = load i64, i64* %675, align 8
  %677 = add i64 4, %676
  %678 = icmp uge i64 %673, %677
  br i1 %678, label %679, label %704

679:                                              ; preds = %668
  %680 = load i8*, i8** %15, align 8
  %681 = getelementptr inbounds i8, i8* %680, i64 0
  %682 = load i8, i8* %681, align 1
  %683 = sext i8 %682 to i32
  %684 = icmp ne i32 %683, 45
  br i1 %684, label %702, label %685

685:                                              ; preds = %679
  %686 = load i8*, i8** %15, align 8
  %687 = getelementptr inbounds i8, i8* %686, i64 1
  %688 = load i8, i8* %687, align 1
  %689 = sext i8 %688 to i32
  %690 = icmp ne i32 %689, 45
  br i1 %690, label %702, label %691

691:                                              ; preds = %685
  %692 = load i8*, i8** %15, align 8
  %693 = getelementptr inbounds i8, i8* %692, i64 2
  %694 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %695 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %694, i32 0, i32 0
  %696 = load i8*, i8** %695, align 8
  %697 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %698 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %697, i32 0, i32 1
  %699 = load i64, i64* %698, align 8
  %700 = call i32 @memcmp(i8* %693, i8* %696, i64 %699) #9
  %701 = icmp ne i32 %700, 0
  br label %702

702:                                              ; preds = %691, %685, %679
  %703 = phi i1 [ true, %685 ], [ true, %679 ], [ %701, %691 ]
  br label %704

704:                                              ; preds = %702, %668, %664, %661
  %705 = phi i1 [ false, %668 ], [ false, %664 ], [ false, %661 ], [ %703, %702 ]
  br i1 %705, label %653, label %706

706:                                              ; preds = %704
  %707 = load i8*, i8** %15, align 8
  %708 = icmp ne i8* %707, null
  br i1 %708, label %709, label %718

709:                                              ; preds = %706
  %710 = load i8*, i8** %15, align 8
  %711 = getelementptr inbounds i8, i8* %710, i64 4
  %712 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %713 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %712, i32 0, i32 1
  %714 = load i64, i64* %713, align 8
  %715 = getelementptr inbounds i8, i8* %711, i64 %714
  %716 = load i8*, i8** %10, align 8
  %717 = icmp uge i8* %715, %716
  br i1 %717, label %718, label %736

718:                                              ; preds = %709, %706
  %719 = load i32, i32* %8, align 4
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %721, label %735

721:                                              ; preds = %718
  %722 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %723 = load i8*, i8** %16, align 8
  %724 = load i32, i32* %17, align 4
  %725 = zext i32 %724 to i64
  %726 = load i8*, i8** %20, align 8
  %727 = load i32, i32* %21, align 4
  %728 = zext i32 %727 to i64
  %729 = load i8*, i8** %22, align 8
  %730 = load i32, i32* %23, align 4
  %731 = zext i32 %730 to i64
  call void @http_mime_parser_on_partial_start(%struct.http_mime_parser_s* %722, i8* %723, i64 %725, i8* %726, i64 %728, i8* %729, i64 %731)
  %732 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %733 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %732, i32 0, i32 2
  store i8 1, i8* %733, align 8
  %734 = load i8*, i8** %18, align 8
  store i8* %734, i8** %9, align 8
  br label %35

735:                                              ; preds = %718
  br label %771

736:                                              ; preds = %709
  %737 = load i8*, i8** %15, align 8
  %738 = load i8*, i8** %18, align 8
  %739 = ptrtoint i8* %737 to i64
  %740 = ptrtoint i8* %738 to i64
  %741 = sub i64 %739, %740
  %742 = sub nsw i64 %741, 1
  %743 = trunc i64 %742 to i32
  store i32 %743, i32* %19, align 4
  %744 = load i8*, i8** %18, align 8
  %745 = load i32, i32* %19, align 4
  %746 = sub i32 %745, 1
  %747 = zext i32 %746 to i64
  %748 = getelementptr inbounds i8, i8* %744, i64 %747
  %749 = load i8, i8* %748, align 1
  %750 = sext i8 %749 to i32
  %751 = icmp eq i32 %750, 13
  br i1 %751, label %752, label %755

752:                                              ; preds = %736
  %753 = load i32, i32* %19, align 4
  %754 = add i32 %753, -1
  store i32 %754, i32* %19, align 4
  br label %755

755:                                              ; preds = %752, %736
  %756 = load i8*, i8** %15, align 8
  store i8* %756, i8** %9, align 8
  %757 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %758 = load i8*, i8** %16, align 8
  %759 = load i32, i32* %17, align 4
  %760 = zext i32 %759 to i64
  %761 = load i8*, i8** %20, align 8
  %762 = load i32, i32* %21, align 4
  %763 = zext i32 %762 to i64
  %764 = load i8*, i8** %22, align 8
  %765 = load i32, i32* %23, align 4
  %766 = zext i32 %765 to i64
  %767 = load i8*, i8** %18, align 8
  %768 = load i32, i32* %19, align 4
  %769 = zext i32 %768 to i64
  call void @http_mime_parser_on_data(%struct.http_mime_parser_s* %757, i8* %758, i64 %760, i8* %761, i64 %763, i8* %764, i64 %766, i8* %767, i64 %769)
  store i32 0, i32* %8, align 4
  br label %217

770:                                              ; preds = %217
  br label %771

771:                                              ; preds = %770, %735, %637, %317, %153, %116, %33
  %772 = load i8*, i8** %9, align 8
  %773 = ptrtoint i8* %772 to i64
  %774 = load i8*, i8** %6, align 8
  %775 = ptrtoint i8* %774 to i64
  %776 = sub i64 %773, %775
  store i64 %776, i64* %4, align 8
  br label %797

777:                                              ; preds = %267
  %778 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %779 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %778, i32 0, i32 3
  store i8 1, i8* %779, align 1
  %780 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %781 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %780, i32 0, i32 4
  store i8 0, i8* %781, align 2
  %782 = load i8*, i8** %9, align 8
  %783 = ptrtoint i8* %782 to i64
  %784 = load i8*, i8** %6, align 8
  %785 = ptrtoint i8* %784 to i64
  %786 = sub i64 %783, %785
  store i64 %786, i64* %4, align 8
  br label %797

787:                                              ; preds = %638, %627, %448, %316, %214
  %788 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %789 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %788, i32 0, i32 3
  store i8 0, i8* %789, align 1
  %790 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %5, align 8
  %791 = getelementptr inbounds %struct.http_mime_parser_s, %struct.http_mime_parser_s* %790, i32 0, i32 4
  store i8 1, i8* %791, align 2
  %792 = load i8*, i8** %9, align 8
  %793 = ptrtoint i8* %792 to i64
  %794 = load i8*, i8** %6, align 8
  %795 = ptrtoint i8* %794 to i64
  %796 = sub i64 %793, %795
  store i64 %796, i64* %4, align 8
  br label %797

797:                                              ; preds = %787, %777, %771
  %798 = load i64, i64* %4, align 8
  ret i64 %798
}

declare dso_local void @fiobj_data_pread(%struct.fio_str_info_s* sret, i64, i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_req2str(%struct.http_s*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.http_s*, align 8
  %4 = alloca %struct.header_writer_s, align 8
  %5 = alloca %struct.fio_str_info_s, align 8
  store %struct.http_s* %0, %struct.http_s** %3, align 8
  %6 = load %struct.http_s*, %struct.http_s** %3, align 8
  %7 = icmp ne %struct.http_s* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.http_s*, %struct.http_s** %3, align 8
  %10 = getelementptr inbounds %struct.http_s, %struct.http_s* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = load %struct.http_s*, %struct.http_s** %3, align 8
  %15 = getelementptr inbounds %struct.http_s, %struct.http_s* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.http_s*, %struct.http_s** %3, align 8
  %20 = getelementptr inbounds %struct.http_s, %struct.http_s* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18, %13, %8
  %24 = load %struct.http_s*, %struct.http_s** %3, align 8
  %25 = getelementptr inbounds %struct.http_s, %struct.http_s* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @fiobj_hash_count(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %18, %1
  store i64 0, i64* %2, align 8
  br label %151

30:                                               ; preds = %23
  %31 = call i64 @fiobj_str_buf(i64 0)
  %32 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load %struct.http_s*, %struct.http_s** %3, align 8
  %34 = getelementptr inbounds %struct.http_s, %struct.http_s* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.http_s*, %struct.http_s** %3, align 8
  %41 = getelementptr inbounds %struct.http_s, %struct.http_s* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @fiobj_str_concat(i64 %39, i64 %42)
  %44 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @fiobj_str_write(i64 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 1)
  %47 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.http_s*, %struct.http_s** %3, align 8
  %50 = getelementptr inbounds %struct.http_s, %struct.http_s* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @fiobj_num_tmp(i64 %51)
  %53 = call i64 @fiobj_str_concat(i64 %48, i64 %52)
  %54 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @fiobj_str_write(i64 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 1)
  %57 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.http_s*, %struct.http_s** %3, align 8
  %60 = getelementptr inbounds %struct.http_s, %struct.http_s* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @fiobj_str_concat(i64 %58, i64 %61)
  %63 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @fiobj_str_write(i64 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 2)
  br label %128

66:                                               ; preds = %30
  %67 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.http_s*, %struct.http_s** %3, align 8
  %70 = getelementptr inbounds %struct.http_s, %struct.http_s* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @fiobj_str_concat(i64 %68, i64 %71)
  %73 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @fiobj_str_write(i64 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 1)
  %76 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.http_s*, %struct.http_s** %3, align 8
  %79 = getelementptr inbounds %struct.http_s, %struct.http_s* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @fiobj_str_concat(i64 %77, i64 %80)
  %82 = load %struct.http_s*, %struct.http_s** %3, align 8
  %83 = getelementptr inbounds %struct.http_s, %struct.http_s* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %66
  %87 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @fiobj_str_write(i64 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 1)
  %90 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.http_s*, %struct.http_s** %3, align 8
  %93 = getelementptr inbounds %struct.http_s, %struct.http_s* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @fiobj_str_concat(i64 %91, i64 %94)
  br label %96

96:                                               ; preds = %86, %66
  %97 = load %struct.http_s*, %struct.http_s** %3, align 8
  %98 = getelementptr inbounds %struct.http_s, %struct.http_s* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %5, i64 %99)
  %100 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ult i64 %101, 6
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 5
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 49
  br i1 %109, label %110, label %114

110:                                              ; preds = %103, %96
  %111 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @fiobj_str_write(i64 %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i64 10)
  br label %127

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @fiobj_str_write(i64 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 1)
  %118 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.http_s*, %struct.http_s** %3, align 8
  %121 = getelementptr inbounds %struct.http_s, %struct.http_s* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @fiobj_str_concat(i64 %119, i64 %122)
  %124 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @fiobj_str_write(i64 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 2)
  br label %127

127:                                              ; preds = %114, %110
  br label %128

128:                                              ; preds = %127, %37
  %129 = load %struct.http_s*, %struct.http_s** %3, align 8
  %130 = getelementptr inbounds %struct.http_s, %struct.http_s* %129, i32 0, i32 8
  %131 = load i64, i64* %130, align 8
  %132 = bitcast %struct.header_writer_s* %4 to i8*
  %133 = call i64 @fiobj_each1(i64 %131, i64 0, i32 (i64, i8*)* @write_header, i8* %132)
  %134 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @fiobj_str_write(i64 %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 2)
  %137 = load %struct.http_s*, %struct.http_s** %3, align 8
  %138 = getelementptr inbounds %struct.http_s, %struct.http_s* %137, i32 0, i32 11
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %128
  %142 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.http_s*, %struct.http_s** %3, align 8
  %145 = getelementptr inbounds %struct.http_s, %struct.http_s* %144, i32 0, i32 11
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @fiobj_str_concat(i64 %143, i64 %146)
  br label %148

148:                                              ; preds = %141, %128
  %149 = getelementptr inbounds %struct.header_writer_s, %struct.header_writer_s* %4, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %2, align 8
  br label %151

151:                                              ; preds = %148, %29
  %152 = load i64, i64* %2, align 8
  ret i64 %152
}

declare dso_local i64 @fiobj_num_tmp(i64) #4

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
  %51 = call i64 @fiobj_str_write(i64 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i64 0, i64 0), i64 1)
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
  %63 = call i64 @fiobj_str_write(i64 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 2)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %39, %38, %25, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_write_log(%struct.http_s*) #0 {
  %2 = alloca %struct.http_s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fio_str_info_s, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  %11 = call i64 @fiobj_str_buf(i64 128)
  store i64 %11, i64* %3, align 8
  %12 = load %struct.http_s*, %struct.http_s** %2, align 8
  %13 = getelementptr inbounds %struct.http_s, %struct.http_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HTTP_HEADER_CONTENT_LENGTH, align 8
  %17 = call i64 @fiobj_obj2hash(i64 %16)
  %18 = call i64 @fiobj_hash_get2(i64 %15, i64 %17)
  %19 = call i64 @fiobj_obj2num(i64 %18)
  store i64 %19, i64* %4, align 8
  %20 = call i32 @clock_gettime(i32 0, %struct.timespec* %6) #1
  %21 = load %struct.http_s*, %struct.http_s** %2, align 8
  %22 = getelementptr inbounds %struct.http_s, %struct.http_s* %21, i32 0, i32 1
  %23 = bitcast %struct.timespec* %5 to i8*
  %24 = bitcast %struct.timespec* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  %25 = load %struct.http_s*, %struct.http_s** %2, align 8
  %26 = getelementptr inbounds %struct.http_s, %struct.http_s* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.http_fio_protocol_s*
  %30 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  call void @fio_peer_addr(%struct.fio_str_info_s* sret %7, i64 %31)
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @fiobj_str_write(i64 %32, i8* %34, i64 %36)
  %38 = load i64, i64* %3, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %8, i64 %38)
  %39 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %1
  %43 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %44, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), i64 9, i1 false)
  %45 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1
  store i64 9, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %1
  %47 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %51, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i64 6, i1 false)
  %52 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 6
  store i64 %54, i64* %52, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  call void @fiobj_str_resize(i64 %55, i64 %57)
  call void @fio_lock(i8* @date_lock)
  %58 = load i64, i64* @current_date, align 8
  %59 = call i64 @fiobj_dup(i64 %58)
  store i64 %59, i64* %9, align 8
  %60 = call i32 @fio_unlock(i8* @date_lock)
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @current_date, align 8
  %63 = call i64 @fiobj_str_concat(i64 %61, i64 %62)
  %64 = load i64, i64* %9, align 8
  call void @fiobj_free(i64 %64)
  %65 = load i64, i64* %3, align 8
  %66 = call i64 @fiobj_str_write(i64 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0), i64 3)
  %67 = load i64, i64* %3, align 8
  %68 = load %struct.http_s*, %struct.http_s** %2, align 8
  %69 = getelementptr inbounds %struct.http_s, %struct.http_s* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @fiobj_str_concat(i64 %67, i64 %70)
  %72 = load i64, i64* %3, align 8
  %73 = call i64 @fiobj_str_write(i64 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 1)
  %74 = load i64, i64* %3, align 8
  %75 = load %struct.http_s*, %struct.http_s** %2, align 8
  %76 = getelementptr inbounds %struct.http_s, %struct.http_s* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @fiobj_str_concat(i64 %74, i64 %77)
  %79 = load i64, i64* %3, align 8
  %80 = call i64 @fiobj_str_write(i64 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 1)
  %81 = load i64, i64* %3, align 8
  %82 = load %struct.http_s*, %struct.http_s** %2, align 8
  %83 = getelementptr inbounds %struct.http_s, %struct.http_s* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @fiobj_str_concat(i64 %81, i64 %84)
  %86 = load i64, i64* %3, align 8
  %87 = call i64 @fiobj_str_write(i64 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), i64 2)
  %88 = load i64, i64* %4, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %46
  %91 = load i64, i64* %3, align 8
  %92 = load %struct.http_s*, %struct.http_s** %2, align 8
  %93 = getelementptr inbounds %struct.http_s, %struct.http_s* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @fiobj_str_write_i(i64 %91, i64 %94)
  %96 = load i64, i64* %3, align 8
  %97 = call i64 @fiobj_str_write(i64 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 1)
  %98 = load i64, i64* %3, align 8
  %99 = load i64, i64* %4, align 8
  %100 = call i64 @fiobj_str_write_i(i64 %98, i64 %99)
  %101 = load i64, i64* %3, align 8
  %102 = call i64 @fiobj_str_write(i64 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), i64 2)
  br label %112

103:                                              ; preds = %46
  %104 = load i64, i64* %3, align 8
  %105 = load %struct.http_s*, %struct.http_s** %2, align 8
  %106 = getelementptr inbounds %struct.http_s, %struct.http_s* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @fiobj_num_tmp(i64 %107)
  %109 = call i64 @fiobj_str_concat(i64 %104, i64 %108)
  %110 = load i64, i64* %3, align 8
  %111 = call i64 @fiobj_str_write(i64 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i64 4)
  br label %112

112:                                              ; preds = %103, %90
  %113 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %114, %116
  %118 = mul nsw i64 %117, 1000
  %119 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %120, %122
  %124 = sdiv i64 %123, 1000000
  %125 = add nsw i64 %118, %124
  store i64 %125, i64* %4, align 8
  %126 = load i64, i64* %3, align 8
  %127 = load i64, i64* %4, align 8
  %128 = call i64 @fiobj_str_write_i(i64 %126, i64 %127)
  %129 = load i64, i64* %3, align 8
  %130 = call i64 @fiobj_str_write(i64 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i64 4)
  %131 = load i64, i64* %3, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %10, i64 %131)
  %132 = bitcast %struct.fio_str_info_s* %8 to i8*
  %133 = bitcast %struct.fio_str_info_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %132, i8* align 8 %133, i64 24, i1 false)
  %134 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %139 = call i64 @fwrite(i8* %135, i64 1, i64 %137, %struct._IO_FILE* %138)
  %140 = load i64, i64* %3, align 8
  call void @fiobj_free(i64 %140)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_obj2num(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 1
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, -9223372036854775808
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i64 -4611686018427387904, i64 0
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, 9223372036854775807
  %16 = lshr i64 %15, 1
  %17 = load i64, i64* %4, align 8
  %18 = or i64 %16, %17
  store i64 %18, i64* %2, align 8
  br label %45

19:                                               ; preds = %1
  %20 = load i64, i64* %3, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i64, i64* %3, align 8
  %27 = and i64 %26, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, i64* %3, align 8
  %31 = and i64 %30, 6
  %32 = icmp ne i64 %31, 6
  br i1 %32, label %38, label %33

33:                                               ; preds = %29, %25, %22, %19
  %34 = load i64, i64* %3, align 8
  %35 = icmp eq i64 %34, 22
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %2, align 8
  br label %45

38:                                               ; preds = %29
  %39 = load i64, i64* %3, align 8
  %40 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %39)
  %41 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %40, i32 0, i32 7
  %42 = load i64 (i64)*, i64 (i64)** %41, align 8
  %43 = load i64, i64* %3, align 8
  %44 = call i64 %42(i64 %43)
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %38, %33, %8
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

; Function Attrs: nounwind
declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #2

declare dso_local i64 @fiobj_str_write_i(i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm* @http_gmtime(i64, %struct.tm*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tm, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store i64 %0, i64* %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %16 = load %struct.tm*, %struct.tm** %4, align 8
  %17 = bitcast %struct.tm* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 56, i1 false)
  %18 = bitcast %struct.tm* %16 to i8*
  %19 = bitcast %struct.tm* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 56, i1 false)
  %20 = load i64, i64* %3, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %2
  %23 = load i64, i64* %3, align 8
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = sdiv i64 %24, 60
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = mul nsw i64 %27, 60
  %29 = sub nsw i64 %26, %28
  %30 = trunc i64 %29 to i32
  %31 = load %struct.tm*, %struct.tm** %4, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = sdiv i64 %33, 60
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = mul nsw i64 %36, 60
  %38 = sub nsw i64 %35, %37
  %39 = trunc i64 %38 to i32
  %40 = load %struct.tm*, %struct.tm** %4, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i64, i64* %5, align 8
  %43 = sdiv i64 %42, 24
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = mul nsw i64 %45, 24
  %47 = sub nsw i64 %44, %46
  %48 = trunc i64 %47 to i32
  %49 = load %struct.tm*, %struct.tm** %4, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add nsw i64 %51, 4
  %53 = srem i64 %52, 7
  %54 = trunc i64 %53 to i32
  %55 = load %struct.tm*, %struct.tm** %4, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  br label %138

57:                                               ; preds = %2
  %58 = load i64, i64* %3, align 8
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* %5, align 8
  %60 = sdiv i64 %59, 60
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = mul nsw i64 %61, 60
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %57
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = mul nsw i64 %67, 60
  %69 = sub nsw i64 %66, %68
  %70 = add nsw i64 %69, 60
  %71 = trunc i64 %70 to i32
  %72 = load %struct.tm*, %struct.tm** %4, align 8
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %6, align 8
  br label %79

76:                                               ; preds = %57
  %77 = load %struct.tm*, %struct.tm** %4, align 8
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %65
  %80 = load i64, i64* %6, align 8
  %81 = sdiv i64 %80, 60
  store i64 %81, i64* %5, align 8
  %82 = load i64, i64* %5, align 8
  %83 = mul nsw i64 %82, 60
  %84 = load i64, i64* %6, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %5, align 8
  %89 = mul nsw i64 %88, 60
  %90 = sub nsw i64 %87, %89
  %91 = add nsw i64 %90, 60
  %92 = trunc i64 %91 to i32
  %93 = load %struct.tm*, %struct.tm** %4, align 8
  %94 = getelementptr inbounds %struct.tm, %struct.tm* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i64, i64* %5, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %5, align 8
  br label %100

97:                                               ; preds = %79
  %98 = load %struct.tm*, %struct.tm** %4, align 8
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %86
  %101 = load i64, i64* %5, align 8
  %102 = sdiv i64 %101, 24
  store i64 %102, i64* %6, align 8
  %103 = load i64, i64* %6, align 8
  %104 = mul nsw i64 %103, 24
  %105 = load i64, i64* %5, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %100
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* %6, align 8
  %110 = mul nsw i64 %109, 24
  %111 = sub nsw i64 %108, %110
  %112 = add nsw i64 %111, 24
  %113 = trunc i64 %112 to i32
  %114 = load %struct.tm*, %struct.tm** %4, align 8
  %115 = getelementptr inbounds %struct.tm, %struct.tm* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load i64, i64* %6, align 8
  %117 = add nsw i64 %116, -1
  store i64 %117, i64* %6, align 8
  br label %121

118:                                              ; preds = %100
  %119 = load %struct.tm*, %struct.tm** %4, align 8
  %120 = getelementptr inbounds %struct.tm, %struct.tm* %119, i32 0, i32 2
  store i32 0, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %107
  %122 = load i64, i64* %6, align 8
  %123 = sub nsw i64 %122, 3
  %124 = srem i64 %123, 7
  %125 = trunc i64 %124 to i32
  %126 = load %struct.tm*, %struct.tm** %4, align 8
  %127 = getelementptr inbounds %struct.tm, %struct.tm* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 8
  %128 = load %struct.tm*, %struct.tm** %4, align 8
  %129 = getelementptr inbounds %struct.tm, %struct.tm* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %121
  %133 = load %struct.tm*, %struct.tm** %4, align 8
  %134 = getelementptr inbounds %struct.tm, %struct.tm* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 7
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %132, %121
  br label %138

138:                                              ; preds = %137, %22
  %139 = load i64, i64* %6, align 8
  %140 = add nsw i64 %139, 719468
  store i64 %140, i64* %6, align 8
  %141 = load i64, i64* %6, align 8
  %142 = icmp sge i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i64, i64* %6, align 8
  br label %148

145:                                              ; preds = %138
  %146 = load i64, i64* %6, align 8
  %147 = sub nsw i64 %146, 146096
  br label %148

148:                                              ; preds = %145, %143
  %149 = phi i64 [ %144, %143 ], [ %147, %145 ]
  %150 = sdiv i64 %149, 146097
  store i64 %150, i64* %8, align 8
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* %8, align 8
  %153 = mul i64 %152, 146097
  %154 = sub i64 %151, %153
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = udiv i32 %157, 1460
  %159 = sub i32 %156, %158
  %160 = load i32, i32* %9, align 4
  %161 = udiv i32 %160, 36524
  %162 = add i32 %159, %161
  %163 = load i32, i32* %9, align 4
  %164 = udiv i32 %163, 146096
  %165 = sub i32 %162, %164
  %166 = udiv i32 %165, 365
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* %10, align 2
  %168 = load i16, i16* %10, align 2
  %169 = zext i16 %168 to i64
  store i64 %169, i64* %5, align 8
  %170 = load i64, i64* %8, align 8
  %171 = mul i64 %170, 400
  %172 = load i64, i64* %5, align 8
  %173 = add i64 %172, %171
  store i64 %173, i64* %5, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load i16, i16* %10, align 2
  %176 = zext i16 %175 to i32
  %177 = mul nsw i32 365, %176
  %178 = load i16, i16* %10, align 2
  %179 = zext i16 %178 to i32
  %180 = sdiv i32 %179, 4
  %181 = add nsw i32 %177, %180
  %182 = load i16, i16* %10, align 2
  %183 = zext i16 %182 to i32
  %184 = sdiv i32 %183, 100
  %185 = sub nsw i32 %181, %184
  %186 = sub i32 %174, %185
  %187 = trunc i32 %186 to i16
  store i16 %187, i16* %11, align 2
  %188 = load i16, i16* %11, align 2
  %189 = zext i16 %188 to i32
  %190 = mul i32 5, %189
  %191 = add i32 %190, 2
  %192 = udiv i32 %191, 153
  %193 = trunc i32 %192 to i16
  store i16 %193, i16* %12, align 2
  %194 = load i16, i16* %11, align 2
  %195 = zext i16 %194 to i32
  %196 = load i16, i16* %12, align 2
  %197 = zext i16 %196 to i32
  %198 = mul i32 153, %197
  %199 = add i32 %198, 2
  %200 = udiv i32 %199, 5
  %201 = sub i32 %195, %200
  %202 = add i32 %201, 1
  %203 = trunc i32 %202 to i16
  store i16 %203, i16* %13, align 2
  %204 = load i16, i16* %12, align 2
  %205 = zext i16 %204 to i32
  %206 = load i16, i16* %12, align 2
  %207 = zext i16 %206 to i32
  %208 = icmp slt i32 %207, 10
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i32 2, i32 -10
  %211 = add nsw i32 %205, %210
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %14, align 1
  %213 = load i8, i8* %14, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp sle i32 %214, 1
  %216 = zext i1 %215 to i32
  %217 = sext i32 %216 to i64
  %218 = load i64, i64* %5, align 8
  %219 = add nsw i64 %218, %217
  store i64 %219, i64* %5, align 8
  %220 = load i64, i64* %5, align 8
  %221 = sub nsw i64 %220, 1900
  %222 = trunc i64 %221 to i32
  %223 = load %struct.tm*, %struct.tm** %4, align 8
  %224 = getelementptr inbounds %struct.tm, %struct.tm* %223, i32 0, i32 5
  store i32 %222, i32* %224, align 4
  %225 = load i8, i8* %14, align 1
  %226 = zext i8 %225 to i32
  %227 = load %struct.tm*, %struct.tm** %4, align 8
  %228 = getelementptr inbounds %struct.tm, %struct.tm* %227, i32 0, i32 4
  store i32 %226, i32* %228, align 8
  %229 = load i16, i16* %13, align 2
  %230 = zext i16 %229 to i32
  %231 = load %struct.tm*, %struct.tm** %4, align 8
  %232 = getelementptr inbounds %struct.tm, %struct.tm* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 4
  %233 = load i64, i64* %5, align 8
  %234 = srem i64 %233, 4
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %148
  %237 = load i64, i64* %5, align 8
  %238 = srem i64 %237, 100
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %236
  %241 = load i64, i64* %5, align 8
  %242 = srem i64 %241, 400
  %243 = icmp eq i64 %242, 0
  br label %244

244:                                              ; preds = %240, %236
  %245 = phi i1 [ true, %236 ], [ %243, %240 ]
  br label %246

246:                                              ; preds = %244, %148
  %247 = phi i1 [ false, %148 ], [ %245, %244 ]
  %248 = zext i1 %247 to i32
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %15, align 1
  %250 = load i16, i16* %11, align 2
  %251 = zext i16 %250 to i32
  %252 = load i8, i8* %15, align 1
  %253 = zext i8 %252 to i32
  %254 = add nsw i32 %251, %253
  %255 = add nsw i32 %254, 28
  %256 = add nsw i32 %255, 31
  %257 = load i8, i8* %15, align 1
  %258 = zext i8 %257 to i32
  %259 = add nsw i32 365, %258
  %260 = srem i32 %256, %259
  %261 = load %struct.tm*, %struct.tm** %4, align 8
  %262 = getelementptr inbounds %struct.tm, %struct.tm* %261, i32 0, i32 7
  store i32 %260, i32* %262, align 4
  %263 = load %struct.tm*, %struct.tm** %4, align 8
  ret %struct.tm* %263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_date2rfc7231(i8*, %struct.tm*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  %8 = load %struct.tm*, %struct.tm** %4, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [7 x i8*], [7 x i8*]* @DAY_NAMES, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 %15, i8* %17, align 1
  %18 = load %struct.tm*, %struct.tm** %4, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [7 x i8*], [7 x i8*]* @DAY_NAMES, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 %25, i8* %27, align 1
  %28 = load %struct.tm*, %struct.tm** %4, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [7 x i8*], [7 x i8*]* @DAY_NAMES, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8 %35, i8* %37, align 1
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  store i8 44, i8* %39, align 1
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  store i8 32, i8* %41, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 5
  store i8* %43, i8** %5, align 8
  %44 = load %struct.tm*, %struct.tm** %4, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 10
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %6, align 2
  %49 = load i16, i16* %6, align 2
  %50 = zext i16 %49 to i32
  %51 = add nsw i32 48, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 %52, i8* %54, align 1
  %55 = load %struct.tm*, %struct.tm** %4, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i16, i16* %6, align 2
  %59 = zext i16 %58 to i32
  %60 = mul nsw i32 %59, 10
  %61 = sub nsw i32 %57, %60
  %62 = add nsw i32 48, %61
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8 %63, i8* %65, align 1
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8* %67, i8** %5, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  store i8 32, i8* %68, align 1
  %70 = load %struct.tm*, %struct.tm** %4, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [12 x i8*], [12 x i8*]* @MONTH_NAMES, i64 0, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  store i8 %77, i8* %79, align 1
  %80 = load %struct.tm*, %struct.tm** %4, align 8
  %81 = getelementptr inbounds %struct.tm, %struct.tm* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [12 x i8*], [12 x i8*]* @MONTH_NAMES, i64 0, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8 %87, i8* %89, align 1
  %90 = load %struct.tm*, %struct.tm** %4, align 8
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [12 x i8*], [12 x i8*]* @MONTH_NAMES, i64 0, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  store i8 %97, i8* %99, align 1
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 3
  store i8 32, i8* %101, align 1
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.tm*, %struct.tm** %4, align 8
  %106 = getelementptr inbounds %struct.tm, %struct.tm* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1900
  %109 = sext i32 %108 to i64
  %110 = call i64 @fio_ltoa(i8* %104, i64 %109, i8 zeroext 10)
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 %110
  store i8* %112, i8** %5, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  store i8 32, i8* %113, align 1
  %115 = load %struct.tm*, %struct.tm** %4, align 8
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = sdiv i32 %117, 10
  %119 = trunc i32 %118 to i16
  store i16 %119, i16* %6, align 2
  %120 = load i16, i16* %6, align 2
  %121 = zext i16 %120 to i32
  %122 = add nsw i32 48, %121
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  store i8 %123, i8* %125, align 1
  %126 = load %struct.tm*, %struct.tm** %4, align 8
  %127 = getelementptr inbounds %struct.tm, %struct.tm* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i16, i16* %6, align 2
  %130 = zext i16 %129 to i32
  %131 = mul nsw i32 %130, 10
  %132 = sub nsw i32 %128, %131
  %133 = add nsw i32 48, %132
  %134 = trunc i32 %133 to i8
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  store i8 %134, i8* %136, align 1
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  store i8 58, i8* %138, align 1
  %139 = load %struct.tm*, %struct.tm** %4, align 8
  %140 = getelementptr inbounds %struct.tm, %struct.tm* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %141, 10
  %143 = trunc i32 %142 to i16
  store i16 %143, i16* %6, align 2
  %144 = load i16, i16* %6, align 2
  %145 = zext i16 %144 to i32
  %146 = add nsw i32 48, %145
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** %5, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 3
  store i8 %147, i8* %149, align 1
  %150 = load %struct.tm*, %struct.tm** %4, align 8
  %151 = getelementptr inbounds %struct.tm, %struct.tm* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i16, i16* %6, align 2
  %154 = zext i16 %153 to i32
  %155 = mul nsw i32 %154, 10
  %156 = sub nsw i32 %152, %155
  %157 = add nsw i32 48, %156
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %5, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 4
  store i8 %158, i8* %160, align 1
  %161 = load i8*, i8** %5, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 5
  store i8 58, i8* %162, align 1
  %163 = load %struct.tm*, %struct.tm** %4, align 8
  %164 = getelementptr inbounds %struct.tm, %struct.tm* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sdiv i32 %165, 10
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* %6, align 2
  %168 = load i16, i16* %6, align 2
  %169 = zext i16 %168 to i32
  %170 = add nsw i32 48, %169
  %171 = trunc i32 %170 to i8
  %172 = load i8*, i8** %5, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 6
  store i8 %171, i8* %173, align 1
  %174 = load %struct.tm*, %struct.tm** %4, align 8
  %175 = getelementptr inbounds %struct.tm, %struct.tm* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i16, i16* %6, align 2
  %178 = zext i16 %177 to i32
  %179 = mul nsw i32 %178, 10
  %180 = sub nsw i32 %176, %179
  %181 = add nsw i32 48, %180
  %182 = trunc i32 %181 to i8
  %183 = load i8*, i8** %5, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 7
  store i8 %182, i8* %184, align 1
  %185 = load i8*, i8** %5, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 8
  store i8* %186, i8** %5, align 8
  %187 = load i8*, i8** %5, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  store i8 32, i8* %188, align 1
  %189 = load i8*, i8** @GMT_STR, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = load i8*, i8** %5, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 1
  store i8 %191, i8* %193, align 1
  %194 = load i8*, i8** @GMT_STR, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = load i8, i8* %195, align 1
  %197 = load i8*, i8** %5, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 2
  store i8 %196, i8* %198, align 1
  %199 = load i8*, i8** @GMT_STR, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 2
  %201 = load i8, i8* %200, align 1
  %202 = load i8*, i8** %5, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 3
  store i8 %201, i8* %203, align 1
  %204 = load i8*, i8** %5, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 4
  store i8 0, i8* %205, align 1
  %206 = load i8*, i8** %5, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 4
  store i8* %207, i8** %5, align 8
  %208 = load i8*, i8** %5, align 8
  %209 = load i8*, i8** %3, align 8
  %210 = ptrtoint i8* %208 to i64
  %211 = ptrtoint i8* %209 to i64
  %212 = sub i64 %210, %211
  ret i64 %212
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http_date2str(i8*, %struct.tm*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tm*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct.tm*, %struct.tm** %4, align 8
  %7 = call i64 @http_date2rfc7231(i8* %5, %struct.tm* %6)
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_date2rfc2822(i8*, %struct.tm*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  %8 = load %struct.tm*, %struct.tm** %4, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [7 x i8*], [7 x i8*]* @DAY_NAMES, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 %15, i8* %17, align 1
  %18 = load %struct.tm*, %struct.tm** %4, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [7 x i8*], [7 x i8*]* @DAY_NAMES, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 %25, i8* %27, align 1
  %28 = load %struct.tm*, %struct.tm** %4, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [7 x i8*], [7 x i8*]* @DAY_NAMES, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8 %35, i8* %37, align 1
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  store i8 44, i8* %39, align 1
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  store i8 32, i8* %41, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 5
  store i8* %43, i8** %5, align 8
  %44 = load %struct.tm*, %struct.tm** %4, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 10
  br i1 %47, label %48, label %57

48:                                               ; preds = %2
  %49 = load %struct.tm*, %struct.tm** %4, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 48, %51
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %5, align 8
  store i8 %53, i8* %54, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  br label %82

57:                                               ; preds = %2
  %58 = load %struct.tm*, %struct.tm** %4, align 8
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 10
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %6, align 2
  %63 = load i16, i16* %6, align 2
  %64 = zext i16 %63 to i32
  %65 = add nsw i32 48, %64
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 %66, i8* %68, align 1
  %69 = load %struct.tm*, %struct.tm** %4, align 8
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i16, i16* %6, align 2
  %73 = zext i16 %72 to i32
  %74 = mul nsw i32 %73, 10
  %75 = sub nsw i32 %71, %74
  %76 = add nsw i32 48, %75
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  store i8 %77, i8* %79, align 1
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8* %81, i8** %5, align 8
  br label %82

82:                                               ; preds = %57, %48
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %5, align 8
  store i8 45, i8* %83, align 1
  %85 = load %struct.tm*, %struct.tm** %4, align 8
  %86 = getelementptr inbounds %struct.tm, %struct.tm* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [12 x i8*], [12 x i8*]* @MONTH_NAMES, i64 0, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 %92, i8* %94, align 1
  %95 = load %struct.tm*, %struct.tm** %4, align 8
  %96 = getelementptr inbounds %struct.tm, %struct.tm* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [12 x i8*], [12 x i8*]* @MONTH_NAMES, i64 0, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8 %102, i8* %104, align 1
  %105 = load %struct.tm*, %struct.tm** %4, align 8
  %106 = getelementptr inbounds %struct.tm, %struct.tm* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [12 x i8*], [12 x i8*]* @MONTH_NAMES, i64 0, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  store i8 %112, i8* %114, align 1
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  store i8* %116, i8** %5, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %5, align 8
  store i8 45, i8* %117, align 1
  %119 = load i8*, i8** %5, align 8
  %120 = load %struct.tm*, %struct.tm** %4, align 8
  %121 = getelementptr inbounds %struct.tm, %struct.tm* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1900
  %124 = sext i32 %123 to i64
  %125 = call i64 @fio_ltoa(i8* %119, i64 %124, i8 zeroext 10)
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 %125
  store i8* %127, i8** %5, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %5, align 8
  store i8 32, i8* %128, align 1
  %130 = load %struct.tm*, %struct.tm** %4, align 8
  %131 = getelementptr inbounds %struct.tm, %struct.tm* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = sdiv i32 %132, 10
  %134 = trunc i32 %133 to i16
  store i16 %134, i16* %6, align 2
  %135 = load i16, i16* %6, align 2
  %136 = zext i16 %135 to i32
  %137 = add nsw i32 48, %136
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  store i8 %138, i8* %140, align 1
  %141 = load %struct.tm*, %struct.tm** %4, align 8
  %142 = getelementptr inbounds %struct.tm, %struct.tm* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i16, i16* %6, align 2
  %145 = zext i16 %144 to i32
  %146 = mul nsw i32 %145, 10
  %147 = sub nsw i32 %143, %146
  %148 = add nsw i32 48, %147
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  store i8 %149, i8* %151, align 1
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  store i8 58, i8* %153, align 1
  %154 = load %struct.tm*, %struct.tm** %4, align 8
  %155 = getelementptr inbounds %struct.tm, %struct.tm* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sdiv i32 %156, 10
  %158 = trunc i32 %157 to i16
  store i16 %158, i16* %6, align 2
  %159 = load i16, i16* %6, align 2
  %160 = zext i16 %159 to i32
  %161 = add nsw i32 48, %160
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %5, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 3
  store i8 %162, i8* %164, align 1
  %165 = load %struct.tm*, %struct.tm** %4, align 8
  %166 = getelementptr inbounds %struct.tm, %struct.tm* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i16, i16* %6, align 2
  %169 = zext i16 %168 to i32
  %170 = mul nsw i32 %169, 10
  %171 = sub nsw i32 %167, %170
  %172 = add nsw i32 48, %171
  %173 = trunc i32 %172 to i8
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 4
  store i8 %173, i8* %175, align 1
  %176 = load i8*, i8** %5, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 5
  store i8 58, i8* %177, align 1
  %178 = load %struct.tm*, %struct.tm** %4, align 8
  %179 = getelementptr inbounds %struct.tm, %struct.tm* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = sdiv i32 %180, 10
  %182 = trunc i32 %181 to i16
  store i16 %182, i16* %6, align 2
  %183 = load i16, i16* %6, align 2
  %184 = zext i16 %183 to i32
  %185 = add nsw i32 48, %184
  %186 = trunc i32 %185 to i8
  %187 = load i8*, i8** %5, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 6
  store i8 %186, i8* %188, align 1
  %189 = load %struct.tm*, %struct.tm** %4, align 8
  %190 = getelementptr inbounds %struct.tm, %struct.tm* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i16, i16* %6, align 2
  %193 = zext i16 %192 to i32
  %194 = mul nsw i32 %193, 10
  %195 = sub nsw i32 %191, %194
  %196 = add nsw i32 48, %195
  %197 = trunc i32 %196 to i8
  %198 = load i8*, i8** %5, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 7
  store i8 %197, i8* %199, align 1
  %200 = load i8*, i8** %5, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 8
  store i8* %201, i8** %5, align 8
  %202 = load i8*, i8** %5, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  store i8 32, i8* %203, align 1
  %204 = load i8*, i8** @GMT_STR, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = load i8*, i8** %5, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  store i8 %206, i8* %208, align 1
  %209 = load i8*, i8** @GMT_STR, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  %211 = load i8, i8* %210, align 1
  %212 = load i8*, i8** %5, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 2
  store i8 %211, i8* %213, align 1
  %214 = load i8*, i8** @GMT_STR, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 2
  %216 = load i8, i8* %215, align 1
  %217 = load i8*, i8** %5, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 3
  store i8 %216, i8* %218, align 1
  %219 = load i8*, i8** %5, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 4
  store i8 0, i8* %220, align 1
  %221 = load i8*, i8** %5, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 4
  store i8* %222, i8** %5, align 8
  %223 = load i8*, i8** %5, align 8
  %224 = load i8*, i8** %3, align 8
  %225 = ptrtoint i8* %223 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  ret i64 %227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_date2rfc2109(i8*, %struct.tm*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  %8 = load %struct.tm*, %struct.tm** %4, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [7 x i8*], [7 x i8*]* @DAY_NAMES, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 %15, i8* %17, align 1
  %18 = load %struct.tm*, %struct.tm** %4, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [7 x i8*], [7 x i8*]* @DAY_NAMES, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 %25, i8* %27, align 1
  %28 = load %struct.tm*, %struct.tm** %4, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [7 x i8*], [7 x i8*]* @DAY_NAMES, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8 %35, i8* %37, align 1
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  store i8 44, i8* %39, align 1
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  store i8 32, i8* %41, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 5
  store i8* %43, i8** %5, align 8
  %44 = load %struct.tm*, %struct.tm** %4, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 10
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %6, align 2
  %49 = load i16, i16* %6, align 2
  %50 = zext i16 %49 to i32
  %51 = add nsw i32 48, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 %52, i8* %54, align 1
  %55 = load %struct.tm*, %struct.tm** %4, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i16, i16* %6, align 2
  %59 = zext i16 %58 to i32
  %60 = mul nsw i32 %59, 10
  %61 = sub nsw i32 %57, %60
  %62 = add nsw i32 48, %61
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8 %63, i8* %65, align 1
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8* %67, i8** %5, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  store i8 32, i8* %68, align 1
  %70 = load %struct.tm*, %struct.tm** %4, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [12 x i8*], [12 x i8*]* @MONTH_NAMES, i64 0, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  store i8 %77, i8* %79, align 1
  %80 = load %struct.tm*, %struct.tm** %4, align 8
  %81 = getelementptr inbounds %struct.tm, %struct.tm* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [12 x i8*], [12 x i8*]* @MONTH_NAMES, i64 0, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8 %87, i8* %89, align 1
  %90 = load %struct.tm*, %struct.tm** %4, align 8
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [12 x i8*], [12 x i8*]* @MONTH_NAMES, i64 0, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  store i8 %97, i8* %99, align 1
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 3
  store i8 32, i8* %101, align 1
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.tm*, %struct.tm** %4, align 8
  %106 = getelementptr inbounds %struct.tm, %struct.tm* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1900
  %109 = sext i32 %108 to i64
  %110 = call i64 @fio_ltoa(i8* %104, i64 %109, i8 zeroext 10)
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 %110
  store i8* %112, i8** %5, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  store i8 32, i8* %113, align 1
  %115 = load %struct.tm*, %struct.tm** %4, align 8
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = sdiv i32 %117, 10
  %119 = trunc i32 %118 to i16
  store i16 %119, i16* %6, align 2
  %120 = load i16, i16* %6, align 2
  %121 = zext i16 %120 to i32
  %122 = add nsw i32 48, %121
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  store i8 %123, i8* %125, align 1
  %126 = load %struct.tm*, %struct.tm** %4, align 8
  %127 = getelementptr inbounds %struct.tm, %struct.tm* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i16, i16* %6, align 2
  %130 = zext i16 %129 to i32
  %131 = mul nsw i32 %130, 10
  %132 = sub nsw i32 %128, %131
  %133 = add nsw i32 48, %132
  %134 = trunc i32 %133 to i8
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  store i8 %134, i8* %136, align 1
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  store i8 58, i8* %138, align 1
  %139 = load %struct.tm*, %struct.tm** %4, align 8
  %140 = getelementptr inbounds %struct.tm, %struct.tm* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %141, 10
  %143 = trunc i32 %142 to i16
  store i16 %143, i16* %6, align 2
  %144 = load i16, i16* %6, align 2
  %145 = zext i16 %144 to i32
  %146 = add nsw i32 48, %145
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** %5, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 3
  store i8 %147, i8* %149, align 1
  %150 = load %struct.tm*, %struct.tm** %4, align 8
  %151 = getelementptr inbounds %struct.tm, %struct.tm* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i16, i16* %6, align 2
  %154 = zext i16 %153 to i32
  %155 = mul nsw i32 %154, 10
  %156 = sub nsw i32 %152, %155
  %157 = add nsw i32 48, %156
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %5, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 4
  store i8 %158, i8* %160, align 1
  %161 = load i8*, i8** %5, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 5
  store i8 58, i8* %162, align 1
  %163 = load %struct.tm*, %struct.tm** %4, align 8
  %164 = getelementptr inbounds %struct.tm, %struct.tm* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sdiv i32 %165, 10
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* %6, align 2
  %168 = load i16, i16* %6, align 2
  %169 = zext i16 %168 to i32
  %170 = add nsw i32 48, %169
  %171 = trunc i32 %170 to i8
  %172 = load i8*, i8** %5, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 6
  store i8 %171, i8* %173, align 1
  %174 = load %struct.tm*, %struct.tm** %4, align 8
  %175 = getelementptr inbounds %struct.tm, %struct.tm* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i16, i16* %6, align 2
  %178 = zext i16 %177 to i32
  %179 = mul nsw i32 %178, 10
  %180 = sub nsw i32 %176, %179
  %181 = add nsw i32 48, %180
  %182 = trunc i32 %181 to i8
  %183 = load i8*, i8** %5, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 7
  store i8 %182, i8* %184, align 1
  %185 = load i8*, i8** %5, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 8
  store i8* %186, i8** %5, align 8
  %187 = load i8*, i8** %5, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %5, align 8
  store i8 32, i8* %187, align 1
  %189 = load i8*, i8** %5, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %5, align 8
  store i8 45, i8* %189, align 1
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %5, align 8
  store i8 48, i8* %191, align 1
  %193 = load i8*, i8** %5, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %5, align 8
  store i8 48, i8* %193, align 1
  %195 = load i8*, i8** %5, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %5, align 8
  store i8 48, i8* %195, align 1
  %197 = load i8*, i8** %5, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %5, align 8
  store i8 48, i8* %197, align 1
  %199 = load i8*, i8** %5, align 8
  store i8 0, i8* %199, align 1
  %200 = load i8*, i8** %5, align 8
  %201 = load i8*, i8** %3, align 8
  %202 = ptrtoint i8* %200 to i64
  %203 = ptrtoint i8* %201 to i64
  %204 = sub i64 %202, %203
  ret i64 %204
}

declare dso_local { i64, i64 } @fio_last_tick() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_decode_url(i8*, i8*, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %52, %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 43
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %8, align 8
  store i8 32, i8* %24, align 1
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  br label %52

28:                                               ; preds = %18
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 37
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = call i32 @hex2byte(i8* %34, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i64 -1, i64* %4, align 8
  br label %60

40:                                               ; preds = %33
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 3
  store i8* %44, i8** %6, align 8
  br label %51

45:                                               ; preds = %28
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  %48 = load i8, i8* %46, align 1
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  store i8 %48, i8* %49, align 1
  br label %51

51:                                               ; preds = %45, %40
  br label %52

52:                                               ; preds = %51, %23
  br label %14

53:                                               ; preds = %14
  %54 = load i8*, i8** %8, align 8
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %53, %39
  %61 = load i64, i64* %4, align 8
  ret i64 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_decode_url_unsafe(i8*, i8*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  br label %8

8:                                                ; preds = %46, %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 43
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  store i8 32, i8* %18, align 1
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  br label %46

22:                                               ; preds = %12
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i32 @hex2byte(i8* %28, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i64 -1, i64* %3, align 8
  br label %54

34:                                               ; preds = %27
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  store i8* %38, i8** %5, align 8
  br label %45

39:                                               ; preds = %22
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  %42 = load i8, i8* %40, align 1
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  store i8 %42, i8* %43, align 1
  br label %45

45:                                               ; preds = %39, %34
  br label %46

46:                                               ; preds = %45, %17
  br label %8

47:                                               ; preds = %8
  %48 = load i8*, i8** %6, align 8
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %47, %33
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_decode_path(i8*, i8*, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %41, %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call i32 @hex2byte(i8* %24, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i64 -1, i64* %4, align 8
  br label %49

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  store i8* %34, i8** %6, align 8
  br label %41

35:                                               ; preds = %18
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  %38 = load i8, i8* %36, align 1
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  store i8 %38, i8* %39, align 1
  br label %41

41:                                               ; preds = %35, %30
  br label %14

42:                                               ; preds = %14
  %43 = load i8*, i8** %8, align 8
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %42, %29
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_decode_path_unsafe(i8*, i8*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  br label %8

8:                                                ; preds = %35, %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = call i32 @hex2byte(i8* %18, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i64 -1, i64* %3, align 8
  br label %43

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  store i8* %28, i8** %5, align 8
  br label %35

29:                                               ; preds = %12
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  %32 = load i8, i8* %30, align 1
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  store i8 %32, i8* %33, align 1
  br label %35

35:                                               ; preds = %29, %24
  br label %8

36:                                               ; preds = %8
  %37 = load i8*, i8** %6, align 8
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %36, %23
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_mimetype_register(i8*, i64, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fio_str_info_s, align 8
  %10 = alloca %struct.fio_str_info_s, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @fio_siphash13(i8* %11, i64 %12, i64 0, i64 0)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @fio_mime_set_remove(%struct.fio_mime_set_s* @fio_http_mime_types, i64 %17, i64 0, i64* null)
  br label %44

19:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @fio_mime_set_overwrite(%struct.fio_mime_set_s* @fio_http_mime_types, i64 %20, i64 %21, i64* %8)
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %28 = icmp sle i32 3, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %8, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %9, i64 %33)
  %34 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %9, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %6, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %10, i64 %36)
  %37 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %10, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.61, i64 0, i64 0), i32 %31, i8* %32, i8* %35, i8* %38)
  br label %39

39:                                               ; preds = %29, %26
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %8, align 8
  call void @fiobj_free(i64 %41)
  br label %42

42:                                               ; preds = %40, %19
  %43 = load i64, i64* %6, align 8
  call void @fiobj_free(i64 %43)
  br label %44

44:                                               ; preds = %42, %16
  ret void
}

declare dso_local i64 @fio_siphash13(i8*, i64, i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_mime_set_remove(%struct.fio_mime_set_s*, i64, i64, i64*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fio_mime_set_s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.fio_mime_set__map_s_*, align 8
  store %struct.fio_mime_set_s* %0, %struct.fio_mime_set_s** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %95

14:                                               ; preds = %4
  %15 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call %struct.fio_mime_set__map_s_* @fio_mime_set__find_map_pos_(%struct.fio_mime_set_s* %15, i64 %16, i64 %17)
  store %struct.fio_mime_set__map_s_* %18, %struct.fio_mime_set__map_s_** %10, align 8
  %19 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %10, align 8
  %20 = icmp ne %struct.fio_mime_set__map_s_* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %10, align 8
  %23 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %22, i32 0, i32 1
  %24 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %23, align 8
  %25 = icmp ne %struct.fio_mime_set__ordered_s_* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %14
  store i32 -1, i32* %5, align 4
  br label %95

27:                                               ; preds = %21
  %28 = load i64*, i64** %9, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %10, align 8
  %32 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %31, i32 0, i32 1
  %33 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %32, align 8
  %34 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @fiobj_dup(i64 %35)
  %37 = load i64*, i64** %9, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %30, %27
  %39 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %10, align 8
  %40 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %39, i32 0, i32 1
  %41 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %40, align 8
  %42 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  call void @fiobj_free(i64 %43)
  %44 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %6, align 8
  %45 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %10, align 8
  %49 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %48, i32 0, i32 1
  %50 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %49, align 8
  %51 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %10, align 8
  %53 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %52, i32 0, i32 1
  %54 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %53, align 8
  %55 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %6, align 8
  %56 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %6, align 8
  %59 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %58, i32 0, i32 3
  %60 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %59, align 8
  %61 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %60, i64 %57
  %62 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %61, i64 -1
  %63 = icmp eq %struct.fio_mime_set__ordered_s_* %54, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %38
  %65 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %10, align 8
  %66 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %89, %64
  %68 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %6, align 8
  %69 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %67
  %73 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %6, align 8
  %74 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %6, align 8
  %79 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %78, i32 0, i32 3
  %80 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %79, align 8
  %81 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %6, align 8
  %82 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %83, 1
  %85 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %80, i64 %84
  %86 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br label %89

89:                                               ; preds = %77, %72
  %90 = phi i1 [ false, %72 ], [ %88, %77 ]
  br i1 %90, label %67, label %91

91:                                               ; preds = %89
  br label %92

92:                                               ; preds = %91, %38
  %93 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %10, align 8
  %94 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %93, i32 0, i32 1
  store %struct.fio_mime_set__ordered_s_* null, %struct.fio_mime_set__ordered_s_** %94, align 8
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %92, %26, %13
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_mime_set_overwrite(%struct.fio_mime_set_s*, i64, i64, i64*) #0 {
  %5 = alloca %struct.fio_mime_set_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.fio_mime_set_s* %0, %struct.fio_mime_set_s** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64*, i64** %8, align 8
  %13 = call i64 @fio_mime_set__insert_or_overwrite_(%struct.fio_mime_set_s* %9, i64 %10, i64 %11, i32 1, i64* %12)
  ret i64 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_mimetype_stats() #0 {
  br label %1

1:                                                ; preds = %0
  %2 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %3 = icmp sle i32 5, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = call i64 @fio_mime_set_count(%struct.fio_mime_set_s* @fio_http_mime_types)
  %6 = call i64 @fio_mime_set_capa(%struct.fio_mime_set_s* @fio_http_mime_types)
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.62, i64 0, i64 0), i64 %5, i64 %6)
  br label %7

7:                                                ; preds = %4, %1
  br label %8

8:                                                ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_mime_set_count(%struct.fio_mime_set_s*) #0 {
  %2 = alloca %struct.fio_mime_set_s*, align 8
  store %struct.fio_mime_set_s* %0, %struct.fio_mime_set_s** %2, align 8
  %3 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_mime_set_capa(%struct.fio_mime_set_s*) #0 {
  %2 = alloca %struct.fio_mime_set_s*, align 8
  store %struct.fio_mime_set_s* %0, %struct.fio_mime_set_s** %2, align 8
  %3 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_mime_set_find(%struct.fio_mime_set_s*, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_mime_set_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_mime_set__map_s_*, align 8
  %9 = alloca i64, align 8
  store %struct.fio_mime_set_s* %0, %struct.fio_mime_set_s** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call %struct.fio_mime_set__map_s_* @fio_mime_set__find_map_pos_(%struct.fio_mime_set_s* %10, i64 %11, i64 %12)
  store %struct.fio_mime_set__map_s_* %13, %struct.fio_mime_set__map_s_** %8, align 8
  %14 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %8, align 8
  %15 = icmp ne %struct.fio_mime_set__map_s_* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %8, align 8
  %18 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %17, i32 0, i32 1
  %19 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %18, align 8
  %20 = icmp ne %struct.fio_mime_set__ordered_s_* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %3
  %22 = bitcast i64* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 8, i1 false)
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %4, align 8
  br label %30

24:                                               ; preds = %16
  %25 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %8, align 8
  %26 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %25, i32 0, i32 1
  %27 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %26, align 8
  %28 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @http_mimetype_find2(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fio_str_info_s, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_str_info_s, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = bitcast %struct.fio_str_info_s* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load i64, i64* %2, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %82

12:                                               ; preds = %1
  %13 = load i64, i64* %2, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %5, i64 %13)
  store i8 1, i8* %6, align 1
  br label %14

14:                                               ; preds = %78, %12
  %15 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i64
  %19 = icmp ugt i64 %16, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sge i32 %22, 15
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi i1 [ true, %14 ], [ %23, %20 ]
  br i1 %25, label %26, label %81

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i64
  %33 = sub i64 %30, %32
  %34 = getelementptr inbounds i8, i8* %28, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %78 [
    i32 46, label %37
    i32 47, label %77
  ]

37:                                               ; preds = %26
  %38 = load i8, i8* %6, align 1
  %39 = add i8 %38, -1
  store i8 %39, i8* %6, align 1
  %40 = load i8, i8* %6, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %37
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @http_mimetype_find2.buffer, i64 0, i64 0), i8** %46, align 8
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* @http_mimetype_find2.buffer, i64 0, i64 %48
  store i8 0, i8* %49, align 1
  store i64 1, i64* %7, align 8
  br label %50

50:                                               ; preds = %72, %42
  %51 = load i64, i64* %7, align 8
  %52 = load i8, i8* %6, align 1
  %53 = zext i8 %52 to i64
  %54 = icmp ule i64 %51, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %5, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %59, %60
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = call i32 @tolower(i32 %64) #9
  %66 = trunc i32 %65 to i8
  %67 = load i8, i8* %6, align 1
  %68 = zext i8 %67 to i64
  %69 = load i64, i64* %7, align 8
  %70 = sub i64 %68, %69
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* @http_mimetype_find2.buffer, i64 0, i64 %70
  store i8 %66, i8* %71, align 1
  br label %72

72:                                               ; preds = %55
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %50

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %75, %37
  br label %77

77:                                               ; preds = %26, %76
  br label %82

78:                                               ; preds = %26
  %79 = load i8, i8* %6, align 1
  %80 = add i8 %79, 1
  store i8 %80, i8* %6, align 1
  br label %14

81:                                               ; preds = %24
  br label %82

82:                                               ; preds = %81, %77, %11
  %83 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @http_mimetype_find(i8* %84, i64 %86)
  store i64 %87, i64* %4, align 8
  %88 = load i64, i64* %4, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = load i64, i64* @HTTP_HVALUE_CONTENT_TYPE_DEFAULT, align 8
  %92 = call i64 @fiobj_dup(i64 %91)
  store i64 %92, i64* %4, align 8
  br label %93

93:                                               ; preds = %90, %82
  %94 = load i64, i64* %4, align 8
  ret i64 %94
}

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_mimetype_clear() #0 {
  call void @fio_mime_set_free(%struct.fio_mime_set_s* @fio_http_mime_types)
  %1 = load i64, i64* @current_date, align 8
  call void @fiobj_free(i64 %1)
  store i64 0, i64* @current_date, align 8
  store i64 0, i64* @last_date_added, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_mime_set_free(%struct.fio_mime_set_s*) #0 {
  %2 = alloca %struct.fio_mime_set_s*, align 8
  %3 = alloca %struct.fio_mime_set__ordered_s_*, align 8
  %4 = alloca %struct.fio_mime_set__ordered_s_*, align 8
  %5 = alloca %struct.fio_mime_set_s, align 8
  store %struct.fio_mime_set_s* %0, %struct.fio_mime_set_s** %2, align 8
  %6 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %7 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %6, i32 0, i32 3
  %8 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %7, align 8
  %9 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %10 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %8, i64 %11
  store %struct.fio_mime_set__ordered_s_* %12, %struct.fio_mime_set__ordered_s_** %3, align 8
  %13 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %14 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %13, i32 0, i32 3
  %15 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %14, align 8
  %16 = icmp ne %struct.fio_mime_set__ordered_s_* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %1
  %18 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %19 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %18, i32 0, i32 3
  %20 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %19, align 8
  %21 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %3, align 8
  %22 = icmp ne %struct.fio_mime_set__ordered_s_* %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %25 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %24, i32 0, i32 3
  %26 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %25, align 8
  store %struct.fio_mime_set__ordered_s_* %26, %struct.fio_mime_set__ordered_s_** %4, align 8
  br label %27

27:                                               ; preds = %41, %23
  %28 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %4, align 8
  %29 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %3, align 8
  %30 = icmp ult %struct.fio_mime_set__ordered_s_* %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %4, align 8
  %33 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 0, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %4, align 8
  %38 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  call void @fiobj_free(i64 %39)
  br label %40

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %4, align 8
  %43 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %42, i32 1
  store %struct.fio_mime_set__ordered_s_* %43, %struct.fio_mime_set__ordered_s_** %4, align 8
  br label %27

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %17, %1
  %46 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %47 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %46, i32 0, i32 4
  %48 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %47, align 8
  %49 = bitcast %struct.fio_mime_set__map_s_* %48 to i8*
  call void @free(i8* %49) #1
  %50 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %51 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %50, i32 0, i32 3
  %52 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %51, align 8
  %53 = bitcast %struct.fio_mime_set__ordered_s_* %52 to i8*
  call void @free(i8* %53) #1
  %54 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %55 = bitcast %struct.fio_mime_set_s* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %55, i8 0, i64 48, i1 false)
  %56 = bitcast %struct.fio_mime_set_s* %54 to i8*
  %57 = bitcast %struct.fio_mime_set_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 48, i1 false)
  ret void
}

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

declare dso_local void @fiobj_free_complex_object(i64) #4

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

declare dso_local i64 @fiobj_ary_new() #4

declare dso_local void @fio_ltocstr(%struct.fio_str_info_s* sret, i64) #4

declare dso_local i64 @fiobj_each2(i64, i32 (i64, i8*)*, i8*) #4

declare dso_local i32 @fiobj_iseq____internal_complex__(i64, i64) #4

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

declare dso_local i64 @fiobj_num_new_bignum(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_on_request_fallback(%struct.http_s*) #0 {
  %2 = alloca %struct.http_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  %3 = load %struct.http_s*, %struct.http_s** %2, align 8
  %4 = call i32 @http_send_error(%struct.http_s* %3, i64 404)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_on_response_fallback(%struct.http_s*) #0 {
  %2 = alloca %struct.http_s*, align 8
  store %struct.http_s* %0, %struct.http_s** %2, align 8
  %3 = load %struct.http_s*, %struct.http_s** %2, align 8
  %4 = call i32 @http_send_error(%struct.http_s* %3, i64 400)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_on_upgrade_fallback(%struct.http_s*, i8*, i64) #0 {
  %4 = alloca %struct.http_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.http_s* %0, %struct.http_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.http_s*, %struct.http_s** %4, align 8
  %8 = call i32 @http_send_error(%struct.http_s* %7, i64 400)
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  ret void
}

declare dso_local i64 @fio_capa() #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @http_send_error2(i64, i64, %struct.http_settings_s*) #4

declare dso_local void @fio_close(i64) #4

declare dso_local %struct.fio_protocol_s* @http1_new(i64, %struct.http_settings_s*, i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_settings_free(%struct.http_settings_s*) #0 {
  %2 = alloca %struct.http_settings_s*, align 8
  store %struct.http_settings_s* %0, %struct.http_settings_s** %2, align 8
  %3 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %4 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %3, i32 0, i32 5
  %5 = load i8*, i8** %4, align 8
  call void @free(i8* %5) #1
  %6 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %7 = bitcast %struct.http_settings_s* %6 to i8*
  call void @free(i8* %7) #1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_on_open_client_http1(i64, i8*, i8*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_settings_s*, align 8
  %8 = alloca %struct.http_s*, align 8
  %9 = alloca %struct.fio_protocol_s*, align 8
  %10 = alloca void (i64, %struct.fio_protocol_s*)**, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.http_settings_s*
  store %struct.http_settings_s* %12, %struct.http_settings_s** %7, align 8
  %13 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8
  %14 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %13, i32 0, i32 4
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.http_s*
  store %struct.http_s* %16, %struct.http_s** %8, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8
  %19 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %18, i32 0, i32 15
  %20 = load i8, i8* %19, align 8
  call void @fio_timeout_set(i64 %17, i8 zeroext %20)
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8
  %23 = call %struct.fio_protocol_s* @http1_new(i64 %21, %struct.http_settings_s* %22, i8* null, i64 0)
  store %struct.fio_protocol_s* %23, %struct.fio_protocol_s** %9, align 8
  %24 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %9, align 8
  %25 = icmp ne %struct.fio_protocol_s* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i64, i64* %4, align 8
  call void @fio_close(i64 %27)
  br label %49

28:                                               ; preds = %3
  %29 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8
  %30 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %29, i64 1
  %31 = bitcast %struct.http_settings_s* %30 to void (i64, %struct.fio_protocol_s*)**
  store void (i64, %struct.fio_protocol_s*)** %31, void (i64, %struct.fio_protocol_s*)*** %10, align 8
  %32 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %9, align 8
  %33 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %32, i32 0, i32 3
  %34 = load void (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)** %33, align 8
  %35 = load void (i64, %struct.fio_protocol_s*)**, void (i64, %struct.fio_protocol_s*)*** %10, align 8
  store void (i64, %struct.fio_protocol_s*)* %34, void (i64, %struct.fio_protocol_s*)** %35, align 8
  %36 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %9, align 8
  %37 = getelementptr inbounds %struct.fio_protocol_s, %struct.fio_protocol_s* %36, i32 0, i32 3
  store void (i64, %struct.fio_protocol_s*)* @http_on_close_client, void (i64, %struct.fio_protocol_s*)** %37, align 8
  %38 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %9, align 8
  %39 = ptrtoint %struct.fio_protocol_s* %38 to i64
  %40 = load %struct.http_s*, %struct.http_s** %8, align 8
  %41 = getelementptr inbounds %struct.http_s, %struct.http_s* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  %43 = call i8* @http1_vtable()
  %44 = load %struct.http_s*, %struct.http_s** %8, align 8
  %45 = getelementptr inbounds %struct.http_s, %struct.http_s* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = load %struct.http_settings_s*, %struct.http_settings_s** %7, align 8
  call void @http_on_open_client_perform(%struct.http_settings_s* %47)
  %48 = load i8*, i8** %6, align 8
  br label %49

49:                                               ; preds = %28, %26
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_on_close_client(i64, %struct.fio_protocol_s*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_protocol_s*, align 8
  %5 = alloca %struct.http_fio_protocol_s*, align 8
  %6 = alloca %struct.http_settings_s*, align 8
  %7 = alloca void (i64, %struct.fio_protocol_s*)**, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fio_protocol_s* %1, %struct.fio_protocol_s** %4, align 8
  %8 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  %9 = bitcast %struct.fio_protocol_s* %8 to %struct.http_fio_protocol_s*
  store %struct.http_fio_protocol_s* %9, %struct.http_fio_protocol_s** %5, align 8
  %10 = load %struct.http_fio_protocol_s*, %struct.http_fio_protocol_s** %5, align 8
  %11 = getelementptr inbounds %struct.http_fio_protocol_s, %struct.http_fio_protocol_s* %10, i32 0, i32 2
  %12 = load %struct.http_settings_s*, %struct.http_settings_s** %11, align 8
  store %struct.http_settings_s* %12, %struct.http_settings_s** %6, align 8
  %13 = load %struct.http_settings_s*, %struct.http_settings_s** %6, align 8
  %14 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %13, i64 1
  %15 = bitcast %struct.http_settings_s* %14 to void (i64, %struct.fio_protocol_s*)**
  store void (i64, %struct.fio_protocol_s*)** %15, void (i64, %struct.fio_protocol_s*)*** %7, align 8
  %16 = load %struct.http_settings_s*, %struct.http_settings_s** %6, align 8
  %17 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %16, i32 0, i32 3
  %18 = load void (%struct.http_settings_s*)*, void (%struct.http_settings_s*)** %17, align 8
  %19 = icmp ne void (%struct.http_settings_s*)* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.http_settings_s*, %struct.http_settings_s** %6, align 8
  %22 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %21, i32 0, i32 3
  %23 = load void (%struct.http_settings_s*)*, void (%struct.http_settings_s*)** %22, align 8
  %24 = load %struct.http_settings_s*, %struct.http_settings_s** %6, align 8
  call void %23(%struct.http_settings_s* %24)
  br label %25

25:                                               ; preds = %20, %2
  %26 = load void (i64, %struct.fio_protocol_s*)**, void (i64, %struct.fio_protocol_s*)*** %7, align 8
  %27 = getelementptr inbounds void (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)** %26, i64 0
  %28 = load void (i64, %struct.fio_protocol_s*)*, void (i64, %struct.fio_protocol_s*)** %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load %struct.fio_protocol_s*, %struct.fio_protocol_s** %4, align 8
  call void %28(i64 %29, %struct.fio_protocol_s* %30)
  %31 = load %struct.http_settings_s*, %struct.http_settings_s** %6, align 8
  call void @http_settings_free(%struct.http_settings_s* %31)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_on_open_client_perform(%struct.http_settings_s*) #0 {
  %2 = alloca %struct.http_settings_s*, align 8
  %3 = alloca %struct.http_s*, align 8
  store %struct.http_settings_s* %0, %struct.http_settings_s** %2, align 8
  %4 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %5 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %4, i32 0, i32 4
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.http_s*
  store %struct.http_s* %7, %struct.http_s** %3, align 8
  %8 = load %struct.http_settings_s*, %struct.http_settings_s** %2, align 8
  %9 = getelementptr inbounds %struct.http_settings_s, %struct.http_settings_s* %8, i32 0, i32 2
  %10 = load void (%struct.http_s*)*, void (%struct.http_s*)** %9, align 8
  %11 = load %struct.http_s*, %struct.http_s** %3, align 8
  call void %10(%struct.http_s* %11)
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

declare dso_local %struct.fio_protocol_s* @fio_protocol_try_lock(i64, i32) #4

declare dso_local void @fio_protocol_unlock(%struct.fio_protocol_s*, i32) #4

declare dso_local void @fio_message_defer(%struct.fio_msg_s*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_trylock(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !3
  %6 = load i8*, i8** %2, align 8
  store i8 1, i8* %4, align 1
  %7 = load i8, i8* %4, align 1
  %8 = atomicrmw volatile xchg i8* %6, i8 %7 seq_cst
  store i8 %8, i8* %5, align 1
  %9 = load i8, i8* %5, align 1
  store volatile i8 %9, i8* %3, align 1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  %10 = load volatile i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_reschedule_thread() #0 {
  %1 = alloca %struct.timespec, align 8
  %2 = bitcast %struct.timespec* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.timespec* @__const.fio_reschedule_thread.tm to i8*), i64 16, i1 false)
  %3 = call i32 @nanosleep(%struct.timespec* %1, %struct.timespec* null)
  ret void
}

declare dso_local i32 @nanosleep(%struct.timespec*, %struct.timespec*) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

declare dso_local i64 @fiobj_str_hash(i64) #4

declare dso_local double @fio_atof(i8**) #4

declare dso_local i64 @fiobj_float_new(double) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_mime_parser_on_partial_data(%struct.http_mime_parser_s*, i8*, i64) #0 {
  %4 = alloca %struct.http_mime_parser_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.http_mime_parser_s* %0, %struct.http_mime_parser_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %4, align 8
  %8 = bitcast %struct.http_mime_parser_s* %7 to %struct.http_fio_mime_s*
  %9 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %3
  %13 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %4, align 8
  %14 = bitcast %struct.http_mime_parser_s* %13 to %struct.http_fio_mime_s*
  %15 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %4, align 8
  %20 = bitcast %struct.http_mime_parser_s* %19 to %struct.http_fio_mime_s*
  %21 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = sub i64 %18, %24
  %26 = add i64 %16, %25
  %27 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %4, align 8
  %28 = bitcast %struct.http_mime_parser_s* %27 to %struct.http_fio_mime_s*
  %29 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %28, i32 0, i32 4
  store i64 %26, i64* %29, align 8
  br label %30

30:                                               ; preds = %12, %3
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %4, align 8
  %33 = bitcast %struct.http_mime_parser_s* %32 to %struct.http_fio_mime_s*
  %34 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, %31
  store i64 %36, i64* %34, align 8
  %37 = load i8*, i8** %5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_mime_parser_on_partial_end(%struct.http_mime_parser_s*) #0 {
  %2 = alloca %struct.http_mime_parser_s*, align 8
  %3 = alloca %struct.fio_str_info_s, align 8
  %4 = alloca i64, align 8
  store %struct.http_mime_parser_s* %0, %struct.http_mime_parser_s** %2, align 8
  %5 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %2, align 8
  %6 = bitcast %struct.http_mime_parser_s* %5 to %struct.http_fio_mime_s*
  %7 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %3, i64 %8)
  store i64 0, i64* %4, align 8
  %9 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %2, align 8
  %10 = bitcast %struct.http_mime_parser_s* %9 to %struct.http_fio_mime_s*
  %11 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %2, align 8
  %17 = bitcast %struct.http_mime_parser_s* %16 to %struct.http_fio_mime_s*
  %18 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %19, 42
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %2, align 8
  %23 = bitcast %struct.http_mime_parser_s* %22 to %struct.http_fio_mime_s*
  %24 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %2, align 8
  %28 = bitcast %struct.http_mime_parser_s* %27 to %struct.http_fio_mime_s*
  %29 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  %32 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %2, align 8
  %33 = bitcast %struct.http_mime_parser_s* %32 to %struct.http_fio_mime_s*
  %34 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @fiobj_str_new(i8* %31, i64 %35)
  store i64 %36, i64* %4, align 8
  br label %53

37:                                               ; preds = %15
  %38 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %2, align 8
  %39 = bitcast %struct.http_mime_parser_s* %38 to %struct.http_fio_mime_s*
  %40 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %39, i32 0, i32 1
  %41 = load %struct.http_s*, %struct.http_s** %40, align 8
  %42 = getelementptr inbounds %struct.http_s, %struct.http_s* %41, i32 0, i32 11
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %2, align 8
  %45 = bitcast %struct.http_mime_parser_s* %44 to %struct.http_fio_mime_s*
  %46 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %2, align 8
  %49 = bitcast %struct.http_mime_parser_s* %48 to %struct.http_fio_mime_s*
  %50 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @fiobj_data_slice(i64 %43, i64 %47, i64 %51)
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %37, %21
  %54 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %2, align 8
  %55 = bitcast %struct.http_mime_parser_s* %54 to %struct.http_fio_mime_s*
  %56 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %55, i32 0, i32 1
  %57 = load %struct.http_s*, %struct.http_s** %56, align 8
  %58 = getelementptr inbounds %struct.http_s, %struct.http_s* %57, i32 0, i32 10
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @http_add2hash2(i64 %59, i8* %61, i64 %63, i64 %64, i8 zeroext 0)
  %66 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %2, align 8
  %67 = bitcast %struct.http_mime_parser_s* %66 to %struct.http_fio_mime_s*
  %68 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  call void @fiobj_free(i64 %69)
  %70 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %2, align 8
  %71 = bitcast %struct.http_mime_parser_s* %70 to %struct.http_fio_mime_s*
  %72 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %71, i32 0, i32 6
  store i64 0, i64* %72, align 8
  %73 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %2, align 8
  %74 = bitcast %struct.http_mime_parser_s* %73 to %struct.http_fio_mime_s*
  %75 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %53, %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http_mime_decode_url(i8*, i8*, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @http_decode_url(i8* %7, i8* %8, i64 %9)
  ret i64 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_mime_parser_on_partial_start(%struct.http_mime_parser_s*, i8*, i64, i8*, i64, i8*, i64) #0 {
  %8 = alloca %struct.http_mime_parser_s*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.fio_str_info_s, align 8
  %16 = alloca %struct.fio_str_info_s, align 8
  store %struct.http_mime_parser_s* %0, %struct.http_mime_parser_s** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %8, align 8
  %18 = bitcast %struct.http_mime_parser_s* %17 to %struct.http_fio_mime_s*
  %19 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %8, align 8
  %21 = bitcast %struct.http_mime_parser_s* %20 to %struct.http_fio_mime_s*
  %22 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i64 @fiobj_str_new(i8* %23, i64 %24)
  %26 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %8, align 8
  %27 = bitcast %struct.http_mime_parser_s* %26 to %struct.http_fio_mime_s*
  %28 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %27, i32 0, i32 6
  store i64 %25, i64* %28, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %7
  br label %94

32:                                               ; preds = %7
  %33 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %8, align 8
  %34 = bitcast %struct.http_mime_parser_s* %33 to %struct.http_fio_mime_s*
  %35 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @fiobj_str_write(i64 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.144, i64 0, i64 0), i64 6)
  %38 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %8, align 8
  %39 = bitcast %struct.http_mime_parser_s* %38 to %struct.http_fio_mime_s*
  %40 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %15, i64 %41)
  %42 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %8, align 8
  %43 = bitcast %struct.http_mime_parser_s* %42 to %struct.http_fio_mime_s*
  %44 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %43, i32 0, i32 1
  %45 = load %struct.http_s*, %struct.http_s** %44, align 8
  %46 = getelementptr inbounds %struct.http_s, %struct.http_s* %45, i32 0, i32 10
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %15, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %15, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @http_add2hash(i64 %47, i8* %49, i64 %51, i8* %52, i64 %53, i8 zeroext 0)
  %55 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %8, align 8
  %56 = bitcast %struct.http_mime_parser_s* %55 to %struct.http_fio_mime_s*
  %57 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %10, align 8
  call void @fiobj_str_resize(i64 %58, i64 %59)
  %60 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %8, align 8
  %61 = bitcast %struct.http_mime_parser_s* %60 to %struct.http_fio_mime_s*
  %62 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @fiobj_str_write(i64 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i64 0, i64 0), i64 6)
  %65 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %8, align 8
  %66 = bitcast %struct.http_mime_parser_s* %65 to %struct.http_fio_mime_s*
  %67 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %16, i64 %68)
  %69 = bitcast %struct.fio_str_info_s* %15 to i8*
  %70 = bitcast %struct.fio_str_info_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 24, i1 false)
  %71 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %8, align 8
  %72 = bitcast %struct.http_mime_parser_s* %71 to %struct.http_fio_mime_s*
  %73 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %72, i32 0, i32 1
  %74 = load %struct.http_s*, %struct.http_s** %73, align 8
  %75 = getelementptr inbounds %struct.http_s, %struct.http_s* %74, i32 0, i32 10
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %15, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %15, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @http_add2hash(i64 %76, i8* %78, i64 %80, i8* %81, i64 %82, i8 zeroext 0)
  %84 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %8, align 8
  %85 = bitcast %struct.http_mime_parser_s* %84 to %struct.http_fio_mime_s*
  %86 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %10, align 8
  call void @fiobj_str_resize(i64 %87, i64 %88)
  %89 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %8, align 8
  %90 = bitcast %struct.http_mime_parser_s* %89 to %struct.http_fio_mime_s*
  %91 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @fiobj_str_write(i64 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i64 0, i64 0), i64 6)
  br label %94

94:                                               ; preds = %32, %31
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_mime_parser_on_data(%struct.http_mime_parser_s*, i8*, i64, i8*, i64, i8*, i64, i8*, i64) #0 {
  %10 = alloca %struct.http_mime_parser_s*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.fio_str_info_s, align 8
  %21 = alloca %struct.fio_str_info_s, align 8
  %22 = alloca %struct.fio_str_info_s, align 8
  store %struct.http_mime_parser_s* %0, %struct.http_mime_parser_s** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i8* %7, i8** %17, align 8
  store i64 %8, i64* %18, align 8
  %23 = load i64, i64* %14, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %9
  %26 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %10, align 8
  %27 = bitcast %struct.http_mime_parser_s* %26 to %struct.http_fio_mime_s*
  %28 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %27, i32 0, i32 1
  %29 = load %struct.http_s*, %struct.http_s** %28, align 8
  %30 = getelementptr inbounds %struct.http_s, %struct.http_s* %29, i32 0, i32 10
  %31 = load i64, i64* %30, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = load i64, i64* %18, align 8
  %36 = call i32 @http_add2hash(i64 %31, i8* %32, i64 %33, i8* %34, i64 %35, i8 zeroext 0)
  br label %102

37:                                               ; preds = %9
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i64 @fiobj_str_new(i8* %38, i64 %39)
  store i64 %40, i64* %19, align 8
  %41 = load i64, i64* %19, align 8
  %42 = call i64 @fiobj_str_write(i64 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i64 0, i64 0), i64 6)
  %43 = load i64, i64* %19, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %20, i64 %43)
  %44 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %10, align 8
  %45 = bitcast %struct.http_mime_parser_s* %44 to %struct.http_fio_mime_s*
  %46 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %45, i32 0, i32 1
  %47 = load %struct.http_s*, %struct.http_s** %46, align 8
  %48 = getelementptr inbounds %struct.http_s, %struct.http_s* %47, i32 0, i32 10
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %20, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %20, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load i64, i64* %18, align 8
  %56 = call i32 @http_add2hash(i64 %49, i8* %51, i64 %53, i8* %54, i64 %55, i8 zeroext 0)
  %57 = load i64, i64* %19, align 8
  %58 = load i64, i64* %12, align 8
  call void @fiobj_str_resize(i64 %57, i64 %58)
  %59 = load i64, i64* %19, align 8
  %60 = call i64 @fiobj_str_write(i64 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i64 0, i64 0), i64 6)
  %61 = load i64, i64* %19, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %21, i64 %61)
  %62 = bitcast %struct.fio_str_info_s* %20 to i8*
  %63 = bitcast %struct.fio_str_info_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 24, i1 false)
  %64 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %10, align 8
  %65 = bitcast %struct.http_mime_parser_s* %64 to %struct.http_fio_mime_s*
  %66 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %65, i32 0, i32 1
  %67 = load %struct.http_s*, %struct.http_s** %66, align 8
  %68 = getelementptr inbounds %struct.http_s, %struct.http_s* %67, i32 0, i32 10
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %20, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %20, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @http_add2hash(i64 %69, i8* %71, i64 %73, i8* %74, i64 %75, i8 zeroext 0)
  %77 = load i64, i64* %16, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %37
  %80 = load i64, i64* %19, align 8
  %81 = load i64, i64* %12, align 8
  call void @fiobj_str_resize(i64 %80, i64 %81)
  %82 = load i64, i64* %19, align 8
  %83 = call i64 @fiobj_str_write(i64 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.144, i64 0, i64 0), i64 6)
  %84 = load i64, i64* %19, align 8
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %22, i64 %84)
  %85 = bitcast %struct.fio_str_info_s* %20 to i8*
  %86 = bitcast %struct.fio_str_info_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 24, i1 false)
  %87 = load %struct.http_mime_parser_s*, %struct.http_mime_parser_s** %10, align 8
  %88 = bitcast %struct.http_mime_parser_s* %87 to %struct.http_fio_mime_s*
  %89 = getelementptr inbounds %struct.http_fio_mime_s, %struct.http_fio_mime_s* %88, i32 0, i32 1
  %90 = load %struct.http_s*, %struct.http_s** %89, align 8
  %91 = getelementptr inbounds %struct.http_s, %struct.http_s* %90, i32 0, i32 10
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %20, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %20, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = load i64, i64* %16, align 8
  %99 = call i32 @http_add2hash(i64 %92, i8* %94, i64 %96, i8* %97, i64 %98, i8 zeroext 0)
  br label %100

100:                                              ; preds = %79, %37
  %101 = load i64, i64* %19, align 8
  call void @fiobj_free(i64 %101)
  br label %102

102:                                              ; preds = %100, %25
  ret void
}

declare dso_local i64 @fiobj_data_slice(i64, i64, i64) #4

declare dso_local i64 @fiobj_hash_key_in_loop() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fio_mime_set__map_s_* @fio_mime_set__find_map_pos_(%struct.fio_mime_set_s*, i64, i64) #0 {
  %4 = alloca %struct.fio_mime_set__map_s_*, align 8
  %5 = alloca %struct.fio_mime_set_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fio_mime_set__map_s_*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.fio_mime_set_s* %0, %struct.fio_mime_set_s** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i64 -1, i64* %6, align 8
  br label %18

18:                                               ; preds = %17, %3
  %19 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %20 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %19, i32 0, i32 4
  %21 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %20, align 8
  %22 = icmp ne %struct.fio_mime_set__map_s_* %21, null
  br i1 %22, label %23, label %186

23:                                               ; preds = %18
  %24 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %25 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %24, i32 0, i32 5
  %26 = load i8, i8* %25, align 8
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %31 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %34 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  call void @fio_mime_set_rehash(%struct.fio_mime_set_s* %38)
  br label %39

39:                                               ; preds = %37, %29, %23
  store i64 0, i64* %8, align 8
  %40 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %41 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %40, i32 0, i32 6
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = zext i32 %43 to i64
  %45 = shl i64 1, %44
  %46 = sub i64 %45, 1
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %6, align 8
  %48 = lshr i64 %47, 0
  %49 = load i64, i64* %6, align 8
  %50 = shl i64 %49, 0
  %51 = or i64 %48, %50
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @fio_ct_if2(i64 0, i64 %52, i64 0)
  %54 = xor i64 %51, %53
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %57 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %56, i32 0, i32 6
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i64
  %60 = and i64 %59, 63
  %61 = lshr i64 %55, %60
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %64 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %63, i32 0, i32 6
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = sub nsw i32 0, %66
  %68 = sext i32 %67 to i64
  %69 = and i64 %68, 63
  %70 = shl i64 %62, %69
  %71 = or i64 %61, %70
  %72 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %73 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %72, i32 0, i32 6
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @fio_ct_if2(i64 %75, i64 %76, i64 0)
  %78 = xor i64 %71, %77
  store i64 %78, i64* %13, align 8
  %79 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %80 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %79, i32 0, i32 4
  %81 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %80, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %10, align 8
  %84 = and i64 %82, %83
  %85 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %81, i64 %84
  store %struct.fio_mime_set__map_s_* %85, %struct.fio_mime_set__map_s_** %9, align 8
  %86 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %9, align 8
  %87 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 0, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %39
  %91 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %9, align 8
  store %struct.fio_mime_set__map_s_* %91, %struct.fio_mime_set__map_s_** %4, align 8
  br label %187

92:                                               ; preds = %39
  %93 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %9, align 8
  %94 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %12, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %92
  %99 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %9, align 8
  %100 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %99, i32 0, i32 1
  %101 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %100, align 8
  %102 = icmp ne %struct.fio_mime_set__ordered_s_* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br i1 true, label %104, label %106

104:                                              ; preds = %103, %98
  %105 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %9, align 8
  store %struct.fio_mime_set__map_s_* %105, %struct.fio_mime_set__map_s_** %4, align 8
  br label %187

106:                                              ; preds = %103
  %107 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %108 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %107, i32 0, i32 5
  store i8 1, i8* %108, align 8
  %109 = load i64, i64* %8, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %8, align 8
  br label %111

111:                                              ; preds = %106, %92
  store i64 0, i64* %11, align 8
  %112 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %113 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ugt i64 %114, 384
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %122

117:                                              ; preds = %111
  %118 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %119 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = lshr i64 %120, 2
  br label %122

122:                                              ; preds = %117, %116
  %123 = phi i64 [ 96, %116 ], [ %121, %117 ]
  %124 = mul i64 11, %123
  store i64 %124, i64* %14, align 8
  br label %125

125:                                              ; preds = %184, %122
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %14, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %185

129:                                              ; preds = %125
  %130 = load i64, i64* %11, align 8
  %131 = add i64 %130, 11
  store i64 %131, i64* %11, align 8
  %132 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %133 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %132, i32 0, i32 4
  %134 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %133, align 8
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %11, align 8
  %137 = add i64 %135, %136
  %138 = load i64, i64* %10, align 8
  %139 = and i64 %137, %138
  %140 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %134, i64 %139
  store %struct.fio_mime_set__map_s_* %140, %struct.fio_mime_set__map_s_** %9, align 8
  %141 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %9, align 8
  %142 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 0, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %129
  %146 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %9, align 8
  store %struct.fio_mime_set__map_s_* %146, %struct.fio_mime_set__map_s_** %4, align 8
  br label %187

147:                                              ; preds = %129
  %148 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %9, align 8
  %149 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %12, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %184

153:                                              ; preds = %147
  %154 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %9, align 8
  %155 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %154, i32 0, i32 1
  %156 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %155, align 8
  %157 = icmp ne %struct.fio_mime_set__ordered_s_* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br i1 true, label %159, label %161

159:                                              ; preds = %158, %153
  %160 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %9, align 8
  store %struct.fio_mime_set__map_s_* %160, %struct.fio_mime_set__map_s_** %4, align 8
  br label %187

161:                                              ; preds = %158
  %162 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %163 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %162, i32 0, i32 5
  store i8 1, i8* %163, align 8
  %164 = load i64, i64* %8, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %8, align 8
  %166 = icmp uge i64 %165, 96
  br i1 %166, label %167, label %176

167:                                              ; preds = %161
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %170 = icmp sle i32 3, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.168, i64 0, i64 0))
  br label %172

172:                                              ; preds = %171, %168
  br label %173

173:                                              ; preds = %172
  %174 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %175 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %174, i32 0, i32 7
  store i8 1, i8* %175, align 2
  br label %176

176:                                              ; preds = %173, %161
  %177 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %5, align 8
  %178 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %177, i32 0, i32 7
  %179 = load i8, i8* %178, align 2
  %180 = icmp ne i8 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %9, align 8
  store %struct.fio_mime_set__map_s_* %182, %struct.fio_mime_set__map_s_** %4, align 8
  br label %187

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183, %147
  br label %125

185:                                              ; preds = %125
  br label %186

186:                                              ; preds = %185, %18
  store %struct.fio_mime_set__map_s_* null, %struct.fio_mime_set__map_s_** %4, align 8
  br label %187

187:                                              ; preds = %186, %181, %159, %145, %104, %90
  %188 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %4, align 8
  ret %struct.fio_mime_set__map_s_* %188
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_mime_set_rehash(%struct.fio_mime_set_s*) #0 {
  %2 = alloca %struct.fio_mime_set_s*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.fio_mime_set__ordered_s_*, align 8
  %5 = alloca %struct.fio_mime_set__ordered_s_*, align 8
  %6 = alloca %struct.fio_mime_set__map_s_*, align 8
  store %struct.fio_mime_set_s* %0, %struct.fio_mime_set_s** %2, align 8
  %7 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  call void @fio_mime_set__compact_ordered_array_(%struct.fio_mime_set_s* %7)
  %8 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %9 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %8, i32 0, i32 5
  store i8 0, i8* %9, align 8
  store i8 0, i8* %3, align 1
  br label %10

10:                                               ; preds = %67, %1
  %11 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %12 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %11, i32 0, i32 6
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sge i32 %14, 16
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load i8, i8* %3, align 1
  %18 = add i8 %17, 1
  store i8 %18, i8* %3, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sge i32 %19, 3
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %23 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %22, i32 0, i32 5
  %24 = load i8, i8* %23, align 8
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @FIO_LOG_LEVEL, align 4
  %30 = icmp sle i32 1, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %33 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %36 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.169, i64 0, i64 0), i64 %34, i64 %37)
  br label %38

38:                                               ; preds = %31, %28
  br label %39

39:                                               ; preds = %38
  call void @exit(i32 -1) #8
  unreachable

40:                                               ; preds = %21, %16, %10
  %41 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  call void @fio_mime_set__reallocate_set_mem_(%struct.fio_mime_set_s* %41)
  %42 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %43 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %42, i32 0, i32 3
  %44 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %43, align 8
  %45 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %46 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %44, i64 %47
  store %struct.fio_mime_set__ordered_s_* %48, %struct.fio_mime_set__ordered_s_** %4, align 8
  %49 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %50 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %49, i32 0, i32 3
  %51 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %50, align 8
  store %struct.fio_mime_set__ordered_s_* %51, %struct.fio_mime_set__ordered_s_** %5, align 8
  br label %52

52:                                               ; preds = %81, %40
  %53 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %5, align 8
  %54 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %4, align 8
  %55 = icmp ult %struct.fio_mime_set__ordered_s_* %53, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %52
  %57 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %58 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %5, align 8
  %59 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %5, align 8
  %62 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.fio_mime_set__map_s_* @fio_mime_set__find_map_pos_(%struct.fio_mime_set_s* %57, i64 %60, i64 %63)
  store %struct.fio_mime_set__map_s_* %64, %struct.fio_mime_set__map_s_** %6, align 8
  %65 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %6, align 8
  %66 = icmp ne %struct.fio_mime_set__map_s_* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %56
  %68 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %69 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %68, i32 0, i32 6
  %70 = load i8, i8* %69, align 1
  %71 = add i8 %70, 1
  store i8 %71, i8* %69, align 1
  br label %10

72:                                               ; preds = %56
  %73 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %5, align 8
  %74 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %6, align 8
  %75 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %74, i32 0, i32 1
  store %struct.fio_mime_set__ordered_s_* %73, %struct.fio_mime_set__ordered_s_** %75, align 8
  %76 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %5, align 8
  %77 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %6, align 8
  %80 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %72
  %82 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %5, align 8
  %83 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %82, i32 1
  store %struct.fio_mime_set__ordered_s_* %83, %struct.fio_mime_set__ordered_s_** %5, align 8
  br label %52

84:                                               ; preds = %52
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_if2(i64, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @fio_ct_true(i64 %7)
  %9 = trunc i64 %8 to i8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @fio_ct_if(i8 zeroext %9, i64 %10, i64 %11)
  ret i64 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_mime_set__compact_ordered_array_(%struct.fio_mime_set_s*) #0 {
  %2 = alloca %struct.fio_mime_set_s*, align 8
  %3 = alloca %struct.fio_mime_set__ordered_s_*, align 8
  %4 = alloca %struct.fio_mime_set__ordered_s_*, align 8
  %5 = alloca %struct.fio_mime_set__ordered_s_*, align 8
  store %struct.fio_mime_set_s* %0, %struct.fio_mime_set_s** %2, align 8
  %6 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %7 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %10 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %16 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %15, i32 0, i32 3
  %17 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %16, align 8
  store %struct.fio_mime_set__ordered_s_* %17, %struct.fio_mime_set__ordered_s_** %3, align 8
  %18 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %19 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %18, i32 0, i32 3
  %20 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %19, align 8
  store %struct.fio_mime_set__ordered_s_* %20, %struct.fio_mime_set__ordered_s_** %4, align 8
  %21 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %22 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %21, i32 0, i32 3
  %23 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %22, align 8
  %24 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %25 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %23, i64 %26
  store %struct.fio_mime_set__ordered_s_* %27, %struct.fio_mime_set__ordered_s_** %5, align 8
  br label %28

28:                                               ; preds = %50, %14
  %29 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %3, align 8
  %30 = icmp ne %struct.fio_mime_set__ordered_s_* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %3, align 8
  %33 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %5, align 8
  %34 = icmp ult %struct.fio_mime_set__ordered_s_* %32, %33
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %53

37:                                               ; preds = %35
  %38 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %3, align 8
  %39 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %50

43:                                               ; preds = %37
  %44 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %4, align 8
  %45 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %3, align 8
  %46 = bitcast %struct.fio_mime_set__ordered_s_* %44 to i8*
  %47 = bitcast %struct.fio_mime_set__ordered_s_* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  %48 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %4, align 8
  %49 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %48, i32 1
  store %struct.fio_mime_set__ordered_s_* %49, %struct.fio_mime_set__ordered_s_** %4, align 8
  br label %50

50:                                               ; preds = %43, %42
  %51 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %3, align 8
  %52 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %51, i32 1
  store %struct.fio_mime_set__ordered_s_* %52, %struct.fio_mime_set__ordered_s_** %3, align 8
  br label %28

53:                                               ; preds = %35
  %54 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %4, align 8
  %55 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %56 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %55, i32 0, i32 3
  %57 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %56, align 8
  %58 = ptrtoint %struct.fio_mime_set__ordered_s_* %54 to i64
  %59 = ptrtoint %struct.fio_mime_set__ordered_s_* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 16
  %62 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %63 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %65 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %64, i32 0, i32 2
  store i64 %61, i64* %65, align 8
  br label %66

66:                                               ; preds = %53, %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_mime_set__reallocate_set_mem_(%struct.fio_mime_set_s*) #0 {
  %2 = alloca %struct.fio_mime_set_s*, align 8
  %3 = alloca i64, align 8
  store %struct.fio_mime_set_s* %0, %struct.fio_mime_set_s** %2, align 8
  %4 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %5 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %4, i32 0, i32 6
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = zext i32 %7 to i64
  %9 = shl i64 1, %8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %11 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %10, i32 0, i32 4
  %12 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %11, align 8
  %13 = bitcast %struct.fio_mime_set__map_s_* %12 to i8*
  call void @free(i8* %13) #1
  %14 = load i64, i64* %3, align 8
  %15 = call noalias i8* @calloc(i64 16, i64 %14) #1
  %16 = bitcast i8* %15 to %struct.fio_mime_set__map_s_*
  %17 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %18 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %17, i32 0, i32 4
  store %struct.fio_mime_set__map_s_* %16, %struct.fio_mime_set__map_s_** %18, align 8
  %19 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %20 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %19, i32 0, i32 3
  %21 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %20, align 8
  %22 = bitcast %struct.fio_mime_set__ordered_s_* %21 to i8*
  %23 = load i64, i64* %3, align 8
  %24 = mul i64 %23, 16
  %25 = call i8* @realloc(i8* %22, i64 %24) #1
  %26 = bitcast i8* %25 to %struct.fio_mime_set__ordered_s_*
  %27 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %28 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %27, i32 0, i32 3
  store %struct.fio_mime_set__ordered_s_* %26, %struct.fio_mime_set__ordered_s_** %28, align 8
  %29 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %30 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %29, i32 0, i32 4
  %31 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %30, align 8
  %32 = icmp ne %struct.fio_mime_set__map_s_* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %35 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %34, i32 0, i32 3
  %36 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %35, align 8
  %37 = icmp ne %struct.fio_mime_set__ordered_s_* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %1
  call void @perror(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.170, i64 0, i64 0))
  %39 = call i32* @__errno_location() #10
  %40 = load i32, i32* %39, align 4
  call void @exit(i32 %40) #8
  unreachable

41:                                               ; preds = %33
  %42 = load i64, i64* %3, align 8
  %43 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %44 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_if(i8 zeroext, i64, i64) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8 %0, i8* %4, align 1
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 1
  %11 = sub nsw i32 0, %10
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = xor i64 %13, %14
  %16 = and i64 %12, %15
  %17 = xor i64 %7, %16
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_true(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = sub i64 0, %4
  %6 = or i64 %3, %5
  %7 = lshr i64 %6, 63
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_mime_set__insert_or_overwrite_(%struct.fio_mime_set_s*, i64, i64, i32, i64*) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.fio_mime_set_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.fio_mime_set__map_s_*, align 8
  store %struct.fio_mime_set_s* %0, %struct.fio_mime_set_s** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i64 -1, i64* %8, align 8
  br label %16

16:                                               ; preds = %15, %5
  %17 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %18 = call i64 @fio_mime_set_is_fragmented(%struct.fio_mime_set_s* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  call void @fio_mime_set_rehash(%struct.fio_mime_set_s* %21)
  br label %37

22:                                               ; preds = %16
  %23 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %24 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %27 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %32 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %31, i32 0, i32 6
  %33 = load i8, i8* %32, align 1
  %34 = add i8 %33, 1
  store i8 %34, i8* %32, align 1
  %35 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  call void @fio_mime_set_rehash(%struct.fio_mime_set_s* %35)
  br label %36

36:                                               ; preds = %30, %22
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call %struct.fio_mime_set__map_s_* @fio_mime_set__find_map_pos_(%struct.fio_mime_set_s* %38, i64 %39, i64 %40)
  store %struct.fio_mime_set__map_s_* %41, %struct.fio_mime_set__map_s_** %12, align 8
  %42 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %12, align 8
  %43 = icmp ne %struct.fio_mime_set__map_s_* %42, null
  br i1 %43, label %83, label %44

44:                                               ; preds = %37
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @fiobj_dup(i64 %45)
  %47 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %48 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %47, i32 0, i32 3
  %49 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %48, align 8
  %50 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %51 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %49, i64 %52
  %54 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %53, i32 0, i32 1
  store i64 %46, i64* %54, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %57 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %56, i32 0, i32 3
  %58 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %57, align 8
  %59 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %60 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %58, i64 %61
  %63 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %62, i32 0, i32 0
  store i64 %55, i64* %63, align 8
  %64 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %65 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %69 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  call void @fio_mime_set_rehash(%struct.fio_mime_set_s* %72)
  %73 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %74 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %73, i32 0, i32 3
  %75 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %74, align 8
  %76 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %77 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %78, 1
  %80 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %75, i64 %79
  %81 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %6, align 8
  br label %153

83:                                               ; preds = %37
  %84 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %12, align 8
  %85 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %84, i32 0, i32 1
  %86 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %85, align 8
  %87 = icmp ne %struct.fio_mime_set__ordered_s_* %86, null
  br i1 %87, label %88, label %115

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %9, align 8
  call void @fiobj_free(i64 %92)
  %93 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %12, align 8
  %94 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %93, i32 0, i32 1
  %95 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %94, align 8
  %96 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %6, align 8
  br label %153

98:                                               ; preds = %88
  %99 = load i64*, i64** %11, align 8
  %100 = icmp ne i64* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %12, align 8
  %103 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %102, i32 0, i32 1
  %104 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %103, align 8
  %105 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @fiobj_dup(i64 %106)
  %108 = load i64*, i64** %11, align 8
  store i64 %107, i64* %108, align 8
  br label %109

109:                                              ; preds = %101, %98
  %110 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %12, align 8
  %111 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %110, i32 0, i32 1
  %112 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %111, align 8
  %113 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  call void @fiobj_free(i64 %114)
  br label %133

115:                                              ; preds = %83
  %116 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %117 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %116, i32 0, i32 3
  %118 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %117, align 8
  %119 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %120 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %118, i64 %121
  %123 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %12, align 8
  %124 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %123, i32 0, i32 1
  store %struct.fio_mime_set__ordered_s_* %122, %struct.fio_mime_set__ordered_s_** %124, align 8
  %125 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %126 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %7, align 8
  %130 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %130, align 8
  br label %133

133:                                              ; preds = %115, %109
  %134 = load i64, i64* %8, align 8
  %135 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %12, align 8
  %136 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load i64, i64* %8, align 8
  %138 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %12, align 8
  %139 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %138, i32 0, i32 1
  %140 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %139, align 8
  %141 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %140, i32 0, i32 0
  store i64 %137, i64* %141, align 8
  %142 = load i64, i64* %9, align 8
  %143 = call i64 @fiobj_dup(i64 %142)
  %144 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %12, align 8
  %145 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %144, i32 0, i32 1
  %146 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %145, align 8
  %147 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %146, i32 0, i32 1
  store i64 %143, i64* %147, align 8
  %148 = load %struct.fio_mime_set__map_s_*, %struct.fio_mime_set__map_s_** %12, align 8
  %149 = getelementptr inbounds %struct.fio_mime_set__map_s_, %struct.fio_mime_set__map_s_* %148, i32 0, i32 1
  %150 = load %struct.fio_mime_set__ordered_s_*, %struct.fio_mime_set__ordered_s_** %149, align 8
  %151 = getelementptr inbounds %struct.fio_mime_set__ordered_s_, %struct.fio_mime_set__ordered_s_* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %6, align 8
  br label %153

153:                                              ; preds = %133, %91, %44
  %154 = load i64, i64* %6, align 8
  ret i64 %154
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_mime_set_is_fragmented(%struct.fio_mime_set_s*) #0 {
  %2 = alloca %struct.fio_mime_set_s*, align 8
  store %struct.fio_mime_set_s* %0, %struct.fio_mime_set_s** %2, align 8
  %3 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %4 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %7 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub i64 %5, %8
  %10 = load %struct.fio_mime_set_s*, %struct.fio_mime_set_s** %2, align 8
  %11 = getelementptr inbounds %struct.fio_mime_set_s, %struct.fio_mime_set_s* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = lshr i64 %12, 1
  %14 = icmp ugt i64 %9, %13
  %15 = zext i1 %14 to i32
  %16 = sext i32 %15 to i64
  ret i64 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
!2 = !{i32 199746}
!3 = !{i32 199390}
!4 = !{i32 199475}
