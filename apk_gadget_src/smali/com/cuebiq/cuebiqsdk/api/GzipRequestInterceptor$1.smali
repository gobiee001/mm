.class Lcom/cuebiq/cuebiqsdk/api/GzipRequestInterceptor$1;
.super Lokhttp3/RequestBody;
.source "GzipRequestInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/api/GzipRequestInterceptor;->gzip(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cuebiq/cuebiqsdk/api/GzipRequestInterceptor;

.field final synthetic val$body:Lokhttp3/RequestBody;


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/api/GzipRequestInterceptor;Lokhttp3/RequestBody;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cuebiq/cuebiqsdk/api/GzipRequestInterceptor;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/api/GzipRequestInterceptor$1;->this$0:Lcom/cuebiq/cuebiqsdk/api/GzipRequestInterceptor;

    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/api/GzipRequestInterceptor$1;->val$body:Lokhttp3/RequestBody;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/api/GzipRequestInterceptor$1;->val$body:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v1, Lokio/GzipSink;

    invoke-direct {v1, p1}, Lokio/GzipSink;-><init>(Lokio/Sink;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 44
    .local v0, "gzipSink":Lokio/BufferedSink;
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/api/GzipRequestInterceptor$1;->val$body:Lokhttp3/RequestBody;

    invoke-virtual {v1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 45
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 46
    return-void
.end method
