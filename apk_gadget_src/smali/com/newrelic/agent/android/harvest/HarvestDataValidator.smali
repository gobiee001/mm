.class public Lcom/newrelic/agent/android/harvest/HarvestDataValidator;
.super Lcom/newrelic/agent/android/harvest/HarvestAdapter;
.source "HarvestDataValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureActivityNameMetricsExist()V
    .locals 14

    .prologue
    .line 19
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getInstance()Lcom/newrelic/agent/android/harvest/Harvest;

    move-result-object v11

    invoke-virtual {v11}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v6

    .line 21
    .local v6, "harvestData":Lcom/newrelic/agent/android/harvest/HarvestData;
    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HarvestData;->getActivityTraces()Lcom/newrelic/agent/android/harvest/ActivityTraces;

    move-result-object v4

    .line 22
    .local v4, "activityTraces":Lcom/newrelic/agent/android/harvest/ActivityTraces;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->count()I

    move-result v11

    if-nez v11, :cond_1

    .line 59
    :cond_0
    return-void

    .line 25
    :cond_1
    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HarvestData;->getMetrics()Lcom/newrelic/agent/android/harvest/MachineMeasurements;

    move-result-object v9

    .line 26
    .local v9, "metrics":Lcom/newrelic/agent/android/harvest/MachineMeasurements;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 30
    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->getActivityTraces()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .line 31
    .local v3, "activityTrace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    iget-object v12, v3, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v2, v12, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    .line 32
    .local v2, "activityName":Ljava/lang/String;
    const-string v12, "#"

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 33
    .local v7, "hashIndex":I
    if-lez v7, :cond_3

    .line 34
    const/4 v12, 0x0

    invoke-virtual {v2, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 37
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Mobile/Activity/Name/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "activityMetricRoot":Ljava/lang/String;
    const/4 v5, 0x0

    .line 41
    .local v5, "foundMetricForActivity":Z
    invoke-virtual {v9}, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->getMetrics()Lcom/newrelic/agent/android/metric/MetricStore;

    move-result-object v12

    invoke-virtual {v12}, Lcom/newrelic/agent/android/metric/MetricStore;->getAllUnscoped()Ljava/util/List;

    move-result-object v10

    .line 43
    .local v10, "unScopedMetrics":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/metric/Metric;>;"
    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 44
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/newrelic/agent/android/metric/Metric;

    .line 45
    .local v8, "metric":Lcom/newrelic/agent/android/metric/Metric;
    invoke-virtual {v8}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 46
    const/4 v5, 0x1

    .line 52
    .end local v8    # "metric":Lcom/newrelic/agent/android/metric/Metric;
    :cond_5
    if-nez v5, :cond_2

    .line 56
    new-instance v0, Lcom/newrelic/agent/android/metric/Metric;

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/metric/Metric;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "activityMetric":Lcom/newrelic/agent/android/metric/Metric;
    invoke-virtual {v9, v0}, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->addMetric(Lcom/newrelic/agent/android/metric/Metric;)V

    goto :goto_0
.end method

.method public onHarvestFinalize()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    :goto_0
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestDataValidator;->ensureActivityNameMetricsExist()V

    goto :goto_0
.end method
