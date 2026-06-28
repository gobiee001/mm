.class public Lcom/amazon/device/ads/DefaultAdListener;
.super Ljava/lang/Object;
.source "DefaultAdListener.java"

# interfaces
.implements Lcom/amazon/device/ads/ExtendedAdListener;


# instance fields
.field final LOGTAG:Ljava/lang/String;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/amazon/device/ads/DefaultAdListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DefaultAdListener;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "logTag"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/device/ads/DefaultAdListener;->LOGTAG:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    iget-object v1, p0, Lcom/amazon/device/ads/DefaultAdListener;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 34
    return-void
.end method


# virtual methods
.method getLogger()Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Default ad listener called - Ad Collapsed."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Default ad listener called - Ad Dismissed."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Default ad listener called - Ad Will Expand."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onAdExpired(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Default ad listener called - Ad Expired."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 5
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "error"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Default ad listener called - Ad Failed to Load. Error code: %s, Error Message: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "adProperties"    # Lcom/amazon/device/ads/AdProperties;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Default ad listener called - AdLoaded."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "positionOnScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Default ad listener called - Ad Resized."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 93
    return-void
.end method
