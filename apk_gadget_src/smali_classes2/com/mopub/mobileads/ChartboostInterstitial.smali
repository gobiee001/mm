.class Lcom/mopub/mobileads/ChartboostInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "ChartboostInterstitial.java"


# instance fields
.field private mLocation:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    .line 21
    const-string v0, "Default"

    iput-object v0, p0, Lcom/mopub/mobileads/ChartboostInterstitial;->mLocation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interstitialListener"    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 43
    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v3}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 79
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v3, "location"

    invoke-interface {p4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    const-string v3, "location"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    .local v2, "location":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/mopub/mobileads/ChartboostInterstitial;->mLocation:Ljava/lang/String;

    .end local v2    # "location":Ljava/lang/String;
    :cond_1
    iput-object v2, p0, Lcom/mopub/mobileads/ChartboostInterstitial;->mLocation:Ljava/lang/String;

    .line 54
    :cond_2
    invoke-static {}, Lcom/mopub/mobileads/ChartboostShared;->getDelegate()Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/ChartboostInterstitial;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->hasInterstitialLocation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    invoke-static {}, Lcom/mopub/mobileads/ChartboostShared;->getDelegate()Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/ChartboostInterstitial;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->getInterstitialListener(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v3

    if-eq v3, p2, :cond_3

    .line 56
    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v3}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 60
    check-cast v0, Landroid/app/Activity;

    .line 62
    .local v0, "activity":Landroid/app/Activity;
    :try_start_0
    invoke-static {v0, p4}, Lcom/mopub/mobileads/ChartboostShared;->initializeSdk(Landroid/app/Activity;Ljava/util/Map;)Z

    .line 63
    invoke-static {}, Lcom/mopub/mobileads/ChartboostShared;->getDelegate()Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/ChartboostInterstitial;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4, p2}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->registerInterstitialListener(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 73
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 74
    iget-object v3, p0, Lcom/mopub/mobileads/ChartboostInterstitial;->mLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    invoke-static {}, Lcom/mopub/mobileads/ChartboostShared;->getDelegate()Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/ChartboostInterstitial;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->didCacheInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v3}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 67
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v3}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    iget-object v3, p0, Lcom/mopub/mobileads/ChartboostInterstitial;->mLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/mopub/mobileads/ChartboostShared;->getDelegate()Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/ChartboostInterstitial;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->unregisterInterstitialListener(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method protected showInterstitial()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "MoPub"

    const-string v1, "Showing Chartboost interstitial ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostInterstitial;->mLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    .line 85
    return-void
.end method
