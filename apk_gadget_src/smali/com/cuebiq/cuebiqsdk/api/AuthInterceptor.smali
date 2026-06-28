.class public Lcom/cuebiq/cuebiqsdk/api/AuthInterceptor;
.super Ljava/lang/Object;
.source "AuthInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final mAuthKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "authKey"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/api/AuthInterceptor;->mAuthKey:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 24
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "x-beintoo-auth"

    iget-object v4, p0, Lcom/cuebiq/cuebiqsdk/api/AuthInterceptor;->mAuthKey:Ljava/lang/String;

    .line 25
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 26
    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 27
    instance-of v3, v2, Lokhttp3/Request$Builder;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 28
    .local v0, "newRequest":Lokhttp3/Request;
    :goto_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    return-object v2

    .line 27
    .end local v0    # "newRequest":Lokhttp3/Request;
    :cond_0
    check-cast v2, Lokhttp3/Request$Builder;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->build(Lokhttp3/Request$Builder;)Lokhttp3/Request;

    move-result-object v0

    goto :goto_0
.end method
