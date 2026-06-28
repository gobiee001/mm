.class Lio/topvpn/vpn_api/auth$1;
.super Lcom/androidquery/callback/AjaxCallback;
.source "auth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/auth;->login_internal(Lio/topvpn/vpn_api/auth$login_cb;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lio/topvpn/vpn_api/auth;

.field final synthetic val$cb:Lio/topvpn/vpn_api/auth$login_cb;

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/auth;Ljava/lang/String;Ljava/lang/String;Lio/topvpn/vpn_api/auth$login_cb;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    iput-object p2, p0, Lio/topvpn/vpn_api/auth$1;->val$uuid:Ljava/lang/String;

    iput-object p3, p0, Lio/topvpn/vpn_api/auth$1;->val$cid:Ljava/lang/String;

    iput-object p4, p0, Lio/topvpn/vpn_api/auth$1;->val$cb:Lio/topvpn/vpn_api/auth$login_cb;

    invoke-direct {p0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 100
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lio/topvpn/vpn_api/auth$1;->callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 5

    .prologue
    .line 103
    const-string v0, "auth"

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "req "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/util;->_zerr(Ljava/lang/String;ILjava/lang/String;)I

    .line 104
    const-string v0, "country"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const-string v0, "rule_background_apk_init_err"

    const-string v2, "empty country"

    invoke-static {v0, v2}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    const-string v0, "peer_mobile_usage_percentage"

    const-wide v2, 0x3fa999999999999aL    # 0.05

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 116
    iget-object v0, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    invoke-static {v0}, Lio/topvpn/vpn_api/auth;->access$000(Lio/topvpn/vpn_api/auth;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v4, Lio/topvpn/vpn_api/conf;->PEER_3G_USAGE_PER:Lio/topvpn/vpn_api/conf$key;

    double-to-float v2, v2

    invoke-virtual {v0, v4, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;F)V

    .line 117
    const-string v0, "peer_mobile_battery_level"

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 119
    iget-object v0, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    invoke-static {v0}, Lio/topvpn/vpn_api/auth;->access$000(Lio/topvpn/vpn_api/auth;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v4, Lio/topvpn/vpn_api/conf;->PEER_3G_BATTERY_LEVEL:Lio/topvpn/vpn_api/conf$key;

    double-to-float v2, v2

    invoke-virtual {v0, v4, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;F)V

    .line 120
    iget-object v0, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    iput-object v1, v0, Lio/topvpn/vpn_api/auth;->m_country_local:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    invoke-static {v0}, Lio/topvpn/vpn_api/auth;->access$000(Lio/topvpn/vpn_api/auth;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v2, Lio/topvpn/vpn_api/conf;->COUNTRY_LOCAL:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2, v1}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    const-string v0, "key"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    const-string v0, "rule_background_apk_init_err"

    const-string v1, "empty session key"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_1
    const-string v0, "upgrade"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 136
    iget-object v1, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    invoke-static {v1}, Lio/topvpn/vpn_api/auth;->access$100(Lio/topvpn/vpn_api/auth;)Lio/topvpn/vpn_api/ram;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/ram;->USING_OLD_VERSION:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v1, v2, v0}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Z)V

    .line 137
    iget-object v0, p0, Lio/topvpn/vpn_api/auth$1;->val$cb:Lio/topvpn/vpn_api/auth$login_cb;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lio/topvpn/vpn_api/auth$1;->val$cb:Lio/topvpn/vpn_api/auth$login_cb;

    iget-object v1, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    invoke-virtual {v1}, Lio/topvpn/vpn_api/auth;->is_login()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/topvpn/vpn_api/auth$login_cb;->cb(Z)V

    .line 139
    :cond_0
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    invoke-static {v0}, Lio/topvpn/vpn_api/auth;->access$200(Lio/topvpn/vpn_api/auth;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/topvpn/vpn_api/auth$login_cb;

    .line 141
    if-eqz v0, :cond_4

    .line 142
    iget-object v1, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    iget-object v2, p0, Lio/topvpn/vpn_api/auth$1;->val$uuid:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lio/topvpn/vpn_api/auth;->access$300(Lio/topvpn/vpn_api/auth;Lio/topvpn/vpn_api/auth$login_cb;Ljava/lang/String;)V

    .line 145
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    invoke-static {v0}, Lio/topvpn/vpn_api/auth;->access$000(Lio/topvpn/vpn_api/auth;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v2, Lio/topvpn/vpn_api/conf;->DBG_COUNTRY:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 112
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 127
    :cond_2
    iget-object v1, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    iput-object v0, v1, Lio/topvpn/vpn_api/auth;->m_sid:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    iget-object v2, p0, Lio/topvpn/vpn_api/auth$1;->val$uuid:Ljava/lang/String;

    iput-object v2, v1, Lio/topvpn/vpn_api/auth;->m_uuid:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    invoke-static {v1}, Lio/topvpn/vpn_api/auth;->access$000(Lio/topvpn/vpn_api/auth;)Lio/topvpn/vpn_api/conf;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/conf;->SESSION_KEY_JAVA:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2, v0}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    invoke-static {v0}, Lio/topvpn/vpn_api/auth;->access$000(Lio/topvpn/vpn_api/auth;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/conf;->UUID:Lio/topvpn/vpn_api/conf$key;

    iget-object v2, p0, Lio/topvpn/vpn_api/auth$1;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    const-string v1, "rule_background_apk_init_set"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uuid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    iget-object v2, v2, Lio/topvpn/vpn_api/auth;->m_uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " session_key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    iget-object v2, v2, Lio/topvpn/vpn_api/auth;->m_sid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lio/topvpn/vpn_api/auth$1;->val$cid:Ljava/lang/String;

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "none"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 133
    :cond_3
    iget-object v0, p0, Lio/topvpn/vpn_api/auth$1;->val$cid:Ljava/lang/String;

    goto :goto_4

    .line 144
    :cond_4
    :try_start_1
    iget-object v0, p0, Lio/topvpn/vpn_api/auth$1;->this$0:Lio/topvpn/vpn_api/auth;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/auth;->access$402(Lio/topvpn/vpn_api/auth;Z)Z

    goto/16 :goto_2

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method
