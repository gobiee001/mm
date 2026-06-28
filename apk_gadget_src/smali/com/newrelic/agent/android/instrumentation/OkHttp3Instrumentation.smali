.class public Lcom/newrelic/agent/android/instrumentation/OkHttp3Instrumentation;
.super Ljava/lang/Object;
.source "OkHttp3Instrumentation.java"


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/OkHttp3Instrumentation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation build Lcom/newrelic/agent/android/instrumentation/WrapReturn;
        className = "okhttp3/OkHttpClient"
        methodDesc = "(Ljava/net/URL;)Ljava/net/HttpURLConnection;"
        methodName = "open"
    .end annotation

    .prologue
    .line 20
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .end local p0    # "connection":Ljava/net/HttpURLConnection;
    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 25
    .restart local p0    # "connection":Ljava/net/HttpURLConnection;
    :goto_0
    return-object v0

    .line 22
    :cond_0
    if-eqz p0, :cond_1

    .line 23
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;-><init>(Ljava/net/HttpURLConnection;)V

    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openWithProxy(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation build Lcom/newrelic/agent/android/instrumentation/WrapReturn;
        className = "okhttp3/OkHttpClient"
        methodDesc = "(Ljava/net/URL;Ljava/net/Proxy)Ljava/net/HttpURLConnection;"
        methodName = "open"
    .end annotation

    .prologue
    .line 31
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .end local p0    # "connection":Ljava/net/HttpURLConnection;
    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 36
    .restart local p0    # "connection":Ljava/net/HttpURLConnection;
    :goto_0
    return-object v0

    .line 33
    :cond_0
    if-eqz p0, :cond_1

    .line 34
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;-><init>(Ljava/net/HttpURLConnection;)V

    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static urlFactoryOpen(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation build Lcom/newrelic/agent/android/instrumentation/WrapReturn;
        className = "okhttp3/OkUrlFactory"
        methodDesc = "(Ljava/net/URL;)Ljava/net/HttpURLConnection;"
        methodName = "open"
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/OkHttp3Instrumentation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "OkHttpInstrumentation - wrapping return of call to OkUrlFactory.open..."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 43
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .end local p0    # "connection":Ljava/net/HttpURLConnection;
    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 48
    .restart local p0    # "connection":Ljava/net/HttpURLConnection;
    :goto_0
    return-object v0

    .line 45
    :cond_0
    if-eqz p0, :cond_1

    .line 46
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;-><init>(Ljava/net/HttpURLConnection;)V

    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
