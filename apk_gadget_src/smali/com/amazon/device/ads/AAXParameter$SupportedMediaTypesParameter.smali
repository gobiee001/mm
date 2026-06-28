.class Lcom/amazon/device/ads/AAXParameter$SupportedMediaTypesParameter;
.super Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SupportedMediaTypesParameter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 601
    const-string v0, "supportedMediaTypes"

    const-string v1, "debug.supportedMediaTypes"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private addDisplay(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "parameterData"    # Lcom/amazon/device/ads/AAXParameter$ParameterData;
    .param p2, "json"    # Lorg/json/JSONArray;

    .prologue
    .line 615
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdTargetingOptions;->isDisplayAdsEnabled()Z

    move-result v0

    .line 616
    .local v0, "displayAdsEnabled":Z
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "enableDisplayAds"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "enableDisplayAds"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 621
    :cond_0
    if-eqz v0, :cond_1

    .line 623
    const-string v1, "DISPLAY"

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 625
    :cond_1
    return-void
.end method

.method private addVideo(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "parameterData"    # Lcom/amazon/device/ads/AAXParameter$ParameterData;
    .param p2, "json"    # Lorg/json/JSONArray;

    .prologue
    .line 628
    new-instance v1, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;

    invoke-direct {v1, p1}, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;-><init>(Lcom/amazon/device/ads/AAXParameter$ParameterData;)V

    invoke-virtual {v1}, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->isVideoAdsEnabled()Z

    move-result v0

    .line 629
    .local v0, "videoAdsEnabled":Z
    if-eqz v0, :cond_0

    .line 631
    const-string v1, "VIDEO"

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 633
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/amazon/device/ads/AAXParameter$ParameterData;

    .prologue
    .line 597
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$SupportedMediaTypesParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONArray;
    .locals 1
    .param p1, "parameterData"    # Lcom/amazon/device/ads/AAXParameter$ParameterData;

    .prologue
    .line 607
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 608
    .local v0, "value":Lorg/json/JSONArray;
    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AAXParameter$SupportedMediaTypesParameter;->addDisplay(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONArray;)V

    .line 609
    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AAXParameter$SupportedMediaTypesParameter;->addVideo(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONArray;)V

    .line 610
    return-object v0
.end method
