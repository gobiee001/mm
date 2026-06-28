.class Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;
.super Ljava/lang/Object;
.source "AdUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdUtilsExecutor"
.end annotation


# instance fields
.field private hasRequiredActivities:Z

.field private final requiredActivities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->requiredActivities:Ljava/util/HashSet;

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    .line 212
    iget-object v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->requiredActivities:Ljava/util/HashSet;

    const-string v1, "com.amazon.device.ads.AdActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method


# virtual methods
.method calculateScalingMultiplier(IIII)D
    .locals 10
    .param p1, "absoluteAdWidth"    # I
    .param p2, "absoluteAdHeight"    # I
    .param p3, "absoluteWindowWidth"    # I
    .param p4, "absoluteWindowHeight"    # I

    .prologue
    .line 305
    int-to-double v6, p3

    int-to-double v8, p1

    div-double v4, v6, v8

    .line 306
    .local v4, "widthRatio":D
    int-to-double v6, p4

    int-to-double v8, p2

    div-double v0, v6, v8

    .line 313
    .local v0, "heightRatio":D
    cmpg-double v6, v0, v4

    if-ltz v6, :cond_0

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_2

    :cond_0
    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-eqz v6, :cond_2

    .line 314
    move-wide v2, v0

    .line 318
    .local v2, "multiplier":D
    :goto_0
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-nez v6, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .end local v2    # "multiplier":D
    :cond_1
    return-wide v2

    .line 316
    :cond_2
    move-wide v2, v4

    .restart local v2    # "multiplier":D
    goto :goto_0
.end method

.method checkDefinedActivities(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 223
    iget-boolean v9, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    if-eqz v9, :cond_0

    .line 253
    :goto_0
    return v8

    .line 227
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 234
    .local v1, "activities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v9, 0x8

    :try_start_0
    invoke-static {v9}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 236
    invoke-static {p1}, Lcom/amazon/device/ads/AndroidTargetUtils;->getPackageCodePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 239
    .local v6, "pManager":Landroid/content/pm/PackageManager;
    const/4 v9, 0x1

    invoke-virtual {v6, v7, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 240
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v2, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v2, v3

    .line 242
    .local v0, "a":Landroid/content/pm/ActivityInfo;
    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 244
    .end local v0    # "a":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v9, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->requiredActivities:Ljava/util/HashSet;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    .line 245
    iget-boolean v8, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    .end local v2    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v3    # "i$":I
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "len$":I
    .end local v6    # "pManager":Landroid/content/pm/PackageManager;
    .end local v7    # "path":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 252
    :cond_2
    iput-boolean v8, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    goto :goto_0
.end method

.method deviceIndependentPixelToPixel(I)I
    .locals 2
    .param p1, "dp"    # I

    .prologue
    .line 338
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->getScalingFactorAsFloat()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method getScalingFactorAsFloat()F
    .locals 1

    .prologue
    .line 346
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getScalingFactorAsFloat()F

    move-result v0

    return v0
.end method

.method getViewportInitialScale(D)D
    .locals 1
    .param p1, "defaultScale"    # D

    .prologue
    .line 290
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .end local p1    # "defaultScale":D
    :cond_0
    return-wide p1
.end method

.method pixelToDeviceIndependentPixel(I)I
    .locals 2
    .param p1, "px"    # I

    .prologue
    .line 328
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->getScalingFactorAsFloat()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method setConnectionMetrics(Lcom/amazon/device/ads/ConnectionInfo;Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 3
    .param p1, "connectionInfo"    # Lcom/amazon/device/ads/ConnectionInfo;
    .param p2, "metricsCollector"    # Lcom/amazon/device/ads/MetricsCollector;

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p1}, Lcom/amazon/device/ads/ConnectionInfo;->isWiFi()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->WIFI_PRESENT:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p2, v1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 273
    :cond_0
    :goto_0
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    .line 274
    .local v0, "deviceInfo":Lcom/amazon/device/ads/DeviceInfo;
    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 276
    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CARRIER_NAME:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V

    .line 278
    :cond_1
    return-void

    .line 269
    .end local v0    # "deviceInfo":Lcom/amazon/device/ads/DeviceInfo;
    :cond_2
    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CONNECTION_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p1}, Lcom/amazon/device/ads/ConnectionInfo;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V

    goto :goto_0
.end method
