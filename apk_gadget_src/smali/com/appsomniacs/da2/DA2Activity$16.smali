.class Lcom/appsomniacs/da2/DA2Activity$16;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;


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
    .line 2324
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$16;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedVideoAdClosed()V
    .locals 2

    .prologue
    .line 2365
    const-string v0, "DA2"

    const-string v1, "Rewarded Ad Supersonic::onRewardedVideoAdClosed Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getInstance()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$16$1;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$16$1;-><init>(Lcom/appsomniacs/da2/DA2Activity$16;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 2381
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2

    .prologue
    .line 2357
    const-string v0, "DA2"

    const-string v1, "Rewarded Ad Supersonic::onRewardedVideoAdOpened Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;)V
    .locals 7
    .param p1, "placement"    # Lcom/supersonic/mediationsdk/model/Placement;

    .prologue
    .line 2412
    const-string v2, "DA2"

    const-string v3, "Rewarded Ad Supersonic::onRewardedVideoAdRewarded Called (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v1

    .line 2415
    .local v1, "rewardName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v0

    .line 2427
    .local v0, "rewardAmount":I
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$2100()V

    .line 2428
    return-void
.end method

.method public onRewardedVideoInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 9
    .param p1, "se"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    const/4 v8, 0x1

    .line 2335
    const-string v2, "DA2"

    const-string v3, "Rewarded Ad Supersonic::onRewardedVideoInitFail Called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->getErrorCode()I

    move-result v0

    .line 2338
    .local v0, "errorCode":I
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 2339
    .local v1, "errorMessage":Ljava/lang/String;
    const/16 v2, 0x1fe

    if-ne v0, v2, :cond_0

    .line 2342
    :cond_0
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity$16;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    const-string v3, "DA2"

    const-string v4, "Supersonic Error [%d]:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8, v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportLogEntry(ILjava/lang/String;Ljava/lang/String;)V

    .line 2343
    return-void
.end method

.method public onRewardedVideoInitSuccess()V
    .locals 2

    .prologue
    .line 2328
    const-string v0, "DA2"

    const-string v1, "Rewarded Ad Supersonic::onRewardedVideoInitSuccess Completed Successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    return-void
.end method

.method public onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 5
    .param p1, "se"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 2349
    const-string v0, "DA2"

    const-string v1, "Rewarded Ad Supersonic::onRewardedVideoShowFail Called ([%d]%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    return-void
.end method

.method public onVideoAvailabilityChanged(Z)V
    .locals 5
    .param p1, "available"    # Z

    .prologue
    .line 2389
    const-string v1, "DA2"

    const-string v2, "Rewarded Ad Supersonic::onVideoAvailabilityChanged Called (available=%s)"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string v0, "yes"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    invoke-static {p1}, Lcom/appsomniacs/da2/DA2Activity;->access$2002(Z)Z

    .line 2392
    return-void

    .line 2389
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method
