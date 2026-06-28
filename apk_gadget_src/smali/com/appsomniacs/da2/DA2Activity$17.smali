.class Lcom/appsomniacs/da2/DA2Activity$17;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubRewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsomniacs/da2/DA2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsomniacs/da2/DA2Activity;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 2431
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$17;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedVideoClicked(Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 2470
    const-string v0, "DA2"

    const-string v1, "Rewarded Ad MoPub::onRewardedVideoClicked Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    return-void
.end method

.method public onRewardedVideoClosed(Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 2476
    const-string v0, "DA2"

    const-string v1, "Rewarded Ad MoPub::onAdClosed Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getInstance()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$17$2;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$17$2;-><init>(Lcom/appsomniacs/da2/DA2Activity$17;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 2485
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$2300()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/mopub/common/MediationSettings;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->loadRewardedVideo(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V

    .line 2487
    return-void
.end method

.method public onRewardedVideoCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V
    .locals 5
    .param p2, "reward"    # Lcom/mopub/common/MoPubReward;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2493
    .local p1, "adUnitIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "DA2"

    const-string v1, "Rewarded Ad MoPub::onRewardedSucceeded Called (%s:%d minutes)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$2100()V

    .line 2495
    return-void
.end method

.method public onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 7
    .param p1, "adUnitId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 2441
    const-string v2, "DA2"

    const-string v3, "Rewarded Ad MoPub::onRewardedVideoLoadFailure Called: \"%s\""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity$17;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->access$2200(Lcom/appsomniacs/da2/DA2Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2444
    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$17$1;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$17$1;-><init>(Lcom/appsomniacs/da2/DA2Activity$17;)V

    .line 2450
    .local v1, "runIn15":Ljava/lang/Runnable;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2451
    .local v0, "handleTimer":Landroid/os/Handler;
    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2454
    .end local v0    # "handleTimer":Landroid/os/Handler;
    .end local v1    # "runIn15":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public onRewardedVideoLoadSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 2435
    const-string v0, "DA2"

    const-string v1, "Rewarded Ad MoPub::onRewardedVideoLoadSuccess Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    return-void
.end method

.method public onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 2465
    const-string v0, "DA2"

    const-string v1, "Rewarded Ad MoPub::onRewardedVideoPlaybackError Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    return-void
.end method

.method public onRewardedVideoStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 2459
    const-string v0, "DA2"

    const-string v1, "Rewarded Ad MoPub::onRewardedVideoStarted Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    return-void
.end method
