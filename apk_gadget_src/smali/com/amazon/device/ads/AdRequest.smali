.class Lcom/amazon/device/ads/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;,
        Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;,
        Lcom/amazon/device/ads/AdRequest$LOISlot;
    }
.end annotation


# static fields
.field private static final AAX_ENDPOINT:Ljava/lang/String; = "/e/msdk/ads"

.field private static final LOGTAG:Ljava/lang/String;

.field private static final PARAMETERS:[Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/amazon/device/ads/AAXParameter",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final connectionInfo:Lcom/amazon/device/ads/ConnectionInfo;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private instrPixelUrl:Ljava/lang/String;

.field private final jsonObjectBuilder:Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final opt:Lcom/amazon/device/ads/AdTargetingOptions;

.field private final orientation:Ljava/lang/String;

.field protected final slots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/device/ads/AdRequest$LOISlot;",
            ">;"
        }
    .end annotation
.end field

.field private final webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-class v0, Lcom/amazon/device/ads/AdRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdRequest;->LOGTAG:Ljava/lang/String;

    .line 29
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/amazon/device/ads/AAXParameter;

    const/4 v1, 0x0

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->APP_KEY:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->CHANNEL:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->PUBLISHER_KEYWORDS:Lcom/amazon/device/ads/AAXParameter$PublisherKeywordsParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->PUBLISHER_ASINS:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->USER_AGENT:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->SDK_VERSION:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->GEOLOCATION:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->DEVICE_INFO:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->PACKAGE_INFO:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->TEST:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->SIS_DEVICE_IDENTIFIER:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->SHA1_UDID:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->MD5_UDID:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->ADVERTISING_IDENTIFIER:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->OPT_OUT:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/device/ads/AdRequest;->PARAMETERS:[Lcom/amazon/device/ads/AAXParameter;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdTargetingOptions;)V
    .locals 7
    .param p1, "opt"    # Lcom/amazon/device/ads/AdTargetingOptions;

    .prologue
    .line 67
    new-instance v2, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-direct {v2}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v3

    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v4

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v5

    new-instance v6, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v6}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/ads/AdRequest;-><init>(Lcom/amazon/device/ads/AdTargetingOptions;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdTargetingOptions;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 5
    .param p1, "opt"    # Lcom/amazon/device/ads/AdTargetingOptions;
    .param p2, "webRequestFactory"    # Lcom/amazon/device/ads/WebRequest$WebRequestFactory;
    .param p3, "infoStore"    # Lcom/amazon/device/ads/MobileAdsInfoStore;
    .param p4, "configuration"    # Lcom/amazon/device/ads/Configuration;
    .param p5, "debugProperties"    # Lcom/amazon/device/ads/DebugProperties;
    .param p6, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/amazon/device/ads/AdRequest;->opt:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 82
    iput-object p2, p0, Lcom/amazon/device/ads/AdRequest;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    .line 84
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/amazon/device/ads/AdRequest;->slots:Ljava/util/Map;

    .line 85
    invoke-virtual {p3}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v1

    .line 86
    .local v1, "deviceInfo":Lcom/amazon/device/ads/DeviceInfo;
    invoke-virtual {v1}, Lcom/amazon/device/ads/DeviceInfo;->getOrientation()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/device/ads/AdRequest;->orientation:Ljava/lang/String;

    .line 87
    new-instance v3, Lcom/amazon/device/ads/ConnectionInfo;

    invoke-direct {v3, p3}, Lcom/amazon/device/ads/ConnectionInfo;-><init>(Lcom/amazon/device/ads/MobileAdsInfoStore;)V

    iput-object v3, p0, Lcom/amazon/device/ads/AdRequest;->connectionInfo:Lcom/amazon/device/ads/ConnectionInfo;

    .line 88
    iput-object p4, p0, Lcom/amazon/device/ads/AdRequest;->configuration:Lcom/amazon/device/ads/Configuration;

    .line 89
    iput-object p5, p0, Lcom/amazon/device/ads/AdRequest;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 90
    sget-object v3, Lcom/amazon/device/ads/AdRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p6, v3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/device/ads/AdRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 92
    iget-object v3, p0, Lcom/amazon/device/ads/AdRequest;->opt:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdTargetingOptions;->getCopyOfAdvancedOptions()Ljava/util/HashMap;

    move-result-object v0

    .line 93
    .local v0, "advancedOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-direct {v3}, Lcom/amazon/device/ads/AAXParameter$ParameterData;-><init>()V

    iget-object v4, p0, Lcom/amazon/device/ads/AdRequest;->opt:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->setAdTargetingOptions(Lcom/amazon/device/ads/AdTargetingOptions;)Lcom/amazon/device/ads/AAXParameter$ParameterData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->setAdvancedOptions(Ljava/util/Map;)Lcom/amazon/device/ads/AAXParameter$ParameterData;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->setAdRequest(Lcom/amazon/device/ads/AdRequest;)Lcom/amazon/device/ads/AAXParameter$ParameterData;

    move-result-object v2

    .line 97
    .local v2, "parameterData":Lcom/amazon/device/ads/AAXParameter$ParameterData;
    new-instance v3, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    iget-object v4, p0, Lcom/amazon/device/ads/AdRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-direct {v3, v4}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;-><init>(Lcom/amazon/device/ads/MobileAdsLogger;)V

    sget-object v4, Lcom/amazon/device/ads/AdRequest;->PARAMETERS:[Lcom/amazon/device/ads/AAXParameter;

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->setAAXParameters([Lcom/amazon/device/ads/AAXParameter;)Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->setAdvancedOptions(Ljava/util/Map;)Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->setParameterData(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/device/ads/AdRequest;->jsonObjectBuilder:Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    .line 101
    return-void
.end method

.method private isSSLRequired()Z
    .locals 4

    .prologue
    .line 187
    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->SEND_GEO:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/Configuration;->getBoolean(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z

    move-result v0

    .line 188
    .local v0, "configSendGeo":Z
    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->TRUNCATE_LAT_LON:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/Configuration;->getBoolean(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z

    move-result v1

    .line 189
    .local v1, "configTruncateLatLong":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRequest;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdTargetingOptions;->isGeoLocationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest;->opt:Lcom/amazon/device/ads/AdTargetingOptions;

    return-object v0
.end method

.method getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    return-object v0
.end method

.method public getInstrumentationPixelURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest;->instrPixelUrl:Ljava/lang/String;

    return-object v0
.end method

.method getOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest;->orientation:Ljava/lang/String;

    return-object v0
.end method

.method protected getSlots()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 152
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 153
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/amazon/device/ads/AdRequest;->slots:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/ads/AdRequest$LOISlot;

    .line 155
    .local v2, "slot":Lcom/amazon/device/ads/AdRequest$LOISlot;
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 158
    .end local v2    # "slot":Lcom/amazon/device/ads/AdRequest$LOISlot;
    :cond_0
    return-object v0
.end method

.method public getWebRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    iget-object v1, p0, Lcom/amazon/device/ads/AdRequest;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 170
    .local v0, "request":Lcom/amazon/device/ads/WebRequest;
    invoke-direct {p0}, Lcom/amazon/device/ads/AdRequest;->isSSLRequired()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest;->getUseSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setUseSecure(Z)V

    .line 171
    sget-object v1, Lcom/amazon/device/ads/AdRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setExternalLogTag(Ljava/lang/String;)V

    .line 172
    sget-object v1, Lcom/amazon/device/ads/WebRequest$HttpMethod;->POST:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setHttpMethod(Lcom/amazon/device/ads/WebRequest$HttpMethod;)V

    .line 173
    iget-object v1, p0, Lcom/amazon/device/ads/AdRequest;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v4, Lcom/amazon/device/ads/Configuration$ConfigOption;->AAX_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v1, v4}, Lcom/amazon/device/ads/Configuration;->getString(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setHost(Ljava/lang/String;)V

    .line 174
    const-string v1, "/e/msdk/ads"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setPath(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, v3}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 176
    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setContentType(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/WebRequest;->setDisconnectEnabled(Z)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdRequest;->setParametersInWebRequest(Lcom/amazon/device/ads/WebRequest;)V

    .line 182
    return-object v0

    :cond_1
    move v1, v2

    .line 170
    goto :goto_0
.end method

.method public putSlot(Lcom/amazon/device/ads/AdSlot;)V
    .locals 3
    .param p1, "adSlot"    # Lcom/amazon/device/ads/AdSlot;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRequest;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->hasSISDeviceIdentifier()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdSlot;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_IDENTIFIED_DEVICE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/AdRequest;->connectionInfo:Lcom/amazon/device/ads/ConnectionInfo;

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/AdSlot;->setConnectionInfo(Lcom/amazon/device/ads/ConnectionInfo;)V

    .line 143
    new-instance v0, Lcom/amazon/device/ads/AdRequest$LOISlot;

    iget-object v1, p0, Lcom/amazon/device/ads/AdRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-direct {v0, p1, p0, v1}, Lcom/amazon/device/ads/AdRequest$LOISlot;-><init>(Lcom/amazon/device/ads/AdSlot;Lcom/amazon/device/ads/AdRequest;Lcom/amazon/device/ads/MobileAdsLogger;)V

    .line 144
    .local v0, "slot":Lcom/amazon/device/ads/AdRequest$LOISlot;
    iget-object v1, p0, Lcom/amazon/device/ads/AdRequest;->slots:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdSlot;->getSlotNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method setAdvertisingIdentifierInfo(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)Lcom/amazon/device/ads/AdRequest;
    .locals 0
    .param p1, "advertisingIdentifierInfo"    # Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/amazon/device/ads/AdRequest;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    .line 132
    return-object p0
.end method

.method public setInstrumentationPixelURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "instrPixelUrl"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/amazon/device/ads/AdRequest;->instrPixelUrl:Ljava/lang/String;

    .line 106
    return-void
.end method

.method protected setParametersInWebRequest(Lcom/amazon/device/ads/WebRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/amazon/device/ads/WebRequest;

    .prologue
    .line 194
    iget-object v3, p0, Lcom/amazon/device/ads/AdRequest;->jsonObjectBuilder:Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->build()V

    .line 197
    sget-object v3, Lcom/amazon/device/ads/AAXParameter;->SLOTS:Lcom/amazon/device/ads/AAXParameter;

    iget-object v4, p0, Lcom/amazon/device/ads/AdRequest;->jsonObjectBuilder:Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->getParameterData()Lcom/amazon/device/ads/AAXParameter$ParameterData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/AAXParameter;->getValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;

    move-result-object v2

    .line 198
    .local v2, "slots":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRequest;->getSlots()Lorg/json/JSONArray;

    move-result-object v2

    .line 202
    .end local v2    # "slots":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/amazon/device/ads/AdRequest;->jsonObjectBuilder:Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    sget-object v4, Lcom/amazon/device/ads/AAXParameter;->SLOTS:Lcom/amazon/device/ads/AAXParameter;

    invoke-virtual {v3, v4, v2}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->putIntoJSON(Lcom/amazon/device/ads/AAXParameter;Ljava/lang/Object;)V

    .line 203
    iget-object v3, p0, Lcom/amazon/device/ads/AdRequest;->jsonObjectBuilder:Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 206
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/amazon/device/ads/AdRequest;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v4, "debug.aaxAdParams"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "additionalTargetingParams":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 209
    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/WebRequest;->setAdditionalQueryParamsString(Ljava/lang/String;)V

    .line 211
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/amazon/device/ads/AdRequest;->setRequestBodyString(Lcom/amazon/device/ads/WebRequest;Lorg/json/JSONObject;)V

    .line 212
    return-void
.end method

.method protected setRequestBodyString(Lcom/amazon/device/ads/WebRequest;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "request"    # Lcom/amazon/device/ads/WebRequest;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 216
    instance-of v0, p2, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .end local p2    # "json":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/WebRequest;->setRequestBodyString(Ljava/lang/String;)V

    .line 217
    return-void

    .line 216
    .restart local p2    # "json":Lorg/json/JSONObject;
    :cond_0
    check-cast p2, Lorg/json/JSONObject;

    .end local p2    # "json":Lorg/json/JSONObject;
    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
