.class Lcom/amazon/device/ads/AdControllerFactory;
.super Ljava/lang/Object;
.source "AdControllerFactory.java"


# static fields
.field private static cachedAdController:Lcom/amazon/device/ads/AdController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheAdController(Lcom/amazon/device/ads/AdController;)V
    .locals 0
    .param p0, "adController"    # Lcom/amazon/device/ads/AdController;

    .prologue
    .line 16
    sput-object p0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    .line 17
    return-void
.end method

.method public static getCachedAdController()Lcom/amazon/device/ads/AdController;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    return-object v0
.end method

.method public static removeCachedAdController()Lcom/amazon/device/ads/AdController;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    .line 27
    .local v0, "currentAdController":Lcom/amazon/device/ads/AdController;
    const/4 v1, 0x0

    sput-object v1, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    .line 28
    return-object v0
.end method


# virtual methods
.method public buildAdController(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)Lcom/amazon/device/ads/AdController;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/amazon/device/ads/AdSize;

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 36
    .local v0, "adController":Lcom/amazon/device/ads/AdController;
    :try_start_0
    new-instance v1, Lcom/amazon/device/ads/AdController;

    invoke-direct {v1, p1, p2}, Lcom/amazon/device/ads/AdController;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "adController":Lcom/amazon/device/ads/AdController;
    .local v1, "adController":Lcom/amazon/device/ads/AdController;
    move-object v0, v1

    .line 42
    .end local v1    # "adController":Lcom/amazon/device/ads/AdController;
    .restart local v0    # "adController":Lcom/amazon/device/ads/AdController;
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    goto :goto_0
.end method
