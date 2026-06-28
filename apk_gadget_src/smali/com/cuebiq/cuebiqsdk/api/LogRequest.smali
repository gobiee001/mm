.class public Lcom/cuebiq/cuebiqsdk/api/LogRequest;
.super Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;
.source "LogRequest.java"


# direct methods
.method public constructor <init>(Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;Ljava/lang/String;)V
    .locals 3
    .param p1, "logAppBean"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/api/LogRequest;->mBuilder:Lokhttp3/HttpUrl$Builder;

    const-string v2, "/log/bea/30004"

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 19
    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/api/LogRequest;->mBuilder:Lokhttp3/HttpUrl$Builder;

    .line 22
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "x-beintoo-auth"

    .line 23
    invoke-virtual {v1, v2, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "application/json; charset=utf-8"

    .line 24
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 25
    instance-of v2, v1, Lokhttp3/Request$Builder;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/cuebiq/cuebiqsdk/api/LogRequest;->mRequest:Lokhttp3/Request;

    .line 26
    return-void

    .line 25
    :cond_0
    check-cast v1, Lokhttp3/Request$Builder;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->build(Lokhttp3/Request$Builder;)Lokhttp3/Request;

    move-result-object v1

    goto :goto_0
.end method
