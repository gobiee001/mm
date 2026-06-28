.class public Lcom/newrelic/agent/android/analytics/NetworkRequestEvent;
.super Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
.source "NetworkRequestEvent.java"


# static fields
.field static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/analytics/NetworkRequestEvent;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    const/4 v0, 0x0

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->NetworkRequest:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v2, "MobileRequest"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)V

    .line 17
    return-void
.end method

.method static createDefaultAttributeSet(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Ljava/util/Set;
    .locals 14
    .param p0, "txn"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/agent/android/harvest/HttpTransaction;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 34
    .local v0, "attributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 35
    .local v8, "url":Ljava/net/URL;
    new-instance v9, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v10, "requestDomain"

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v9, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v10, "requestPath"

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v8    # "url":Ljava/net/URL;
    :goto_0
    new-instance v9, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v10, "requestUrl"

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v9, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v10, "connectionType"

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getWanType()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v9, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v10, "requestMethod"

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getHttpMethod()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getTotalTime()D

    move-result-wide v6

    .line 46
    .local v6, "totalTime":D
    cmpl-double v9, v6, v12

    if-eqz v9, :cond_0

    .line 47
    new-instance v9, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v10, "responseTime"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->floatValue()F

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getBytesSent()J

    move-result-wide v10

    long-to-double v4, v10

    .line 51
    .local v4, "bytesSent":D
    cmpl-double v9, v4, v12

    if-eqz v9, :cond_1

    .line 52
    new-instance v9, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v10, "byteSent"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->floatValue()F

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getBytesReceived()J

    move-result-wide v10

    long-to-double v2, v10

    .line 56
    .local v2, "bytesReceived":D
    cmpl-double v9, v2, v12

    if-eqz v9, :cond_2

    .line 57
    new-instance v9, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v10, "bytesReceived"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->floatValue()F

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_2
    return-object v0

    .line 37
    .end local v2    # "bytesReceived":D
    .end local v4    # "bytesSent":D
    .end local v6    # "totalTime":D
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/net/MalformedURLException;
    sget-object v9, Lcom/newrelic/agent/android/analytics/NetworkRequestEvent;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not a valid URL. Unable to set host or path attributes."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static createNetworkEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Lcom/newrelic/agent/android/analytics/NetworkRequestEvent;
    .locals 6
    .param p0, "txn"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/newrelic/agent/android/analytics/NetworkRequestEvent;->createDefaultAttributeSet(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Ljava/util/Set;

    move-result-object v0

    .line 22
    .local v0, "attributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v2, "responseTime"

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getTotalTime()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v2, "statusCode"

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getStatusCode()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v2, "byteSent"

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getBytesSent()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v2, "bytesReceived"

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getBytesReceived()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcom/newrelic/agent/android/analytics/NetworkRequestEvent;

    invoke-direct {v1, v0}, Lcom/newrelic/agent/android/analytics/NetworkRequestEvent;-><init>(Ljava/util/Set;)V

    return-object v1
.end method
