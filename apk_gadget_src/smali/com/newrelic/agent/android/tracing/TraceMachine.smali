.class public Lcom/newrelic/agent/android/tracing/TraceMachine;
.super Lcom/newrelic/agent/android/harvest/HarvestAdapter;
.source "TraceMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;
    }
.end annotation


# static fields
.field public static final ACTIVITY_BACKGROUND_METRIC_PREFIX:Ljava/lang/String; = "Mobile/Activity/Background/Name/"

.field public static final ACTIVITY_METRIC_PREFIX:Ljava/lang/String; = "Mobile/Activity/Name/"

.field public static final ACTIVTY_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "Display "

.field public static HEALTHY_TRACE_TIMEOUT:I = 0x0

.field public static final NR_TRACE_FIELD:Ljava/lang/String; = "_nr_trace"

.field public static final NR_TRACE_TYPE:Ljava/lang/String; = "Lcom/newrelic/agent/android/tracing/Trace;"

.field private static final TRACE_MACHINE_LOCK:Ljava/lang/Object;

.field public static UNHEALTHY_TRACE_TIMEOUT:I

.field private static final activityHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/harvest/ActivitySighting;",
            ">;"
        }
    .end annotation
.end field

.field public static final enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private static final threadLocalTrace:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/newrelic/agent/android/tracing/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadLocalTraceStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;",
            ">;"
        }
    .end annotation
.end field

.field private static final traceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;",
            ">;"
        }
    .end annotation
.end field

.field private static traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

.field private static traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;


# instance fields
.field private activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->TRACE_MACHINE_LOCK:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    .line 42
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    .line 43
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    .line 47
    const/16 v0, 0x1f4

    sput v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->HEALTHY_TRACE_TIMEOUT:I

    .line 49
    const v0, 0xea60

    sput v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->UNHEALTHY_TRACE_TIMEOUT:I

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    return-void
.end method

