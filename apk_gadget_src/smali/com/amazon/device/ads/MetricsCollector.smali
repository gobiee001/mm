.class Lcom/amazon/device/ads/MetricsCollector;
.super Ljava/lang/Object;
.source "MetricsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/MetricsCollector$MetricHitString;,
        Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;,
        Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;,
        Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;,
        Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;,
        Lcom/amazon/device/ads/MetricsCollector$MetricHit;,
        Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private adTypeMetricTag:Ljava/lang/String;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field protected metricHits:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amazon/device/ads/MetricsCollector$MetricHit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/amazon/device/ads/MetricsCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/MetricsCollector;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/MetricsCollector;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 32
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    .line 33
    return-void
.end method


# virtual methods
.method public getAdTypeMetricTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->adTypeMetricTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricHits()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/amazon/device/ads/MetricsCollector$MetricHit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    return-object v0
.end method

.method public incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 3
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Increment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public isMetricsCollectorEmpty()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public publishMetricInMilliseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 4
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;
    .param p2, "value"    # J

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Publish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public publishMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 0
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;
    .param p2, "value"    # J

    .prologue
    .line 72
    invoke-static {p2, p3}, Lcom/amazon/device/ads/NumberUtils;->convertToMillisecondsFromNanoseconds(J)J

    move-result-wide p2

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/device/ads/MetricsCollector;->publishMetricInMilliseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 74
    return-void
.end method

.method public setAdType(Lcom/amazon/device/ads/AdProperties$AdType;)V
    .locals 1
    .param p1, "adType"    # Lcom/amazon/device/ads/AdProperties$AdType;

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdProperties$AdType;->getAdTypeMetricTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->adTypeMetricTag:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V
    .locals 3
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitString;

    invoke-direct {v1, p1, p2}, Lcom/amazon/device/ads/MetricsCollector$MetricHitString;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 2
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 85
    return-void
.end method

.method public startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 4
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;
    .param p2, "startTime"    # J

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 79
    invoke-static {p2, p3}, Lcom/amazon/device/ads/NumberUtils;->convertToMillisecondsFromNanoseconds(J)J

    move-result-wide p2

    .line 80
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 2
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;

    .prologue
    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 95
    return-void
.end method

.method public stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 4
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;
    .param p2, "stopTime"    # J

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 89
    invoke-static {p2, p3}, Lcom/amazon/device/ads/NumberUtils;->convertToMillisecondsFromNanoseconds(J)J

    move-result-wide p2

    .line 90
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method
