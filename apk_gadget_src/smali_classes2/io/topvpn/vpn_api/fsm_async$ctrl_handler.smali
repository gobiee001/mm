.class Lio/topvpn/vpn_api/fsm_async$ctrl_handler;
.super Landroid/os/Handler;
.source "fsm_async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/fsm_async;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ctrl_handler"
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/fsm_async;


# direct methods
.method public constructor <init>(Lio/topvpn/vpn_api/fsm_async;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lio/topvpn/vpn_api/fsm_async$ctrl_handler;->this$0:Lio/topvpn/vpn_api/fsm_async;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 17
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm_async$ctrl_handler;->this$0:Lio/topvpn/vpn_api/fsm_async;

    iget-object v1, v0, Lio/topvpn/vpn_api/fsm_async;->m_state_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v2, p0, Lio/topvpn/vpn_api/fsm_async$ctrl_handler;->this$0:Lio/topvpn/vpn_api/fsm_async;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v2, v0}, Lio/topvpn/vpn_api/fsm_async;->_set_state(Lio/topvpn/vpn_api/fsm$state;)V

    .line 21
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
