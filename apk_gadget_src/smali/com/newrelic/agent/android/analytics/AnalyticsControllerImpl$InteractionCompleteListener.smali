.class Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;
.super Ljava/lang/Object;
.source "AnalyticsControllerImpl.java"

# interfaces
.implements Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InteractionCompleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;


# direct methods
.method constructor <init>(Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;->this$0:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createTraceEvent(Lcom/newrelic/agent/android/tracing/ActivityTrace;)Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    .locals 5
    .param p1, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 79
    iget-object v2, p1, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/tracing/Trace;->getDurationAsSeconds()F

    move-result v1

    .line 80
    .local v1, "durationInSec":F
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 81
    .local v0, "attrs":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    new-instance v2, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v3, "interactionDuration"

    invoke-direct {v2, v3, v1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v2, p1, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v2, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    sget-object v3, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Interaction:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v4, "Mobile"

    invoke-static {v2, v3, v4, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsEventFactory;->createEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Lcom/newrelic/agent/android/analytics/AnalyticsEvent;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onEnterMethod()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onExitMethod()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onTraceComplete(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .locals 3
    .param p1, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 65
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->access$000()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v1

    const-string v2, "AnalyticsControllerImpl.InteractionCompleteListener.onTraceComplete invoke."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;->createTraceEvent(Lcom/newrelic/agent/android/tracing/ActivityTrace;)Lcom/newrelic/agent/android/analytics/AnalyticsEvent;

    move-result-object v0

    .line 69
    .local v0, "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    .line 70
    return-void
.end method

.method public onTraceRename(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .locals 3
    .param p1, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 74
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v1, "lastInteraction"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v0, "lastInteraction":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;->this$0:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addAttributeUnchecked(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;Z)Z

    .line 76
    return-void
.end method

.method public onTraceStart(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .locals 3
    .param p1, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 59
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v1, "lastInteraction"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v0, "lastInteraction":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;->this$0:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addAttributeUnchecked(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;Z)Z

    .line 61
    return-void
.end method
