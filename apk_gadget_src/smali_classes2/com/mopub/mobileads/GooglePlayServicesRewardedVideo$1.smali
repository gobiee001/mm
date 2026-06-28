.class Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;
.super Lcom/mopub/common/BaseLifecycleListener;
.source "GooglePlayServicesRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;->this$0:Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    invoke-direct {p0}, Lcom/mopub/common/BaseLifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/mopub/common/BaseLifecycleListener;->onPause(Landroid/app/Activity;)V

    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;->this$0:Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->access$000(Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;->this$0:Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->access$000(Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->pause(Landroid/content/Context;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/mopub/common/BaseLifecycleListener;->onResume(Landroid/app/Activity;)V

    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;->this$0:Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->access$000(Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;->this$0:Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->access$000(Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->resume(Landroid/content/Context;)V

    .line 79
    :cond_0
    return-void
.end method
