.class Lcom/amazon/device/ads/AdListenerExecutorFactory;
.super Ljava/lang/Object;
.source "AdListenerExecutorFactory.java"


# instance fields
.field private final loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 0
    .param p1, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 18
    return-void
.end method


# virtual methods
.method public createAdListenerExecutor(Lcom/amazon/device/ads/AdListener;)Lcom/amazon/device/ads/AdListenerExecutor;
    .locals 2
    .param p1, "adListener"    # Lcom/amazon/device/ads/AdListener;

    .prologue
    .line 27
    instance-of v0, p1, Lcom/amazon/device/ads/ExtendedAdListener;

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor;

    check-cast p1, Lcom/amazon/device/ads/ExtendedAdListener;

    .end local p1    # "adListener":Lcom/amazon/device/ads/AdListener;
    iget-object v1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/ads/ExtendedAdListenerExecutor;-><init>(Lcom/amazon/device/ads/ExtendedAdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 31
    :goto_0
    return-object v0

    .restart local p1    # "adListener":Lcom/amazon/device/ads/AdListener;
    :cond_0
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor;

    iget-object v1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/ads/AdListenerExecutor;-><init>(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    goto :goto_0
.end method

.method protected getLoggerFactory()Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    return-object v0
.end method
