.class Lio/topvpn/vpn_api/apk_config;
.super Ljava/lang/Object;
.source "apk_config.java"


# static fields
.field public static m_inited:Z

.field public static m_show_share_popup:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized init(Lio/topvpn/vpn_api/conf;)V
    .locals 4

    .prologue
    .line 19
    const-class v1, Lio/topvpn/vpn_api/apk_config;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lio/topvpn/vpn_api/apk_config;->m_inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 23
    :goto_0
    monitor-exit v1

    return-void

    .line 21
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lio/topvpn/vpn_api/apk_config;->m_inited:Z

    .line 22
    const-string/jumbo v0, "{}"

    sget-object v2, Lio/topvpn/vpn_api/conf;->APK_CONFIG:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {p0, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lio/topvpn/vpn_api/apk_config;->set_json(Lio/topvpn/vpn_api/conf;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static set_json(Lio/topvpn/vpn_api/conf;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 102
    const/4 v1, 0x0

    .line 103
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 110
    invoke-static {p0, v0, v1, p3}, Lio/topvpn/vpn_api/apk_config;->set_json(Lio/topvpn/vpn_api/conf;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 111
    :goto_1
    return-void

    .line 104
    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsing prev failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/topvpn/vpn_api/apk_config;->zerr(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsing curr failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/topvpn/vpn_api/apk_config;->zerr(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private static set_json(Lio/topvpn/vpn_api/conf;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 67
    const-string v0, "compat_ver"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x3

    const-string v1, "sanity check failed: no compat_ver"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/apk_config;->zerr(ILjava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v0, "idle_time"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lio/topvpn/vpn_api/conf;->IDLE_TIME:Lio/topvpn/vpn_api/conf$key;

    const-string v1, "idle_time"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;I)V

    .line 74
    :cond_1
    const-string v0, "sdk_disabled"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    sget-object v0, Lio/topvpn/vpn_api/conf;->SDK_DISABLED:Lio/topvpn/vpn_api/conf$key;

    const-string v1, "sdk_disabled"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 76
    :cond_2
    const-string v0, "disable_java_3g_monitor"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    sget-object v0, Lio/topvpn/vpn_api/conf;->DISABLE_JAVA_3G_MONITOR:Lio/topvpn/vpn_api/conf$key;

    const-string v1, "disable_java_3g_monitor"

    .line 79
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 78
    invoke-virtual {p0, v0, v1}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 81
    :cond_3
    const-string v0, "js_conf"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    sget-object v0, Lio/topvpn/vpn_api/conf;->JS_CONF:Lio/topvpn/vpn_api/conf$key;

    const-string v1, "js_conf"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    :cond_4
    const-string v0, "compat_ver"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    if-eqz p1, :cond_5

    .line 86
    const-string v0, "compat_ver"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->version_cmp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_5

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not updated: compat_ver prev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " new="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/topvpn/vpn_api/apk_config;->zerr(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_5
    if-eqz p3, :cond_6

    .line 95
    sget-object v2, Lio/topvpn/vpn_api/conf;->APK_CONFIG:Lio/topvpn/vpn_api/conf$key;

    instance-of v0, p2, Lorg/json/JSONObject;

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v2, v0}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loaded ver "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/topvpn/vpn_api/apk_config;->zerr(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 95
    :cond_7
    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static update(Lio/topvpn/vpn_api/conf;Lcom/androidquery/AQuery;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lio/topvpn/vpn_api/apk_config;->update(Lio/topvpn/vpn_api/conf;Lcom/androidquery/AQuery;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static update(Lio/topvpn/vpn_api/conf;Lcom/androidquery/AQuery;Ljava/lang/Runnable;Z)V
    .locals 5

    .prologue
    .line 31
    sget-object v0, Lio/topvpn/vpn_api/conf;->UUID_TMP:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Lio/topvpn/vpn_api/ajax_ccgi;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/apk_config.json?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_first_run"

    if-eqz p3, :cond_0

    const-string v0, "1"

    .line 33
    :goto_0
    invoke-static {v4, v0}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "version"

    const-string v4, "1.80.401 android arm"

    .line 34
    invoke-static {v3, v4}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "tag"

    const-string v4, "Ntag-1_80_401"

    .line 35
    invoke-static {v3, v4}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "build_date"

    const-string v4, "23-Jan-18 18:17:26"

    .line 36
    invoke-static {v3, v4}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "makeflags"

    const-string v4, "DIST=APP ARCH=ANDROID RELEASE=y AUTO_SIGN=y CONFIG_BATREQ=y CONFIG_BAT_CYCLE=y CONFIG_BAT_PLATFORM=app_androidr"

    .line 37
    invoke-static {v3, v4}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "os_version"

    .line 38
    invoke-static {}, Lio/topvpn/vpn_api/util;->get_os_ver()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "device"

    .line 39
    invoke-static {}, Lio/topvpn/vpn_api/util;->get_device()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "cpu_abi"

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 40
    invoke-static {v3, v4}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "cpu_abi2"

    sget-object v4, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 41
    invoke-static {v3, v4}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "apkid"

    sget-object v4, Lio/topvpn/vpn_api/conf;->APKID:Lio/topvpn/vpn_api/conf$key;

    .line 42
    invoke-virtual {p0, v4}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0, p0}, Lio/topvpn/vpn_api/ajax_ccgi;-><init>(Lcom/androidquery/AQuery;Ljava/lang/String;Lio/topvpn/vpn_api/conf;)V

    .line 44
    const/4 v0, 0x0

    new-instance v1, Lio/topvpn/vpn_api/apk_config$1;

    invoke-direct {v1, p0, p2}, Lio/topvpn/vpn_api/apk_config$1;-><init>(Lio/topvpn/vpn_api/conf;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0, v1}, Lio/topvpn/vpn_api/ajax_ccgi;->ajax(Ljava/util/Map;Lcom/androidquery/callback/AjaxCallback;)V

    .line 62
    return-void

    .line 32
    :cond_0
    const-string v0, "0"

    goto/16 :goto_0

    .line 43
    :cond_1
    const-string v0, "uuid"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static zerr(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    const-string v0, "apk_config"

    invoke-static {v0, p0, p1}, Lio/topvpn/vpn_api/util;->_zerr(Ljava/lang/String;ILjava/lang/String;)I

    return-void
.end method
