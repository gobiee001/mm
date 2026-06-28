.class Lio/topvpn/vpn_api/svc$ipc$1;
.super Lio/topvpn/vpn_api/util$ipc_request;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc$ipc;->ipc_unblocker_json_set(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/topvpn/vpn_api/svc$ipc;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/svc$ipc;Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$ipc$1;->this$1:Lio/topvpn/vpn_api/svc$ipc;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p3, p4}, Lio/topvpn/vpn_api/util$ipc_request;-><init>(Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;)V

    return-void
.end method


# virtual methods
.method public on_ipc_finish(I)V
    .locals 3

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$ipc$1;->this$1:Lio/topvpn/vpn_api/svc$ipc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$ipc;->access$000(Lio/topvpn/vpn_api/svc$ipc;)Lio/topvpn/vpn_api/svc;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "svc fail unblocker_json_set"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    goto :goto_0
.end method
