.class Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;
.super Lcom/adcolony/sdk/AdColonyInterstitialListener;
.source "AdColonyRewardedVideo.java"

# interfaces
.implements Lcom/adcolony/sdk/AdColonyRewardListener;
.implements Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdColonyRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdColonyListener"
.end annotation


# instance fields
.field private mAdOptions:Lcom/adcolony/sdk/AdColonyAdOptions;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/AdColonyAdOptions;)V
    .locals 0
    .param p1, "adOptions"    # Lcom/adcolony/sdk/AdColonyAdOptions;

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;->mAdOptions:Lcom/adcolony/sdk/AdColonyAdOptions;

    .line 305
    return-void
.end method


# virtual methods
.method public onClicked(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 363
    const-class v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .line 365
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getZoneID()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 341
    const-string v0, "AdColonyListener"

    const-string v1, "AdColony rewarded ad has been dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-class v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .line 344
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getZoneID()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 3
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 357
    const-string v0, "AdColonyListener"

    const-string v1, "AdColony rewarded ad is expiring; requesting new ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getZoneID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;->mAdOptions:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    .line 359
    return-void
.end method

.method public onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 3
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 349
    const-string v0, "AdColonyListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdColony rewarded ad shown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getZoneID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-class v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .line 352
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getZoneID()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 2
    .param p1, "adColonyInterstitial"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 327
    invoke-static {}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$200()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getZoneID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void
.end method

.method public onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .locals 3
    .param p1, "zone"    # Lcom/adcolony/sdk/AdColonyZone;

    .prologue
    .line 332
    const-string v0, "AdColonyListener"

    const-string v1, "AdColony rewarded ad has no fill."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-class v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .line 335
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyZone;->getZoneID()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 333
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 337
    return-void
.end method

.method public onReward(Lcom/adcolony/sdk/AdColonyReward;)V
    .locals 4
    .param p1, "a"    # Lcom/adcolony/sdk/AdColonyReward;

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const-string v1, "AdColonyListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdColonyReward name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->getRewardName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v1, "AdColonyListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdColonyReward amount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->getRewardAmount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->getRewardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->getRewardAmount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v0

    .line 319
    .local v0, "reward":Lcom/mopub/common/MoPubReward;
    :goto_0
    const-class v1, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .line 321
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->getZoneID()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-static {v1, v2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    .line 323
    return-void

    .line 315
    .end local v0    # "reward":Lcom/mopub/common/MoPubReward;
    :cond_0
    const-string v1, "AdColonyListener"

    const-string v2, "AdColonyReward failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Lcom/mopub/common/MoPubReward;->failure()Lcom/mopub/common/MoPubReward;

    move-result-object v0

    .restart local v0    # "reward":Lcom/mopub/common/MoPubReward;
    goto :goto_0
.end method
