.class Lcom/amazon/device/ads/GooglePlayServicesAdapter;
.super Ljava/lang/Object;
.source "GooglePlayServicesAdapter.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
    .locals 7

    .prologue
    .line 34
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 38
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 67
    .local v3, "info":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    iget-object v5, p0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "The Google Play Services Advertising Identifier was successfully retrieved."

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->v(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "advertisingId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    .line 72
    .local v4, "limitAdTrackingEnabled":Z
    new-instance v5, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v5}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    invoke-virtual {v5, v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->setAdvertisingIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->setLimitAdTrackingEnabled(Z)Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v5

    .end local v0    # "advertisingId":Ljava/lang/String;
    .end local v3    # "info":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .end local v4    # "limitAdTrackingEnabled":Z
    :goto_0
    return-object v5

    .line 40
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/IllegalStateException;
    iget-object v5, p0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "The Google Play Services Advertising Id API was called from a non-background thread."

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 45
    new-instance v5, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v5}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    goto :goto_0

    .line 47
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 50
    .local v2, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "Retrieving the Google Play Services Advertising Identifier caused an IOException."

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 51
    new-instance v5, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v5}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    goto :goto_0

    .line 53
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 55
    .local v2, "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    iget-object v5, p0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "Retrieving the Google Play Services Advertising Identifier caused a GooglePlayServicesNotAvailableException."

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->v(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->createNotAvailable()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v5

    goto :goto_0

    .line 58
    .end local v2    # "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    :catch_3
    move-exception v2

    .line 63
    .local v2, "e":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    iget-object v5, p0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "Retrieving the Google Play Services Advertising Identifier caused a GooglePlayServicesRepairableException."

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->v(Ljava/lang/String;)V

    .line 64
    new-instance v5, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v5}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    goto :goto_0
.end method
