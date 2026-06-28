.class Lcom/amazon/device/ads/MobileAdsLoggerFactory;
.super Ljava/lang/Object;
.source "MobileAdsLoggerFactory.java"


# static fields
.field private static loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setLoggerFactory(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 0
    .param p0, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .prologue
    .line 15
    sput-object p0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 16
    return-void
.end method


# virtual methods
.method public createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1
    .param p1, "logTag"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-object v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/device/ads/LogcatLogger;

    invoke-direct {v0}, Lcom/amazon/device/ads/LogcatLogger;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;Lcom/amazon/device/ads/Logger;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    goto :goto_0
.end method

.method createMobileAdsLogger(Ljava/lang/String;Lcom/amazon/device/ads/Logger;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "logger"    # Lcom/amazon/device/ads/Logger;

    .prologue
    .line 29
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-direct {v0, p2}, Lcom/amazon/device/ads/MobileAdsLogger;-><init>(Lcom/amazon/device/ads/Logger;)V

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    return-object v0
.end method
