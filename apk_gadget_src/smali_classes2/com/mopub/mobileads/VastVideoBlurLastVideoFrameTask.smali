.class public Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;
.super Landroid/os/AsyncTask;
.source "VastVideoBlurLastVideoFrameTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mBlurredLastVideoFrame:Landroid/graphics/Bitmap;

.field private final mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

.field private mLastVideoFrame:Landroid/graphics/Bitmap;

.field private final mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private mVideoDuration:I


# direct methods
.method public constructor <init>(Landroid/media/MediaMetadataRetriever;Landroid/widget/ImageView;I)V
    .locals 0
    .param p1, "mediaMetadataRetriever"    # Landroid/media/MediaMetadataRetriever;
    .param p2, "blurredLastVideoFrameImageView"    # Landroid/widget/ImageView;
    .param p3, "videoDuration"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 34
    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    .line 35
    iput p3, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mVideoDuration:I

    .line 36
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "videoPaths"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 40
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eqz v2, :cond_0

    aget-object v2, p1, v6

    if-nez v2, :cond_1

    .line 41
    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 66
    :goto_0
    return-object v2

    .line 45
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    aget-object v1, p1, v2

    .line 47
    .local v1, "videoPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v2, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    iget v3, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mVideoDuration:I

    mul-int/lit16 v3, v3, 0x3e8

    const v4, 0x30d40

    sub-int/2addr v3, v4

    int-to-long v4, v3

    const/4 v3, 0x3

    invoke-virtual {v2, v4, v5, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mLastVideoFrame:Landroid/graphics/Bitmap;

    .line 56
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mLastVideoFrame:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 57
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 60
    :cond_2
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mLastVideoFrame:Landroid/graphics/Bitmap;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/mopub/common/util/ImageUtils;->applyFastGaussianBlurToBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mBlurredLastVideoFrame:Landroid/graphics/Bitmap;

    .line 63
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 64
    .end local v1    # "videoPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed to blur last video frame"

    invoke-static {v2, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "VastVideoBlurLastVideoFrameTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "VastVideoBlurLastVideoFrameTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 86
    const-string v0, "VastVideoBlurLastVideoFrameTask was cancelled."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->onCancelled()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mBlurredLastVideoFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "VastVideoBlurLastVideoFrameTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->onPostExecute(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "VastVideoBlurLastVideoFrameTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
