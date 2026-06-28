.class Lcom/supersonic/mediationsdk/events/SuperLooper;
.super Ljava/lang/Thread;
.source "SuperLooper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/supersonic/mediationsdk/events/SuperLooper;


# instance fields
.field private mSdkThread:Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    new-instance v0, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;-><init>(Lcom/supersonic/mediationsdk/events/SuperLooper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    .line 19
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;->start()V

    .line 20
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;->prepareHandler()V

    .line 21
    return-void
.end method

.method public static declared-synchronized getLooper()Lcom/supersonic/mediationsdk/events/SuperLooper;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/supersonic/mediationsdk/events/SuperLooper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mInstance:Lcom/supersonic/mediationsdk/events/SuperLooper;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/supersonic/mediationsdk/events/SuperLooper;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/events/SuperLooper;-><init>()V

    sput-object v0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mInstance:Lcom/supersonic/mediationsdk/events/SuperLooper;

    .line 28
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mInstance:Lcom/supersonic/mediationsdk/events/SuperLooper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized post(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 36
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    .line 38
    .local v0, "callbackHandler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    .end local v0    # "callbackHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
