.class Lcom/mopub/mobileads/ChartboostRewardedVideo$1;
.super Ljava/lang/Object;
.source "ChartboostRewardedVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/ChartboostRewardedVideo;->loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/ChartboostRewardedVideo;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/ChartboostRewardedVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/ChartboostRewardedVideo;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo$1;->this$0:Lcom/mopub/mobileads/ChartboostRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo$1;->this$0:Lcom/mopub/mobileads/ChartboostRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/ChartboostRewardedVideo;->access$100(Lcom/mopub/mobileads/ChartboostRewardedVideo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/mopub/mobileads/ChartboostShared;->getDelegate()Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo$1;->this$0:Lcom/mopub/mobileads/ChartboostRewardedVideo;

    invoke-static {v1}, Lcom/mopub/mobileads/ChartboostRewardedVideo;->access$100(Lcom/mopub/mobileads/ChartboostRewardedVideo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->didCacheRewardedVideo(Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo$1;->this$0:Lcom/mopub/mobileads/ChartboostRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/ChartboostRewardedVideo;->access$100(Lcom/mopub/mobileads/ChartboostRewardedVideo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    goto :goto_0
.end method
