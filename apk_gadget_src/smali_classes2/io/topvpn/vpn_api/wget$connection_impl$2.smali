.class Lio/topvpn/vpn_api/wget$connection_impl$2;
.super Ljava/lang/Object;
.source "wget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/wget$connection_impl;->report(Lio/topvpn/vpn_api/wget$connection$state;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/topvpn/vpn_api/wget$connection_impl;

.field final synthetic val$outcome:Lio/topvpn/vpn_api/wget$connection$state;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/wget$connection_impl;Lio/topvpn/vpn_api/wget$connection$state;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lio/topvpn/vpn_api/wget$connection_impl$2;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iput-object p2, p0, Lio/topvpn/vpn_api/wget$connection_impl$2;->val$outcome:Lio/topvpn/vpn_api/wget$connection$state;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$2;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$2;->val$outcome:Lio/topvpn/vpn_api/wget$connection$state;

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/wget$connection_impl;->access$1500(Lio/topvpn/vpn_api/wget$connection_impl;Lio/topvpn/vpn_api/wget$connection$state;)V

    return-void
.end method
