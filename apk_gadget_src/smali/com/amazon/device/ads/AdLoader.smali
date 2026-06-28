.class Lcom/amazon/device/ads/AdLoader;
.super Ljava/lang/Object;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;,
        Lcom/amazon/device/ads/AdLoader$AdFetchException;
    }
.end annotation


# static fields
.field public static final AD_FAILED:I = -0x1

.field public static final AD_LOAD_DEFERRED:I = 0x1

.field public static final AD_READY_TO_LOAD:I = 0x0

.field public static final DISABLED_APP_SERVER_MESSAGE:Ljava/lang/String; = "DISABLED_APP"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final adRequest:Lcom/amazon/device/ads/AdRequest;

.field private final assets:Lcom/amazon/device/ads/Assets;

.field private compositeMetricsCollector:Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private error:Lcom/amazon/device/ads/AdError;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final slots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/device/ads/AdSlot;",
            ">;"
        }
    .end annotation
.end field

.field private final systemTime:Lcom/amazon/device/ads/SystemTime;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/amazon/device/ads/AdLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdLoader;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdRequest;Ljava/util/Map;)V
    .locals 9
    .param p1, "adRequest"    # Lcom/amazon/device/ads/AdRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/AdRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/device/ads/AdSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "slots":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/amazon/device/ads/AdSlot;>;"
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v3

    new-instance v4, Lcom/amazon/device/ads/SystemTime;

    invoke-direct {v4}, Lcom/amazon/device/ads/SystemTime;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/Assets;->getInstance()Lcom/amazon/device/ads/Assets;

    move-result-object v5

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v7}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/amazon/device/ads/AdLoader;-><init>(Lcom/amazon/device/ads/AdRequest;Ljava/util/Map;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/Assets;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/DebugProperties;)V

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdRequest;Ljava/util/Map;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/Assets;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/DebugProperties;)V
    .locals 2
    .param p1, "adRequest"    # Lcom/amazon/device/ads/AdRequest;
    .param p3, "threadRunner"    # Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .param p4, "systemTime"    # Lcom/amazon/device/ads/SystemTime;
    .param p5, "assets"    # Lcom/amazon/device/ads/Assets;
    .param p6, "infoStore"    # Lcom/amazon/device/ads/MobileAdsInfoStore;
    .param p7, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p8, "debugProperties"    # Lcom/amazon/device/ads/DebugProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/AdRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/device/ads/AdSlot;",
            ">;",
            "Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;",
            "Lcom/amazon/device/ads/SystemTime;",
            "Lcom/amazon/device/ads/Assets;",
            "Lcom/amazon/device/ads/MobileAdsInfoStore;",
            "Lcom/amazon/device/ads/MobileAdsLoggerFactory;",
            "Lcom/amazon/device/ads/DebugProperties;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "slots":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/amazon/device/ads/AdSlot;>;"
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/amazon/device/ads/AdLoader;->timeout:I

    .line 40
    iput-object v1, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    .line 41
    iput-object v1, p0, Lcom/amazon/device/ads/AdLoader;->compositeMetricsCollector:Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;

    .line 70
    iput-object p1, p0, Lcom/amazon/device/ads/AdLoader;->adRequest:Lcom/amazon/device/ads/AdRequest;

    .line 71
    iput-object p2, p0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    .line 72
    iput-object p3, p0, Lcom/amazon/device/ads/AdLoader;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 73
    iput-object p4, p0, Lcom/amazon/device/ads/AdLoader;->systemTime:Lcom/amazon/device/ads/SystemTime;

    .line 74
    iput-object p5, p0, Lcom/amazon/device/ads/AdLoader;->assets:Lcom/amazon/device/ads/Assets;

    .line 75
    iput-object p6, p0, Lcom/amazon/device/ads/AdLoader;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 76
    sget-object v0, Lcom/amazon/device/ads/AdLoader;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p7, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 77
    iput-object p8, p0, Lcom/amazon/device/ads/AdLoader;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AdLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/AdLoader;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->beginFinalizeFetchAd()V

    return-void
.end method

