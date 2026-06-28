.class public Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;
.super Lokhttp3/ResponseBody;
.source "PrebufferedResponseBody.java"


# instance fields
.field private final contentLength:J

.field private final impl:Lokhttp3/ResponseBody;

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 8
    .param p1, "impl"    # Lokhttp3/ResponseBody;

    .prologue
    .line 15
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 17
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    .line 19
    .local v2, "source":Lokio/BufferedSource;
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 21
    .local v0, "buffer":Lokio/Buffer;
    :try_start_0
    invoke-interface {v2, v0}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    move-object v2, v0

    .line 27
    :goto_0
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->impl:Lokhttp3/ResponseBody;

    .line 28
    iput-object v2, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->source:Lokio/BufferedSource;

    .line 29
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    :goto_1
    iput-wide v4, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->contentLength:J

    .line 30
    return-void

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 29
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-interface {v2}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->impl:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 50
    return-void
.end method

.method public contentLength()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->impl:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->source:Lokio/BufferedSource;

    return-object v0
.end method