.method protected constructor <init>(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1
    .param p1, "rootTrace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestAdapter;-><init>()V

    .line 61
    new-instance v0, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/tracing/ActivityTrace;-><init>(Lcom/newrelic/agent/android/tracing/Trace;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .line 64
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 65
    return-void
.end method

.method public static addTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V
    .locals 1
    .param p0, "listener"    # Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;

    .prologue
    .line 72
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public static clearActivityHistory()V
    .locals 1

    .prologue
    .line 628
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 629
    return-void
.end method

.method public static endLastActivitySighting()V
    .locals 4

    .prologue
    .line 621
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getLastActivitySighting()Lcom/newrelic/agent/android/harvest/ActivitySighting;

    move-result-object v0

    .line 623
    .local v0, "activitySighting":Lcom/newrelic/agent/android/harvest/ActivitySighting;
    if-eqz v0, :cond_0

    .line 624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/agent/android/harvest/ActivitySighting;->end(J)V

    .line 625
    :cond_0
    return-void
.end method

.method public static endTrace()V
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->completeActivityTrace()V

    .line 184
    return-void
.end method

.method public static endTrace(Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 188
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getActivityTrace()Lcom/newrelic/agent/android/tracing/ActivityTrace;

    move-result-object v0

    iget-object v0, v0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v0, v0, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->completeActivityTrace()V
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 18
    .param p0, "trace"    # Lcom/newrelic/agent/android/tracing/Trace;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/agent/android/tracing/Trace;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p2, "annotationParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 329
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 291
    .local v4, "currentTime":J
    sget-object v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v11, v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    iget-wide v8, v11, Lcom/newrelic/agent/android/tracing/ActivityTrace;->lastUpdatedAt:J

    .line 292
    .local v8, "lastUpdatedAt":J
    sget-object v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v11, v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    iget-wide v6, v11, Lcom/newrelic/agent/android/tracing/ActivityTrace;->startedAt:J

    .line 294
    .local v6, "inception":J
    sget v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->HEALTHY_TRACE_TIMEOUT:I

    int-to-long v12, v11

    add-long/2addr v12, v8

    cmp-long v11, v12, v4

    if-gez v11, :cond_1

    sget-object v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v11, v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-virtual {v11}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->hasMissingChildren()Z

    move-result v11

    if-nez v11, :cond_1

    .line 295
    sget-object v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v12, "LastUpdated[%d] CurrentTime[%d] Trigger[%d]"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sub-long v16, v4, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 296
    sget-object v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Completing activity trace after hitting healthy timeout ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/newrelic/agent/android/tracing/TraceMachine;->HEALTHY_TRACE_TIMEOUT:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 297
    sget-object v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-virtual {v11}, Lcom/newrelic/agent/android/tracing/TraceMachine;->completeActivityTrace()V

    goto :goto_0

    .line 323
    .end local v4    # "currentTime":J
    .end local v6    # "inception":J
    .end local v8    # "lastUpdatedAt":J
    :catch_0
    move-exception v11

    goto :goto_0

    .line 301
    .restart local v4    # "currentTime":J
    .restart local v6    # "inception":J
    .restart local v8    # "lastUpdatedAt":J
    :cond_1
    sget v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->UNHEALTHY_TRACE_TIMEOUT:I

    int-to-long v12, v11

    add-long/2addr v12, v6

    cmp-long v11, v12, v4

    if-gez v11, :cond_2

    .line 302
    sget-object v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Completing activity trace after hitting unhealthy timeout ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/newrelic/agent/android/tracing/TraceMachine;->UNHEALTHY_TRACE_TIMEOUT:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 303
    sget-object v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-virtual {v11}, Lcom/newrelic/agent/android/tracing/TraceMachine;->completeActivityTrace()V
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 325
    .end local v4    # "currentTime":J
    .end local v6    # "inception":J
    .end local v8    # "lastUpdatedAt":J
    :catch_1
    move-exception v3

    .line 326
    .local v3, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v12, "Caught error while calling enterMethod()"

    invoke-interface {v11, v12, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    invoke-static {v3}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 307
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "currentTime":J
    .restart local v6    # "inception":J
    .restart local v8    # "lastUpdatedAt":J
    :cond_2
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->loadTraceContext(Lcom/newrelic/agent/android/tracing/Trace;)V

    .line 309
    invoke-static/range {p1 .. p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->registerNewTrace(Ljava/lang/String;)Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v2

    .line 311
    .local v2, "childTrace":Lcom/newrelic/agent/android/tracing/Trace;
    invoke-static {v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->pushTraceContext(Lcom/newrelic/agent/android/tracing/Trace;)V

    .line 313
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentScope()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/newrelic/agent/android/tracing/Trace;->scope:Ljava/lang/String;

    .line 315
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/newrelic/agent/android/tracing/Trace;->setAnnotationParams(Ljava/util/List;)V

    .line 318
    sget-object v11, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;

    .line 319
    .local v10, "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    invoke-interface {v10}, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;->onEnterMethod()V

    goto :goto_1

    .line 322
    .end local v10    # "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v2, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J
    :try_end_1
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0
.end method

.method public static enterMethod(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-static {v0, p0, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 278
    return-void
.end method

.method public static enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "annotationParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 282
    return-void
.end method

.method public static enterNetworkSegment(Ljava/lang/String;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 253
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v0

    .line 259
    .local v0, "currentTrace":Lcom/newrelic/agent/android/tracing/Trace;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/Trace;->getType()Lcom/newrelic/agent/android/tracing/TraceType;

    move-result-object v3

    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceType;->NETWORK:Lcom/newrelic/agent/android/tracing/TraceType;

    if-ne v3, v4, :cond_1

    .line 260
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 263
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, p0, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 265
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v2

    .line 266
    .local v2, "networkTrace":Lcom/newrelic/agent/android/tracing/Trace;
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceType;->NETWORK:Lcom/newrelic/agent/android/tracing/TraceType;

    invoke-virtual {v2, v3}, Lcom/newrelic/agent/android/tracing/Trace;->setType(Lcom/newrelic/agent/android/tracing/TraceType;)V
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 267
    .end local v0    # "currentTrace":Lcom/newrelic/agent/android/tracing/Trace;
    .end local v2    # "networkTrace":Lcom/newrelic/agent/android/tracing/Trace;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 269
    :catch_1
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Caught error while calling enterNetworkSegment()"

    invoke-interface {v3, v4, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    invoke-static {v1}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static exitMethod()V
    .locals 8

    .prologue
    .line 334
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 391
    .local v3, "trace":Lcom/newrelic/agent/android/tracing/Trace;
    :cond_0
    :goto_0
    return-void

    .line 337
    .end local v3    # "trace":Lcom/newrelic/agent/android/tracing/Trace;
    :cond_1
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/agent/android/tracing/Trace;

    .line 339
    .restart local v3    # "trace":Lcom/newrelic/agent/android/tracing/Trace;
    if-nez v3, :cond_2

    .line 340
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "threadLocalTrace is null"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Caught error while calling exitMethod()"

    invoke-interface {v4, v5, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    .line 348
    iget-wide v4, v3, Lcom/newrelic/agent/android/tracing/Trace;->threadId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    if-eqz v4, :cond_3

    .line 349
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    invoke-interface {v4}, Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;->getCurrentThreadId()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/newrelic/agent/android/tracing/Trace;->threadId:J

    .line 350
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    invoke-interface {v4}, Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;->getCurrentThreadName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/newrelic/agent/android/tracing/Trace;->threadName:Ljava/lang/String;

    .line 354
    :cond_3
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;

    .line 355
    .local v1, "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;->onExitMethod()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 360
    .end local v1    # "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Lcom/newrelic/agent/android/tracing/Trace;->complete()V
    :try_end_2
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 371
    :try_start_3
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->pop()Ljava/lang/Object;

    .line 375
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->empty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 376
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 385
    :goto_2
    invoke-virtual {v3}, Lcom/newrelic/agent/android/tracing/Trace;->getType()Lcom/newrelic/agent/android/tracing/TraceType;

    move-result-object v4

    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceType;->TRACE:Lcom/newrelic/agent/android/tracing/TraceType;

    if-ne v4, v5, :cond_0

    .line 386
    invoke-static {v3}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 361
    :catch_1
    move-exception v0

    .line 362
    .local v0, "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    .line 363
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    .line 364
    invoke-virtual {v3}, Lcom/newrelic/agent/android/tracing/Trace;->getType()Lcom/newrelic/agent/android/tracing/TraceType;

    move-result-object v4

    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceType;->TRACE:Lcom/newrelic/agent/android/tracing/TraceType;

    if-ne v4, v5, :cond_0

    .line 365
    invoke-static {v3}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 378
    .end local v0    # "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    :cond_5
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/tracing/Trace;

    .line 379
    .local v2, "parentTrace":Lcom/newrelic/agent/android/tracing/Trace;
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 382
    iget-wide v4, v2, Lcom/newrelic/agent/android/tracing/Trace;->childExclusiveTime:J

    invoke-virtual {v3}, Lcom/newrelic/agent/android/tracing/Trace;->getDurationAsMilliseconds()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/newrelic/agent/android/tracing/Trace;->childExclusiveTime:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public static formatActivityBackgroundMetricName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile/Activity/Background/Name/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatActivityDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatActivityMetricName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile/Activity/Name/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityHistory()Lcom/newrelic/agent/android/harvest/ActivityHistory;
    .locals 2

    .prologue
    .line 610
    new-instance v0, Lcom/newrelic/agent/android/harvest/ActivityHistory;

    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/harvest/ActivityHistory;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static getActivityTrace()Lcom/newrelic/agent/android/tracing/ActivityTrace;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/tracing/TracingInactiveException;
        }
    .end annotation

    .prologue
    .line 603
    :try_start_0
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v1, v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Lcom/newrelic/agent/android/tracing/TracingInactiveException;

    invoke-direct {v1}, Lcom/newrelic/agent/android/tracing/TracingInactiveException;-><init>()V

    throw v1
.end method

.method public static getCurrentScope()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 555
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    invoke-interface {v2}, Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 560
    :cond_1
    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v2, v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    iget-object v2, v2, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v1, v2, Lcom/newrelic/agent/android/tracing/Trace;->metricName:Ljava/lang/String;

    goto :goto_0

    .line 563
    :cond_2
    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v2, v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    iget-object v2, v2, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v1, v2, Lcom/newrelic/agent/android/tracing/Trace;->metricBackgroundName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Caught error while calling getCurrentScope()"

    invoke-interface {v2, v3, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 566
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/tracing/TracingInactiveException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    new-instance v1, Lcom/newrelic/agent/android/tracing/TracingInactiveException;

    invoke-direct {v1}, Lcom/newrelic/agent/android/tracing/TracingInactiveException;-><init>()V

    throw v1

    .line 482
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/tracing/Trace;

    .line 483
    .local v0, "trace":Lcom/newrelic/agent/android/tracing/Trace;
    if-eqz v0, :cond_1

    .line 486
    .end local v0    # "trace":Lcom/newrelic/agent/android/tracing/Trace;
    :goto_0
    return-object v0

    .restart local v0    # "trace":Lcom/newrelic/agent/android/tracing/Trace;
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getRootTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentTraceParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/tracing/TracingInactiveException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/Trace;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getLastActivitySighting()Lcom/newrelic/agent/android/harvest/ActivitySighting;
    .locals 2

    .prologue
    .line 614
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    const/4 v0, 0x0

    .line 617
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/ActivitySighting;

    goto :goto_0
.end method

.method public static getRootTrace()Lcom/newrelic/agent/android/tracing/Trace;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/tracing/TracingInactiveException;
        }
    .end annotation

    .prologue
    .line 595
    :try_start_0
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v1, v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    iget-object v1, v1, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Lcom/newrelic/agent/android/tracing/TracingInactiveException;

    invoke-direct {v1}, Lcom/newrelic/agent/android/tracing/TracingInactiveException;-><init>()V

    throw v1
.end method

.method public static getTraceMachine()Lcom/newrelic/agent/android/tracing/TraceMachine;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    return-object v0
.end method

.method public static haltTracing()V
    .locals 3

    .prologue
    .line 164
    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->TRACE_MACHINE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 165
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    monitor-exit v2

    .line 180
    .local v0, "finishedMachine":Lcom/newrelic/agent/android/tracing/TraceMachine;
    :goto_0
    return-void

    .line 168
    .end local v0    # "finishedMachine":Lcom/newrelic/agent/android/tracing/TraceMachine;
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 169
    .restart local v0    # "finishedMachine":Lcom/newrelic/agent/android/tracing/TraceMachine;
    const/4 v1, 0x0

    sput-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 171
    iget-object v1, v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->discard()V

    .line 172
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->endLastActivitySighting()V

    .line 175
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 177
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 178
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 179
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static isEnabled()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->InteractionTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTracingActive()Z
    .locals 1

    .prologue
    .line 572
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTracingInactive()Z
    .locals 1

    .prologue
    .line 576
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadTraceContext(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 3
    .param p0, "trace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    const/4 v2, 0x0

    .line 409
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 414
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 416
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    invoke-direct {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;-><init>(Lcom/newrelic/agent/android/tracing/TraceMachine$1;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 419
    if-eqz p0, :cond_0

    .line 422
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_2
    :goto_1
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is now active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_3
    if-nez p0, :cond_2

    .line 430
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "No context to load!"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 432
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 436
    :cond_4
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "trace":Lcom/newrelic/agent/android/tracing/Trace;
    check-cast p0, Lcom/newrelic/agent/android/tracing/Trace;

    .line 437
    .restart local p0    # "trace":Lcom/newrelic/agent/android/tracing/Trace;
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static pushTraceContext(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 2
    .param p0, "trace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    .line 394
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    .line 399
    .local v0, "traceStack":Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->empty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_2
    :goto_1
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 401
    :cond_3
    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 402
    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static registerNewTrace(Ljava/lang/String;)Lcom/newrelic/agent/android/tracing/Trace;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/tracing/TracingInactiveException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Tried to register a new trace but tracing is inactive!"

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 209
    new-instance v3, Lcom/newrelic/agent/android/tracing/TracingInactiveException;

    invoke-direct {v3}, Lcom/newrelic/agent/android/tracing/TracingInactiveException;-><init>()V

    throw v3

    .line 212
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v2

    .line 215
    .local v2, "parentTrace":Lcom/newrelic/agent/android/tracing/Trace;
    new-instance v0, Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-direct {v0, p0, v3, v4}, Lcom/newrelic/agent/android/tracing/Trace;-><init>(Ljava/lang/String;Ljava/util/UUID;Lcom/newrelic/agent/android/tracing/TraceMachine;)V

    .line 217
    .local v0, "childTrace":Lcom/newrelic/agent/android/tracing/Trace;
    :try_start_0
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v3, v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-virtual {v3, v0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->addTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registering trace of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2, v0}, Lcom/newrelic/agent/android/tracing/Trace;->addChild(Lcom/newrelic/agent/android/tracing/Trace;)V

    .line 229
    return-object v0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/newrelic/agent/android/tracing/TracingInactiveException;

    invoke-direct {v3}, Lcom/newrelic/agent/android/tracing/TracingInactiveException;-><init>()V

    throw v3
.end method

.method public static removeTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V
    .locals 1
    .param p0, "listener"    # Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;

    .prologue
    .line 76
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method private static renameActivityHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "oldName"    # Ljava/lang/String;
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 547
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/ActivitySighting;

    .line 548
    .local v0, "activitySighting":Lcom/newrelic/agent/android/harvest/ActivitySighting;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/ActivitySighting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/ActivitySighting;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    .end local v0    # "activitySighting":Lcom/newrelic/agent/android/harvest/ActivitySighting;
    :cond_1
    return-void
.end method

.method public static setCurrentDisplayName(Ljava/lang/String;)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 506
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->TRACE_MACHINE_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 507
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getTraceMachine()Lcom/newrelic/agent/android/tracing/TraceMachine;

    move-result-object v2

    sput-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 508
    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 510
    :try_start_1
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v2

    iput-object p0, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    .line 511
    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    :try_end_1
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    .local v1, "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    :try_start_2
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v4, v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-interface {v1, v4}, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;->onTraceRename(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot name trace. Tracing is not available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 518
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    :catch_1
    move-exception v0

    .line 519
    .local v0, "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    :try_start_4
    monitor-exit v3

    .line 523
    .end local v0    # "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    :goto_1
    return-void

    .line 522
    :cond_0
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public static setCurrentTraceParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 495
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    :goto_0
    return-void

    .line 499
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/tracing/Trace;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    goto :goto_0
.end method

.method public static setRootDisplayName(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 528
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    :goto_0
    return-void

    .line 532
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getRootTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v2

    .line 533
    .local v2, "rootTrace":Lcom/newrelic/agent/android/tracing/Trace;
    iget-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/newrelic/agent/android/Measurements;->renameActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->renameActivityHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->formatActivityMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->metricName:Ljava/lang/String;

    .line 536
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->formatActivityBackgroundMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->metricBackgroundName:Ljava/lang/String;

    .line 537
    iput-object p0, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    .line 539
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v0

    .line 540
    .local v0, "currentTrace":Lcom/newrelic/agent/android/tracing/Trace;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentScope()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/newrelic/agent/android/tracing/Trace;->scope:Ljava/lang/String;
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 541
    .end local v0    # "currentTrace":Lcom/newrelic/agent/android/tracing/Trace;
    .end local v2    # "rootTrace":Lcom/newrelic/agent/android/tracing/Trace;
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    goto :goto_0
.end method

.method public static setTraceMachineInterface(Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;)V
    .locals 0
    .param p0, "traceMachineInterface"    # Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    .prologue
    .line 80
    sput-object p0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    .line 81
    return-void
.end method

.method public static startTracing(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;Z)V

    .line 85
    return-void
.end method

.method public static startTracing(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "customName"    # Z

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;ZZ)V

    .line 89
    return-void
.end method

.method public static startTracing(Ljava/lang/String;ZZ)V
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "customName"    # Z
    .param p2, "customInteraction"    # Z

    .prologue
    const/4 v9, 0x0

    .line 94
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    if-nez p2, :cond_2

    sget-object v3, Lcom/newrelic/agent/android/FeatureFlag;->DefaultInteractions:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v3}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    :cond_2
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->shouldCollectActivityTraces()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->TRACE_MACHINE_LOCK:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :try_start_1
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingActive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->completeActivityTrace()V

    .line 115
    :cond_3
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 116
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    new-instance v5, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;-><init>(Lcom/newrelic/agent/android/tracing/TraceMachine$1;)V

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 119
    new-instance v2, Lcom/newrelic/agent/android/tracing/Trace;

    invoke-direct {v2}, Lcom/newrelic/agent/android/tracing/Trace;-><init>()V

    .line 120
    .local v2, "rootTrace":Lcom/newrelic/agent/android/tracing/Trace;
    if-eqz p1, :cond_4

    .line 121
    iput-object p0, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    .line 127
    :goto_1
    iget-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-static {v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->formatActivityMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->metricName:Ljava/lang/String;

    .line 128
    iget-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-static {v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->formatActivityBackgroundMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->metricBackgroundName:Ljava/lang/String;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J

    .line 132
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started trace of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 134
    new-instance v3, Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-direct {v3, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;-><init>(Lcom/newrelic/agent/android/tracing/Trace;)V

    sput-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 135
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iput-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 138
    invoke-static {v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->pushTraceContext(Lcom/newrelic/agent/android/tracing/Trace;)V

    .line 141
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v3, v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getLastActivitySighting()Lcom/newrelic/agent/android/harvest/ActivitySighting;

    move-result-object v5

    iput-object v5, v3, Lcom/newrelic/agent/android/tracing/ActivityTrace;->previousActivity:Lcom/newrelic/agent/android/harvest/ActivitySighting;

    .line 142
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    new-instance v5, Lcom/newrelic/agent/android/harvest/ActivitySighting;

    iget-wide v6, v2, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J

    iget-object v8, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcom/newrelic/agent/android/harvest/ActivitySighting;-><init>(JLjava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;

    .line 145
    .local v1, "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v5, v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-interface {v1, v5}, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;->onTraceStart(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V

    goto :goto_2

    .line 147
    .end local v1    # "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    .end local v2    # "rootTrace":Lcom/newrelic/agent/android/tracing/Trace;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Caught error while initializing TraceMachine, shutting it down"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 153
    sput-object v9, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 154
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 155
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    goto/16 :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "rootTrace":Lcom/newrelic/agent/android/tracing/Trace;
    :cond_4
    :try_start_3
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->formatActivityDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    goto/16 :goto_1

    .line 147
    :cond_5
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public static unloadTraceContext(Ljava/lang/Object;)V
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 451
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    invoke-interface {v3}, Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;->isUIThread()Z

    move-result v3

    if-nez v3, :cond_0

    .line 457
    :cond_2
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 458
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trace "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v3, v3, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is now inactive"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 460
    :cond_3
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 461
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 465
    :try_start_1
    move-object v0, p0

    check-cast v0, Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;

    move-object v2, v0

    .line 466
    .local v2, "tfi":Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;->_nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 467
    .end local v2    # "tfi":Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_2
    const-string v3, "TraceFieldInterface"

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/util/ExceptionHelper;->recordSupportabilityMetric(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 469
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a TraceFieldInterface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 471
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 472
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Caught error while calling unloadTraceContext()"

    invoke-interface {v3, v4, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 473
    invoke-static {v1}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected completeActivityTrace()V
    .locals 5

    .prologue
    .line 233
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->TRACE_MACHINE_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 234
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    monitor-exit v3

    .line 249
    :goto_0
    return-void

    .line 237
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 238
    .local v0, "finishedMachine":Lcom/newrelic/agent/android/tracing/TraceMachine;
    const/4 v2, 0x0

    sput-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 240
    iget-object v2, v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->complete()V

    .line 241
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->endLastActivitySighting()V

    .line 243
    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;

    .line 244
    .local v1, "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    iget-object v4, v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-interface {v1, v4}, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;->onTraceComplete(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V

    goto :goto_1

    .line 248
    .end local v0    # "finishedMachine":Lcom/newrelic/agent/android/tracing/TraceMachine;
    .end local v1    # "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 247
    .restart local v0    # "finishedMachine":Lcom/newrelic/agent/android/tracing/TraceMachine;
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 248
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onHarvestBefore()V
    .locals 9

    .prologue
    .line 633
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 635
    .local v0, "currentTime":J
    sget-object v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v6, v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    iget-wide v4, v6, Lcom/newrelic/agent/android/tracing/ActivityTrace;->lastUpdatedAt:J

    .line 636
    .local v4, "lastUpdatedAt":J
    sget-object v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v6, v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    iget-wide v2, v6, Lcom/newrelic/agent/android/tracing/ActivityTrace;->startedAt:J

    .line 638
    .local v2, "inception":J
    sget v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->HEALTHY_TRACE_TIMEOUT:I

    int-to-long v6, v6

    add-long/2addr v6, v4

    cmp-long v6, v6, v0

    if-gez v6, :cond_1

    sget-object v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v6, v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-virtual {v6}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->hasMissingChildren()Z

    move-result v6

    if-nez v6, :cond_1

    .line 639
    sget-object v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Completing activity trace after hitting healthy timeout ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/newrelic/agent/android/tracing/TraceMachine;->HEALTHY_TRACE_TIMEOUT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->completeActivityTrace()V

    .line 641
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v6

    const-string v7, "Supportability/AgentHealth/HealthyActivityTraces"

    invoke-virtual {v6, v7}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 654
    .end local v0    # "currentTime":J
    .end local v2    # "inception":J
    .end local v4    # "lastUpdatedAt":J
    :cond_0
    :goto_0
    return-void

    .line 645
    .restart local v0    # "currentTime":J
    .restart local v2    # "inception":J
    .restart local v4    # "lastUpdatedAt":J
    :cond_1
    sget v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->UNHEALTHY_TRACE_TIMEOUT:I

    int-to-long v6, v6

    add-long/2addr v6, v2

    cmp-long v6, v6, v0

    if-gez v6, :cond_0

    .line 646
    sget-object v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Completing activity trace after hitting unhealthy timeout ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/newrelic/agent/android/tracing/TraceMachine;->UNHEALTHY_TRACE_TIMEOUT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->completeActivityTrace()V

    .line 648
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v6

    const-string v7, "Supportability/AgentHealth/UnhealthyActivityTraces"

    invoke-virtual {v6, v7}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    goto :goto_0

    .line 652
    .end local v0    # "currentTime":J
    .end local v2    # "inception":J
    .end local v4    # "lastUpdatedAt":J
    :cond_2
    sget-object v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v7, "TraceMachine is inactive"

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHarvestSendFailed()V
    .locals 1

    .prologue
    .line 659
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v0, v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->incrementReportAttemptCount()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public storeCompletedTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 3
    .param p1, "trace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    .line 581
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Attempted to store a completed trace with no trace machine!"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 591
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-virtual {v1, p1}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->addCompletedTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Caught error while calling storeCompletedTrace()"

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 589
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
