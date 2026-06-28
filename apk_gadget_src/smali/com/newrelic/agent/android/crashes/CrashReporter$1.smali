.class final Lcom/newrelic/agent/android/crashes/CrashReporter$1;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/agent/android/crashes/CrashReporter;->initialize(Lcom/newrelic/agent/android/AgentConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$000(Lcom/newrelic/agent/android/crashes/CrashReporter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportSavedCrashes()V

    .line 78
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportSupportabilityMetrics()V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$100(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    const-string v1, "Unable to upload cached crash to New Relic - no network"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method
