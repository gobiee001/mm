.class Lio/topvpn/vpn_api/be$2;
.super Ljava/lang/Object;
.source "be.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/be;->async_stop_with_dump()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/be;

.field final synthetic val$w:Lio/topvpn/vpn_api/be$worker;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/be;Lio/topvpn/vpn_api/be$worker;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lio/topvpn/vpn_api/be$2;->this$0:Lio/topvpn/vpn_api/be;

    iput-object p2, p0, Lio/topvpn/vpn_api/be$2;->val$w:Lio/topvpn/vpn_api/be$worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lio/topvpn/vpn_api/be$2;->val$w:Lio/topvpn/vpn_api/be$worker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/be$worker;->exit(Z)Lio/topvpn/vpn_api/util$killall_t;

    return-void
.end method
