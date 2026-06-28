.class public Lcom/mopub/mobileads/VastVideoView;
.super Landroid/widget/VideoView;
.source "VastVideoView.java"


# instance fields
.field private mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

.field private mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 32
    return-void
.end method


# virtual methods
.method getBlurLastVideoFrameTask()Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    .line 65
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->cancel(Z)Z

    .line 68
    :cond_0
    return-void
.end method

.method public prepareBlurredLastVideoFrame(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 4
    .param p1, "blurredLastVideoFrameImageView"    # Landroid/widget/ImageView;
    .param p2, "diskMediaFileUrl"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v1, :cond_0

    .line 45
    new-instance v1, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 46
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoView;->getDuration()I

    move-result v3

    invoke-direct {v1, v2, p1, v3}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;-><init>(Landroid/media/MediaMetadataRetriever;Landroid/widget/ImageView;I)V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to blur last video frame"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method setBlurLastVideoFrameTask(Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;)V
    .locals 0
    .param p1, "blurLastVideoFrameTask"    # Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    .line 90
    return-void
.end method

.method setMediaMetadataRetriever(Landroid/media/MediaMetadataRetriever;)V
    .locals 0
    .param p1, "mediaMetadataRetriever"    # Landroid/media/MediaMetadataRetriever;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 75
    return-void
.end method
