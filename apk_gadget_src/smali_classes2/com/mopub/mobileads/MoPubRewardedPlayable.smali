.class public Lcom/mopub/mobileads/MoPubRewardedPlayable;
.super Lcom/mopub/mobileads/MoPubRewardedAd;
.source "MoPubRewardedPlayable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;
    }
.end annotation


# instance fields
.field private mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubRewardedAd;-><init>()V

    .line 23
    new-instance v0, Lcom/mopub/mraid/RewardedMraidInterstitial;

    invoke-direct {v0}, Lcom/mopub/mraid/RewardedMraidInterstitial;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    .line 24
    return-void
.end method


# virtual methods
.method protected getAdNetworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mAdUnitId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mAdUnitId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mopub_rewarded_playable_id"

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
    .line 30
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/mopub/mobileads/MoPubRewardedAd;->loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 32
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    if-nez v0, :cond_0

    .line 33
    const-string v0, "mRewardedMraidInterstitial is null. Has this class been invalidated?"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedPlayable;)V

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/mopub/mraid/RewardedMraidInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidInterstitial;->onInvalidate()V

    .line 51
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    .line 52
    invoke-super {p0}, Lcom/mopub/mobileads/MoPubRewardedAd;->onInvalidate()V

    .line 53
    return-void
.end method

.method protected show()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubRewardedPlayable;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "Showing MoPub rewarded playable."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidInterstitial;->showInterstitial()V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "MoPub rewarded playable not loaded. Unable to show playable."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
