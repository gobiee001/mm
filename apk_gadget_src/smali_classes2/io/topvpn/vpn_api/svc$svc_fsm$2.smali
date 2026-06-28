.class final Lio/topvpn/vpn_api/svc$svc_fsm$2;
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
    .line 124
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/fsm$state;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected enter(Lio/topvpn/vpn_api/fsm;Lio/topvpn/vpn_api/fsm$state;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p1

    check-cast v0, Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$400(Lio/topvpn/vpn_api/svc$svc_fsm;)Lio/topvpn/vpn_api/svc;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/ram;->SVC_STATE:Lio/topvpn/vpn_api/ram$key;

    const-string v3, "idle_err"

    invoke-virtual {v1, v2, v3}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v1

    invoke-static {v1}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$600(Lio/topvpn/vpn_api/svc$svc_fsm;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v1, 0x5

    const-string v2, "start was scheduled"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 132
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$602(Lio/topvpn/vpn_api/svc$svc_fsm;Z)Z

    .line 133
    sget-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTING:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {p1, v0}, Lio/topvpn/vpn_api/fsm;->set_state(Lio/topvpn/vpn_api/fsm$state;)V

    goto :goto_0
.end method
