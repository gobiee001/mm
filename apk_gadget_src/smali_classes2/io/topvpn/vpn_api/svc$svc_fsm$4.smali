.class final Lio/topvpn/vpn_api/svc$svc_fsm$4;
.super Lio/topvpn/vpn_api/fsm$state;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/svc$svc_fsm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/fsm$state;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected enter(Lio/topvpn/vpn_api/fsm;Lio/topvpn/vpn_api/fsm$state;)V
    .locals 4

    .prologue
    .line 158
    move-object v0, p1

    check-cast v0, Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$400(Lio/topvpn/vpn_api/svc$svc_fsm;)Lio/topvpn/vpn_api/svc;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/ram;->SVC_UP:Lio/topvpn/vpn_api/ram$key;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Z)V

    .line 160
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/ram;->SVC_STATE:Lio/topvpn/vpn_api/ram$key;

    const-string v3, "started"

    invoke-virtual {v1, v2, v3}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v1

    invoke-static {v1}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$700(Lio/topvpn/vpn_api/svc$svc_fsm;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    sget-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPING:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {p1, v0}, Lio/topvpn/vpn_api/fsm;->set_state(Lio/topvpn/vpn_api/fsm$state;)V

    .line 188
    :goto_0
    return-void

    .line 166
    :cond_0
    const/16 v1, 0xc8

    new-instance v2, Lio/topvpn/vpn_api/svc$svc_fsm$4$1;

    invoke-direct {v2, p0, v0}, Lio/topvpn/vpn_api/svc$svc_fsm$4$1;-><init>(Lio/topvpn/vpn_api/svc$svc_fsm$4;Lio/topvpn/vpn_api/svc;)V

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$1800(Lio/topvpn/vpn_api/svc;ILio/topvpn/vpn_api/svc$callback_json_cb;)V

    goto :goto_0
.end method

.method protected exit(Lio/topvpn/vpn_api/fsm;Lio/topvpn/vpn_api/fsm$state;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    check-cast p1, Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-static {p1}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$400(Lio/topvpn/vpn_api/svc$svc_fsm;)Lio/topvpn/vpn_api/svc;

    move-result-object v0

    .line 193
    invoke-static {v0, v3}, Lio/topvpn/vpn_api/svc;->access$1202(Lio/topvpn/vpn_api/svc;Z)Z

    .line 194
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1900(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/wget;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1900(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/wget;

    move-result-object v1

    invoke-virtual {v1}, Lio/topvpn/vpn_api/wget;->cancel()V

    .line 196
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc;->access$1902(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/wget;)Lio/topvpn/vpn_api/wget;

    .line 197
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/ram;->SESSION_KEY:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/ram;->del(Ljava/lang/Object;)V

    .line 198
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/ram;->SVC_UP:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1, v3}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Z)V

    .line 199
    return-void
.end method
