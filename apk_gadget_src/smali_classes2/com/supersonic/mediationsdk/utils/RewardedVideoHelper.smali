.class public Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;
.super Ljava/lang/Object;
.source "RewardedVideoHelper.java"


# instance fields
.field private mCurrentVideosPresented:I

.field private mMaxVideosPerSession:I

.field private mPlacementName:Ljava/lang/String;

.field private mVideoAvailability:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->initState()V

    .line 16
    return-void
.end method

.method private initState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    .line 23
    iput v1, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mCurrentVideosPresented:I

    .line 24
    iput v1, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mMaxVideosPerSession:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mPlacementName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public canShowVideoInCurrentSession()Z
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mCurrentVideosPresented:I

    iget v1, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mMaxVideosPerSession:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlacementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized increaseCurrentVideo()Z
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mCurrentVideosPresented:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mCurrentVideosPresented:I

    .line 69
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->canShowVideoInCurrentSession()Z

    move-result v0

    .line 73
    .local v0, "canShowMore":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->setVideoAvailability(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    .end local v0    # "canShowMore":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isVideoAvailable()Z
    .locals 2

    .prologue
    .line 82
    monitor-enter p0

    const/4 v0, 0x0

    .line 84
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 88
    :cond_0
    monitor-exit p0

    return v0

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->initState()V

    .line 51
    return-void
.end method

.method public setMaxVideo(I)V
    .locals 0
    .param p1, "maxVideo"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mMaxVideosPerSession:I

    .line 60
    return-void
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .locals 0
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mPlacementName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public declared-synchronized setVideoAvailability(Z)Z
    .locals 2
    .param p1, "availability"    # Z

    .prologue
    .line 98
    monitor-enter p0

    const/4 v0, 0x0

    .line 100
    .local v0, "shouldNotify":Z
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->canShowVideoInCurrentSession()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 103
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    const/4 v0, 0x1

    .line 107
    :cond_1
    monitor-exit p0

    return v0

    .line 100
    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
