.class public Lcom/mopub/mobileads/MoPubRewardedVideo;
.super Lcom/mopub/mobileads/MoPubRewardedAd;
.source "MoPubRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;
    }
.end annotation


# instance fields
.field private mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubRewardedAd;-><init>()V

    .line 23
    new-instance v0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-direct {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    .line 24
    return-void
.end method


# virtual methods
.method protected getAdNetworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mAdUnitId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mAdUnitId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mopub_rewarded_video_id"

    goto :goto_0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
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
    .line 45
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/mopub/mobileads/MoPubRewardedAd;->loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "mRewardedVastVideoInterstitial is null. Has this class been invalidated?"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideo;)V

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->onInvalidate()V

    .line 37
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    .line 38
    invoke-super {p0}, Lcom/mopub/mobileads/MoPubRewardedAd;->onInvalidate()V

    .line 39
    return-void
.end method

.method protected show()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubRewardedVideo;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "Showing MoPub rewarded video."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->showInterstitial()V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "Unable to show MoPub rewarded video"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
