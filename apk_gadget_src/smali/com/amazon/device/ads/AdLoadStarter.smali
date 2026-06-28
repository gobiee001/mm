.class Lcom/amazon/device/ads/AdLoadStarter;
.super Ljava/lang/Object;
.source "AdLoadStarter.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final adLoaderFactory:Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;

.field private final adRequestBuilder:Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;

.field private final advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private final systemTime:Lcom/amazon/device/ads/SystemTime;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/amazon/device/ads/AdLoadStarter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdLoadStarter;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    .line 38
    new-instance v1, Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;-><init>()V

    new-instance v2, Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-direct {v2}, Lcom/amazon/device/ads/AdvertisingIdentifier;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v3

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v4

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v5

    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v7}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v8, Lcom/amazon/device/ads/SystemTime;

    invoke-direct {v8}, Lcom/amazon/device/ads/SystemTime;-><init>()V

    new-instance v9, Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;

    invoke-direct {v9}, Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/amazon/device/ads/AdLoadStarter;-><init>(Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;)V
    .locals 1
    .param p1, "adLoaderFactory"    # Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;
    .param p2, "advertisingIdentifier"    # Lcom/amazon/device/ads/AdvertisingIdentifier;
    .param p3, "threadRunner"    # Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .param p4, "infoStore"    # Lcom/amazon/device/ads/MobileAdsInfoStore;
    .param p5, "settings"    # Lcom/amazon/device/ads/Settings;
    .param p6, "configuration"    # Lcom/amazon/device/ads/Configuration;
    .param p7, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p8, "systemTime"    # Lcom/amazon/device/ads/SystemTime;
    .param p9, "adRequestBuilder"    # Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/amazon/device/ads/AdLoadStarter;->adLoaderFactory:Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;

    .line 59
    sget-object v0, Lcom/amazon/device/ads/AdLoadStarter;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p7, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLoadStarter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 60
    iput-object p2, p0, Lcom/amazon/device/ads/AdLoadStarter;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    .line 61
    iput-object p4, p0, Lcom/amazon/device/ads/AdLoadStarter;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 62
    iput-object p5, p0, Lcom/amazon/device/ads/AdLoadStarter;->settings:Lcom/amazon/device/ads/Settings;

    .line 63
    iput-object p6, p0, Lcom/amazon/device/ads/AdLoadStarter;->configuration:Lcom/amazon/device/ads/Configuration;

    .line 64
    iput-object p3, p0, Lcom/amazon/device/ads/AdLoadStarter;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 65
    iput-object p8, p0, Lcom/amazon/device/ads/AdLoadStarter;->systemTime:Lcom/amazon/device/ads/SystemTime;

    .line 66
    iput-object p9, p0, Lcom/amazon/device/ads/AdLoadStarter;->adRequestBuilder:Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AdLoadStarter;)Lcom/amazon/device/ads/MobileAdsInfoStore;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/AdLoadStarter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoadStarter;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/AdLoadStarter;ILcom/amazon/device/ads/AdTargetingOptions;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/AdLoadStarter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/amazon/device/ads/AdTargetingOptions;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/AdLoadStarter;->beginFetchAds(ILcom/amazon/device/ads/AdTargetingOptions;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/AdLoadStarter;Lcom/amazon/device/ads/AdError;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/AdLoadStarter;
    .param p1, "x1"    # Lcom/amazon/device/ads/AdError;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/AdLoadStarter;->failAds(Lcom/amazon/device/ads/AdError;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/AdLoadStarter;)Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/AdLoadStarter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoadStarter;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    return-object v0
.end method

.method private beginFetchAds(ILcom/amazon/device/ads/AdTargetingOptions;Ljava/util/List;)V
    .locals 10
    .param p1, "timeout"    # I
    .param p2, "requestOptions"    # Lcom/amazon/device/ads/AdTargetingOptions;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/device/ads/AdTargetingOptions;",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/ads/AdSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p3, "adSlots":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/device/ads/AdSlot;>;"
    iget-object v7, p0, Lcom/amazon/device/ads/AdLoadStarter;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-virtual {v7}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v1

    .line 122
    .local v1, "advertisingIdentifierInfo":Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    invoke-virtual {v1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo()Z

    move-result v7

    if-nez v7, :cond_1

    .line 124
    new-instance v7, Lcom/amazon/device/ads/AdError;

    sget-object v8, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v9, "An internal request was not made on a background thread."

    invoke-direct {v7, v8, v9}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    invoke-direct {p0, v7, p3}, Lcom/amazon/device/ads/AdLoadStarter;->failAds(Lcom/amazon/device/ads/AdError;Ljava/util/List;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    if-nez p2, :cond_2

    .line 130
    new-instance p2, Lcom/amazon/device/ads/AdTargetingOptions;

    .end local p2    # "requestOptions":Lcom/amazon/device/ads/AdTargetingOptions;
    invoke-direct {p2}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 133
    .restart local p2    # "requestOptions":Lcom/amazon/device/ads/AdTargetingOptions;
    :cond_2
    iget-object v7, p0, Lcom/amazon/device/ads/AdLoadStarter;->adRequestBuilder:Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;

    invoke-virtual {v7, p2}, Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;->withAdTargetingOptions(Lcom/amazon/device/ads/AdTargetingOptions;)Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;->withAdvertisingIdentifierInfo(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;->build()Lcom/amazon/device/ads/AdRequest;

    move-result-object v4

    .line 134
    .local v4, "request":Lcom/amazon/device/ads/AdRequest;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v2, "goodAdSlots":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/amazon/device/ads/AdSlot;>;"
    const/4 v6, 0x1

    .line 136
    .local v6, "slotNumber":I
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/device/ads/AdSlot;

    .line 138
    .local v5, "slot":Lcom/amazon/device/ads/AdSlot;
    invoke-virtual {v5}, Lcom/amazon/device/ads/AdSlot;->isValid()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 140
    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/AdSlot;->setSlotNumber(I)V

    .line 141
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/AdRequest;->putSlot(Lcom/amazon/device/ads/AdSlot;)V

    .line 143
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 147
    .end local v5    # "slot":Lcom/amazon/device/ads/AdSlot;
    :cond_4
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 149
    iget-object v7, p0, Lcom/amazon/device/ads/AdLoadStarter;->adLoaderFactory:Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;

    invoke-virtual {v7, v4, v2}, Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;->createAdLoader(Lcom/amazon/device/ads/AdRequest;Ljava/util/Map;)Lcom/amazon/device/ads/AdLoader;

    move-result-object v0

    .line 150
    .local v0, "adLoader":Lcom/amazon/device/ads/AdLoader;
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdLoader;->setTimeout(I)V

    .line 151
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLoader;->beginFetchAd()V

    goto :goto_0
.end method

.method private failAds(Lcom/amazon/device/ads/AdError;Ljava/util/List;)V
    .locals 8
    .param p1, "adError"    # Lcom/amazon/device/ads/AdError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/AdError;",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/ads/AdSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p2, "adSlots":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/device/ads/AdSlot;>;"
    const/4 v0, 0x0

    .line 164
    .local v0, "adFailCount":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/ads/AdSlot;

    .line 166
    .local v2, "slot":Lcom/amazon/device/ads/AdSlot;
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSlot;->getSlotNumber()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 168
    invoke-virtual {v2, p1}, Lcom/amazon/device/ads/AdSlot;->adFailed(Lcom/amazon/device/ads/AdError;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v2    # "slot":Lcom/amazon/device/ads/AdSlot;
    :cond_1
    if-lez v0, :cond_2

    .line 174
    iget-object v3, p0, Lcom/amazon/device/ads/AdLoadStarter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "%s; code: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_2
    return-void
.end method

.method private isNoRetry([Lcom/amazon/device/ads/AdSlot;)Z
    .locals 7
    .param p1, "adSlots"    # [Lcom/amazon/device/ads/AdSlot;

    .prologue
    .line 180
    iget-object v5, p0, Lcom/amazon/device/ads/AdLoadStarter;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v5}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getNoRetryTtlRemainingMillis()I

    move-result v3

    .line 181
    .local v3, "noRetryTtlRemainingMillis":I
    if-lez v3, :cond_1

    .line 183
    div-int/lit16 v4, v3, 0x3e8

    .line 184
    .local v4, "noRetryTtlRemainingSecs":I
    const-string v2, "SDK Message: "

    .line 186
    .local v2, "errorMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/amazon/device/ads/AdLoadStarter;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v5}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getIsAppDisabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "DISABLED_APP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    .line 196
    .local v1, "errorCode":Lcom/amazon/device/ads/AdError$ErrorCode;
    :goto_0
    new-instance v0, Lcom/amazon/device/ads/AdError;

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    .line 197
    .local v0, "adError":Lcom/amazon/device/ads/AdError;
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v5}, Lcom/amazon/device/ads/AdLoadStarter;->failAds(Lcom/amazon/device/ads/AdError;Ljava/util/List;)V

    .line 198
    const/4 v5, 0x1

    .line 200
    .end local v0    # "adError":Lcom/amazon/device/ads/AdError;
    .end local v1    # "errorCode":Lcom/amazon/device/ads/AdError$ErrorCode;
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v4    # "noRetryTtlRemainingSecs":I
    :goto_1
    return v5

    .line 193
    .restart local v2    # "errorMessage":Ljava/lang/String;
    .restart local v4    # "noRetryTtlRemainingSecs":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "no results. Try again in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    .restart local v1    # "errorCode":Lcom/amazon/device/ads/AdError$ErrorCode;
    goto :goto_0

    .line 200
    .end local v1    # "errorCode":Lcom/amazon/device/ads/AdError$ErrorCode;
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v4    # "noRetryTtlRemainingSecs":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public varargs loadAds(ILcom/amazon/device/ads/AdTargetingOptions;[Lcom/amazon/device/ads/AdSlot;)V
    .locals 16
    .param p1, "timeout"    # I
    .param p2, "requestOptions"    # Lcom/amazon/device/ads/AdTargetingOptions;
    .param p3, "adSlots"    # [Lcom/amazon/device/ads/AdSlot;

    .prologue
    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdLoadStarter;->isNoRetry([Lcom/amazon/device/ads/AdSlot;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    :goto_0
    return-void

    .line 75
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazon/device/ads/AdLoadStarter;->systemTime:Lcom/amazon/device/ads/SystemTime;

    invoke-virtual {v3}, Lcom/amazon/device/ads/SystemTime;->nanoTime()J

    move-result-wide v14

    .line 76
    .local v14, "loadAdStartTime":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v8, "requestAdSlots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amazon/device/ads/AdSlot;>;"
    move-object/from16 v10, p3

    .local v10, "arr$":[Lcom/amazon/device/ads/AdSlot;
    array-length v12, v10

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_2

    aget-object v9, v10, v11

    .line 79
    .local v9, "adSlot":Lcom/amazon/device/ads/AdSlot;
    invoke-virtual {v9, v14, v15}, Lcom/amazon/device/ads/AdSlot;->prepareForAdLoad(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 84
    .end local v9    # "adSlot":Lcom/amazon/device/ads/AdSlot;
    :cond_2
    new-instance v2, Lcom/amazon/device/ads/AdLoadStarter$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazon/device/ads/AdLoadStarter;->settings:Lcom/amazon/device/ads/Settings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/device/ads/AdLoadStarter;->configuration:Lcom/amazon/device/ads/Configuration;

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/amazon/device/ads/AdLoadStarter$1;-><init>(Lcom/amazon/device/ads/AdLoadStarter;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;ILcom/amazon/device/ads/AdTargetingOptions;Ljava/util/ArrayList;)V

    .line 108
    .local v2, "waiter":Lcom/amazon/device/ads/StartUpWaiter;
    invoke-virtual {v2}, Lcom/amazon/device/ads/StartUpWaiter;->start()V

    goto :goto_0
.end method
