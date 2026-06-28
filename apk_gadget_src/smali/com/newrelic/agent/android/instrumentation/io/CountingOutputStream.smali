.class public final Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;
.super Ljava/io/OutputStream;
.source "CountingOutputStream.java"

# interfaces
.implements Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;


# instance fields
.field private count:J

.field private final impl:Ljava/io/OutputStream;

.field private final listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "impl"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J

    .line 11
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    .line 14
    if-nez p1, :cond_0

    .line 15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CountingOutputStream: output stream cannot be null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->impl:Ljava/io/OutputStream;

    .line 18
    return-void
.end method

.method private notifyStreamComplete()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    new-instance v1, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    iget-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J

    invoke-direct {v1, p0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->notifyStreamComplete(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V

    .line 95
    :cond_0
    return-void
.end method

.method private notifyStreamError(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    new-instance v1, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    iget-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;-><init>(Ljava/lang/Object;JLjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->notifyStreamError(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public addStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V
    .locals 1
    .param p1, "streamCompleteListener"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->addStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    .line 22
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 83
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->notifyStreamComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 87
    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 75
    throw v0
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J

    return-wide v0
.end method

.method public removeStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V
    .locals 1
    .param p1, "streamCompleteListener"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->removeStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    .line 26
    return-void
.end method

.method public write(I)V
    .locals 6
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 36
    iget-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 40
    throw v0
.end method

.method public write([B)V
    .locals 6
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 48
    iget-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J

    array-length v1, p1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 52
    throw v0
.end method

.method public write([BII)V
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 60
    iget-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 64
    throw v0
.end method
