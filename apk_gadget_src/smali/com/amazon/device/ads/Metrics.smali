.class Lcom/amazon/device/ads/Metrics;
.super Ljava/lang/Object;
.source "Metrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/Metrics$2;,
        Lcom/amazon/device/ads/Metrics$MetricsSubmitter;,
        Lcom/amazon/device/ads/Metrics$MetricType;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final TYPED_METRIC:Z = true

.field private static instance:Lcom/amazon/device/ads/Metrics;


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private metricsCollector:Lcom/amazon/device/ads/MetricsCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/Metrics;->LOGTAG:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/amazon/device/ads/Metrics;

    invoke-direct {v0}, Lcom/amazon/device/ads/Metrics;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/Metrics;->instance:Lcom/amazon/device/ads/Metrics;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/Metrics;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/Metrics;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 180
    new-instance v0, Lcom/amazon/device/ads/MetricsCollector;

    invoke-direct {v0}, Lcom/amazon/device/ads/MetricsCollector;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Metrics;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/Metrics;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/Metrics;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/amazon/device/ads/Metrics;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/device/ads/Metrics;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/amazon/device/ads/Metrics;->instance:Lcom/amazon/device/ads/Metrics;

    return-object v0
.end method

.method private getLogger()Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/amazon/device/ads/Metrics;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method private sendMetrics(Lcom/amazon/device/ads/WebRequest;)V
    .locals 1
    .param p1, "webRequest"    # Lcom/amazon/device/ads/WebRequest;

    .prologue
    .line 230
    new-instance v0, Lcom/amazon/device/ads/Metrics$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/Metrics$1;-><init>(Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/WebRequest;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method


# virtual methods
.method public getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazon/device/ads/Metrics;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    return-object v0
.end method

.method public submitAndResetMetrics(Lcom/amazon/device/ads/Metrics$MetricsSubmitter;)V
    .locals 5
    .param p1, "submitter"    # Lcom/amazon/device/ads/Metrics$MetricsSubmitter;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/amazon/device/ads/Metrics;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v3

    const-string v4, "METRIC Submit and Reset"

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/amazon/device/ads/AdMetrics;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/AdMetrics;-><init>(Lcom/amazon/device/ads/Metrics$MetricsSubmitter;)V

    .line 211
    .local v0, "adMetrics":Lcom/amazon/device/ads/AdMetrics;
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdMetrics;->canSubmit()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v1, p0, Lcom/amazon/device/ads/Metrics;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    .line 214
    .local v1, "metricsCollector":Lcom/amazon/device/ads/MetricsCollector;
    new-instance v3, Lcom/amazon/device/ads/MetricsCollector;

    invoke-direct {v3}, Lcom/amazon/device/ads/MetricsCollector;-><init>()V

    iput-object v3, p0, Lcom/amazon/device/ads/Metrics;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    .line 215
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdMetrics;->addGlobalMetrics(Lcom/amazon/device/ads/MetricsCollector;)V

    .line 217
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdMetrics;->getAaxWebRequestAndResetAdMetrics()Lcom/amazon/device/ads/WebRequest;

    move-result-object v2

    .line 218
    .local v2, "request":Lcom/amazon/device/ads/WebRequest;
    invoke-direct {p0, v2}, Lcom/amazon/device/ads/Metrics;->sendMetrics(Lcom/amazon/device/ads/WebRequest;)V

    .line 226
    .end local v1    # "metricsCollector":Lcom/amazon/device/ads/MetricsCollector;
    .end local v2    # "request":Lcom/amazon/device/ads/WebRequest;
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-interface {p1}, Lcom/amazon/device/ads/Metrics$MetricsSubmitter;->resetMetricsCollector()V

    goto :goto_0
.end method
