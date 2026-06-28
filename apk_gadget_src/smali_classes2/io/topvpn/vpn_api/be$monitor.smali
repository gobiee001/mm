.class Lio/topvpn/vpn_api/be$monitor;
.super Landroid/os/Handler;
.source "be.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "monitor"
.end annotation


# static fields
.field public static final MSG_WORKER_STARTED:I = 0x2

.field public static final MSG_WORKER_STARTING:I = 0x1

.field public static final MSG_WORKER_STOPPING:I = 0x3


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/be;


# direct methods
.method public constructor <init>(Lio/topvpn/vpn_api/be;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x5

    .line 353
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 383
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mon invalid msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 385
    :goto_0
    return-void

    .line 356
    :pswitch_0
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    const-string v1, "worker-mon received \'starting\'"

    invoke-static {v0, v2, v1}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 357
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v0}, Lio/topvpn/vpn_api/be;->access$1200(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$worker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/be$worker;->set_state(I)V

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    const-string v1, "worker-mon received \'started\'"

    invoke-static {v0, v2, v1}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 361
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v0}, Lio/topvpn/vpn_api/be;->access$1200(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$worker;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/be$worker;->set_state(I)V

    goto :goto_0

    .line 364
    :pswitch_2
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    const-string v1, "worker-mon received \'stopping\'"

    invoke-static {v0, v2, v1}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 365
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v0}, Lio/topvpn/vpn_api/be;->access$1200(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$worker;

    move-result-object v0

    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/be$worker;->set_state(I)V

    .line 366
    iget-object v1, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v0}, Lio/topvpn/vpn_api/be;->access$1200(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$worker;

    move-result-object v0

    invoke-virtual {v0}, Lio/topvpn/vpn_api/be$worker;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :goto_1
    :try_start_1
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v0}, Lio/topvpn/vpn_api/be;->access$1200(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$worker;

    move-result-object v0

    .line 369
    iget-object v2, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v2}, Lio/topvpn/vpn_api/be;->access$1200(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$worker;

    move-result-object v2

    invoke-static {v2}, Lio/topvpn/vpn_api/be$worker;->access$1300(Lio/topvpn/vpn_api/be$worker;)I

    move-result v2

    .line 370
    iget-object v3, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lio/topvpn/vpn_api/be;->access$1202(Lio/topvpn/vpn_api/be;Lio/topvpn/vpn_api/be$worker;)Lio/topvpn/vpn_api/be$worker;

    .line 371
    iget-object v3, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "worker-mon waited until worker stopped "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 372
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Lio/topvpn/vpn_api/be$worker;->set_state(II)V

    .line 373
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v0}, Lio/topvpn/vpn_api/be;->access$1400(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$worker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    const/4 v2, 0x5

    const-string v3, "restarting"

    invoke-static {v0, v2, v3}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 376
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    iget-object v2, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v2}, Lio/topvpn/vpn_api/be;->access$1400(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$worker;

    move-result-object v2

    invoke-static {v0, v2}, Lio/topvpn/vpn_api/be;->access$1202(Lio/topvpn/vpn_api/be;Lio/topvpn/vpn_api/be$worker;)Lio/topvpn/vpn_api/be$worker;

    .line 377
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lio/topvpn/vpn_api/be;->access$1402(Lio/topvpn/vpn_api/be;Lio/topvpn/vpn_api/be$worker;)Lio/topvpn/vpn_api/be$worker;

    .line 378
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v0}, Lio/topvpn/vpn_api/be;->access$1200(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$worker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lio/topvpn/vpn_api/be$monitor;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v0}, Lio/topvpn/vpn_api/be;->access$1200(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$worker;

    move-result-object v0

    invoke-virtual {v0}, Lio/topvpn/vpn_api/be$worker;->start()V

    .line 381
    :cond_0
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 367
    :catch_0
    move-exception v0

    goto :goto_1

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
