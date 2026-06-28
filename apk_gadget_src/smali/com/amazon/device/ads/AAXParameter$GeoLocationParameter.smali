.class Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;
.super Lcom/amazon/device/ads/AAXParameter$StringParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GeoLocationParameter"
.end annotation


# instance fields
.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;-><init>(Lcom/amazon/device/ads/Configuration;Landroid/content/Context;)V

    .line 386
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/Configuration;Landroid/content/Context;)V
    .locals 2
    .param p1, "configuration"    # Lcom/amazon/device/ads/Configuration;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    const-string v0, "geoloc"

    const-string v1, "debug.geoloc"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$StringParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iput-object p1, p0, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->configuration:Lcom/amazon/device/ads/Configuration;

    .line 391
    iput-object p2, p0, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->context:Landroid/content/Context;

    .line 392
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/amazon/device/ads/AAXParameter$ParameterData;

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;
    .locals 6
    .param p1, "parameterData"    # Lcom/amazon/device/ads/AAXParameter$ParameterData;

    .prologue
    const/4 v3, 0x0

    .line 397
    iget-object v4, p0, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v5, Lcom/amazon/device/ads/Configuration$ConfigOption;->SEND_GEO:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/Configuration;->getBoolean(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z

    move-result v1

    .line 398
    .local v1, "configSendGeo":Z
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->getAdRequest()Lcom/amazon/device/ads/AdRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdRequest;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdTargetingOptions;->isGeoLocationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    new-instance v0, Lcom/amazon/device/ads/AdLocation;

    iget-object v4, p0, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/amazon/device/ads/AdLocation;-><init>(Landroid/content/Context;)V

    .line 401
    .local v0, "adLocation":Lcom/amazon/device/ads/AdLocation;
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLocation;->getLocation()Landroid/location/Location;

    move-result-object v2

    .line 402
    .local v2, "location":Landroid/location/Location;
    if-nez v2, :cond_1

    .line 404
    .end local v0    # "adLocation":Lcom/amazon/device/ads/AdLocation;
    .end local v2    # "location":Landroid/location/Location;
    :cond_0
    :goto_0
    return-object v3

    .line 402
    .restart local v0    # "adLocation":Lcom/amazon/device/ads/AdLocation;
    .restart local v2    # "location":Landroid/location/Location;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
