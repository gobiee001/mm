.class Lio/topvpn/vpn_api/conf;
.super Lio/topvpn/vpn_api/set_strict;
.source "conf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/conf$listener;,
        Lio/topvpn/vpn_api/conf$key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/topvpn/vpn_api/set_strict",
        "<",
        "Lio/topvpn/vpn_api/conf$key;",
        ">;"
    }
.end annotation


# static fields
.field public static final APKID:Lio/topvpn/vpn_api/conf$key;

.field public static final APK_CONFIG:Lio/topvpn/vpn_api/conf$key;

.field public static final APP_ERROR_CODE:Lio/topvpn/vpn_api/conf$key;

.field public static final APP_ERROR_MSG:Lio/topvpn/vpn_api/conf$key;

.field public static final APP_ERROR_MSG_IS_HTML:Lio/topvpn/vpn_api/conf$key;

.field public static final CALLBACK_JSON_PERR:Lio/topvpn/vpn_api/conf$key;

.field public static final CID:Lio/topvpn/vpn_api/conf$key;

.field public static final COUNTRY_LOCAL:Lio/topvpn/vpn_api/conf$key;

.field public static final COUNTRY_LOCAL_MYIP:Lio/topvpn/vpn_api/conf$key;

.field public static final CURR_MOBILE_USAGE_DATE:Lio/topvpn/vpn_api/conf$key;

.field public static final DAILY_MOBILE_USAGE:Lio/topvpn/vpn_api/conf$key;

.field public static final DAILY_MOBILE_USAGE_APP:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_ADD:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_ANDROID_OS:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_API:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_CLIENT_CGI:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_CLIENT_CGI_IP_PORT:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_COUNTRY:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_HOLA_SVC:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_HOLA_SVC_MANUAL:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_IDLE_TIME:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_NO_SPACE:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_NO_SPACE_SYSTEM:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_PRINT_CONSOLE:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_USE_APK_DL_LINK:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_WEBVIEW:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_WEBVIEW_URL:Lio/topvpn/vpn_api/conf$key;

.field public static final DBG_WORKDIR_SVC_FAIL:Lio/topvpn/vpn_api/conf$key;

.field public static final DEV_TYPES:Lio/topvpn/vpn_api/conf$key;

.field public static final DISABLE_JAVA_3G_MONITOR:Lio/topvpn/vpn_api/conf$key;

.field public static final FIRST_RUN_TS:Lio/topvpn/vpn_api/conf$key;

.field public static final FORCE_IDLE:Lio/topvpn/vpn_api/conf$key;

.field public static final HAVE_SVC:Lio/topvpn/vpn_api/conf$key;

.field public static final HOLA_OFF_EXT:Lio/topvpn/vpn_api/conf$key;

.field public static final HOLA_ON:Lio/topvpn/vpn_api/conf$key;

.field public static final IDLE_TIME:Lio/topvpn/vpn_api/conf$key;

.field private static final INITED:Lio/topvpn/vpn_api/conf$key;

.field public static final INSTALL:Lio/topvpn/vpn_api/conf$key;

.field public static final IS_DEBUG:Lio/topvpn/vpn_api/conf$key;

.field public static final IS_DEBUG_LAYOUT:Lio/topvpn/vpn_api/conf$key;

.field public static final JS_CONF:Lio/topvpn/vpn_api/conf$key;

.field public static final LAST_ACTIVE:Lio/topvpn/vpn_api/conf$key;

.field public static final LAST_ON_3G:Lio/topvpn/vpn_api/conf$key;

.field public static final LAST_ON_MOBILE:Lio/topvpn/vpn_api/conf$key;

.field public static final LAST_PROXY_HOST_CCGI:Lio/topvpn/vpn_api/conf$key;

.field public static final LAST_SVC_CONNECTED:Lio/topvpn/vpn_api/conf$key;

.field public static final LAST_USAGE_BYTES:Lio/topvpn/vpn_api/conf$key;

.field public static final LAST_USAGE_PERR:Lio/topvpn/vpn_api/conf$key;

.field public static final LAST_USAGE_TS:Lio/topvpn/vpn_api/conf$key;

.field public static final LAST_WORKING_HOST_CCGI:Lio/topvpn/vpn_api/conf$key;

