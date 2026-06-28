.class public Lcom/cuebiq/cuebiqsdk/api/EchoRequest;
.super Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;
.source "EchoRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;-><init>()V

    .line 13
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/api/EchoRequest;->mBuilder:Lokhttp3/HttpUrl$Builder;

    const-string v1, "/bea/echo"

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 14
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "x-beintoo-auth"

    .line 15
    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/api/EchoRequest;->mBuilder:Lokhttp3/HttpUrl$Builder;

    .line 16
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 17
    instance-of v1, v0, Lokhttp3/Request$Builder;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/cuebiq/cuebiqsdk/api/EchoRequest;->mRequest:Lokhttp3/Request;

    .line 18
    return-void

    .line 17
    :cond_0
    check-cast v0, Lokhttp3/Request$Builder;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->build(Lokhttp3/Request$Builder;)Lokhttp3/Request;

    move-result-object v0

    goto :goto_0
.end method
