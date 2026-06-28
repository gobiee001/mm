.class final Lio/topvpn/vpn_api/svc$svc_fsm$8;
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
    .line 241
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/fsm$state;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected enter(Lio/topvpn/vpn_api/fsm;Lio/topvpn/vpn_api/fsm$state;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 244
    move-object v0, p1

    check-cast v0, Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$400(Lio/topvpn/vpn_api/svc$svc_fsm;)Lio/topvpn/vpn_api/svc;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/ram;->SVC_STATE:Lio/topvpn/vpn_api/ram$key;

    const-string v3, "halted"

    invoke-virtual {v1, v2, v3}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v2

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$2200(Lio/topvpn/vpn_api/svc;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 247
    invoke-static {v0, v6}, Lio/topvpn/vpn_api/svc;->access$802(Lio/topvpn/vpn_api/svc;I)I

    .line 248
    :cond_0
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$810(Lio/topvpn/vpn_api/svc;)I

    .line 249
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$800(Lio/topvpn/vpn_api/svc;)I

    move-result v1

    if-gez v1, :cond_1

    .line 252
    const-string v1, "hola_svc crashed 3 times in less than 10min"

    invoke-static {v0, v6, v1}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 254
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/conf;->SVC_ERROR:Lio/topvpn/vpn_api/conf$key;

    const-string v2, "svc_exe_crashed"

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPING:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {p1, v0}, Lio/topvpn/vpn_api/fsm;->set_state(Lio/topvpn/vpn_api/fsm$state;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_1
    const/4 v1, 0x5

    const-string v2, "BE halted, starting over"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 259
    sget-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->RESTARTING:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {p1, v0}, Lio/topvpn/vpn_api/fsm;->set_state(Lio/topvpn/vpn_api/fsm$state;)V

    goto :goto_0
.end method
