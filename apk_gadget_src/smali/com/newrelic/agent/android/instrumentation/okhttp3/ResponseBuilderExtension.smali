.class public Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;
.super Lokhttp3/Response$Builder;
.source "ResponseBuilderExtension.java"


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private impl:Lokhttp3/Response$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response$Builder;)V
    .locals 0
    .param p1, "impl"    # Lokhttp3/Response$Builder;

    .prologue
    .line 20
    invoke-direct {p0}, Lokhttp3/Response$Builder;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    .line 22
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    .locals 1
    .param p1, "body"    # Lokhttp3/ResponseBody;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lokhttp3/Response;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 1
    .param p1, "cacheResponse"    # Lokhttp3/Response;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public code(I)Lokhttp3/Response$Builder;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;
    .locals 1
    .param p1, "handshake"    # Lokhttp3/Handshake;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;
    .locals 1
    .param p1, "headers"    # Lokhttp3/Headers;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public message(Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 1
    .param p1, "networkResponse"    # Lokhttp3/Response;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 1
    .param p1, "priorResponse"    # Lokhttp3/Response;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;
    .locals 1
    .param p1, "protocol"    # Lokhttp3/Protocol;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public request(Lokhttp3/Request;)Lokhttp3/Response$Builder;
    .locals 1
    .param p1, "request"    # Lokhttp3/Request;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/ResponseBuilderExtension;->impl:Lokhttp3/Response$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method
