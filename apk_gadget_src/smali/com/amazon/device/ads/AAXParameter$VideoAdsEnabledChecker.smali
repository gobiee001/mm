.class Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;
.super Ljava/lang/Object;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoAdsEnabledChecker"
.end annotation


# instance fields
.field private final parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AAXParameter$ParameterData;)V
    .locals 0
    .param p1, "parameterData"    # Lcom/amazon/device/ads/AAXParameter$ParameterData;

    .prologue
    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput-object p1, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    .line 688
    return-void
.end method


# virtual methods
.method public isVideoAdsEnabled()Z
    .locals 3

    .prologue
    .line 692
    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdTargetingOptions;->isVideoEnabledSettable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
    const/4 v1, 0x0

    .line 709
    :goto_0
    return v1

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "enableVideoAds"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "enableVideoAds"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 700
    .local v0, "advancedOption":Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$500(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "enableVideoAds"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 703
    .end local v0    # "advancedOption":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$500(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "enableVideoAds"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 705
    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$500(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "enableVideoAds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 709
    :cond_2
    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdTargetingOptions;->isVideoAdsEnabled()Z

    move-result v1

    goto :goto_0
.end method