.field public static final LAST_WORKING_PROT_CCGI:Lio/topvpn/vpn_api/conf$key;

.field public static final MOBILE_USAGE_SINCE_BOOT:Lio/topvpn/vpn_api/conf$key;

.field public static final NON_FIRST_CHOICE:Lio/topvpn/vpn_api/conf$key;

.field public static final NON_FIRST_INIT:Lio/topvpn/vpn_api/conf$key;

.field public static final NON_FIRST_RUN:Lio/topvpn/vpn_api/conf$key;

.field public static final NON_FIRST_SHOW_POPUP_AFTER:Lio/topvpn/vpn_api/conf$key;

.field public static final NON_FIRST_SHOW_POPUP_BEFORE:Lio/topvpn/vpn_api/conf$key;

.field public static final PEER_3G_BATTERY_LEVEL:Lio/topvpn/vpn_api/conf$key;

.field public static final PEER_3G_USAGE_PER:Lio/topvpn/vpn_api/conf$key;

.field public static final SDK_DISABLED:Lio/topvpn/vpn_api/conf$key;

.field public static final SESSION_KEY_JAVA:Lio/topvpn/vpn_api/conf$key;

.field public static final SINCE_BOOT_3G_BYTES:Lio/topvpn/vpn_api/conf$key;

.field public static final SUPP_KILL:Lio/topvpn/vpn_api/conf$key;

.field public static final SVC_ERROR:Lio/topvpn/vpn_api/conf$key;

.field public static final USAGE_SINCE_BOOT_APP:Lio/topvpn/vpn_api/conf$key;

.field public static final UUID:Lio/topvpn/vpn_api/conf$key;

.field public static final UUID_TMP:Lio/topvpn/vpn_api/conf$key;

.field public static final WORKDIR:Lio/topvpn/vpn_api/conf$key;

