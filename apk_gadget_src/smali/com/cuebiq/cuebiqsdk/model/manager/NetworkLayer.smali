.class public Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;
.super Ljava/lang/Object;
.source "NetworkLayer.java"


# instance fields
.field private final mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0
    .param p1, "okHttpClient"    # Lokhttp3/OkHttpClient;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 20
    return-void
.end method


# virtual methods
.method public callAsync(Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;Lokhttp3/Callback;)V
    .locals 3
    .param p1, "request"    # Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;
    .param p2, "callback"    # Lokhttp3/Callback;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;->request()Lokhttp3/Request;

    move-result-object v1

    instance-of v2, v0, Lokhttp3/OkHttpClient;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 28
    return-void

    .line 27
    :cond_0
    check-cast v0, Lokhttp3/OkHttpClient;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->newCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public callSync(Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;)Lokhttp3/Response;
    .locals 3
    .param p1, "request"    # Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;->request()Lokhttp3/Request;

    move-result-object v1

    instance-of v2, v0, Lokhttp3/OkHttpClient;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Lokhttp3/OkHttpClient;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->newCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    goto :goto_0
.end method
