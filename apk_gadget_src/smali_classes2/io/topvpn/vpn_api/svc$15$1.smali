.class Lio/topvpn/vpn_api/svc$15$1;
.super Ljava/lang/Object;
.source "svc.java"

# interfaces
.implements Lio/topvpn/vpn_api/svc$callback_json_cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc$15;->on_ipc_finish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/topvpn/vpn_api/svc$15;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/svc$15;)V
    .locals 0

    .prologue
    .line 1407
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$15$1;->this$1:Lio/topvpn/vpn_api/svc$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cb(ZLorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1408
    return-void
.end method
