.class final Lio/topvpn/vpn_api/apk_config$1;
.super Lcom/androidquery/callback/AjaxCallback;
.source "apk_config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/apk_config;->update(Lio/topvpn/vpn_api/conf;Lcom/androidquery/AQuery;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AjaxCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cb:Ljava/lang/Runnable;

.field final synthetic val$conf:Lio/topvpn/vpn_api/conf;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/conf;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lio/topvpn/vpn_api/apk_config$1;->val$conf:Lio/topvpn/vpn_api/conf;

    iput-object p2, p0, Lio/topvpn/vpn_api/apk_config$1;->val$cb:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 44
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lio/topvpn/vpn_api/apk_config$1;->callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 4

    .prologue
    .line 47
    if-eqz p2, :cond_2

    .line 49
    iget-object v1, p0, Lio/topvpn/vpn_api/apk_config$1;->val$conf:Lio/topvpn/vpn_api/conf;

    iget-object v0, p0, Lio/topvpn/vpn_api/apk_config$1;->val$conf:Lio/topvpn/vpn_api/conf;

    iget-object v2, p0, Lio/topvpn/vpn_api/apk_config$1;->val$conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->APK_CONFIG:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 50
    instance-of v0, p2, Lorg/json/JSONObject;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, 0x1

    .line 49
    invoke-static {v1, v2, v0, v3}, Lio/topvpn/vpn_api/apk_config;->set_json(Lio/topvpn/vpn_api/conf;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    :goto_1
    iget-object v0, p0, Lio/topvpn/vpn_api/apk_config$1;->val$cb:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lio/topvpn/vpn_api/apk_config$1;->val$cb:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 60
    :cond_0
    return-void

    .line 50
    :cond_1
    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_2
    const-string v0, "apk_config_ajax_failed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