.field public static final ZERR_LEVEL:Lio/topvpn/vpn_api/conf$key;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "inited"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->INITED:Lio/topvpn/vpn_api/conf$key;

    .line 48
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "not_first_run"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->NON_FIRST_RUN:Lio/topvpn/vpn_api/conf$key;

    .line 50
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "apk_config"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->APK_CONFIG:Lio/topvpn/vpn_api/conf$key;

    .line 51
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "install"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->INSTALL:Lio/topvpn/vpn_api/conf$key;

    .line 52
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "workdir"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->WORKDIR:Lio/topvpn/vpn_api/conf$key;

    .line 54
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_add"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_ADD:Lio/topvpn/vpn_api/conf$key;

    .line 55
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "is_debug"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->IS_DEBUG:Lio/topvpn/vpn_api/conf$key;

    .line 56
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_hola_svc"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_HOLA_SVC:Lio/topvpn/vpn_api/conf$key;

    .line 57
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "is_debug_layout"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->IS_DEBUG_LAYOUT:Lio/topvpn/vpn_api/conf$key;

    .line 58
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_api"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_API:Lio/topvpn/vpn_api/conf$key;

    .line 59
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_client_cgi_ip_port"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_CLIENT_CGI_IP_PORT:Lio/topvpn/vpn_api/conf$key;

    .line 61
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "zerr_level"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->ZERR_LEVEL:Lio/topvpn/vpn_api/conf$key;

    .line 62
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_print_console"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_PRINT_CONSOLE:Lio/topvpn/vpn_api/conf$key;

    .line 63
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_hola_svc_manual"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_HOLA_SVC_MANUAL:Lio/topvpn/vpn_api/conf$key;

    .line 64
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_use_apk_dl_link"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_USE_APK_DL_LINK:Lio/topvpn/vpn_api/conf$key;

    .line 65
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_webview"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_WEBVIEW:Lio/topvpn/vpn_api/conf$key;

    .line 67
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_webview_url"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_WEBVIEW_URL:Lio/topvpn/vpn_api/conf$key;

    .line 68
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_no_space"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_NO_SPACE:Lio/topvpn/vpn_api/conf$key;

    .line 70
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_workdir_svc_fail"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_WORKDIR_SVC_FAIL:Lio/topvpn/vpn_api/conf$key;

    .line 71
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_no_space_system"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_NO_SPACE_SYSTEM:Lio/topvpn/vpn_api/conf$key;

    .line 72
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_client_cgi"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_CLIENT_CGI:Lio/topvpn/vpn_api/conf$key;

    .line 74
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_android_os"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_ANDROID_OS:Lio/topvpn/vpn_api/conf$key;

    .line 76
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_country"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_COUNTRY:Lio/topvpn/vpn_api/conf$key;

    .line 77
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dbg_idle_time"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DBG_IDLE_TIME:Lio/topvpn/vpn_api/conf$key;

    .line 79
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "svc_error"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->SVC_ERROR:Lio/topvpn/vpn_api/conf$key;

    .line 80
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "app_error_code"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->APP_ERROR_CODE:Lio/topvpn/vpn_api/conf$key;

    .line 81
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "app_error_msg_is_html"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->APP_ERROR_MSG_IS_HTML:Lio/topvpn/vpn_api/conf$key;

    .line 83
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "app_error_msg"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->APP_ERROR_MSG:Lio/topvpn/vpn_api/conf$key;

    .line 85
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "supp_kill"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->SUPP_KILL:Lio/topvpn/vpn_api/conf$key;

    .line 86
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "cid"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->CID:Lio/topvpn/vpn_api/conf$key;

    .line 88
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "country_local"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->COUNTRY_LOCAL:Lio/topvpn/vpn_api/conf$key;

    .line 90
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "country_local_myip"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->COUNTRY_LOCAL_MYIP:Lio/topvpn/vpn_api/conf$key;

    .line 92
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "uuid"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->UUID:Lio/topvpn/vpn_api/conf$key;

    .line 94
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "uuid_tmp"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->UUID_TMP:Lio/topvpn/vpn_api/conf$key;

    .line 96
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "session_key_java"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->SESSION_KEY_JAVA:Lio/topvpn/vpn_api/conf$key;

    .line 97
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "hola_on"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->HOLA_ON:Lio/topvpn/vpn_api/conf$key;

    .line 101
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "hola_off_ext"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->HOLA_OFF_EXT:Lio/topvpn/vpn_api/conf$key;

    .line 103
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "callback_json_perr"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->CALLBACK_JSON_PERR:Lio/topvpn/vpn_api/conf$key;

    .line 105
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "last_working_prot_ccgi"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->LAST_WORKING_PROT_CCGI:Lio/topvpn/vpn_api/conf$key;

    .line 107
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "last_working_host_ccgi"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->LAST_WORKING_HOST_CCGI:Lio/topvpn/vpn_api/conf$key;

    .line 109
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "last_proxy_host_ccgi"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->LAST_PROXY_HOST_CCGI:Lio/topvpn/vpn_api/conf$key;

    .line 111
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "first_run_ts"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->FIRST_RUN_TS:Lio/topvpn/vpn_api/conf$key;

    .line 112
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "last_svc_connected"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->LAST_SVC_CONNECTED:Lio/topvpn/vpn_api/conf$key;

    .line 113
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "last_active"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->LAST_ACTIVE:Lio/topvpn/vpn_api/conf$key;

    .line 115
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "idle_time"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->IDLE_TIME:Lio/topvpn/vpn_api/conf$key;

    .line 117
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "apkid"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->APKID:Lio/topvpn/vpn_api/conf$key;

    .line 118
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "have_svc"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->HAVE_SVC:Lio/topvpn/vpn_api/conf$key;

    .line 120
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "peer_3g_usage_per"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->PEER_3G_USAGE_PER:Lio/topvpn/vpn_api/conf$key;

    .line 122
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "peer_3g_battery_level"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->PEER_3G_BATTERY_LEVEL:Lio/topvpn/vpn_api/conf$key;

    .line 124
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "dev_types"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DEV_TYPES:Lio/topvpn/vpn_api/conf$key;

    .line 126
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "last_usage_bytes"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->LAST_USAGE_BYTES:Lio/topvpn/vpn_api/conf$key;

    .line 128
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "last_usage_ts"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->LAST_USAGE_TS:Lio/topvpn/vpn_api/conf$key;

    .line 130
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "since_boot_3g_bytes"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->SINCE_BOOT_3G_BYTES:Lio/topvpn/vpn_api/conf$key;

    .line 132
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "last_on_3g"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->LAST_ON_3G:Lio/topvpn/vpn_api/conf$key;

    .line 134
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "force_idle"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->FORCE_IDLE:Lio/topvpn/vpn_api/conf$key;

    .line 136
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "sdk_disabled"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->SDK_DISABLED:Lio/topvpn/vpn_api/conf$key;

    .line 138
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "disable_java_3g_monitor"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DISABLE_JAVA_3G_MONITOR:Lio/topvpn/vpn_api/conf$key;

    .line 141
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "js_conf"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->JS_CONF:Lio/topvpn/vpn_api/conf$key;

    .line 144
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "daily_mobile_usage"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DAILY_MOBILE_USAGE:Lio/topvpn/vpn_api/conf$key;

    .line 146
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "daily_mobile_usage_app"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->DAILY_MOBILE_USAGE_APP:Lio/topvpn/vpn_api/conf$key;

    .line 149
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "mobile_usage_since_boot"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->MOBILE_USAGE_SINCE_BOOT:Lio/topvpn/vpn_api/conf$key;

    .line 152
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "curr_mobile_usage_date"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->CURR_MOBILE_USAGE_DATE:Lio/topvpn/vpn_api/conf$key;

    .line 155
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "usage_since_boot_app"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->USAGE_SINCE_BOOT_APP:Lio/topvpn/vpn_api/conf$key;

    .line 157
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "last_on_mobile"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->LAST_ON_MOBILE:Lio/topvpn/vpn_api/conf$key;

    .line 159
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "last_usage_perr"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->LAST_USAGE_PERR:Lio/topvpn/vpn_api/conf$key;

    .line 161
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "non_first_choice"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->NON_FIRST_CHOICE:Lio/topvpn/vpn_api/conf$key;

    .line 162
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "non_first_init"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->NON_FIRST_INIT:Lio/topvpn/vpn_api/conf$key;

    .line 163
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "non_first_show_popup_before"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->NON_FIRST_SHOW_POPUP_BEFORE:Lio/topvpn/vpn_api/conf$key;

    .line 165
    new-instance v0, Lio/topvpn/vpn_api/conf$key;

    const-string v1, "non_first_show_popup_after"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V

    sput-object v0, Lio/topvpn/vpn_api/conf;->NON_FIRST_SHOW_POPUP_AFTER:Lio/topvpn/vpn_api/conf$key;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 13
    const-string v0, "conf"

    invoke-direct {p0, p1, v0}, Lio/topvpn/vpn_api/set_strict;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    const-class v1, Lio/topvpn/vpn_api/conf;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lio/topvpn/vpn_api/conf;->INITED:Lio/topvpn/vpn_api/conf$key;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    sget-object v0, Lio/topvpn/vpn_api/conf;->CID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->atoi(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 19
    sget-object v0, Lio/topvpn/vpn_api/conf;->CID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/conf;->del(Ljava/lang/Object;)V

    .line 20
    :cond_0
    monitor-exit v1

    .line 29
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-virtual {p0}, Lio/topvpn/vpn_api/conf;->clear()V

    .line 24
    sget-object v0, Lio/topvpn/vpn_api/conf;->COUNTRY_LOCAL:Lio/topvpn/vpn_api/conf$key;

    const-string v2, "us"

    invoke-virtual {p0, v0, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lio/topvpn/vpn_api/conf;->INSTALL:Lio/topvpn/vpn_api/conf$key;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 26
    sget-object v0, Lio/topvpn/vpn_api/conf;->APK_CONFIG:Lio/topvpn/vpn_api/conf$key;

    const-string/jumbo v2, "{}"

    invoke-virtual {p0, v0, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lio/topvpn/vpn_api/conf;->INITED:Lio/topvpn/vpn_api/conf$key;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 28
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected resolve_key(Ljava/lang/String;)Lio/topvpn/vpn_api/conf$key;
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lio/topvpn/vpn_api/conf$key;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/topvpn/vpn_api/conf$key;

    return-object v0
.end method

.method protected bridge synthetic resolve_key(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/conf;->resolve_key(Ljava/lang/String;)Lio/topvpn/vpn_api/conf$key;

    move-result-object v0

    return-object v0
.end method
