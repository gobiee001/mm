.class Lio/topvpn/vpn_api/svc$4;
.super Ljava/util/TimerTask;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc;->check_active(Lio/topvpn/vpn_api/state$key;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/svc;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$4;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 847
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$4;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v0

    if-nez v0, :cond_0

    .line 851
    :goto_0
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$4;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/ram;->IS_ACTIVE_PEER:Lio/topvpn/vpn_api/ram$key;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Z)V

    .line 850
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$4;->this$0:Lio/topvpn/vpn_api/svc;

    const-string v1, "idle"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc;->access$4100(Lio/topvpn/vpn_api/svc;Ljava/lang/String;)V

    goto :goto_0
.end method
