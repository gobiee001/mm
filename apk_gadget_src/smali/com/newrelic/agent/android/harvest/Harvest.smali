.class public Lcom/newrelic/agent/android/harvest/Harvest;
.super Ljava/lang/Object;
.source "Harvest.java"


# static fields
.field private static final DISABLE_ACTIVITY_TRACE_LIMITS_FOR_DEBUGGING:Z

.field public static final INVALID_SESSION_DURATION:J

.field private static final activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

.field protected static instance:Lcom/newrelic/agent/android/harvest/Harvest;

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private static final unregisteredLifecycleListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

.field private harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

.field protected harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

.field private harvestDataValidator:Lcom/newrelic/agent/android/harvest/HarvestDataValidator;

.field private harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

.field private harvester:Lcom/newrelic/agent/android/harvest/Harvester;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 27
    new-instance v0, Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/Harvest;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    .line 39
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestableCache;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestableCache;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    return-void
.end method

.method public static addActivityTrace(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .locals 10
    .param p0, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 174
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

    invoke-virtual {v3, p0}, Lcom/newrelic/agent/android/harvest/HarvestableCache;->add(Lcom/newrelic/agent/android/harvest/type/Harvestable;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    if-nez v3, :cond_2

    .line 182
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Activity trace is lacking a root trace!"

    invoke-interface {v3, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v3, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-wide v6, v3, Lcom/newrelic/agent/android/tracing/Trace;->childExclusiveTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    .line 187
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total trace exclusive time is zero. Ignoring trace "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v7, v7, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_3
    iget-object v3, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-wide v6, v3, Lcom/newrelic/agent/android/tracing/Trace;->childExclusiveTime:J

    long-to-double v6, v6

    iget-object v3, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/tracing/Trace;->getDurationAsMilliseconds()J

    move-result-wide v8

    long-to-double v8, v8

    div-double v4, v6, v8

    .line 192
    .local v4, "traceUtilization":D
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getActivity_trace_min_utilization()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gez v3, :cond_4

    const/4 v2, 0x1

    .line 194
    .local v2, "isBelowMinUtilization":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 195
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v3

    const-string v6, "Supportability/AgentHealth/IgnoredTraces"

    invoke-virtual {v3, v6}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 196
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exclusive trace time is too low ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-wide v8, v7, Lcom/newrelic/agent/android/tracing/Trace;->childExclusiveTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    invoke-virtual {v7}, Lcom/newrelic/agent/android/tracing/Trace;->getDurationAsMilliseconds()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "). Ignoring trace "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v7, v7, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    .end local v2    # "isBelowMinUtilization":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 200
    .restart local v2    # "isBelowMinUtilization":Z
    :cond_5
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestData;->getActivityTraces()Lcom/newrelic/agent/android/harvest/ActivityTraces;

    move-result-object v0

    .line 201
    .local v0, "activityTraces":Lcom/newrelic/agent/android/harvest/ActivityTraces;
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/Harvest;->getActivityTraceConfiguration()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    move-result-object v1

    .line 203
    .local v1, "configurations":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/Harvester;->expireActivityTraces()V

    .line 208
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->count()I

    move-result v3

    invoke-virtual {v1}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;->getMaxTotalTraceCount()I

    move-result v6

    if-lt v3, v6, :cond_6

    .line 209
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity trace limit of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;->getMaxTotalTraceCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exceeded. Ignoring trace: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->toJsonString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_6
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding activity trace: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->toJsonString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->add(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V

    goto/16 :goto_0
.end method

.method public static addAgentHealthException(Lcom/newrelic/agent/android/harvest/AgentHealthException;)V
    .locals 1
    .param p0, "exception"    # Lcom/newrelic/agent/android/harvest/AgentHealthException;

    .prologue
    .line 224
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestData;->getAgentHealth()Lcom/newrelic/agent/android/harvest/AgentHealth;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->addException(Lcom/newrelic/agent/android/harvest/AgentHealthException;)V

    goto :goto_0
.end method

.method public static addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 230
    if-nez p0, :cond_1

    .line 231
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Harvest: Argument to addHarvestListener cannot be null."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->isUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->addUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0

    .line 241
    :cond_2
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/Harvester;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0
.end method

.method public static addHttpErrorTrace(Lcom/newrelic/agent/android/harvest/HttpError;)V
    .locals 5
    .param p0, "error"    # Lcom/newrelic/agent/android/harvest/HttpError;

    .prologue
    .line 137
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->shouldCollectNetworkErrors()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpErrors()Lcom/newrelic/agent/android/harvest/HttpErrors;

    move-result-object v1

    .line 141
    .local v1, "errors":Lcom/newrelic/agent/android/harvest/HttpErrors;
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHttpErrors()V

    .line 143
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getError_limit()I

    move-result v0

    .line 144
    .local v0, "errorLimit":I
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HttpErrors;->count()I

    move-result v2

    if-lt v2, v0, :cond_2

    .line 145
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    const-string v3, "Supportability/AgentHealth/ErrorsDropped"

    invoke-virtual {v2, v3}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 146
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum number of HTTP errors ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reached. HTTP Error dropped."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v1, p0}, Lcom/newrelic/agent/android/harvest/HttpErrors;->addHttpError(Lcom/newrelic/agent/android/harvest/HttpError;)V

    .line 150
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Harvest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " now contains "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HttpErrors;->count()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errors."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addHttpTransaction(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V
    .locals 6
    .param p0, "txn"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 154
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    :goto_0
    return-void

    .line 156
    :cond_0
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpTransactions()Lcom/newrelic/agent/android/harvest/HttpTransactions;

    move-result-object v2

    .line 157
    .local v2, "transactions":Lcom/newrelic/agent/android/harvest/HttpTransactions;
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHttpTransactions()V

    .line 159
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReport_max_transaction_count()I

    move-result v1

    .line 160
    .local v1, "transactionLimit":I
    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->count()I

    move-result v3

    if-lt v3, v1, :cond_1

    .line 161
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v3

    const-string v4, "Supportability/AgentHealth/TransactionsDropped"

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 162
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Maximum number of transactions ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") reached. HTTP Transaction dropped."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v2, p0}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->add(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    .line 167
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    .line 170
    .local v0, "analyticsController":Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->createNetworkRequestEvents(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    goto :goto_0
.end method

.method public static addMetric(Lcom/newrelic/agent/android/metric/Metric;)V
    .locals 1
    .param p0, "metric"    # Lcom/newrelic/agent/android/metric/Metric;

    .prologue
    .line 219
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestData;->getMetrics()Lcom/newrelic/agent/android/harvest/MachineMeasurements;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->addMetric(Lcom/newrelic/agent/android/metric/Metric;)V

    goto :goto_0
.end method

.method private static addUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 317
    if-nez p0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 321
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 322
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private flushActivityTraceCache()V
    .locals 4

    .prologue
    .line 310
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestableCache;->flush()Ljava/util/Collection;

    move-result-object v1

    .line 311
    .local v1, "activityTraces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/type/Harvestable;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/type/Harvestable;

    .line 312
    .local v0, "activityTrace":Lcom/newrelic/agent/android/harvest/type/Harvestable;
    check-cast v0, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .end local v0    # "activityTrace":Lcom/newrelic/agent/android/harvest/type/Harvestable;
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addActivityTrace(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method private flushHarvestableCaches()V
    .locals 1

    .prologue
    .line 303
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->flushActivityTraceCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getActivityTraceCacheSize()I
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestableCache;->getSize()I

    move-result v0

    return v0
.end method

.method public static getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    .locals 1

    .prologue
    .line 404
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    invoke-static {}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    .line 407
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/newrelic/agent/android/harvest/Harvest;
    .locals 1

    .prologue
    .line 352
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    return-object v0
.end method

.method public static getMillisSinceStart()J
    .locals 6

    .prologue
    .line 269
    const-wide/16 v2, 0x0

    .line 270
    .local v2, "lTime":J
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getInstance()Lcom/newrelic/agent/android/harvest/Harvest;

    move-result-object v0

    .line 271
    .local v0, "harvest":Lcom/newrelic/agent/android/harvest/Harvest;
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->timeSinceStart()J

    move-result-wide v2

    .line 276
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 277
    const-wide/16 v2, 0x0

    .line 282
    :cond_0
    return-wide v2
.end method

.method public static harvestNow()V
    .locals 8

    .prologue
    .line 70
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_0

    .line 95
    .local v0, "analyticsController":Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    .local v1, "sessionDurationAsSeconds":F
    .local v2, "sessionDuration":J
    .local v4, "sessionEvent":Lcom/newrelic/agent/android/analytics/SessionEvent;
    :goto_0
    return-void

    .line 73
    .end local v0    # "analyticsController":Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    .end local v1    # "sessionDurationAsSeconds":F
    .end local v2    # "sessionDuration":J
    .end local v4    # "sessionEvent":Lcom/newrelic/agent/android/analytics/SessionEvent;
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getMillisSinceStart()J

    move-result-wide v2

    .line 75
    .restart local v2    # "sessionDuration":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 76
    sget-object v5, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Session duration is invalid!"

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v5

    const-string v6, "Supportability/AgentHealth/Session/InvalidDuration"

    invoke-virtual {v5, v6}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 80
    :cond_1
    long-to-float v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v1, v5, v6

    .line 82
    .restart local v1    # "sessionDurationAsSeconds":F
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v5

    const-string v6, "Session/Duration"

    invoke-virtual {v5, v6, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->sample(Ljava/lang/String;F)V

    .line 84
    sget-object v5, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Harvest.harvestNow - Generating sessionDuration attribute with value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    .line 87
    .restart local v0    # "analyticsController":Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    const-string v5, "sessionDuration"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v1, v6}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;FZ)Z

    .line 89
    sget-object v5, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Harvest.harvestNow - Generating session event."

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 90
    new-instance v4, Lcom/newrelic/agent/android/analytics/SessionEvent;

    invoke-direct {v4}, Lcom/newrelic/agent/android/analytics/SessionEvent;-><init>()V

    .line 91
    .restart local v4    # "sessionEvent":Lcom/newrelic/agent/android/analytics/SessionEvent;
    invoke-virtual {v0, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    .line 93
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/newrelic/agent/android/analytics/EventManager;->shutdown()V

    .line 94
    sget-object v5, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tickNow()V

    goto :goto_0
.end method

.method public static initialize(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 1
    .param p0, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 45
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/Harvest;->initializeHarvester(Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 46
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->registerUnregisteredListeners()V

    .line 47
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 48
    return-void
.end method

.method public static isDisabled()Z
    .locals 1

    .prologue
    .line 421
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    .line 423
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvester;->isDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)Z
    .locals 1
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 342
    if-nez p0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static registerUnregisteredListeners()V
    .locals 3

    .prologue
    .line 335
    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    check-cast v0, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 336
    .restart local v0    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0

    .line 338
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 339
    return-void
.end method

.method public static removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 245
    if-nez p0, :cond_1

    .line 246
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Harvest: Argument to removeHarvestListener cannot be null."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 251
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->isUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->removeUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0

    .line 256
    :cond_2
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/Harvester;->removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0
.end method

.method private static removeUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 326
    if-nez p0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 330
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 331
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setHarvestConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .locals 3
    .param p0, "configuration"    # Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .prologue
    .line 394
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Cannot configure Harvester before initialization."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 396
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Harvest Configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 400
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/Harvest;->setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    goto :goto_0
.end method

.method public static setHarvestConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V
    .locals 3
    .param p0, "connectInformation"    # Lcom/newrelic/agent/android/harvest/ConnectInformation;

    .prologue
    .line 411
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Cannot configure Harvester before initialization."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 413
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Harvest connect information: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 417
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/Harvest;->setConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V

    goto :goto_0
.end method

.method public static setInstance(Lcom/newrelic/agent/android/harvest/Harvest;)V
    .locals 2
    .param p0, "harvestInstance"    # Lcom/newrelic/agent/android/harvest/Harvest;

    .prologue
    .line 102
    if-nez p0, :cond_0

    .line 103
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Attempt to set Harvest instance to null value!"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    sput-object p0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    goto :goto_0
.end method

.method public static setPeriod(J)V
    .locals 2
    .param p0, "period"    # J

    .prologue
    .line 58
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->setPeriod(J)V

    .line 59
    return-void
.end method

.method public static shouldCollectActivityTraces()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 286
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 298
    .local v0, "configurations":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    :cond_0
    :goto_0
    return v1

    .line 290
    .end local v0    # "configurations":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/Harvest;->getActivityTraceConfiguration()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    move-result-object v0

    .line 295
    .restart local v0    # "configurations":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;->getMaxTotalTraceCount()I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static shutdown()V
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->stop()V

    .line 133
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->shutdownHarvester()V

    goto :goto_0
.end method

.method public static start()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->start()V

    .line 63
    return-void
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->stop()V

    .line 67
    return-void
.end method


# virtual methods
.method public createHarvester()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestConnection;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .line 112
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestData;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    .line 113
    new-instance v0, Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/Harvester;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    .line 114
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->setHarvestConnection(Lcom/newrelic/agent/android/harvest/HarvestConnection;)V

    .line 115
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->setHarvestData(Lcom/newrelic/agent/android/harvest/HarvestData;)V

    .line 116
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestTimer;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestTimer;-><init>(Lcom/newrelic/agent/android/harvest/Harvester;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    .line 117
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestDataValidator;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestDataValidator;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestDataValidator:Lcom/newrelic/agent/android/harvest/HarvestDataValidator;

    .line 118
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestDataValidator:Lcom/newrelic/agent/android/harvest/HarvestDataValidator;

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 119
    return-void
.end method

.method protected getActivityTraceConfiguration()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getAt_capture()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    return-object v0
.end method

.method public getHarvestConnection()Lcom/newrelic/agent/android/harvest/HarvestConnection;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    return-object v0
.end method

.method public getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    return-object v0
.end method

.method protected getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    return-object v0
.end method

.method protected getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    return-object v0
.end method

.method public initializeHarvester(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 2
    .param p1, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->createHarvester()V

    .line 52
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/Harvester;->setAgentConfiguration(Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 53
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 54
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->flushHarvestableCaches()V

    .line 55
    return-void
.end method

.method public setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .locals 5
    .param p1, "newConfiguration"    # Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->reconfigure(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 382
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getData_report_period()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->setPeriod(J)V

    .line 383
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getServer_timestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->setServerTimestamp(J)V

    .line 384
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestData;->setDataToken(Lcom/newrelic/agent/android/harvest/DataToken;)V

    .line 385
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 386
    return-void
.end method

.method public setConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V
    .locals 2
    .param p1, "connectInformation"    # Lcom/newrelic/agent/android/harvest/ConnectInformation;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->setConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V

    .line 390
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestData;->setDeviceInformation(Lcom/newrelic/agent/android/harvest/DeviceInformation;)V

    .line 391
    return-void
.end method

.method public setHarvestConnection(Lcom/newrelic/agent/android/harvest/HarvestConnection;)V
    .locals 0
    .param p1, "connection"    # Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .line 373
    return-void
.end method

.method public shouldCollectNetworkErrors()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->isCollect_network_errors()Z

    move-result v0

    return v0
.end method

.method public shutdownHarvester()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->shutdown()V

    .line 123
    iput-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    .line 124
    iput-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    .line 125
    iput-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .line 126
    iput-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    .line 127
    return-void
.end method
