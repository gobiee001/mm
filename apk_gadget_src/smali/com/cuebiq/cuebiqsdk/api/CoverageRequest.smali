.class public Lcom/cuebiq/cuebiqsdk/api/CoverageRequest;
.super Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;
.source "CoverageRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p3, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;-><init>()V

    .line 15
    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageRequest;->mBuilder:Lokhttp3/HttpUrl$Builder;

    const-string v3, "/bea/30004/coverage"

    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Builder;->encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 17
    if-eqz p3, :cond_0

    .line 18
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageRequest;->mBuilder:Lokhttp3/HttpUrl$Builder;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_0

    .line 22
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    const-string v3, "x-beintoo-auth"

    .line 23
    invoke-virtual {v2, v3, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageRequest;->mBuilder:Lokhttp3/HttpUrl$Builder;

    .line 24
    invoke-virtual {v3}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 26
    .local v0, "builder":Lokhttp3/Request$Builder;
    const-string v2, "aWildcard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    const-string v2, "x-cuebiq-package"

    invoke-virtual {v0, v2, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 30
    :cond_1
    instance-of v2, v0, Lokhttp3/Request$Builder;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .end local v0    # "builder":Lokhttp3/Request$Builder;
    :goto_1
    iput-object v2, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageRequest;->mRequest:Lokhttp3/Request;

    .line 31
    return-void

    .line 30
    .restart local v0    # "builder":Lokhttp3/Request$Builder;
    :cond_2
    check-cast v0, Lokhttp3/Request$Builder;

    .end local v0    # "builder":Lokhttp3/Request$Builder;
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->build(Lokhttp3/Request$Builder;)Lokhttp3/Request;

    move-result-object v2

    goto :goto_1
.end method
