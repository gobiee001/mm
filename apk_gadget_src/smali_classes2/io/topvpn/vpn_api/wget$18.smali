.class Lio/topvpn/vpn_api/wget$18;
.super Ljava/lang/Object;
.source "wget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/wget;->onattemptdone(Lio/topvpn/vpn_api/wget$connection_impl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/wget;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/wget;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lio/topvpn/vpn_api/wget$18;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 580
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$18;->this$0:Lio/topvpn/vpn_api/wget;

    new-instance v1, Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v2, p0, Lio/topvpn/vpn_api/wget$18;->this$0:Lio/topvpn/vpn_api/wget;

    iget-object v3, p0, Lio/topvpn/vpn_api/wget$18;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v3}, Lio/topvpn/vpn_api/wget;->access$2000(Lio/topvpn/vpn_api/wget;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/topvpn/vpn_api/wget$connection_impl;-><init>(Lio/topvpn/vpn_api/wget;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/wget;->access$1902(Lio/topvpn/vpn_api/wget;Lio/topvpn/vpn_api/wget$connection_impl;)Lio/topvpn/vpn_api/wget$connection_impl;

    return-void
.end method
