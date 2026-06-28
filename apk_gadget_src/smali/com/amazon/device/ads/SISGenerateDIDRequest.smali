.class Lcom/amazon/device/ads/SISGenerateDIDRequest;
.super Lcom/amazon/device/ads/SISDeviceRequest;
.source "SISRequests.java"


# static fields
.field private static final CALL_METRIC_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

.field private static final LOGTAG:Ljava/lang/String;

.field private static final PATH:Ljava/lang/String; = "/generate_did"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const-class v0, Lcom/amazon/device/ads/SISGenerateDIDRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/SISGenerateDIDRequest;->LOGTAG:Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->SIS_LATENCY_REGISTER:Lcom/amazon/device/ads/Metrics$MetricType;

    sput-object v0, Lcom/amazon/device/ads/SISGenerateDIDRequest;->CALL_METRIC_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/amazon/device/ads/SISDeviceRequest;-><init>()V

    .line 149
    sget-object v0, Lcom/amazon/device/ads/SISGenerateDIDRequest;->CALL_METRIC_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/SISGenerateDIDRequest;->setCallMetricType(Lcom/amazon/device/ads/Metrics$MetricType;)Lcom/amazon/device/ads/SISDeviceRequest;

    .line 150
    sget-object v0, Lcom/amazon/device/ads/SISGenerateDIDRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/SISGenerateDIDRequest;->setLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/SISDeviceRequest;

    .line 151
    const-string v0, "/generate_did"

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/SISGenerateDIDRequest;->setPath(Ljava/lang/String;)Lcom/amazon/device/ads/SISDeviceRequest;

    .line 152
    return-void
.end method


# virtual methods
.method public onResponseReceived(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "payload"    # Lorg/json/JSONObject;

    .prologue
    .line 157
    const-string v1, "adId"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "adId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 160
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/device/ads/SISGenerateDIDRequest;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/device/ads/RegistrationInfo;->putAdId(Ljava/lang/String;Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)V

    .line 162
    :cond_0
    return-void
.end method
