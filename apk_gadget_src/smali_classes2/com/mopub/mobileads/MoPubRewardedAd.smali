.class public abstract Lcom/mopub/mobileads/MoPubRewardedAd;
.super Lcom/mopub/mobileads/CustomEventRewardedAd;
.source "MoPubRewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;
    }
.end annotation


# instance fields
.field protected mAdUnitId:Ljava/lang/String;

.field private mIsLoaded:Z

.field private mRewardedAdCurrencyAmount:I

.field private mRewardedAdCurrencyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedAd;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/mopub/mobileads/MoPubRewardedAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedAd;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    return p1
.end method


# virtual methods
.method protected checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 1
    .param p1, "launcherActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRewardedAdCurrencyAmount()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    return v0
.end method

.method protected getRewardedAdCurrencyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyName:Ljava/lang/String;

    return-object v0
.end method

.method protected isReady()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    return v0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 49
    const-string v5, "activity cannot be null"

    invoke-static {p1, v5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-string v5, "localExtras cannot be null"

    invoke-static {p2, v5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const-string v5, "serverExtras cannot be null"

    invoke-static {p3, v5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-string v5, "Rewarded-Ad-Currency-Name"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 55
    .local v4, "rewardedAdCurrencyName":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 56
    check-cast v4, Ljava/lang/String;

    .end local v4    # "rewardedAdCurrencyName":Ljava/lang/Object;
    iput-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyName:Ljava/lang/String;

    .line 62
    :goto_0
    const-string v5, "Rewarded-Ad-Currency-Value-String"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, "rewardedAdCurrencyAmount":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 66
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    iget v5, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    if-gez v5, :cond_0

    .line 83
    const-string v5, "Negative currency amount specified for rewarded ad. Using the default reward amount: 0"

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 86
    iput v7, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    .line 89
    :cond_0
    const-string v5, "com_mopub_ad_unit_id"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, "adUnitId":Ljava/lang/Object;
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 91
    check-cast v1, Ljava/lang/String;

    .end local v1    # "adUnitId":Ljava/lang/Object;
    iput-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mAdUnitId:Ljava/lang/String;

    .line 95
    :goto_2
    return-void

    .line 58
    .end local v3    # "rewardedAdCurrencyAmount":Ljava/lang/Object;
    .restart local v4    # "rewardedAdCurrencyName":Ljava/lang/Object;
    :cond_1
    const-string v5, "No currency name specified for rewarded video. Using the default name."

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 59
    const-string v5, ""

    iput-object v5, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyName:Ljava/lang/String;

    goto :goto_0

    .line 68
    .end local v4    # "rewardedAdCurrencyName":Ljava/lang/Object;
    .restart local v3    # "rewardedAdCurrencyAmount":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to convert currency amount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Using the default reward amount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 73
    iput v7, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    goto :goto_1

    .line 76
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v5, "No currency amount specified for rewarded ad. Using the default reward amount: 0"

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 79
    iput v7, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    goto :goto_1

    .line 93
    .restart local v1    # "adUnitId":Ljava/lang/Object;
    :cond_3
    const-string v5, "Unable to set ad unit for rewarded ad."

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    .line 100
    return-void
.end method
