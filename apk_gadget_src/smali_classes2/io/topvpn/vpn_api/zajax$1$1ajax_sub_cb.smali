.class Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;
.super Ljava/lang/Object;
.source "zajax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/zajax$1;->callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1ajax_sub_cb"
.end annotation


# instance fields
.field final synthetic this$1:Lio/topvpn/vpn_api/zajax$1;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/zajax$1;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;->this$1:Lio/topvpn/vpn_api/zajax$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 108
    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v2, v2, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v2}, Lio/topvpn/vpn_api/zajax;->access$700(Lio/topvpn/vpn_api/zajax;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 109
    :try_start_0
    iget-object v3, p0, Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v3, v3, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v3}, Lio/topvpn/vpn_api/zajax;->access$808(Lio/topvpn/vpn_api/zajax;)I

    .line 110
    iget-object v3, p0, Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v3, v3, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v3}, Lio/topvpn/vpn_api/zajax;->access$900(Lio/topvpn/vpn_api/zajax;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    monitor-exit v2

    .line 118
    :goto_0
    return v0

    .line 112
    :cond_0
    iget-object v3, p0, Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v3, v3, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v3}, Lio/topvpn/vpn_api/zajax;->access$800(Lio/topvpn/vpn_api/zajax;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    .line 114
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v0, v0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lio/topvpn/vpn_api/zajax;->access$902(Lio/topvpn/vpn_api/zajax;Z)Z

    .line 115
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v0, v0, Lio/topvpn/vpn_api/zajax$1;->val$cb:Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/androidquery/callback/AjaxCallback;->callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V

    .line 116
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 118
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
