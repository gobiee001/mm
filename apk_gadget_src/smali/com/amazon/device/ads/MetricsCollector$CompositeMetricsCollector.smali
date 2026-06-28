.class Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;
.super Lcom/amazon/device/ads/MetricsCollector;
.source "MetricsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompositeMetricsCollector"
.end annotation


# instance fields
.field private final collectors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/device/ads/MetricsCollector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/device/ads/MetricsCollector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "collectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amazon/device/ads/MetricsCollector;>;"
    invoke-direct {p0}, Lcom/amazon/device/ads/MetricsCollector;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    .line 114
    return-void
.end method


# virtual methods
.method public incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 3
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;

    .prologue
    .line 123
    iget-object v2, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 125
    .local v0, "collector":Lcom/amazon/device/ads/MetricsCollector;
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    goto :goto_0

    .line 127
    .end local v0    # "collector":Lcom/amazon/device/ads/MetricsCollector;
    :cond_0
    return-void
.end method

.method public publishMetricInMilliseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 4
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;
    .param p2, "value"    # J

    .prologue
    .line 151
    iget-object v2, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 153
    .local v0, "collector":Lcom/amazon/device/ads/MetricsCollector;
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/MetricsCollector;->publishMetricInMilliseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    goto :goto_0

    .line 155
    .end local v0    # "collector":Lcom/amazon/device/ads/MetricsCollector;
    :cond_0
    return-void
.end method

.method public publishMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 4
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;
    .param p2, "value"    # J

    .prologue
    .line 160
    iget-object v2, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 162
    .local v0, "collector":Lcom/amazon/device/ads/MetricsCollector;
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/MetricsCollector;->publishMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    goto :goto_0

    .line 164
    .end local v0    # "collector":Lcom/amazon/device/ads/MetricsCollector;
    :cond_0
    return-void
.end method

.method public setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V
    .locals 3
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v2, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 139
    .local v0, "collector":Lcom/amazon/device/ads/MetricsCollector;
    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/MetricsCollector;->setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .end local v0    # "collector":Lcom/amazon/device/ads/MetricsCollector;
    :cond_0
    return-void
.end method

.method public startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 3
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;

    .prologue
    .line 178
    iget-object v2, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 180
    .local v0, "collector":Lcom/amazon/device/ads/MetricsCollector;
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    goto :goto_0

    .line 182
    .end local v0    # "collector":Lcom/amazon/device/ads/MetricsCollector;
    :cond_0
    return-void
.end method

.method public startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 4
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;
    .param p2, "startTime"    # J

    .prologue
    .line 169
    iget-object v2, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 171
    .local v0, "collector":Lcom/amazon/device/ads/MetricsCollector;
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    goto :goto_0

    .line 173
    .end local v0    # "collector":Lcom/amazon/device/ads/MetricsCollector;
    :cond_0
    return-void
.end method

.method public stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 3
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;

    .prologue
    .line 196
    iget-object v2, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 198
    .local v0, "collector":Lcom/amazon/device/ads/MetricsCollector;
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    goto :goto_0

    .line 200
    .end local v0    # "collector":Lcom/amazon/device/ads/MetricsCollector;
    :cond_0
    return-void
.end method

.method public stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 4
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;
    .param p2, "stopTime"    # J

    .prologue
    .line 187
    iget-object v2, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 189
    .local v0, "collector":Lcom/amazon/device/ads/MetricsCollector;
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/MetricsCollector;->stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    goto :goto_0

    .line 191
    .end local v0    # "collector":Lcom/amazon/device/ads/MetricsCollector;
    :cond_0
    return-void
.end method
