.class Lcom/mopub/mobileads/AdColonyRewardedVideo$1;
.super Ljava/lang/Object;
.source "AdColonyRewardedVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdColonyRewardedVideo;->scheduleOnVideoReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdColonyRewardedVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$1;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$1;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$1;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    invoke-static {v1}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$000(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$100(Lcom/mopub/mobileads/AdColonyRewardedVideo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$1;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    invoke-static {}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$200()Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$1;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    invoke-static {v2}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$000(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    iput-object v0, v1, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAd:Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 266
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$1;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$302(Lcom/mopub/mobileads/AdColonyRewardedVideo;Z)Z

    .line 267
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$1;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$400(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 268
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$1;->this$0:Lcom/mopub/mobileads/AdColonyRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->access$500(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/AdColonyRewardedVideo$1$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$1$1;-><init>(Lcom/mopub/mobileads/AdColonyRewardedVideo$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    :cond_0
    return-void
.end method
