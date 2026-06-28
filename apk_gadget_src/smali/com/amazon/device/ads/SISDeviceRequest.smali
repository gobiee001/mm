.class abstract Lcom/amazon/device/ads/SISDeviceRequest;
.super Ljava/lang/Object;
.source "SISRequests.java"

# interfaces
.implements Lcom/amazon/device/ads/SISRequest;


# instance fields
.field private advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

.field private advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

.field private callMetricType:Lcom/amazon/device/ads/Metrics$MetricType;

.field private logTag:Ljava/lang/String;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private path:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    iget-object v1, p0, Lcom/amazon/device/ads/SISDeviceRequest;->logTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/SISDeviceRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method

.method private static convertOptOutBooleanToStringInt(Z)Ljava/lang/String;
    .locals 1
    .param p0, "optOut"    # Z

    .prologue
    .line 109
    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static getDInfoProperty()Ljava/lang/String;
    .locals 6

    .prologue
    .line 119
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    .line 120
    .local v0, "deviceInfo":Lcom/amazon/device/ads/DeviceInfo;
    const-string/jumbo v2, "{\"make\":\"%s\",\"model\":\"%s\",\"os\":\"%s\",\"osVersion\":\"%s\"}"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getMake()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getOS()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "deviceInfoProperty":Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method protected getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    return-object v0
.end method

.method public getCallMetricType()Lcom/amazon/device/ads/Metrics$MetricType;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazon/device/ads/SISDeviceRequest;->callMetricType:Lcom/amazon/device/ads/Metrics$MetricType;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/device/ads/SISDeviceRequest;->logTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLogger()Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazon/device/ads/SISDeviceRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazon/device/ads/SISDeviceRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPostParameters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueryParameters()Lcom/amazon/device/ads/WebRequest$QueryStringParameters;
    .locals 6

    .prologue
    .line 70
    new-instance v2, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-direct {v2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;-><init>()V

    .line 71
    .local v2, "queryStringParameters":Lcom/amazon/device/ads/WebRequest$QueryStringParameters;
    const-string v3, "dt"

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v3, "app"

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/RegistrationInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v3, "aud"

    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_DOMAIN:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/Configuration;->getString(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v3, "ua"

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/DeviceInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v3, "dinfo"

    invoke-static {}, Lcom/amazon/device/ads/SISDeviceRequest;->getDInfoProperty()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v3, "pkg"

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getAppInfo()Lcom/amazon/device/ads/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/AppInfo;->getPackageInfoJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->hasAdvertisingIdentifier()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const-string v3, "idfa"

    iget-object v4, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "oo"

    iget-object v4, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    invoke-static {v4}, Lcom/amazon/device/ads/SISDeviceRequest;->convertOptOutBooleanToStringInt(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    iget-object v3, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getAndClearTransition()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "adIdTransition":Ljava/lang/String;
    const-string v4, "aidts"

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v4, v0, v3}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncodedIfTrue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    return-object v2

    .line 90
    .end local v0    # "adIdTransition":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v1

    .line 92
    .local v1, "deviceInfo":Lcom/amazon/device/ads/DeviceInfo;
    const-string v3, "sha1_mac"

    invoke-virtual {v1}, Lcom/amazon/device/ads/DeviceInfo;->getMacSha1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v3, "sha1_serial"

    invoke-virtual {v1}, Lcom/amazon/device/ads/DeviceInfo;->getSerialSha1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v3, "sha1_udid"

    invoke-virtual {v1}, Lcom/amazon/device/ads/DeviceInfo;->getUdidSha1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v3, "badMac"

    const-string v4, "true"

    invoke-virtual {v1}, Lcom/amazon/device/ads/DeviceInfo;->isMacBad()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncodedIfTrue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    const-string v3, "badSerial"

    const-string v4, "true"

    invoke-virtual {v1}, Lcom/amazon/device/ads/DeviceInfo;->isSerialBad()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncodedIfTrue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    const-string v3, "badUdid"

    const-string v4, "true"

    invoke-virtual {v1}, Lcom/amazon/device/ads/DeviceInfo;->isUdidBad()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncodedIfTrue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 102
    .end local v1    # "deviceInfo":Lcom/amazon/device/ads/DeviceInfo;
    .restart local v0    # "adIdTransition":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setAdvertisingIdentifier(Lcom/amazon/device/ads/AdvertisingIdentifier;)Lcom/amazon/device/ads/SISDeviceRequest;
    .locals 1
    .param p1, "advertisingIdentifier"    # Lcom/amazon/device/ads/AdvertisingIdentifier;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    .line 48
    iget-object v0, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    .line 49
    return-object p0
.end method

.method public setCallMetricType(Lcom/amazon/device/ads/Metrics$MetricType;)Lcom/amazon/device/ads/SISDeviceRequest;
    .locals 0
    .param p1, "callMetricType"    # Lcom/amazon/device/ads/Metrics$MetricType;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/SISDeviceRequest;->callMetricType:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 38
    return-object p0
.end method

.method public setLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/SISDeviceRequest;
    .locals 1
    .param p1, "logTag"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amazon/device/ads/SISDeviceRequest;->logTag:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/amazon/device/ads/SISDeviceRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    .line 33
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/amazon/device/ads/SISDeviceRequest;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/amazon/device/ads/SISDeviceRequest;->path:Ljava/lang/String;

    .line 43
    return-object p0
.end method
