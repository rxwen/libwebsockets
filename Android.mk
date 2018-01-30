# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := eng
LOCAL_C_INCLUDES := $(LOCAL_PATH)/android_config \
	$(LOCAL_PATH)/lib \
	$(LOCAL_PATH)/lib/misc \
	$(LOCAL_PATH)/lib/mbedtls_wrapper/include \
	$(LOCAL_PATH)/lib/mbedtls_wrapper/include/internal \
	$(LOCAL_PATH)/lib/mbedtls_wrapper/include/platform \
	external/mbedtls/include \
	external/zlib \
	external/libevent/include

LOCAL_CFLAGS +=

LOCAL_SRC_FILES := \
	lib/alloc.c \
	lib/client/client.c \
	lib/client/client-handshake.c \
	lib/client/client-parser.c \
	lib/client/ssl-client.c \
	lib/context.c \
	lib/ext/extension.c \
	lib/ext/extension-permessage-deflate.c \
	lib/handshake.c \
	lib/header.c \
	lib/libwebsockets.c \
	lib/misc/base64-decode.c \
	lib/misc/lws-genhash.c \
	lib/misc/lws-ring.c \
	lib/misc/sha-1.c \
	lib/output.c \
	lib/plat/lws-plat-unix.c \
	lib/pollfd.c \
	lib/server/fops-zip.c \
	lib/server/lws-spa.c \
	lib/server/parsers.c \
	lib/server/ranges.c \
	lib/server/server.c \
	lib/server/server-handshake.c \
	lib/server/ssl-server.c \
	lib/server/peer-limits.c \
	lib/server/access-log.c \
	lib/service.c \
	lib/mbedtls_wrapper/library/ssl_cert.c \
	lib/mbedtls_wrapper/library/ssl_lib.c \
	lib/mbedtls_wrapper/library/ssl_methods.c \
	lib/mbedtls_wrapper/library/ssl_pkey.c \
	lib/mbedtls_wrapper/library/ssl_stack.c \
	lib/mbedtls_wrapper/library/ssl_x509.c \
	lib/mbedtls_wrapper/platform/ssl_pm.c \
	lib/mbedtls_wrapper/platform/ssl_port.c \
	lib/event-libs/libevent.c \
	lib/misc/getifaddrs.c \
	lib/ssl.c

	#lib/event-libs/libev.c \
	#lib/event-libs/libevent.c \
	#lib/event-libs/libuv.c \
	#lib/http2/hpack.c \
	#lib/http2/http2.c \
	#lib/http2/minihuf.c \
	#lib/http2/ssl-http2.c \
	#lib/mbedtls_wrapper/library/ssl_cert.c \
	#lib/mbedtls_wrapper/library/ssl_lib.c \
	#lib/mbedtls_wrapper/library/ssl_methods.c \
	#lib/mbedtls_wrapper/library/ssl_pkey.c \
	#lib/mbedtls_wrapper/library/ssl_stack.c \
	#lib/mbedtls_wrapper/library/ssl_x509.c \
	#lib/mbedtls_wrapper/platform/ssl_pm.c \
	#lib/mbedtls_wrapper/platform/ssl_port.c \
	#lib/minilex.c \
	#lib/misc/getifaddrs.c \
	#lib/misc/lejp.c \
	#lib/misc/romfs.c \
	#lib/misc/smtp.c \
	#lib/plat/lws-plat-esp32.c \
	#lib/plat/lws-plat-esp8266.c \
	#lib/plat/lws-plat-optee.c \
	#lib/plat/lws-plat-win.c \
	#lib/server/access-log.c \
	#lib/server/cgi.c \
	#lib/server/daemonize.c
	#lib/server/lejp-conf.c \
	#lib/server/peer-limits.c \
	#lib/server/rewrite.c \

LOCAL_LDLIBS += -ldl
LOCAL_SHARED_LIBRARIES := libdl \
	libmbedtls \
	libevent \
	libz

LOCAL_MODULE := libwebsockets
include $(BUILD_SHARED_LIBRARY)
