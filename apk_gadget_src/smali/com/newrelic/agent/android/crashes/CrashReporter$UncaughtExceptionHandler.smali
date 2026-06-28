.class public Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/crashes/CrashReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UncaughtExceptionHandler"
.end annotation


# instance fields
.field private final handledException:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/crashes/CrashReporter;)V
    .locals 2
    .param p1, "this$0"    # Lcom/newrelic/agent/android/crashes/CrashReporter;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->handledException:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$500(Lcom/newrelic/agent/android/crashes/CrashReporter;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$100(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chaining crash reporting duties to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v2}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$500(Lcom/newrelic/agent/android/crashes/CrashReporter;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$500(Lcom/newrelic/agent/android/crashes/CrashReporter;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 240
    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 165
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getUnityInstrumentationFlag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "YES"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 167
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->handledException:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-nez v6, :cond_1

    .line 168
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v6

    const-string v7, "Supportability/AgentHealth/Recursion/UncaughtExceptionHandler"

    invoke-virtual {v6, v7}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    :try_start_0
    sget-object v6, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iget-boolean v6, v6, Lcom/newrelic/agent/android/crashes/CrashReporter;->isEnabled:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/newrelic/agent/android/FeatureFlag;->CrashReporting:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v6}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 176
    :cond_2
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v6}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$100(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v6

    const-string v7, "A crash has been detected but crash reporting is disabled!"

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v6}, Lcom/newrelic/agent/android/crashes/CrashReporter;->storeSupportabilityMetrics()V

    .line 226
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getUnityInstrumentationFlag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "YES"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 181
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v6}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$100(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A crash has been detected in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and will be reported ASAP."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 182
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v6}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$100(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Analytics data is currently "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$200()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newrelic/agent/android/AgentConfiguration;->getEnableAnalyticsEvents()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "enabled "

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    .line 186
    .local v0, "analyticsController":Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setEnabled(Z)V

    .line 187
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getMillisSinceStart()J

    move-result-wide v4

    .line 188
    .local v4, "sessionDuration":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_4

    .line 189
    const-string v6, "sessionDuration"

    long-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;FZ)Z

    .line 192
    :cond_4
    new-instance v1, Lcom/newrelic/agent/android/harvest/crash/Crash;

    .line 193
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSessionAttributes()Ljava/util/Set;

    move-result-object v6

    .line 194
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/newrelic/agent/android/analytics/EventManager;->getQueuedEvents()Ljava/util/Collection;

    move-result-object v7

    .line 195
    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$200()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/newrelic/agent/android/AgentConfiguration;->getEnableAnalyticsEvents()Z

    move-result v8

    invoke-direct {v1, p2, v6, v7, v8}, Lcom/newrelic/agent/android/harvest/crash/Crash;-><init>(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Collection;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    .local v1, "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    :try_start_2
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v6}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$300(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/crashes/CrashStore;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/newrelic/agent/android/crashes/CrashStore;->store(Lcom/newrelic/agent/android/harvest/crash/Crash;)V

    .line 201
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v6, v1}, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrash(Lcom/newrelic/agent/android/harvest/crash/Crash;)Ljava/util/concurrent/Future;

    .line 203
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getUnityInstrumentationFlag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "YES"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 206
    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 210
    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    const-wide/16 v8, 0x2710

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v8, v9, v7}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 211
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    const-string v7, "Crash upload thread(s) timed-out before completion"

    invoke-virtual {v6, v7}, Lcom/newrelic/agent/android/crashes/CrashReporter;->recordFailedUpload(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v6}, Lcom/newrelic/agent/android/crashes/CrashReporter;->storeSupportabilityMetrics()V

    .line 226
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getUnityInstrumentationFlag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "YES"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 182
    .end local v0    # "analyticsController":Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    .end local v1    # "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    .end local v4    # "sessionDuration":J
    :cond_6
    :try_start_3
    const-string v6, "disabled"

    goto/16 :goto_1

    .line 215
    .restart local v0    # "analyticsController":Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    .restart local v1    # "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    .restart local v4    # "sessionDuration":J
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught while sending crash: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/newrelic/agent/android/crashes/CrashReporter;->recordFailedUpload(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 219
    .end local v0    # "analyticsController":Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    .end local v1    # "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "sessionDuration":J
    :catch_1
    move-exception v3

    .line 220
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error encountered while preparing crash for New Relic! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/newrelic/agent/android/crashes/CrashReporter;->recordFailedUpload(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v6}, Lcom/newrelic/agent/android/crashes/CrashReporter;->storeSupportabilityMetrics()V

    .line 226
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getUnityInstrumentationFlag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "YES"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 224
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v7}, Lcom/newrelic/agent/android/crashes/CrashReporter;->storeSupportabilityMetrics()V

    .line 226
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getUnityInstrumentationFlag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "YES"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_7
    throw v6
.end method
