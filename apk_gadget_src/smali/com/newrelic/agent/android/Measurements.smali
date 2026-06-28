.class public Lcom/newrelic/agent/android/Measurements;
.super Ljava/lang/Object;
.source "Measurements.java"


# static fields
.field private static final activityConsumer:Lcom/newrelic/agent/android/measurement/consumer/ActivityMeasurementConsumer;

.field private static final activityMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/ActivityMeasurementProducer;

.field private static broadcastNewMeasurements:Z

.field private static final customMetricConsumer:Lcom/newrelic/agent/android/measurement/consumer/CustomMetricConsumer;

.field private static final customMetricProducer:Lcom/newrelic/agent/android/measurement/producer/CustomMetricProducer;

.field private static final httpErrorHarvester:Lcom/newrelic/agent/android/measurement/consumer/HttpErrorHarvestingConsumer;

.field private static final httpErrorMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;

.field private static final httpTransactionHarvester:Lcom/newrelic/agent/android/measurement/consumer/HttpTransactionHarvestingConsumer;

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private static final measurementEngine:Lcom/newrelic/agent/android/MeasurementEngine;

.field private static final methodMeasurementConsumer:Lcom/newrelic/agent/android/measurement/consumer/MethodMeasurementConsumer;

.field private static final methodMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/MethodMeasurementProducer;

.field private static final networkMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/NetworkMeasurementProducer;

.field private static final summaryMetricMeasurementConsumer:Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/Measurements;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 23
    new-instance v0, Lcom/newrelic/agent/android/MeasurementEngine;

    invoke-direct {v0}, Lcom/newrelic/agent/android/MeasurementEngine;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/Measurements;->measurementEngine:Lcom/newrelic/agent/android/MeasurementEngine;

    .line 26
    new-instance v0, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;

    invoke-direct {v0}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/Measurements;->httpErrorMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;

    .line 27
    new-instance v0, Lcom/newrelic/agent/android/measurement/producer/NetworkMeasurementProducer;

    invoke-direct {v0}, Lcom/newrelic/agent/android/measurement/producer/NetworkMeasurementProducer;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/Measurements;->networkMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/NetworkMeasurementProducer;

    .line 28
    new-instance v0, Lcom/newrelic/agent/android/measurement/producer/ActivityMeasurementProducer;

    invoke-direct {v0}, Lcom/newrelic/agent/android/measurement/producer/ActivityMeasurementProducer;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/Measurements;->activityMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/ActivityMeasurementProducer;

    .line 29
    new-instance v0, Lcom/newrelic/agent/android/measurement/producer/MethodMeasurementProducer;

    invoke-direct {v0}, Lcom/newrelic/agent/android/measurement/producer/MethodMeasurementProducer;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/Measurements;->methodMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/MethodMeasurementProducer;

    .line 30
    new-instance v0, Lcom/newrelic/agent/android/measurement/producer/CustomMetricProducer;

    invoke-direct {v0}, Lcom/newrelic/agent/android/measurement/producer/CustomMetricProducer;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/Measurements;->customMetricProducer:Lcom/newrelic/agent/android/measurement/producer/CustomMetricProducer;

    .line 33
    new-instance v0, Lcom/newrelic/agent/android/measurement/consumer/HttpErrorHarvestingConsumer;

    invoke-direct {v0}, Lcom/newrelic/agent/android/measurement/consumer/HttpErrorHarvestingConsumer;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/Measurements;->httpErrorHarvester:Lcom/newrelic/agent/android/measurement/consumer/HttpErrorHarvestingConsumer;

    .line 34
    new-instance v0, Lcom/newrelic/agent/android/measurement/consumer/HttpTransactionHarvestingConsumer;

    invoke-direct {v0}, Lcom/newrelic/agent/android/measurement/consumer/HttpTransactionHarvestingConsumer;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/Measurements;->httpTransactionHarvester:Lcom/newrelic/agent/android/measurement/consumer/HttpTransactionHarvestingConsumer;

    .line 35
    new-instance v0, Lcom/newrelic/agent/android/measurement/consumer/ActivityMeasurementConsumer;

    invoke-direct {v0}, Lcom/newrelic/agent/android/measurement/consumer/ActivityMeasurementConsumer;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/Measurements;->activityConsumer:Lcom/newrelic/agent/android/measurement/consumer/ActivityMeasurementConsumer;

    .line 36
    new-instance v0, Lcom/newrelic/agent/android/measurement/consumer/MethodMeasurementConsumer;

    invoke-direct {v0}, Lcom/newrelic/agent/android/measurement/consumer/MethodMeasurementConsumer;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/Measurements;->methodMeasurementConsumer:Lcom/newrelic/agent/android/measurement/consumer/MethodMeasurementConsumer;

    .line 37
    new-instance v0, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;

    invoke-direct {v0}, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/Measurements;->summaryMetricMeasurementConsumer:Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;

    .line 38
    new-instance v0, Lcom/newrelic/agent/android/measurement/consumer/CustomMetricConsumer;

    invoke-direct {v0}, Lcom/newrelic/agent/android/measurement/consumer/CustomMetricConsumer;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/Measurements;->customMetricConsumer:Lcom/newrelic/agent/android/measurement/consumer/CustomMetricConsumer;

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/newrelic/agent/android/Measurements;->broadcastNewMeasurements:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomMetric(Ljava/lang/String;Ljava/lang/String;IDD)V
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "totalValue"    # D
    .param p5, "exclusiveValue"    # D

    .prologue
    .line 191
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->customMetricProducer:Lcom/newrelic/agent/android/measurement/producer/CustomMetricProducer;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/newrelic/agent/android/measurement/producer/CustomMetricProducer;->produceMeasurement(Ljava/lang/String;Ljava/lang/String;IDD)V

    .line 194
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->newMeasurementBroadcast()V

    goto :goto_0
