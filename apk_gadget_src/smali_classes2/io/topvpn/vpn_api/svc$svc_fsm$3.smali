.class final Lio/topvpn/vpn_api/svc$svc_fsm$3;
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
    .line 136
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/fsm$state;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected enter(Lio/topvpn/vpn_api/fsm;Lio/topvpn/vpn_api/fsm$state;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 139
    move-object v0, p1

    check-cast v0, Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$400(Lio/topvpn/vpn_api/svc$svc_fsm;)Lio/topvpn/vpn_api/svc;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v1

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$602(Lio/topvpn/vpn_api/svc$svc_fsm;Z)Z

    .line 141
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v1

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$702(Lio/topvpn/vpn_api/svc$svc_fsm;Z)Z

    .line 142
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/ram;->SVC_STATE:Lio/topvpn/vpn_api/ram$key;

    const-string v3, "starting"

    invoke-virtual {v1, v2, v3}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc;->access$802(Lio/topvpn/vpn_api/svc;I)I

    .line 144
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$900(Lio/topvpn/vpn_api/svc;)Ljava/lang/String;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    .line 148
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v2, Lio/topvpn/vpn_api/conf;->SVC_ERROR:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2, v1}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPED:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {p1, v0}, Lio/topvpn/vpn_api/fsm;->set_state(Lio/topvpn/vpn_api/fsm$state;)V

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {p1, v0}, Lio/topvpn/vpn_api/fsm;->set_state(Lio/topvpn/vpn_api/fsm$state;)V

    goto :goto_0
.end method