.method private beginFinalizeFetchAd()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/AdLoader$2;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/AdLoader$2;-><init>(Lcom/amazon/device/ads/AdLoader;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 118
    return-void
.end method

.method private getAdRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/AdLoader$AdFetchException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 180
    iget-object v1, p0, Lcom/amazon/device/ads/AdLoader;->adRequest:Lcom/amazon/device/ads/AdRequest;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdRequest;->getWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 181
    .local v0, "request":Lcom/amazon/device/ads/WebRequest;
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 182
    return-object v0
.end method

.method private getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;
    .locals 4

    .prologue
    .line 474
    iget-object v3, p0, Lcom/amazon/device/ads/AdLoader;->compositeMetricsCollector:Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;

    if-nez v3, :cond_1

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v0, "collectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amazon/device/ads/MetricsCollector;>;"
    iget-object v3, p0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 479
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/amazon/device/ads/AdSlot;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/ads/AdSlot;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdSlot;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 481
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/amazon/device/ads/AdSlot;>;"
    :cond_0
    new-instance v3, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;

    invoke-direct {v3, v0}, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/amazon/device/ads/AdLoader;->compositeMetricsCollector:Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;

    .line 483
    .end local v0    # "collectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amazon/device/ads/MetricsCollector;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/amazon/device/ads/AdLoader;->compositeMetricsCollector:Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;

    return-object v3
.end method

.method private parseResponse(Lorg/json/JSONObject;)V
    .locals 42
    .param p1, "jsonResponse"    # Lorg/json/JSONObject;

    .prologue
    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLoader;->systemTime:Lcom/amazon/device/ads/SystemTime;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/amazon/device/ads/SystemTime;->currentTimeMillis()J

    move-result-wide v16

    .line 206
    .local v16, "currentTime":J
    const-string v37, "status"

    const/16 v38, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 208
    .local v36, "status":Ljava/lang/String;
    new-instance v35, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 209
    .local v35, "slotsNotReceived":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/amazon/device/ads/AdLoader;->getAdError(Lorg/json/JSONObject;)Lcom/amazon/device/ads/AdError;

    move-result-object v6

    .line 210
    .local v6, "adError":Lcom/amazon/device/ads/AdError;
    const-string v37, "errorCode"

    const-string v38, "No Ad Received"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 211
    .local v19, "errorCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLoader;->adRequest:Lcom/amazon/device/ads/AdRequest;

    move-object/from16 v37, v0

    const-string v38, "instrPixelURL"

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lcom/amazon/device/ads/AdRequest;->setInstrumentationPixelURL(Ljava/lang/String;)V

    .line 213
    if-eqz v36, :cond_d

    const-string v37, "ok"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_d

    .line 215
    const-string v37, "ads"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/amazon/device/ads/JSONUtils;->getJSONArrayFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 216
    .local v11, "adsArray":Lorg/json/JSONArray;
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v37

    move/from16 v0, v24

    move/from16 v1, v37

    if-ge v0, v1, :cond_d

    .line 218
    move/from16 v0, v24

    invoke-static {v11, v0}, Lcom/amazon/device/ads/JSONUtils;->getJSONObjectFromJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v33

    .line 219
    .local v33, "slot":Lorg/json/JSONObject;
    if-nez v33, :cond_1

    .line 216
    :cond_0
    :goto_1
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 223
    :cond_1
    const-string v37, "slotId"

    const/16 v38, -0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v34

    .line 224
    .local v34, "slotId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    move-object/from16 v37, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/device/ads/AdSlot;

    .line 225
    .local v9, "adSlot":Lcom/amazon/device/ads/AdSlot;
    if-eqz v9, :cond_0

    .line 227
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 228
    const-string v37, "instrPixelURL"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLoader;->adRequest:Lcom/amazon/device/ads/AdRequest;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/amazon/device/ads/AdRequest;->getInstrumentationPixelURL()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, "adPixelUrl":Ljava/lang/String;
    new-instance v5, Lcom/amazon/device/ads/AdData;

    invoke-direct {v5}, Lcom/amazon/device/ads/AdData;-><init>()V

    .line 230
    .local v5, "adData":Lcom/amazon/device/ads/AdData;
    invoke-virtual {v5, v8}, Lcom/amazon/device/ads/AdData;->setInstrumentationPixelUrl(Ljava/lang/String;)V

    .line 231
    const-string v37, "impPixelURL"

    const/16 v38, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 232
    .local v26, "impPixelUrl":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/amazon/device/ads/AdData;->setImpressionPixelUrl(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v9}, Lcom/amazon/device/ads/AdSlot;->getRequestedAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result v37

    if-eqz v37, :cond_2

    .line 235
    invoke-virtual {v9}, Lcom/amazon/device/ads/AdSlot;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v37

    sget-object v38, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_AUTO_AD_SIZE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual/range {v37 .. v38}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 237
    :cond_2
    const-string v37, "html"

    const-string v38, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 239
    .local v12, "creative":Ljava/lang/String;
    const-string v37, "creativeTypes"

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/amazon/device/ads/JSONUtils;->getJSONArrayFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 241
    .local v15, "creativeTypes":Lorg/json/JSONArray;
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 242
    .local v13, "creativeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/amazon/device/ads/AAXCreative;>;"
    if-eqz v15, :cond_4

    .line 244
    const/16 v27, 0x0

    .local v27, "j":I
    :goto_2
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v37

    move/from16 v0, v27

    move/from16 v1, v37

    if-ge v0, v1, :cond_4

    .line 246
    const/16 v37, 0x0

    move/from16 v0, v27

    move/from16 v1, v37

    invoke-static {v15, v0, v1}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSONArray(Lorg/json/JSONArray;II)I

    move-result v14

    .line 247
    .local v14, "creativeType":I
    invoke-static {v14}, Lcom/amazon/device/ads/AAXCreative;->getCreativeType(I)Lcom/amazon/device/ads/AAXCreative;

    move-result-object v4

    .line 251
    .local v4, "aaxCreative":Lcom/amazon/device/ads/AAXCreative;
    if-eqz v4, :cond_3

    .line 253
    invoke-virtual {v13, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 244
    :goto_3
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 257
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object/from16 v37, v0

    const-string v38, "%d is not a recognized creative type."

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-virtual/range {v37 .. v39}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 262
    .end local v4    # "aaxCreative":Lcom/amazon/device/ads/AAXCreative;
    .end local v14    # "creativeType":I
    .end local v27    # "j":I
    :cond_4
    invoke-static {v13}, Lcom/amazon/device/ads/AAXCreative;->containsPrimaryCreativeType(Ljava/util/Set;)Z

    move-result v37

    if-nez v37, :cond_5

    .line 265
    const-string v28, "No valid creative types found"

    .line 266
    .local v28, "msg":Ljava/lang/String;
    new-instance v37, Lcom/amazon/device/ads/AdError;

    sget-object v38, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v39, "No valid creative types found"

    invoke-direct/range {v37 .. v39}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Lcom/amazon/device/ads/AdSlot;->setAdError(Lcom/amazon/device/ads/AdError;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object/from16 v37, v0

    const-string v38, "No valid creative types found"

    invoke-virtual/range {v37 .. v38}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 271
    .end local v28    # "msg":Ljava/lang/String;
    :cond_5
    const-string v37, "size"

    const-string v38, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 273
    .local v30, "size":Ljava/lang/String;
    if-eqz v30, :cond_7

    const-string v37, "9999x9999"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_6

    const-string v37, "interstitial"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_7

    :cond_6
    sget-object v37, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_7

    .line 275
    sget-object v37, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_7
    const/4 v10, 0x0

    .line 278
    .local v10, "adWidth":I
    const/4 v7, 0x0

    .line 279
    .local v7, "adHeight":I
    sget-object v37, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_b

    .line 281
    const/16 v31, 0x0

    .line 282
    .local v31, "sizeIsInvalid":Z
    if-eqz v30, :cond_9

    const-string v37, "x"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 283
    .local v32, "sizes":[Ljava/lang/String;
    :goto_4
    if-eqz v32, :cond_8

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_a

    .line 285
    :cond_8
    const/16 v31, 0x1

    .line 299
    :goto_5
    if-eqz v31, :cond_b

    .line 302
    const-string v28, "Server returned an invalid ad size"

    .line 303
    .restart local v28    # "msg":Ljava/lang/String;
    new-instance v37, Lcom/amazon/device/ads/AdError;

    sget-object v38, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v39, "Server returned an invalid ad size"

    invoke-direct/range {v37 .. v39}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Lcom/amazon/device/ads/AdSlot;->setAdError(Lcom/amazon/device/ads/AdError;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object/from16 v37, v0

    const-string v38, "Server returned an invalid ad size"

    invoke-virtual/range {v37 .. v38}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 282
    .end local v28    # "msg":Ljava/lang/String;
    .end local v32    # "sizes":[Ljava/lang/String;
    :cond_9
    const/16 v32, 0x0

    goto :goto_4

    .line 291
    .restart local v32    # "sizes":[Ljava/lang/String;
    :cond_a
    const/16 v37, 0x0

    :try_start_0
    aget-object v37, v32, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 292
    const/16 v37, 0x1

    aget-object v37, v32, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_5

    .line 294
    :catch_0
    move-exception v18

    .line 296
    .local v18, "e":Ljava/lang/NumberFormatException;
    const/16 v31, 0x1

    goto :goto_5

    .line 308
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    .end local v31    # "sizeIsInvalid":Z
    .end local v32    # "sizes":[Ljava/lang/String;
    :cond_b
    const-string v37, "cacheTTL"

    const-wide/16 v38, -0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/device/ads/JSONUtils;->getLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v20

    .line 309
    .local v20, "expiration":J
    const-wide/16 v38, -0x1

    cmp-long v37, v20, v38

    if-lez v37, :cond_c

    .line 311
    const-wide/16 v38, 0x3e8

    mul-long v38, v38, v20

    add-long v22, v16, v38

    .line 312
    .local v22, "expirationTimeMs":J
    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Lcom/amazon/device/ads/AdData;->setExpirationTimeMillis(J)V

    .line 315
    .end local v22    # "expirationTimeMs":J
    :cond_c
    new-instance v29, Lcom/amazon/device/ads/AdProperties;

    move-object/from16 v0, v29

    invoke-direct {v0, v15}, Lcom/amazon/device/ads/AdProperties;-><init>(Lorg/json/JSONArray;)V

    .line 317
    .local v29, "props":Lcom/amazon/device/ads/AdProperties;
    invoke-virtual {v5, v7}, Lcom/amazon/device/ads/AdData;->setHeight(I)V

    .line 318
    invoke-virtual {v5, v10}, Lcom/amazon/device/ads/AdData;->setWidth(I)V

    .line 319
    invoke-virtual {v5, v12}, Lcom/amazon/device/ads/AdData;->setCreative(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v5, v13}, Lcom/amazon/device/ads/AdData;->setCreativeTypes(Ljava/util/Set;)V

    .line 321
    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/amazon/device/ads/AdData;->setProperties(Lcom/amazon/device/ads/AdProperties;)V

    .line 322
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Lcom/amazon/device/ads/AdData;->setFetched(Z)V

    .line 323
    invoke-virtual {v9, v5}, Lcom/amazon/device/ads/AdSlot;->setAdData(Lcom/amazon/device/ads/AdData;)V

    goto/16 :goto_1

    .line 327
    .end local v5    # "adData":Lcom/amazon/device/ads/AdData;
    .end local v7    # "adHeight":I
    .end local v8    # "adPixelUrl":Ljava/lang/String;
    .end local v9    # "adSlot":Lcom/amazon/device/ads/AdSlot;
    .end local v10    # "adWidth":I
    .end local v11    # "adsArray":Lorg/json/JSONArray;
    .end local v12    # "creative":Ljava/lang/String;
    .end local v13    # "creativeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/amazon/device/ads/AAXCreative;>;"
    .end local v15    # "creativeTypes":Lorg/json/JSONArray;
    .end local v20    # "expiration":J
    .end local v24    # "i":I
    .end local v26    # "impPixelUrl":Ljava/lang/String;
    .end local v29    # "props":Lcom/amazon/device/ads/AdProperties;
    .end local v30    # "size":Ljava/lang/String;
    .end local v33    # "slot":Lorg/json/JSONObject;
    .end local v34    # "slotId":I
    :cond_d
    invoke-virtual/range {v35 .. v35}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_e

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 329
    .local v34, "slotId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/amazon/device/ads/AdSlot;

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lcom/amazon/device/ads/AdSlot;->setAdError(Lcom/amazon/device/ads/AdError;)V

    .line 330
    new-instance v5, Lcom/amazon/device/ads/AdData;

    invoke-direct {v5}, Lcom/amazon/device/ads/AdData;-><init>()V

    .line 331
    .restart local v5    # "adData":Lcom/amazon/device/ads/AdData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLoader;->adRequest:Lcom/amazon/device/ads/AdRequest;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/amazon/device/ads/AdRequest;->getInstrumentationPixelURL()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Lcom/amazon/device/ads/AdData;->setInstrumentationPixelUrl(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/amazon/device/ads/AdSlot;

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/amazon/device/ads/AdSlot;->setAdData(Lcom/amazon/device/ads/AdData;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object/from16 v37, v0

    const-string v38, "%s; code: %s"

    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual {v6}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x1

    aput-object v19, v39, v40

    invoke-virtual/range {v37 .. v39}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 335
    .end local v5    # "adData":Lcom/amazon/device/ads/AdData;
    .end local v34    # "slotId":Ljava/lang/Integer;
    :cond_e
    return-void
.end method

.method private setErrorForAllSlots(Lcom/amazon/device/ads/AdError;)V
    .locals 3
    .param p1, "error"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 373
    iget-object v2, p0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/ads/AdSlot;

    .line 375
    .local v1, "slot":Lcom/amazon/device/ads/AdSlot;
    invoke-virtual {v1, p1}, Lcom/amazon/device/ads/AdSlot;->setAdError(Lcom/amazon/device/ads/AdError;)V

    goto :goto_0

    .line 377
    .end local v1    # "slot":Lcom/amazon/device/ads/AdSlot;
    :cond_0
    return-void
.end method


# virtual methods
.method public beginFetchAd()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 91
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 92
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLoader;->startFetchAdThread()V

    .line 93
    return-void
.end method

.method protected fetchAd()V
    .locals 7

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 126
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 130
    iget-object v4, p0, Lcom/amazon/device/ads/AdLoader;->assets:Lcom/amazon/device/ads/Assets;

    invoke-virtual {v4}, Lcom/amazon/device/ads/Assets;->ensureAssetsCreated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    const-string v2, "Unable to create the assets needed to display ads"

    .line 134
    .local v2, "msg":Ljava/lang/String;
    new-instance v4, Lcom/amazon/device/ads/AdError;

    sget-object v5, Lcom/amazon/device/ads/AdError$ErrorCode;->REQUEST_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v6, "Unable to create the assets needed to display ads"

    invoke-direct {v4, v5, v6}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    .line 135
    iget-object v4, p0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "Unable to create the assets needed to display ads"

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    invoke-direct {p0, v4}, Lcom/amazon/device/ads/AdLoader;->setErrorForAllSlots(Lcom/amazon/device/ads/AdError;)V

    .line 175
    .end local v2    # "msg":Ljava/lang/String;
    :goto_0
    return-void

    .line 143
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLoader;->fetchResponseFromNetwork()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/AdLoader$AdFetchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 153
    .local v3, "response":Lcom/amazon/device/ads/WebRequest$WebResponse;
    invoke-virtual {v3}, Lcom/amazon/device/ads/WebRequest$WebResponse;->isHttpStatusCodeOK()Z

    move-result v4

    if-nez v4, :cond_1

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v4, Lcom/amazon/device/ads/AdError;

    sget-object v5, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-direct {v4, v5, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    .line 157
    iget-object v4, p0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v4, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    invoke-direct {p0, v4}, Lcom/amazon/device/ads/AdLoader;->setErrorForAllSlots(Lcom/amazon/device/ads/AdError;)V

    goto :goto_0

    .line 145
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "response":Lcom/amazon/device/ads/WebRequest$WebResponse;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lcom/amazon/device/ads/AdLoader$AdFetchException;
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLoader$AdFetchException;->getAdError()Lcom/amazon/device/ads/AdError;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    .line 148
    iget-object v4, p0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLoader$AdFetchException;->getAdError()Lcom/amazon/device/ads/AdError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    invoke-direct {p0, v4}, Lcom/amazon/device/ads/AdLoader;->setErrorForAllSlots(Lcom/amazon/device/ads/AdError;)V

    goto :goto_0

    .line 162
    .end local v0    # "e":Lcom/amazon/device/ads/AdLoader$AdFetchException;
    .restart local v3    # "response":Lcom/amazon/device/ads/WebRequest$WebResponse;
    :cond_1
    invoke-virtual {v3}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/ResponseReader;->readAsJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 163
    .local v1, "jsonResponse":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 165
    const-string v2, "Unable to parse response"

    .line 166
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v4, Lcom/amazon/device/ads/AdError;

    sget-object v5, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v6, "Unable to parse response"

    invoke-direct {v4, v5, v6}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    .line 167
    iget-object v4, p0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "Unable to parse response"

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 168
    iget-object v4, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    invoke-direct {p0, v4}, Lcom/amazon/device/ads/AdLoader;->setErrorForAllSlots(Lcom/amazon/device/ads/AdError;)V

    goto :goto_0

    .line 171
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/AdLoader;->parseResponse(Lorg/json/JSONObject;)V

    .line 173
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 174
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    goto/16 :goto_0
.end method

.method protected fetchResponseFromNetwork()Lcom/amazon/device/ads/WebRequest$WebResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/AdLoader$AdFetchException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getAdRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v2

    .line 437
    .local v2, "request":Lcom/amazon/device/ads/WebRequest;
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/WebRequest;->setMetricsCollector(Lcom/amazon/device/ads/MetricsCollector;)V

    .line 438
    sget-object v4, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_LATENCY_GET_AD:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/WebRequest;->setServiceCallLatencyMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 439
    iget v4, p0, Lcom/amazon/device/ads/AdLoader;->timeout:I

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/WebRequest;->setTimeout(I)V

    .line 442
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/WebRequest;->setDisconnectEnabled(Z)V

    .line 444
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 445
    const/4 v3, 0x0

    .line 446
    .local v3, "response":Lcom/amazon/device/ads/WebRequest$WebResponse;
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/Metrics$MetricType;->TLS_ENABLED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 449
    :try_start_0
    invoke-virtual {v2}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 468
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 469
    return-object v3

    .line 451
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Lcom/amazon/device/ads/WebRequest$WebRequestException;
    const/4 v1, 0x0

    .line 454
    .local v1, "error":Lcom/amazon/device/ads/AdError;
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getStatus()Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    if-ne v4, v5, :cond_0

    .line 456
    new-instance v1, Lcom/amazon/device/ads/AdError;

    .end local v1    # "error":Lcom/amazon/device/ads/AdError;
    sget-object v4, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v5, "Could not contact Ad Server"

    invoke-direct {v1, v4, v5}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    .line 466
    .restart local v1    # "error":Lcom/amazon/device/ads/AdError;
    :goto_0
    new-instance v4, Lcom/amazon/device/ads/AdLoader$AdFetchException;

    invoke-direct {v4, p0, v1}, Lcom/amazon/device/ads/AdLoader$AdFetchException;-><init>(Lcom/amazon/device/ads/AdLoader;Lcom/amazon/device/ads/AdError;)V

    throw v4

    .line 458
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getStatus()Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    if-ne v4, v5, :cond_1

    .line 460
    new-instance v1, Lcom/amazon/device/ads/AdError;

    .end local v1    # "error":Lcom/amazon/device/ads/AdError;
    sget-object v4, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v5, "Connection to Ad Server timed out"

    invoke-direct {v1, v4, v5}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    .restart local v1    # "error":Lcom/amazon/device/ads/AdError;
    goto :goto_0

    .line 464
    :cond_1
    new-instance v1, Lcom/amazon/device/ads/AdError;

    .end local v1    # "error":Lcom/amazon/device/ads/AdError;
    sget-object v4, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    .restart local v1    # "error":Lcom/amazon/device/ads/AdError;
    goto :goto_0
.end method

.method protected finalizeFetchAd()V
    .locals 6

    .prologue
    .line 397
    iget-object v3, p0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 399
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/amazon/device/ads/AdSlot;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/ads/AdSlot;

    .line 401
    .local v2, "slot":Lcom/amazon/device/ads/AdSlot;
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSlot;->canBeUsed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 403
    iget-object v3, p0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "Ad object was destroyed before ad fetching could be finalized. Ad fetching has been aborted."

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSlot;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v3

    sget-object v4, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 408
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSlot;->isFetched()Z

    move-result v3

    if-nez v3, :cond_2

    .line 410
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSlot;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v3

    sget-object v4, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 411
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSlot;->getAdError()Lcom/amazon/device/ads/AdError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 413
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSlot;->getAdError()Lcom/amazon/device/ads/AdError;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdSlot;->adFailed(Lcom/amazon/device/ads/AdError;)V

    goto :goto_0

    .line 418
    :cond_1
    new-instance v3, Lcom/amazon/device/ads/AdError;

    sget-object v4, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v5, "Unknown error occurred."

    invoke-direct {v3, v4, v5}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdSlot;->adFailed(Lcom/amazon/device/ads/AdError;)V

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSlot;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v3

    sget-object v4, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 424
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSlot;->initializeAd()V

    goto :goto_0

    .line 427
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/amazon/device/ads/AdSlot;>;"
    .end local v2    # "slot":Lcom/amazon/device/ads/AdSlot;
    :cond_3
    return-void
.end method

.method protected getAdError(Lorg/json/JSONObject;)Lcom/amazon/device/ads/AdError;
    .locals 8
    .param p1, "jsonResponse"    # Lorg/json/JSONObject;

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLoader;->retrieveNoRetryTtlSeconds(Lorg/json/JSONObject;)I

    move-result v3

    .line 341
    .local v3, "noRetryTtlSeconds":I
    iget-object v4, p0, Lcom/amazon/device/ads/AdLoader;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v4, v3}, Lcom/amazon/device/ads/MobileAdsInfoStore;->setNoRetryTtl(I)V

    .line 343
    const-string v4, "errorMessage"

    const-string v5, "No Ad Received"

    invoke-static {p1, v4, v5}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/amazon/device/ads/AdLoader;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    const-string v5, "DISABLED_APP"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MobileAdsInfoStore;->setIsAppDisabled(Z)V

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Server Message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "msg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 348
    .local v0, "adError":Lcom/amazon/device/ads/AdError;
    if-lez v3, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/Metrics$MetricType;->AD_NO_RETRY_TTL_RECEIVED:Lcom/amazon/device/ads/Metrics$MetricType;

    mul-int/lit16 v6, v3, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/amazon/device/ads/MetricsCollector;->publishMetricInMilliseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 353
    :cond_0
    if-lez v3, :cond_1

    iget-object v4, p0, Lcom/amazon/device/ads/AdLoader;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v4}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getIsAppDisabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Try again in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    new-instance v0, Lcom/amazon/device/ads/AdError;

    .end local v0    # "adError":Lcom/amazon/device/ads/AdError;
    sget-object v4, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-direct {v0, v4, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    .line 368
    .restart local v0    # "adError":Lcom/amazon/device/ads/AdError;
    :goto_0
    return-object v0

    .line 358
    :cond_1
    const-string v4, "no results"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    new-instance v0, Lcom/amazon/device/ads/AdError;

    .end local v0    # "adError":Lcom/amazon/device/ads/AdError;
    sget-object v4, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-direct {v0, v4, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    .restart local v0    # "adError":Lcom/amazon/device/ads/AdError;
    goto :goto_0

    .line 366
    :cond_2
    new-instance v0, Lcom/amazon/device/ads/AdError;

    .end local v0    # "adError":Lcom/amazon/device/ads/AdError;
    sget-object v4, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-direct {v0, v4, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    .restart local v0    # "adError":Lcom/amazon/device/ads/AdError;
    goto :goto_0
.end method

.method protected retrieveNoRetryTtlSeconds(Lorg/json/JSONObject;)I
    .locals 4
    .param p1, "jsonResponse"    # Lorg/json/JSONObject;

    .prologue
    .line 387
    const-string v1, "noretryTTL"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 388
    .local v0, "noRetryTtlSeconds":I
    iget-object v1, p0, Lcom/amazon/device/ads/AdLoader;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v2, "debug.noRetryTTL"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 389
    return v0
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/amazon/device/ads/AdLoader;->timeout:I

    .line 83
    return-void
.end method

.method protected startFetchAdThread()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/AdLoader$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/AdLoader$1;-><init>(Lcom/amazon/device/ads/AdLoader;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 106
    return-void
.end method
