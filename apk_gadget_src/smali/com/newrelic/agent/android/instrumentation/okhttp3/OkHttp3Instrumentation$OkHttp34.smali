.class public Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation$OkHttp34;
.super Ljava/lang/Object;
.source "OkHttp3Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OkHttp34"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callEngineGetStreamAllocation(Lokhttp3/internal/Internal;Lokhttp3/Call;)Lokhttp3/internal/connection/StreamAllocation;
    .locals 9
    .param p0, "internal"    # Lokhttp3/internal/Internal;
    .param p1, "call"    # Lokhttp3/Call;
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 92
    const/4 v3, 0x0

    .line 95
    .local v3, "streamAllocation":Lokhttp3/internal/connection/StreamAllocation;
    :try_start_0
    instance-of v4, p1, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;

    if-eqz v4, :cond_0

    .line 96
    move-object v0, p1

    check-cast v0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->getImpl()Lokhttp3/Call;

    move-result-object p1

    .line 99
    :cond_0
    const-class v4, Lokhttp3/internal/Internal;

    const-string v5, "callEngineGetStreamAllocation"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lokhttp3/Call;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100
    .local v1, "callEngineGetStreamAllocation":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 101
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lokhttp3/internal/connection/StreamAllocation;

    move-object v3, v0

    .line 110
    .end local v1    # "callEngineGetStreamAllocation":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 103
    .restart local v1    # "callEngineGetStreamAllocation":Ljava/lang/reflect/Method;
    :cond_1
    const-string v4, "callEngineGetStreamAllocation(Lokhttp3/Call;)Lokhttp3/internal/connection/StreamAllocation;"

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v1    # "callEngineGetStreamAllocation":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->access$100()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCallWebSocket(Lokhttp3/internal/Internal;Lokhttp3/Call;)V
    .locals 8
    .param p0, "internal"    # Lokhttp3/internal/Internal;
    .param p1, "call"    # Lokhttp3/Call;
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .prologue
    .line 74
    :try_start_0
    instance-of v3, p1, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;

    if-eqz v3, :cond_0

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->getImpl()Lokhttp3/Call;

    move-result-object p1

    .line 78
    :cond_0
    const-class v3, Lokhttp3/internal/Internal;

    const-string v4, "setCallWebSocket"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lokhttp3/Call;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 79
    .local v2, "setCallWebSocket":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 80
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v2    # "setCallWebSocket":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 82
    .restart local v2    # "setCallWebSocket":Ljava/lang/reflect/Method;
    :cond_1
    const-string v3, "setCallWebSocket(Lokhttp3/Call;)V"

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local v2    # "setCallWebSocket":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->access$100()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
