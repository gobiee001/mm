.class public Lio/topvpn/vpn_api/api;
.super Ljava/lang/Object;
.source "api.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/api$on_selection_listener;,
        Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;,
        Lio/topvpn/vpn_api/api$BTN_PEER_TXT;,
        Lio/topvpn/vpn_api/api$DIALOG_TYPE;
    }
.end annotation


# static fields
.field public static final CHOICE_ADS:I = 0x2

.field public static final CHOICE_FREE:I = 0x1

.field public static final CHOICE_NONE:I = 0x0

.field public static final CHOICE_NOT_PEER:I = 0x4

.field public static final CHOICE_PEER:I = 0x1

.field public static final CHOICE_SUBSCRIPTION:I = 0x3

.field public static final DIALOG_CHOOSE:I = 0x1

.field public static final DIALOG_PEER:I = 0x2

.field static final TAG:Ljava/lang/String; = "TopVPN"

.field private static m_bottom_color:I

.field public static m_btn_not_peer_txt:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

.field public static m_btn_peer_txt:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

.field public static m_dialog_active:Z

.field private static m_dialog_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

.field private static m_hola_sla:Z

.field private static m_on_selection_listener:Lio/topvpn/vpn_api/api$on_selection_listener;

.field private static m_prev_exception_handler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static m_top_color:I

