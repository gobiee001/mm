.class public Lcom/supersonic/mediationsdk/logger/PublisherLogger;
.super Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
.source "PublisherLogger.java"


# instance fields
.field private mLogListener:Lcom/supersonic/mediationsdk/logger/LogListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "publisher"

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/supersonic/mediationsdk/logger/LogListener;I)V
    .locals 1
    .param p1, "logListener"    # Lcom/supersonic/mediationsdk/logger/LogListener;
    .param p2, "debugLevel"    # I

    .prologue
    .line 21
    const-string v0, "publisher"

    invoke-direct {p0, v0, p2}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p1, p0, Lcom/supersonic/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/supersonic/mediationsdk/logger/LogListener;

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    .locals 1
    .param p1, "tag"    # Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/supersonic/mediationsdk/logger/LogListener;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 28
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/supersonic/mediationsdk/logger/LogListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/supersonic/mediationsdk/logger/LogListener;->onLog(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    if-eqz p3, :cond_0

    .line 34
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/supersonic/mediationsdk/logger/PublisherLogger;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 36
    :cond_0
    return-void
.end method

.method public setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/supersonic/mediationsdk/logger/LogListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/supersonic/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/supersonic/mediationsdk/logger/LogListener;

    .line 41
    return-void
.end method
