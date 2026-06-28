.class public Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;
.super Lokhttp3/Request$Builder;
.source "RequestBuilderExtension.java"


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private impl:Lokhttp3/Request$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Request$Builder;)V
    .locals 0
    .param p1, "impl"    # Lokhttp3/Request$Builder;

    .prologue
    .line 23
    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    .line 25
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->setCrossProcessHeader()V

    .line 26
    return-void
.end method

.method private setCrossProcessHeader()V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getCrossProcessId()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "crossProcessId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    const-string v2, "X-NewRelic-ID"

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 113
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    const-string v2, "X-NewRelic-ID"

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1, "cacheControl"    # Lokhttp3/CacheControl;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete()Lokhttp3/Request$Builder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/Request$Builder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lokhttp3/Request$Builder;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1, "headers"    # Lokhttp3/Headers;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/net/URL;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/RequestBuilderExtension;->impl:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method