.field private static m_tos_link:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->PEER1:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    sput-object v0, Lio/topvpn/vpn_api/api;->m_dialog_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    .line 29
    const-string v0, "link to tos"

    sput-object v0, Lio/topvpn/vpn_api/api;->m_tos_link:Ljava/lang/String;

    .line 30
    const-string v0, "#009cd6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/topvpn/vpn_api/api;->m_top_color:I

    .line 31
    const-string v0, "#003d5b"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/topvpn/vpn_api/api;->m_bottom_color:I

    .line 37
    sget-object v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->FREE:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    sput-object v0, Lio/topvpn/vpn_api/api;->m_btn_peer_txt:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    .line 38
    sget-object v0, Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;->ADS:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    sput-object v0, Lio/topvpn/vpn_api/api;->m_btn_not_peer_txt:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lio/topvpn/vpn_api/api;->m_prev_exception_handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-static {p0}, Lio/topvpn/vpn_api/api;->restart_svc(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(I)V
    .locals 0

    .prologue
    .line 17
    invoke-static {p0}, Lio/topvpn/vpn_api/api;->call_selection_listener(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-static {p0}, Lio/topvpn/vpn_api/api;->start(Landroid/content/Context;)V

    return-void
.end method

.method private static call_selection_listener(I)V
    .locals 3

    .prologue
    .line 185
    const-string v0, "TopVPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopVPN API user choice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v0, Lio/topvpn/vpn_api/api;->m_on_selection_listener:Lio/topvpn/vpn_api/api$on_selection_listener;

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lio/topvpn/vpn_api/api;->m_on_selection_listener:Lio/topvpn/vpn_api/api$on_selection_listener;

    invoke-interface {v0, p0}, Lio/topvpn/vpn_api/api$on_selection_listener;->on_user_selection(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public static clear_selection(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    const-string v0, "opt_out"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v0, "topvpn_api"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 228
    const-string v1, "choice"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "choice"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 230
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 231
    invoke-static {p0}, Lio/topvpn/vpn_api/svc;->stop(Landroid/content/Context;)V

    .line 232
    :cond_0
    invoke-static {v3}, Lio/topvpn/vpn_api/api;->call_selection_listener(I)V

    .line 233
    return-void
.end method

.method public static get_user_selection(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    const-string v0, "topvpn_api"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "choice"

    .line 237
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 236
    return v0
.end method

.method public static init(Landroid/app/Activity;Z)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 44
    :try_start_0
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->util_init(Landroid/content/Context;)I

    .line 45
    new-instance v2, Lio/topvpn/vpn_api/conf;

    invoke-direct {v2, p0}, Lio/topvpn/vpn_api/conf;-><init>(Landroid/content/Context;)V

    .line 46
    sget-object v3, Lio/topvpn/vpn_api/conf;->APKID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v3, Lio/topvpn/vpn_api/conf;->NON_FIRST_INIT:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    const-string v3, "first_init"

    const-string v4, ""

    invoke-static {v3, v4}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v3, Lio/topvpn/vpn_api/conf;->NON_FIRST_INIT:Lio/topvpn/vpn_api/conf$key;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 52
    :cond_0
    const-string v3, "topvpn_api"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 54
    sget-object v4, Lio/topvpn/vpn_api/conf;->SDK_DISABLED:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v4}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "choice"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    const/4 v0, 0x4

    invoke-static {v0}, Lio/topvpn/vpn_api/api;->call_selection_listener(I)V

    .line 58
    invoke-static {p0}, Lio/topvpn/vpn_api/svc;->stop(Landroid/content/Context;)V

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    invoke-static {v2}, Lio/topvpn/vpn_api/apk_config;->init(Lio/topvpn/vpn_api/conf;)V

    .line 62
    new-instance v4, Lcom/androidquery/AQuery;

    invoke-direct {v4, p0}, Lcom/androidquery/AQuery;-><init>(Landroid/app/Activity;)V

    const/4 v5, 0x0

    sget-object v6, Lio/topvpn/vpn_api/conf;->NON_FIRST_RUN:Lio/topvpn/vpn_api/conf$key;

    .line 63
    invoke-virtual {v2, v6}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v0, v1

    .line 62
    :cond_3
    invoke-static {v2, v4, v5, v0}, Lio/topvpn/vpn_api/apk_config;->update(Lio/topvpn/vpn_api/conf;Lcom/androidquery/AQuery;Ljava/lang/Runnable;Z)V

    .line 64
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/api;->m_prev_exception_handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 65
    new-instance v0, Lio/topvpn/vpn_api/api$1;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/api$1;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 88
    const-string v0, "TopVPN"

    const-string v4, "TopVPN API init 1.80.401"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v0, ""

    .line 90
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_5

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TopVPN API old OS sdk version "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 96
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "choice"

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    const/4 v1, 0x4

    invoke-static {v1}, Lio/topvpn/vpn_api/api;->call_selection_listener(I)V

    .line 98
    const-string v1, "TopVPN"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v1, "not_supported"

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 174
    invoke-static {p0}, Lio/topvpn/vpn_api/svc;->stop(Landroid/content/Context;)V

    .line 175
    const-string v1, "init_exception"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_5
    :try_start_1
    invoke-static {}, Lio/topvpn/vpn_api/svc;->is_architecture_supported()Z

    move-result v4

    if-nez v4, :cond_4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TopVPN API CPU architecture not supported "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/svc;->get_abi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 102
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v4, "org.hola."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "io.luminati"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    if-nez p1, :cond_9

    .line 106
    sget-object v0, Lio/topvpn/vpn_api/conf;->NON_FIRST_CHOICE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v0}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 108
    const-string v0, "first_user_chose_peer"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lio/topvpn/vpn_api/conf;->NON_FIRST_CHOICE:Lio/topvpn/vpn_api/conf$key;

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 111
    :cond_8
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "choice"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    invoke-static {p0}, Lio/topvpn/vpn_api/api;->start(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 115
    :cond_9
    const-string v0, "choice"

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 116
    if-eqz v0, :cond_a

    if-eqz p1, :cond_d

    .line 118
    :cond_a
    sget-boolean v0, Lio/topvpn/vpn_api/api;->m_dialog_active:Z

    if-nez v0, :cond_1

    .line 120
    sget-object v0, Lio/topvpn/vpn_api/conf;->NON_FIRST_SHOW_POPUP_BEFORE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v0}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 122
    const-string v0, "first_show_popup_before"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v0, Lio/topvpn/vpn_api/conf;->NON_FIRST_SHOW_POPUP_BEFORE:Lio/topvpn/vpn_api/conf$key;

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 125
    :cond_b
    const-string v0, "show_popup_before"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x1

    sput-boolean v0, Lio/topvpn/vpn_api/api;->m_dialog_active:Z

    .line 127
    new-instance v0, Lio/topvpn/vpn_api/peer_dialog;

    invoke-direct {v0}, Lio/topvpn/vpn_api/peer_dialog;-><init>()V

    .line 128
    sget-object v1, Lio/topvpn/vpn_api/api;->m_dialog_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/peer_dialog;->set_dialog(Lio/topvpn/vpn_api/api$DIALOG_TYPE;)V

    .line 129
    sget-object v1, Lio/topvpn/vpn_api/api;->m_tos_link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/peer_dialog;->set_tos_link(Ljava/lang/String;)V

    .line 130
    sget v1, Lio/topvpn/vpn_api/api;->m_top_color:I

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/peer_dialog;->set_top_color(I)V

    .line 131
    sget v1, Lio/topvpn/vpn_api/api;->m_bottom_color:I

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/peer_dialog;->set_bottom_color(I)V

    .line 132
    sget-boolean v1, Lio/topvpn/vpn_api/api;->m_hola_sla:Z

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/peer_dialog;->set_hola_sla(Z)V

    .line 133
    sget-object v1, Lio/topvpn/vpn_api/api;->m_btn_peer_txt:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/peer_dialog;->set_btn_peer_txt(Lio/topvpn/vpn_api/api$BTN_PEER_TXT;)V

    .line 134
    sget-object v1, Lio/topvpn/vpn_api/api;->m_btn_not_peer_txt:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/peer_dialog;->set_btn_not_peer_txt(Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;)V

    .line 135
    new-instance v1, Lio/topvpn/vpn_api/api$2;

    invoke-direct {v1, v3, p0}, Lio/topvpn/vpn_api/api$2;-><init>(Landroid/content/SharedPreferences;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/peer_dialog;->set_on_dissmiss_listener(Lio/topvpn/vpn_api/peer_dialog$peer_dialog_dissmiss;)V

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/peer_dialog;->setCancelable(Z)V

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lio/topvpn/vpn_api/peer_dialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lio/topvpn/vpn_api/conf;->NON_FIRST_SHOW_POPUP_AFTER:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v0}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 159
    const-string v0, "first_show_popup_after"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v0, Lio/topvpn/vpn_api/conf;->NON_FIRST_SHOW_POPUP_AFTER:Lio/topvpn/vpn_api/conf$key;

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 162
    :cond_c
    const-string v0, "show_popup_after"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 166
    :cond_d
    invoke-static {v0}, Lio/topvpn/vpn_api/api;->call_selection_listener(I)V

    .line 167
    if-ne v0, v1, :cond_1

    .line 168
    invoke-static {p0}, Lio/topvpn/vpn_api/api;->start(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static restart_svc(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 191
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lio/topvpn/vpn_api/api$3;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/api$3;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    return-void
.end method

.method public static set_bottom_background(I)V
    .locals 0

    .prologue
    .line 216
    sput p0, Lio/topvpn/vpn_api/api;->m_bottom_color:I

    return-void
.end method

.method public static set_btn_not_peer_txt(Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;)V
    .locals 0

    .prologue
    .line 219
    sput-object p0, Lio/topvpn/vpn_api/api;->m_btn_not_peer_txt:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    return-void
.end method

.method public static set_btn_peer_txt(Lio/topvpn/vpn_api/api$BTN_PEER_TXT;)V
    .locals 0

    .prologue
    .line 217
    sput-object p0, Lio/topvpn/vpn_api/api;->m_btn_peer_txt:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    return-void
.end method

.method public static set_dialog_type(Lio/topvpn/vpn_api/api$DIALOG_TYPE;)V
    .locals 0

    .prologue
    .line 209
    sput-object p0, Lio/topvpn/vpn_api/api;->m_dialog_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    return-void
.end method

.method public static set_hola_sla_link(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    sput-boolean p0, Lio/topvpn/vpn_api/api;->m_hola_sla:Z

    return-void
.end method

.method public static set_selection_listener(Lio/topvpn/vpn_api/api$on_selection_listener;)V
    .locals 0

    .prologue
    .line 206
    sput-object p0, Lio/topvpn/vpn_api/api;->m_on_selection_listener:Lio/topvpn/vpn_api/api$on_selection_listener;

    return-void
.end method

.method public static set_sla_link(Z)V
    .locals 0

    .prologue
    .line 213
    sput-boolean p0, Lio/topvpn/vpn_api/api;->m_hola_sla:Z

    return-void
.end method

.method public static set_top_background(I)V
    .locals 0

    .prologue
    .line 215
    sput p0, Lio/topvpn/vpn_api/api;->m_top_color:I

    return-void
.end method

.method public static set_tos_link(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    sput-object p0, Lio/topvpn/vpn_api/api;->m_tos_link:Ljava/lang/String;

    return-void
.end method

.method private static start(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 180
    const-string v0, "TopVPN"

    const-string v1, "TopVPN API starting service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p0}, Lio/topvpn/vpn_api/svc;->start(Landroid/content/Context;)V

    .line 182
    return-void
.end method
