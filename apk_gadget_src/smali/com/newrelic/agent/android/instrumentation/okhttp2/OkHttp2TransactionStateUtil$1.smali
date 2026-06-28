.class final Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil$1;
.super Lcom/squareup/okhttp/ResponseBody;
.source "OkHttp2TransactionStateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Lcom/squareup/okhttp/ResponseBody;

.field final synthetic val$contents:Lokio/Buffer;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/ResponseBody;Lokio/Buffer;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil$1;->val$body:Lcom/squareup/okhttp/ResponseBody;

    iput-object p2, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil$1;->val$contents:Lokio/Buffer;

    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil$1;->val$contents:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil$1;->val$body:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil$1;->val$contents:Lokio/Buffer;

    return-object v0
.end method
