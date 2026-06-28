.class Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;
.super Ljava/lang/Object;
.source "VungleRewardedVideo.java"

# interfaces
.implements Lcom/mopub/mobileads/VungleRouterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VungleRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VungleRewardedRouterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VungleRewardedVideo;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/VungleRewardedVideo;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/VungleRewardedVideo;Lcom/mopub/mobileads/VungleRewardedVideo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo;
    .param p2, "x1"    # Lcom/mopub/mobileads/VungleRewardedVideo$1;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;-><init>(Lcom/mopub/mobileads/VungleRewardedVideo;)V

    return-void
.end method


# virtual methods
.method public onAdAvailabilityUpdate(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "placementReferenceId"    # Ljava/lang/String;
    .param p2, "isAdAvailable"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$600(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$700(Lcom/mopub/mobileads/VungleRewardedVideo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    if-eqz p2, :cond_1

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vungle Rewarded: rewarded video ad successfully loaded - Placement ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 298
    const-class v0, Lcom/mopub/mobileads/VungleRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    .line 299
    invoke-static {v1}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$600(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vungle Rewarded: rewarded video ad is not loaded - Placement ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 303
    const-class v0, Lcom/mopub/mobileads/VungleRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    .line 304
    invoke-static {v1}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$600(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 303
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onAdEnd(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "placementReferenceId"    # Ljava/lang/String;
    .param p2, "wasSuccessfulView"    # Z
    .param p3, "wasCallToActionClicked"    # Z

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$600(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vungle Rewarded: onAdEnd - Placement ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wasSuccessfulView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wasCallToActionClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$702(Lcom/mopub/mobileads/VungleRewardedVideo;Z)Z

    .line 247
    if-eqz p2, :cond_0

    .line 251
    const-class v0, Lcom/mopub/mobileads/VungleRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    .line 252
    invoke-static {v1}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$600(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/16 v3, -0x7b

    .line 253
    invoke-static {v2, v3}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v2

    .line 251
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    .line 257
    :cond_0
    if-eqz p3, :cond_1

    .line 258
    const-class v0, Lcom/mopub/mobileads/VungleRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    .line 259
    invoke-static {v1}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$600(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V

    .line 262
    :cond_1
    const-class v0, Lcom/mopub/mobileads/VungleRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    .line 263
    invoke-static {v1}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$600(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$800()Lcom/mopub/mobileads/VungleRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    invoke-static {v1}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$600(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VungleRouter;->removeRouterListener(Ljava/lang/String;)V

    .line 267
    :cond_2
    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementReferenceId"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$600(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vungle Rewarded: onAdStart - Placement ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$702(Lcom/mopub/mobileads/VungleRewardedVideo;Z)Z

    .line 276
    const-class v0, Lcom/mopub/mobileads/VungleRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    .line 277
    invoke-static {v1}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$600(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method public onUnableToPlayAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "placementReferenceId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$600(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vungle Rewarded: onUnableToPlayAd - Placement ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$702(Lcom/mopub/mobileads/VungleRewardedVideo;Z)Z

    .line 287
    const-class v0, Lcom/mopub/mobileads/VungleRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;->this$0:Lcom/mopub/mobileads/VungleRewardedVideo;

    .line 288
    invoke-static {v1}, Lcom/mopub/mobileads/VungleRewardedVideo;->access$600(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 287
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 290
    :cond_0
    return-void
.end method
