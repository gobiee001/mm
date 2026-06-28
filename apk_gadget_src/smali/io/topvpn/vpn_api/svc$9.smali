.class Lio/topvpn/vpn_api/svc$9;
.super Lio/topvpn/vpn_api/wget;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc;->propagate_auth_info()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/svc;


# direct methods
.method varargs constructor <init>(Lio/topvpn/vpn_api/svc;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V
    .locals 0

    .prologue
    .line 987
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$9;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0, p2, p3}, Lio/topvpn/vpn_api/wget;-><init>(Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V

    return-void
.end method


# virtual methods
.method public onfailure(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 3

    .prologue
    .line 993
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$9;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x3

    const-string v2, "set_auth_info.json failed"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    return-void
.end method

.method public onsuccess(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 3

    .prologue
    .line 990
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$9;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x5

    const-string v2, "set_auth_info.json OK"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    return-void
.end method
