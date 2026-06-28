.class final Lio/topvpn/vpn_api/svc$svc_fsm$5;
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
    .line 201
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/fsm$state;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected enter(Lio/topvpn/vpn_api/fsm;Lio/topvpn/vpn_api/fsm$state;)V
    .locals 4

    .prologue
    .line 204
    move-object v0, p1

    check-cast v0, Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$400(Lio/topvpn/vpn_api/svc$svc_fsm;)Lio/topvpn/vpn_api/svc;

    move-result-object v0

    .line 205
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/ram;->SVC_STATE:Lio/topvpn/vpn_api/ram$key;

    const-string v3, "stopping"

    invoke-virtual {v1, v2, v3}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$702(Lio/topvpn/vpn_api/svc$svc_fsm;Z)Z

    .line 207
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$2000(Lio/topvpn/vpn_api/svc;)V

    .line 208
    sget-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPED:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {p1, v0}, Lio/topvpn/vpn_api/fsm;->set_state(Lio/topvpn/vpn_api/fsm$state;)V

    .line 209
    return-void
.end method
