.class Lcom/amazon/device/ads/ExtendedAdListenerExecutor;
.super Lcom/amazon/device/ads/AdListenerExecutor;
.source "ExtendedAdListenerExecutor.java"


# instance fields
.field private final extendedAdListener:Lcom/amazon/device/ads/ExtendedAdListener;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/ExtendedAdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 0
    .param p1, "adListener"    # Lcom/amazon/device/ads/ExtendedAdListener;
    .param p2, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutor;-><init>(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 23
    iput-object p1, p0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor;->extendedAdListener:Lcom/amazon/device/ads/ExtendedAdListener;

    .line 24
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/ExtendedAdListener;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 0
    .param p1, "adListener"    # Lcom/amazon/device/ads/ExtendedAdListener;
    .param p2, "threadRunner"    # Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .param p3, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/AdListenerExecutor;-><init>(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor;->extendedAdListener:Lcom/amazon/device/ads/ExtendedAdListener;

    .line 29
    return-void
.end method


# virtual methods
.method protected bridge synthetic getAdListener()Lcom/amazon/device/ads/AdListener;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/amazon/device/ads/ExtendedAdListenerExecutor;->getAdListener()Lcom/amazon/device/ads/ExtendedAdListener;

    move-result-object v0

    return-object v0
.end method

.method protected getAdListener()Lcom/amazon/device/ads/ExtendedAdListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor;->extendedAdListener:Lcom/amazon/device/ads/ExtendedAdListener;

    return-object v0
.end method

.method public onAdExpired(Lcom/amazon/device/ads/Ad;)V
    .locals 1
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 54
    new-instance v0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/ExtendedAdListenerExecutor$2;-><init>(Lcom/amazon/device/ads/ExtendedAdListenerExecutor;Lcom/amazon/device/ads/Ad;)V

    .line 62
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/ExtendedAdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "positionOnScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 40
    new-instance v0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/ads/ExtendedAdListenerExecutor$1;-><init>(Lcom/amazon/device/ads/ExtendedAdListenerExecutor;Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V

    .line 48
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/ExtendedAdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method
