.class Lio/topvpn/vpn_api/wget$15;
.super Ljava/lang/Thread;
.source "wget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/wget;-><init>(Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V
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
    .line 499
    iput-object p1, p0, Lio/topvpn/vpn_api/wget$15;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 501
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 502
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$15;->this$0:Lio/topvpn/vpn_api/wget;

    monitor-enter v1

    .line 503
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$15;->this$0:Lio/topvpn/vpn_api/wget;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v2}, Lio/topvpn/vpn_api/wget;->access$1202(Lio/topvpn/vpn_api/wget;Landroid/os/Handler;)Landroid/os/Handler;

    .line 504
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$15;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0, v2}, Lio/topvpn/vpn_api/wget;->access$1702(Lio/topvpn/vpn_api/wget;Landroid/os/Looper;)Landroid/os/Looper;

    .line 505
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$15;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 506
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 508
    return-void

    .line 506
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
