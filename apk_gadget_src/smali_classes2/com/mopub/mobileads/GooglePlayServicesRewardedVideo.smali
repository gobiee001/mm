.class public Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;
.super Lcom/mopub/mobileads/CustomEventRewardedVideo;
.source "GooglePlayServicesRewardedVideo.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# static fields
.field private static sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mAdUnitId:Ljava/lang/String;

.field private mLifecycleListener:Lcom/mopub/common/LifecycleListener;

.field private mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;-><init>()V

    .line 64
    new-instance v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;-><init>(Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;)V

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mLifecycleListener:Lcom/mopub/common/LifecycleListener;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-object v0
.end method

.method private getMoPubErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 249
    packed-switch p1, :pswitch_data_0

    .line 263
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 265
    .local v0, "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    :goto_0
    return-object v0

    .line 251
    .end local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    :pswitch_0
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 252
    .restart local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    goto :goto_0

    .line 254
    .end local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    :pswitch_1
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 255
    .restart local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    goto :goto_0

    .line 257
    .end local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    :pswitch_2
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 258
    .restart local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    goto :goto_0

    .line 260
    .end local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    :pswitch_3
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 261
    .restart local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
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
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    sget-object v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    const-string v0, "MoPubToAdMobRewarded"

    const-string v3, "Adapter version - 0.1.0"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v0, "appid"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V

    .line 122
    :goto_0
    const-string v0, "adunit"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    const-class v2, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    .line 127
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 125
    invoke-static {v0, v2, v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    move v0, v1

    .line 139
    :goto_1
    return v0

    .line 119
    :cond_0
    const-string v0, "appid"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_1
    const-string v0, "adunit"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    move v0, v2

    .line 136
    goto :goto_1

    :cond_2
    move v0, v1

    .line 139
    goto :goto_1
.end method

.method protected getAdNetworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method protected getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mLifecycleListener:Lcom/mopub/common/LifecycleListener;

    return-object v0
.end method

.method protected hasVideoAvailable()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
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
    .line 147
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "adunit"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    const-class v1, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    .line 152
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 150
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 172
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v0, "adunit"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-nez v0, :cond_1

    .line 159
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 160
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 165
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v3, "MoPub"

    .line 168
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    const-string v3, "6E36EDD5CBE2C7EF3E491F2A5361D93B"

    .line 169
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    .line 168
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 104
    iput-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 106
    :cond_0
    return-void
.end method

.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 4
    .param p1, "rewardItem"    # Lcom/google/android/gms/ads/reward/RewardItem;

    .prologue
    .line 219
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 222
    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getAmount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v2

    .line 219
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    .line 223
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 2

    .prologue
    .line 212
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 234
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 237
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->getMoPubErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v2

    .line 234
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 238
    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 2

    .prologue
    .line 227
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 2

    .prologue
    .line 193
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 2

    .prologue
    .line 205
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method protected showVideo()V
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->hasVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    const-class v0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->mAdUnitId:Ljava/lang/String;

    const/4 v2, 0x0

    .line 187
    invoke-direct {p0, v2}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->getMoPubErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v2

    .line 184
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method