.end method

.method public static addCustomMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "totalValue"    # D
    .param p5, "exclusiveValue"    # D
    .param p7, "countUnit"    # Lcom/newrelic/agent/android/metric/MetricUnit;
    .param p8, "valueUnit"    # Lcom/newrelic/agent/android/metric/MetricUnit;

    .prologue
    .line 198
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->customMetricProducer:Lcom/newrelic/agent/android/measurement/producer/CustomMetricProducer;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/newrelic/agent/android/measurement/producer/CustomMetricProducer;->produceMeasurement(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V

    .line 201
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->newMeasurementBroadcast()V

    goto :goto_0
.end method

.method public static addHttpError(Lcom/newrelic/agent/android/api/common/TransactionData;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "transactionData"    # Lcom/newrelic/agent/android/api/common/TransactionData;
    .param p1, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 182
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "TransactionData is null. HttpError measurement not created."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v3

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static addHttpError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 99
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->httpErrorMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->produceMeasurement(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->newMeasurementBroadcast()V

    goto :goto_0
.end method

.method public static addHttpError(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "errorCode"    # I
    .param p4, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->httpErrorMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;

    new-instance v7, Lcom/newrelic/agent/android/measurement/ThreadInfo;

    invoke-direct {v7}, Lcom/newrelic/agent/android/measurement/ThreadInfo;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->produceMeasurement(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Lcom/newrelic/agent/android/measurement/ThreadInfo;)V

    .line 148
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->newMeasurementBroadcast()V

    goto :goto_0
.end method

.method public static addHttpError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->httpErrorMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->produceMeasurement(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->newMeasurementBroadcast()V

    goto :goto_0
.end method

.method public static addHttpError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->httpErrorMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->produceMeasurement(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 131
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->newMeasurementBroadcast()V

    goto :goto_0
.end method

.method public static addHttpError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/newrelic/agent/android/measurement/ThreadInfo;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "responseBody"    # Ljava/lang/String;
    .param p5, "threadInfo"    # Lcom/newrelic/agent/android/measurement/ThreadInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/newrelic/agent/android/measurement/ThreadInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->httpErrorMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->produceMeasurement(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/newrelic/agent/android/measurement/ThreadInfo;)V

    .line 164
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->newMeasurementBroadcast()V

    goto :goto_0
.end method

.method public static addHttpTransaction(Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;)V
    .locals 2
    .param p0, "transactionMeasurement"    # Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    .prologue
    .line 170
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    if-nez p0, :cond_1

    .line 173
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "TransactionMeasurement is null. HttpTransactionMeasurement measurement not created."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->networkMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/NetworkMeasurementProducer;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/measurement/producer/NetworkMeasurementProducer;->produceMeasurement(Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;)V

    .line 176
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->newMeasurementBroadcast()V

    goto :goto_0
.end method

.method public static addMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V
    .locals 1
    .param p0, "measurementConsumer"    # Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;

    .prologue
    .line 309
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->measurementEngine:Lcom/newrelic/agent/android/MeasurementEngine;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/MeasurementEngine;->addMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 310
    return-void
.end method

.method public static addMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V
    .locals 1
    .param p0, "measurementProducer"    # Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;

    .prologue
    .line 291
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->measurementEngine:Lcom/newrelic/agent/android/MeasurementEngine;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/MeasurementEngine;->addMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V

    .line 292
    return-void
.end method

.method public static addTracedMethod(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1
    .param p0, "trace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    .line 279
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->methodMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/MethodMeasurementProducer;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/measurement/producer/MethodMeasurementProducer;->produceMeasurement(Lcom/newrelic/agent/android/tracing/Trace;)V

    .line 282
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->newMeasurementBroadcast()V

    goto :goto_0
.end method

.method public static broadcast()V
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->measurementEngine:Lcom/newrelic/agent/android/MeasurementEngine;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/MeasurementEngine;->broadcastMeasurements()V

    .line 215
    return-void
.end method

.method public static endActivity(Lcom/newrelic/agent/android/activity/MeasuredActivity;)V
    .locals 1
    .param p0, "activity"    # Lcom/newrelic/agent/android/activity/MeasuredActivity;

    .prologue
    .line 260
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->measurementEngine:Lcom/newrelic/agent/android/MeasurementEngine;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/MeasurementEngine;->endActivity(Lcom/newrelic/agent/android/activity/MeasuredActivity;)V

    .line 263
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->activityMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/ActivityMeasurementProducer;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/measurement/producer/ActivityMeasurementProducer;->produceMeasurement(Lcom/newrelic/agent/android/activity/MeasuredActivity;)V

    .line 264
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->newMeasurementBroadcast()V

    goto :goto_0
.end method

.method public static endActivity(Ljava/lang/String;)V
    .locals 2
    .param p0, "activityName"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/Measurements;->measurementEngine:Lcom/newrelic/agent/android/MeasurementEngine;

    invoke-virtual {v1, p0}, Lcom/newrelic/agent/android/MeasurementEngine;->endActivity(Ljava/lang/String;)Lcom/newrelic/agent/android/activity/MeasuredActivity;

    move-result-object v0

    .line 250
    .local v0, "measuredActivity":Lcom/newrelic/agent/android/activity/MeasuredActivity;
    sget-object v1, Lcom/newrelic/agent/android/Measurements;->activityMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/ActivityMeasurementProducer;

    invoke-virtual {v1, v0}, Lcom/newrelic/agent/android/measurement/producer/ActivityMeasurementProducer;->produceMeasurement(Lcom/newrelic/agent/android/activity/MeasuredActivity;)V

    .line 251
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->newMeasurementBroadcast()V

    goto :goto_0
.end method

.method public static endActivityWithoutMeasurement(Lcom/newrelic/agent/android/activity/MeasuredActivity;)V
    .locals 1
    .param p0, "activity"    # Lcom/newrelic/agent/android/activity/MeasuredActivity;

    .prologue
    .line 273
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->measurementEngine:Lcom/newrelic/agent/android/MeasurementEngine;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/MeasurementEngine;->endActivity(Lcom/newrelic/agent/android/activity/MeasuredActivity;)V

    goto :goto_0
.end method

.method public static initialize()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Measurement Engine initialized."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/newrelic/agent/android/TaskQueue;->start()V

    .line 50
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->httpErrorMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->addMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V

    .line 51
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->networkMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/NetworkMeasurementProducer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->addMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V

    .line 53
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->activityMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/ActivityMeasurementProducer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->addMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V

    .line 54
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->methodMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/MethodMeasurementProducer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->addMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V

    .line 55
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->customMetricProducer:Lcom/newrelic/agent/android/measurement/producer/CustomMetricProducer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->addMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V

    .line 58
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->httpErrorHarvester:Lcom/newrelic/agent/android/measurement/consumer/HttpErrorHarvestingConsumer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->addMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 59
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->httpTransactionHarvester:Lcom/newrelic/agent/android/measurement/consumer/HttpTransactionHarvestingConsumer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->addMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 60
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->activityConsumer:Lcom/newrelic/agent/android/measurement/consumer/ActivityMeasurementConsumer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->addMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 61
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->methodMeasurementConsumer:Lcom/newrelic/agent/android/measurement/consumer/MethodMeasurementConsumer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->addMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 62
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->summaryMetricMeasurementConsumer:Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->addMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 63
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->customMetricConsumer:Lcom/newrelic/agent/android/measurement/consumer/CustomMetricConsumer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->addMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 64
    return-void
.end method

.method private static newMeasurementBroadcast()V
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/newrelic/agent/android/Measurements;->broadcastNewMeasurements:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->broadcast()V

    .line 211
    :cond_0
    return-void
.end method

.method public static process()V
    .locals 1

    .prologue
    .line 326
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->measurementEngine:Lcom/newrelic/agent/android/MeasurementEngine;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/MeasurementEngine;->broadcastMeasurements()V

    .line 327
    return-void
.end method

.method public static removeMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V
    .locals 1
    .param p0, "measurementConsumer"    # Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;

    .prologue
    .line 318
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->measurementEngine:Lcom/newrelic/agent/android/MeasurementEngine;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/MeasurementEngine;->removeMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 319
    return-void
.end method

.method public static removeMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V
    .locals 1
    .param p0, "measurementProducer"    # Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;

    .prologue
    .line 300
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->measurementEngine:Lcom/newrelic/agent/android/MeasurementEngine;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/MeasurementEngine;->removeMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V

    .line 301
    return-void
.end method

.method public static renameActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "oldName"    # Ljava/lang/String;
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 238
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->measurementEngine:Lcom/newrelic/agent/android/MeasurementEngine;

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/MeasurementEngine;->renameActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public static setBroadcastNewMeasurements(Z)V
    .locals 0
    .param p0, "broadcast"    # Z

    .prologue
    .line 205
    sput-boolean p0, Lcom/newrelic/agent/android/Measurements;->broadcastNewMeasurements:Z

    .line 206
    return-void
.end method

.method public static shutdown()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/newrelic/agent/android/TaskQueue;->stop()V

    .line 71
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->measurementEngine:Lcom/newrelic/agent/android/MeasurementEngine;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/MeasurementEngine;->clear()V

    .line 73
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Measurement Engine shutting down."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->httpErrorMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->removeMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V

    .line 75
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->networkMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/NetworkMeasurementProducer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->removeMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V

    .line 76
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->activityMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/ActivityMeasurementProducer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->removeMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V

    .line 77
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->methodMeasurementProducer:Lcom/newrelic/agent/android/measurement/producer/MethodMeasurementProducer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->removeMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V

    .line 78
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->customMetricProducer:Lcom/newrelic/agent/android/measurement/producer/CustomMetricProducer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->removeMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V

    .line 80
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->httpErrorHarvester:Lcom/newrelic/agent/android/measurement/consumer/HttpErrorHarvestingConsumer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->removeMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 81
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->httpTransactionHarvester:Lcom/newrelic/agent/android/measurement/consumer/HttpTransactionHarvestingConsumer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->removeMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 82
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->activityConsumer:Lcom/newrelic/agent/android/measurement/consumer/ActivityMeasurementConsumer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->removeMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 83
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->methodMeasurementConsumer:Lcom/newrelic/agent/android/measurement/consumer/MethodMeasurementConsumer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->removeMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 84
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->summaryMetricMeasurementConsumer:Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->removeMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 85
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->customMetricConsumer:Lcom/newrelic/agent/android/measurement/consumer/CustomMetricConsumer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->removeMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 86
    return-void
.end method

.method public static startActivity(Ljava/lang/String;)Lcom/newrelic/agent/android/activity/MeasuredActivity;
    .locals 1
    .param p0, "activityName"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/Measurements;->measurementEngine:Lcom/newrelic/agent/android/MeasurementEngine;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/MeasurementEngine;->startActivity(Ljava/lang/String;)Lcom/newrelic/agent/android/activity/MeasuredActivity;

    move-result-object v0

    goto :goto_0
.end method
