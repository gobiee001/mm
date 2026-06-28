.class public final Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;
.super Ljava/io/InputStream;
.source "CountingInputStream.java"

# interfaces
.implements Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private count:J

.field private enableBuffering:Z

.field private final impl:Ljava/io/InputStream;

.field private final listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "impl"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    .line 16
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->enableBuffering:Z

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CountingInputStream: input stream cannot be null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->impl:Ljava/io/InputStream;

    .line 29
    iget-boolean v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->enableBuffering:Z

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getResponseBodyLimit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->fillBuffer()V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "impl"    # Ljava/io/InputStream;
    .param p2, "enableBuffering"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    .line 16
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->enableBuffering:Z

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CountingInputStream: input stream cannot be null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->impl:Ljava/io/InputStream;

    .line 43
    iput-boolean p2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->enableBuffering:Z

    .line 45
    if-eqz p2, :cond_1

    .line 46
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getResponseBodyLimit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->fillBuffer()V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private bufferEmpty()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private bufferHasBytes(J)Z
    .locals 3
    .param p1, "num"    # J

    .prologue
    .line 293
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyStreamComplete()V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    new-instance v1, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    iget-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    invoke-direct {v1, p0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->notifyStreamComplete(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V

    .line 330
    :cond_0
    return-void
.end method

.method private notifyStreamError(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    new-instance v1, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    iget-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;-><init>(Ljava/lang/Object;JLjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->notifyStreamError(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V

    .line 336
    :cond_0
    return-void
.end method

.method private readBuffer()I
    .locals 1

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->bufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, -0x1

    .line 276
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    goto :goto_0
.end method

.method private readBufferBytes([B)I
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 280
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->readBufferBytes([BII)I

    move-result v0

    return v0
.end method

.method private readBufferBytes([BII)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->bufferEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    const/4 v1, -0x1

    .line 289
    :goto_0
    return v1

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 288
    .local v0, "remainingBefore":I
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 289
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V
    .locals 1
    .param p1, "streamCompleteListener"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->addStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    .line 55
    return-void
.end method

.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 229
    .local v1, "remaining":I
    iget-boolean v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->enableBuffering:Z

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 234
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v2, v1

    return v2

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 237
    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 244
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->notifyStreamComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 247
    throw v0
.end method

.method public fillBuffer()V
    .locals 7

    .prologue
    .line 304
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v3, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    monitor-enter v3

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, "bytesRead":I
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->impl:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 315
    :goto_1
    if-gtz v0, :cond_3

    .line 316
    :try_start_1
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 322
    :cond_2
    :goto_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v2, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 318
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 319
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public getBufferAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 343
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    .line 344
    iget-object v3, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    monitor-enter v3

    .line 345
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v0, v2, [B

    .line 346
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    monitor-exit v3

    .line 352
    .end local v0    # "buf":[B
    .end local v1    # "i":I
    :goto_1
    return-object v2

    .line 350
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 352
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x1

    .line 65
    iget-boolean v3, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->enableBuffering:Z

    if-eqz v3, :cond_2

    .line 66
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    monitor-enter v4

    .line 67
    const-wide/16 v6, 0x1

    :try_start_0
    invoke-direct {p0, v6, v7}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->bufferHasBytes(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->readBuffer()I

    move-result v1

    .line 69
    .local v1, "n":I
    if-ltz v1, :cond_0

    .line 70
    iget-wide v6, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    .line 72
    :cond_0
    monitor-exit v4

    move v2, v1

    .line 84
    .end local v1    # "n":I
    .local v2, "n":I
    :goto_0
    return v2

    .line 74
    .end local v2    # "n":I
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 79
    .restart local v1    # "n":I
    if-ltz v1, :cond_3

    .line 80
    iget-wide v4, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v2, v1

    .line 84
    .end local v1    # "n":I
    .restart local v2    # "n":I
    goto :goto_0

    .line 74
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 82
    .restart local v1    # "n":I
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->notifyStreamComplete()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 85
    .end local v1    # "n":I
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 87
    throw v0
.end method

.method public read([B)I
    .locals 12
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, "n":I
    const/4 v3, 0x0

    .line 95
    .local v3, "numBytesFromBuffer":I
    array-length v1, p1

    .line 98
    .local v1, "inputBufferRemaining":I
    iget-boolean v5, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->enableBuffering:Z

    if-eqz v5, :cond_4

    .line 99
    iget-object v6, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    monitor-enter v6

    .line 101
    int-to-long v8, v1

    :try_start_0
    invoke-direct {p0, v8, v9}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->bufferHasBytes(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->readBufferBytes([B)I

    move-result v2

    .line 103
    if-ltz v2, :cond_0

    .line 104
    iget-wide v8, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    int-to-long v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    .line 109
    monitor-exit v6

    move v5, v2

    .line 135
    :goto_0
    return v5

    .line 107
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v7, "readBufferBytes failed"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 122
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 112
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 113
    .local v4, "remaining":I
    if-lez v4, :cond_3

    .line 115
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5, v4}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->readBufferBytes([BII)I

    move-result v3

    .line 116
    if-gez v3, :cond_2

    .line 117
    new-instance v5, Ljava/io/IOException;

    const-string v7, "partial read from buffer failed"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 118
    :cond_2
    sub-int/2addr v1, v3

    .line 119
    iget-wide v8, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    int-to-long v10, v3

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    .line 122
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .end local v4    # "remaining":I
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {v5, p1, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 127
    if-ltz v2, :cond_5

    .line 128
    iget-wide v6, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    .line 129
    add-int v5, v2, v3

    goto :goto_0

    .line 131
    :cond_5
    if-gtz v3, :cond_6

    .line 132
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->notifyStreamComplete()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v5, v2

    .line 133
    goto :goto_0

    :cond_6
    move v5, v3

    .line 135
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 139
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NOTIFY STREAM ERROR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 142
    throw v0
.end method

.method public read([BII)I
    .locals 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, "n":I
    const/4 v3, 0x0

    .line 149
    .local v3, "numBytesFromBuffer":I
    move v1, p3

    .line 151
    .local v1, "inputBufferRemaining":I
    iget-boolean v5, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->enableBuffering:Z

    if-eqz v5, :cond_4

    .line 152
    iget-object v6, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    monitor-enter v6

    .line 154
    int-to-long v8, v1

    :try_start_0
    invoke-direct {p0, v8, v9}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->bufferHasBytes(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->readBufferBytes([BII)I

    move-result v2

    .line 156
    if-ltz v2, :cond_0

    .line 157
    iget-wide v8, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    int-to-long v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    .line 162
    monitor-exit v6

    move v5, v2

    .line 188
    :goto_0
    return v5

    .line 160
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v7, "readBufferBytes failed"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 175
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 165
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 166
    .local v4, "remaining":I
    if-lez v4, :cond_3

    .line 168
    invoke-direct {p0, p1, p2, v4}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->readBufferBytes([BII)I

    move-result v3

    .line 169
    if-gez v3, :cond_2

    .line 170
    new-instance v5, Ljava/io/IOException;

    const-string v7, "partial read from buffer failed"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_2
    sub-int/2addr v1, v3

    .line 172
    iget-wide v8, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    int-to-long v10, v3

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    .line 175
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .end local v4    # "remaining":I
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->impl:Ljava/io/InputStream;

    add-int v6, p2, v3

    invoke-virtual {v5, p1, v6, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 180
    if-ltz v2, :cond_5

    .line 181
    iget-wide v6, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    .line 182
    add-int v5, v2, v3

    goto :goto_0

    .line 184
    :cond_5
    if-gtz v3, :cond_6

    .line 185
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->notifyStreamComplete()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v5, v2

    .line 186
    goto :goto_0

    :cond_6
    move v5, v3

    .line 188
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 192
    throw v0
.end method

.method public removeStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V
    .locals 1
    .param p1, "streamCompleteListener"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->removeStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    .line 59
    return-void
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 266
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 269
    throw v0
.end method

.method public setBufferingEnabled(Z)V
    .locals 0
    .param p1, "enableBuffering"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->enableBuffering:Z

    .line 340
    return-void
.end method

.method public skip(J)J
    .locals 11
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    move-wide v4, p1

    .line 199
    .local v4, "toSkip":J
    iget-boolean v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->enableBuffering:Z

    if-eqz v1, :cond_1

    .line 200
    iget-object v6, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    monitor-enter v6

    .line 201
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->bufferHasBytes(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    long-to-int v7, p1

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    iget-wide v8, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    add-long/2addr v8, p1

    iput-wide v8, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    .line 204
    monitor-exit v6

    .line 219
    .end local p1    # "byteCount":J
    :goto_0
    return-wide p1

    .line 207
    .restart local p1    # "byteCount":J
    :cond_0
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-long v8, v1

    sub-long v4, p1, v8

    .line 208
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 213
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 218
    .local v2, "n":J
    iget-wide v6, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->count:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide p1, v2

    .line 219
    goto :goto_0

    .line 211
    .end local v2    # "n":J
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v7, "partial read from buffer (skip) failed"

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 222
    throw v0
.end method
