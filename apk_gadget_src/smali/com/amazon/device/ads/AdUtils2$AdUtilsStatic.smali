.class Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;
.super Ljava/lang/Object;
.source "AdUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdUtils2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdUtilsStatic"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/ads/AdUtils2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazon/device/ads/AdUtils2$1;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;-><init>()V

    return-void
.end method


# virtual methods
.method calculateScalingMultiplier(IIII)D
    .locals 2
    .param p1, "absoluteAdWidth"    # I
    .param p2, "absoluteAdHeight"    # I
    .param p3, "absoluteWindowWidth"    # I
    .param p4, "absoluteWindowHeight"    # I

    .prologue
    .line 97
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/device/ads/AdUtils;->calculateScalingMultiplier(IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method checkDefinedActivities(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p1}, Lcom/amazon/device/ads/AdUtils;->checkDefinedActivities(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method deviceIndependentPixelToPixel(I)I
    .locals 1
    .param p1, "dp"    # I

    .prologue
    .line 107
    invoke-static {p1}, Lcom/amazon/device/ads/AdUtils;->deviceIndependentPixelToPixel(I)I

    move-result v0

    return v0
.end method

.method getScalingFactorAsFloat()F
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/amazon/device/ads/AdUtils;->getScalingFactorAsFloat()F

    move-result v0

    return v0
.end method

.method getViewportInitialScale(D)D
    .locals 3
    .param p1, "defaultScale"    # D

    .prologue
    .line 90
    invoke-static {p1, p2}, Lcom/amazon/device/ads/AdUtils;->getViewportInitialScale(D)D

    move-result-wide v0

    return-wide v0
.end method

.method pixelToDeviceIndependentPixel(I)I
    .locals 1
    .param p1, "px"    # I

    .prologue
    .line 102
    invoke-static {p1}, Lcom/amazon/device/ads/AdUtils;->pixelToDeviceIndependentPixel(I)I

    move-result v0

    return v0
.end method

.method setConnectionMetrics(Lcom/amazon/device/ads/ConnectionInfo;Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 0
    .param p1, "connectionInfo"    # Lcom/amazon/device/ads/ConnectionInfo;
    .param p2, "metricsCollector"    # Lcom/amazon/device/ads/MetricsCollector;

    .prologue
    .line 85
    invoke-static {p1, p2}, Lcom/amazon/device/ads/AdUtils;->setConnectionMetrics(Lcom/amazon/device/ads/ConnectionInfo;Lcom/amazon/device/ads/MetricsCollector;)V

    .line 86
    return-void
.end method
