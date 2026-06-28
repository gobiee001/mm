.class public Lcom/newrelic/agent/android/analytics/NetworkRequestErrorEvent;
.super Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
.source "NetworkRequestErrorEvent.java"


# static fields
.field static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/analytics/NetworkRequestErrorEvent;->log:Lcom/newrelic/agent/android/logging/AgentLog;

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
    .line 15
    .local p1, "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    const/4 v0, 0x0

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->RequestError:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v2, "MobileRequestError"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)V

    .line 16
    return-void
.end method

.method public static createHttpErrorEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Lcom/newrelic/agent/android/analytics/NetworkRequestErrorEvent;
    .locals 4
    .param p0, "txn"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/newrelic/agent/android/analytics/NetworkRequestEvent;->createDefaultAttributeSet(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Ljava/util/Set;

    move-result-object v0

    .line 21
    .local v0, "attributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v2, "statusCode"

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getStatusCode()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/newrelic/agent/android/analytics/NetworkRequestErrorEvent;

    invoke-direct {v1, v0}, Lcom/newrelic/agent/android/analytics/NetworkRequestErrorEvent;-><init>(Ljava/util/Set;)V

    return-object v1
.end method

.method public static createNetworkFailureEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Lcom/newrelic/agent/android/analytics/NetworkRequestErrorEvent;
    .locals 4
    .param p0, "txn"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/newrelic/agent/android/analytics/NetworkRequestEvent;->createDefaultAttributeSet(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Ljava/util/Set;

    move-result-object v0

    .line 29
    .local v0, "attributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v2, "networkErrorCode"

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getErrorCode()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lcom/newrelic/agent/android/analytics/NetworkRequestErrorEvent;

    invoke-direct {v1, v0}, Lcom/newrelic/agent/android/analytics/NetworkRequestErrorEvent;-><init>(Ljava/util/Set;)V

    return-object v1
.end method
