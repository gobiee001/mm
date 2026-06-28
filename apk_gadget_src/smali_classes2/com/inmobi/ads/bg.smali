.class final Lcom/inmobi/ads/bg;
.super Landroid/os/Handler;
.source "RenderTimeoutHandler.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/AdUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/bg;->a:Ljava/lang/ref/WeakReference;

    .line 24
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 28
    iget-object v1, p0, Lcom/inmobi/ads/bg;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/AdUnit;

    .line 29
    if-nez v1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 31
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 34
    :pswitch_0
    :try_start_0
    instance-of v2, v1, Lcom/inmobi/ads/w;

    if-eqz v2, :cond_1

    .line 35
    move-object v0, v1

    check-cast v0, Lcom/inmobi/ads/w;

    move-object v2, v0

    .line 2866
    iget-object v3, v2, Lcom/inmobi/ads/AdUnit;->t:Lcom/inmobi/rendering/RenderView;

    .line 36
    if-eqz v3, :cond_1

    .line 3866
    iget-object v2, v2, Lcom/inmobi/ads/AdUnit;->t:Lcom/inmobi/rendering/RenderView;

    .line 37
    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit;->A()V

    goto :goto_0

    .line 41
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v2

    check-cast v2, Lcom/inmobi/rendering/RenderView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    if-nez v2, :cond_2

    .line 48
    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit;->A()V

    goto :goto_0

    .line 44
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->stopLoading()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit;->A()V

    goto :goto_0

    .line 45
    :catch_0
    move-exception v2

    .line 46
    :try_start_3
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit;->A()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit;->A()V

    throw v2

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
