.class public Lcom/mopub/mobileads/VastVideoConfig;
.super Ljava/lang/Object;
.source "VastVideoConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mAbsoluteTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvidJavascriptResources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClickThroughUrl:Ljava/lang/String;

.field private final mClickTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompleteTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomCloseIconUrl:Ljava/lang/String;

.field private mCustomCtaText:Ljava/lang/String;

.field private mCustomForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

.field private mCustomSkipText:Ljava/lang/String;

.field private mDiskMediaFileUrl:Ljava/lang/String;

.field private mDspCreativeId:Ljava/lang/String;

.field private final mErrorTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalViewabilityTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFractionalTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpressionTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mIsForceOrientationSet:Z

.field private mIsRewardedVideo:Z

.field private mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

.field private final mMoatImpressionPixels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkMediaFileUrl:Ljava/lang/String;

.field private final mPauseTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

.field private final mResumeTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipOffset:Ljava/lang/String;

.field private final mSkipTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mSocialActionsCompanionAds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

.field private mVideoViewabilityTracker:Lcom/mopub/mobileads/VideoViewabilityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->FORCE_LANDSCAPE:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mImpressionTrackers:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPauseTrackers:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mResumeTrackers:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCompleteTrackers:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCloseTrackers:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipTrackers:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickTrackers:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mErrorTrackers:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSocialActionsCompanionAds:Ljava/util/Map;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsRewardedVideo:Z

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mExternalViewabilityTrackers:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAvidJavascriptResources:Ljava/util/Set;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mMoatImpressionPixels:Ljava/util/Set;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/VastVideoConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoConfig;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDspCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method private addCompanionAdClickTrackersForUrls(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 889
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->hasCompanionAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoConfig;->createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 891
    .local v0, "companionAdClickTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 892
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 894
    .end local v0    # "companionAdClickTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_0
    return-void
.end method

.method private addCompanionAdViewTrackersForUrls(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 877
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 879
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->hasCompanionAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoConfig;->createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 881
    .local v0, "companionAdViewTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    .line 882
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    .line 884
    .end local v0    # "companionAdViewTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_0
    return-void
.end method

.method private addCompleteTrackersForUrls(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 850
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 852
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoConfig;->createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackers(Ljava/util/List;)V

    .line 853
    return-void
.end method

.method private addFractionalTrackersForUrls(Ljava/util/List;F)V
    .locals 4
    .param p2, "fraction"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 867
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 870
    .local v0, "fractionalTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastFractionalProgressTracker;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 871
    .local v1, "url":Ljava/lang/String;
    new-instance v3, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    invoke-direct {v3, v1, p2}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 873
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackers(Ljava/util/List;)V

    .line 874
    return-void
.end method

.method private addStartTrackersForUrls(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 856
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v0, "startTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastAbsoluteProgressTracker;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 860
    .local v1, "url":Ljava/lang/String;
    new-instance v3, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 862
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addAbsoluteTrackers(Ljava/util/List;)V

    .line 863
    return-void
.end method

.method private createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v0, "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 844
    .local v1, "url":Ljava/lang/String;
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v3, v1}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 846
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private handleClick(Landroid/content/Context;ILjava/lang/Integer;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentPlayHead"    # I
    .param p3, "requestCode"    # Ljava/lang/Integer;

    .prologue
    .line 571
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickTrackers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 576
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 573
    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 581
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickThroughUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 585
    :cond_0
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDspCreativeId:Ljava/lang/String;

    .line 586
    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    .line 587
    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/VastVideoConfig$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/mopub/mobileads/VastVideoConfig$1;-><init>(Lcom/mopub/mobileads/VastVideoConfig;Landroid/content/Context;Ljava/lang/Integer;)V

    .line 595
    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickThroughUrl:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hydrateUrls(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "urls"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 824
    if-nez p1, :cond_1

    .line 825
    const/4 v0, 0x0

    .line 836
    :cond_0
    return-object v0

    .line 828
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v0, "hydratedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 830
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, "url":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 829
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 834
    :cond_2
    const-string v3, "%%VIDEO_EVENT%%"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public addAbsoluteTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "absoluteTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastAbsoluteProgressTracker;>;"
    const-string v0, "absoluteTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 136
    return-void
.end method

.method public addAvidJavascriptResources(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "javascriptResources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAvidJavascriptResources:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 266
    :cond_0
    return-void
.end method

.method public addClickTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "clickTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "clickTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    return-void
.end method

.method public addCloseTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "closeTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "closeTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCloseTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    return-void
.end method

.method public addCompleteTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "completeTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "completeTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCompleteTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    return-void
.end method

.method public addErrorTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "errorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "errorTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mErrorTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    return-void
.end method

.method public addExternalViewabilityTrackers(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "externalViewabilityTrackers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mExternalViewabilityTrackers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 260
    :cond_0
    return-void
.end method

.method public addFractionalTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "fractionalTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastFractionalProgressTracker;>;"
    const-string v0, "fractionalTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 127
    return-void
.end method

.method public addImpressionTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "impressionTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "impressionTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mImpressionTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    return-void
.end method

.method public addMoatImpressionPixels(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "impressionPixels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mMoatImpressionPixels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 272
    :cond_0
    return-void
.end method

.method public addPauseTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "pauseTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "pauseTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPauseTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    return-void
.end method

.method public addResumeTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "resumeTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "resumeTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mResumeTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    return-void
.end method

.method public addSkipTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "skipTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "skipTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 171
    return-void
.end method

.method public addVideoTrackers(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "videoTrackers"    # Lorg/json/JSONObject;

    .prologue
    .line 208
    if-nez p1, :cond_1

    .line 253
    :cond_0
    return-void

    .line 212
    :cond_1
    const-string v6, "urls"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 213
    .local v4, "urls":Lorg/json/JSONArray;
    const-string v6, "events"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 214
    .local v2, "events":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 218
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 219
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "eventName":Ljava/lang/String;
    invoke-direct {p0, v1, v4}, Lcom/mopub/mobileads/VastVideoConfig;->hydrateUrls(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 221
    .local v5, "urlsForEvent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/mopub/mobileads/VideoTrackingEvent;->fromString(Ljava/lang/String;)Lcom/mopub/mobileads/VideoTrackingEvent;

    move-result-object v0

    .line 222
    .local v0, "event":Lcom/mopub/mobileads/VideoTrackingEvent;
    if-eqz v1, :cond_2

    if-nez v5, :cond_3

    .line 218
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    :cond_3
    sget-object v6, Lcom/mopub/mobileads/VastVideoConfig$2;->$SwitchMap$com$mopub$mobileads$VideoTrackingEvent:[I

    invoke-virtual {v0}, Lcom/mopub/mobileads/VideoTrackingEvent;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 250
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encountered unknown video tracking event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 228
    :pswitch_0
    invoke-direct {p0, v5}, Lcom/mopub/mobileads/VastVideoConfig;->addStartTrackersForUrls(Ljava/util/List;)V

    goto :goto_1

    .line 231
    :pswitch_1
    const/high16 v6, 0x3e800000    # 0.25f

    invoke-direct {p0, v5, v6}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackersForUrls(Ljava/util/List;F)V

    goto :goto_1

    .line 234
    :pswitch_2
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {p0, v5, v6}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackersForUrls(Ljava/util/List;F)V

    goto :goto_1

    .line 237
    :pswitch_3
    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {p0, v5, v6}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackersForUrls(Ljava/util/List;F)V

    goto :goto_1

    .line 240
    :pswitch_4
    invoke-direct {p0, v5}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackersForUrls(Ljava/util/List;)V

    goto :goto_1

    .line 243
    :pswitch_5
    invoke-direct {p0, v5}, Lcom/mopub/mobileads/VastVideoConfig;->addCompanionAdViewTrackersForUrls(Ljava/util/List;)V

    goto :goto_1

    .line 246
    :pswitch_6
    invoke-direct {p0, v5}, Lcom/mopub/mobileads/VastVideoConfig;->addCompanionAdClickTrackersForUrls(Ljava/util/List;)V

    goto :goto_1

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getAbsoluteTrackers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAvidJavascriptResources()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAvidJavascriptResources:Ljava/util/Set;

    return-object v0
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCloseTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCloseTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCompleteTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCompleteTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCustomCloseIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomCloseIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomCtaText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomCtaText:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    return-object v0
.end method

.method public getCustomSkipText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomSkipText:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskMediaFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDiskMediaFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDspCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mErrorTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExternalViewabilityTrackers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mExternalViewabilityTrackers:Ljava/util/Map;

    return-object v0
.end method

.method public getFractionalTrackers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImpressionTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mImpressionTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMoatImpressionPixels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mMoatImpressionPixels:Ljava/util/Set;

    return-object v0
.end method

.method public getNetworkMediaFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPauseTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPauseTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRemainingProgressTrackerCount()I
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 780
    invoke-virtual {p0, v0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResumeTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mResumeTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSkipOffsetMillis(I)Ljava/lang/Integer;
    .locals 10
    .param p1, "videoDuration"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 792
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 795
    :try_start_0
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    invoke-static {v4}, Lcom/mopub/common/util/Strings;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 796
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    invoke-static {v4}, Lcom/mopub/common/util/Strings;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 806
    .local v2, "skipOffsetMilliseconds":Ljava/lang/Integer;
    :goto_0
    if-eqz v2, :cond_3

    .line 807
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, p1, :cond_2

    .line 817
    .end local v2    # "skipOffsetMilliseconds":Ljava/lang/Integer;
    :goto_1
    return-object v2

    .line 797
    :cond_0
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    invoke-static {v4}, Lcom/mopub/common/util/Strings;->isPercentageTracker(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 798
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    const-string v5, "%"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v1, v4, v5

    .line 799
    .local v1, "percentage":F
    int-to-float v4, p1

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 800
    .restart local v2    # "skipOffsetMilliseconds":Ljava/lang/Integer;
    goto :goto_0

    .line 801
    .end local v1    # "percentage":F
    .end local v2    # "skipOffsetMilliseconds":Ljava/lang/Integer;
    :cond_1
    const-string v4, "Invalid VAST skipoffset format: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 802
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 801
    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    move-object v2, v3

    .line 803
    goto :goto_1

    .line 810
    .restart local v2    # "skipOffsetMilliseconds":Ljava/lang/Integer;
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 813
    .end local v2    # "skipOffsetMilliseconds":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Failed to parse skipoffset %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move-object v2, v3

    .line 817
    goto :goto_1
.end method

.method public getSkipOffsetString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSocialActionsCompanionAds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSocialActionsCompanionAds:Ljava/util/Map;

    return-object v0
.end method

.method public getUntriggeredTrackersBefore(II)Ljava/util/List;
    .locals 10
    .param p1, "currentPositionMillis"    # I
    .param p2, "videoLengthMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 739
    if-lez p2, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Lcom/mopub/common/Preconditions$NoThrow;->checkArgument(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    if-ltz p1, :cond_7

    .line 740
    int-to-float v8, p1

    int-to-float v9, p2

    div-float v5, v8, v9

    .line 741
    .local v5, "progressFraction":F
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v7, "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    new-instance v0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    const-string v8, ""

    invoke-direct {v0, v8, p1}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    .line 745
    .local v0, "absoluteTest":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    iget-object v8, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 746
    .local v1, "absoluteTrackerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 747
    iget-object v8, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    .line 748
    .local v6, "tracker":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    invoke-virtual {v6, v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->compareTo(Lcom/mopub/mobileads/VastAbsoluteProgressTracker;)I

    move-result v8

    if-lez v8, :cond_3

    .line 756
    .end local v6    # "tracker":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    :cond_0
    new-instance v2, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    const-string v8, ""

    invoke-direct {v2, v8, v5}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    .line 757
    .local v2, "fractionalTest":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    iget-object v8, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 758
    .local v3, "fractionalTrackerCount":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_1

    .line 759
    iget-object v8, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    .line 760
    .local v6, "tracker":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    invoke-virtual {v6, v2}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->compareTo(Lcom/mopub/mobileads/VastFractionalProgressTracker;)I

    move-result v8

    if-lez v8, :cond_5

    .line 770
    .end local v0    # "absoluteTest":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    .end local v1    # "absoluteTrackerCount":I
    .end local v2    # "fractionalTest":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .end local v3    # "fractionalTrackerCount":I
    .end local v4    # "i":I
    .end local v5    # "progressFraction":F
    .end local v6    # "tracker":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .end local v7    # "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_1
    :goto_3
    return-object v7

    .line 739
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 751
    .restart local v0    # "absoluteTest":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    .restart local v1    # "absoluteTrackerCount":I
    .restart local v4    # "i":I
    .restart local v5    # "progressFraction":F
    .local v6, "tracker":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    .restart local v7    # "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_3
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->isTracked()Z

    move-result v8

    if-nez v8, :cond_4

    .line 752
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 763
    .restart local v2    # "fractionalTest":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .restart local v3    # "fractionalTrackerCount":I
    .local v6, "tracker":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    :cond_5
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->isTracked()Z

    move-result v8

    if-nez v8, :cond_6

    .line 764
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 770
    .end local v0    # "absoluteTest":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    .end local v1    # "absoluteTrackerCount":I
    .end local v2    # "fractionalTest":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .end local v3    # "fractionalTrackerCount":I
    .end local v4    # "i":I
    .end local v5    # "progressFraction":F
    .end local v6    # "tracker":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .end local v7    # "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_3
.end method

.method public getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 418
    packed-switch p1, :pswitch_data_0

    .line 424
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    :goto_0
    return-object v0

    .line 420
    :pswitch_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    goto :goto_0

    .line 422
    :pswitch_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    return-object v0
.end method

.method public getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mVideoViewabilityTracker:Lcom/mopub/mobileads/VideoViewabilityTracker;

    return-object v0
.end method

.method public handleClickForResult(Landroid/app/Activity;II)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contentPlayHead"    # I
    .param p3, "requestCode"    # I

    .prologue
    .line 544
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->handleClick(Landroid/content/Context;ILjava/lang/Integer;)V

    .line 545
    return-void
.end method

.method public handleClickWithoutResult(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentPlayHead"    # I

    .prologue
    .line 556
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/mopub/mobileads/VastVideoConfig;->handleClick(Landroid/content/Context;ILjava/lang/Integer;)V

    .line 557
    return-void
.end method

.method public handleClose(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentPlayHead"    # I

    .prologue
    const/4 v3, 0x0

    .line 677
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCloseTrackers:Ljava/util/ArrayList;

    .line 681
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 678
    invoke-static {v0, v3, v1, v2, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 686
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipTrackers:Ljava/util/ArrayList;

    .line 689
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 686
    invoke-static {v0, v3, v1, v2, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 693
    return-void
.end method

.method public handleComplete(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentPlayHead"    # I

    .prologue
    .line 702
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCompleteTrackers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 706
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 703
    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 710
    return-void
.end method

.method public handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/VastErrorCode;
    .param p3, "contentPlayHead"    # I

    .prologue
    .line 721
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mErrorTrackers:Ljava/util/ArrayList;

    .line 725
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 722
    invoke-static {v0, p2, v1, v2, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 729
    return-void
.end method

.method public handleImpression(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentPlayHead"    # I

    .prologue
    .line 523
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mImpressionTrackers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 527
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 524
    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 531
    return-void
.end method

.method public handlePause(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentPlayHead"    # I

    .prologue
    .line 660
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPauseTrackers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 664
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 661
    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 668
    return-void
.end method

.method public handleResume(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentPlayHead"    # I

    .prologue
    .line 643
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mResumeTrackers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 647
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 644
    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 651
    return-void
.end method

.method public hasCompanionAd()Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomForceOrientationSet()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsForceOrientationSet:Z

    return v0
.end method

.method public isRewardedVideo()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsRewardedVideo:Z

    return v0
.end method

.method public setClickThroughUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickThroughUrl"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickThroughUrl:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setCustomCloseIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "customCloseIconUrl"    # Ljava/lang/String;

    .prologue
    .line 314
    if-eqz p1, :cond_0

    .line 315
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomCloseIconUrl:Ljava/lang/String;

    .line 317
    :cond_0
    return-void
.end method

.method public setCustomCtaText(Ljava/lang/String;)V
    .locals 0
    .param p1, "customCtaText"    # Ljava/lang/String;

    .prologue
    .line 302
    if-eqz p1, :cond_0

    .line 303
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomCtaText:Ljava/lang/String;

    .line 305
    :cond_0
    return-void
.end method

.method public setCustomForceOrientation(Lcom/mopub/common/util/DeviceUtils$ForceOrientation;)V
    .locals 1
    .param p1, "customForceOrientation"    # Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    .prologue
    .line 320
    if-eqz p1, :cond_0

    sget-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->UNDEFINED:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    if-eq p1, v0, :cond_0

    .line 321
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsForceOrientationSet:Z

    .line 324
    :cond_0
    return-void
.end method

.method public setCustomSkipText(Ljava/lang/String;)V
    .locals 0
    .param p1, "customSkipText"    # Ljava/lang/String;

    .prologue
    .line 308
    if-eqz p1, :cond_0

    .line 309
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomSkipText:Ljava/lang/String;

    .line 311
    :cond_0
    return-void
.end method

.method public setDiskMediaFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "diskMediaFileUrl"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDiskMediaFileUrl:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setDspCreativeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dspCreativeId"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDspCreativeId:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setIsRewardedVideo(Z)V
    .locals 0
    .param p1, "isRewardedVideo"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsRewardedVideo:Z

    .line 340
    return-void
.end method

.method public setNetworkMediaFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkMediaFileUrl"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setSkipOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "skipOffset"    # Ljava/lang/String;

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    .line 330
    :cond_0
    return-void
.end method

.method public setSocialActionsCompanionAds(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "socialActionsCompanionAds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mopub/mobileads/VastCompanionAdConfig;>;"
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSocialActionsCompanionAds:Ljava/util/Map;

    .line 295
    return-void
.end method

.method public setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V
    .locals 0
    .param p1, "landscapeVastCompanionAdConfig"    # Lcom/mopub/mobileads/VastCompanionAdConfig;
    .param p2, "portraitVastCompanionAdConfig"    # Lcom/mopub/mobileads/VastCompanionAdConfig;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 289
    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 290
    return-void
.end method

.method public setVastIconConfig(Lcom/mopub/mobileads/VastIconConfig;)V
    .locals 0
    .param p1, "vastIconConfig"    # Lcom/mopub/mobileads/VastIconConfig;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    .line 299
    return-void
.end method

.method public setVideoViewabilityTracker(Lcom/mopub/mobileads/VideoViewabilityTracker;)V
    .locals 0
    .param p1, "videoViewabilityTracker"    # Lcom/mopub/mobileads/VideoViewabilityTracker;

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 334
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mVideoViewabilityTracker:Lcom/mopub/mobileads/VideoViewabilityTracker;

    .line 336
    :cond_0
    return-void
.end method
