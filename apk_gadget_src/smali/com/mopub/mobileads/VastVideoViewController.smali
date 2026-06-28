.class public Lcom/mopub/mobileads/VastVideoViewController;
.super Lcom/mopub/mobileads/BaseVideoViewController;
.source "VastVideoViewController.java"


# static fields
.field public static final WEBVIEW_PADDING:I = 0x10


# instance fields
.field private mAdsByView:Landroid/view/View;

.field private mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

.field private mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

.field private final mClickThroughListener:Landroid/view/View$OnTouchListener;

.field private mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

.field private final mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

.field private mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

.field private mDuration:I

.field private mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field private mHasSkipOffset:Z

.field private mHasSocialActions:Z

.field private final mIconView:Landroid/view/View;

.field private mIsCalibrationDone:Z

.field private mIsClosing:Z

.field private mIsVideoFinishedPlaying:Z

.field private final mLandscapeCompanionAdView:Landroid/view/View;

.field private final mPortraitCompanionAdView:Landroid/view/View;

.field private mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

.field private final mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

.field private mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

.field private mSeekerPositionOnPause:I

.field private mShowCloseButtonDelay:I

.field private mShowCloseButtonEventFired:Z

.field private final mSocialActionsCompanionAds:Ljava/util/Map;
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

.field private final mSocialActionsView:Landroid/view/View;

.field private mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

.field private mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

.field private final mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

.field private final mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

.field private mVideoError:Z

.field private final mVideoView:Lcom/mopub/mobileads/VastVideoView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intentExtras"    # Landroid/os/Bundle;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "broadcastIdentifier"    # J
    .param p6, "baseVideoViewControllerListener"    # Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-direct {p0, p1, v1, v0}, Lcom/mopub/mobileads/BaseVideoViewController;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    .line 92
    const/16 v1, 0x1388

    iput v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 97
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSkipOffset:Z

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSocialActions:Z

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    .line 114
    const/4 v1, -0x1

    iput v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 116
    const/4 v10, 0x0

    .line 117
    .local v10, "resumedVastConfiguration":Ljava/io/Serializable;
    if-eqz p3, :cond_0

    .line 118
    const-string v1, "resumed_vast_config"

    .line 119
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    .line 121
    :cond_0
    const-string v1, "vast_video_config"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    .line 122
    .local v11, "serializable":Ljava/io/Serializable;
    if-eqz v10, :cond_1

    instance-of v1, v10, Lcom/mopub/mobileads/VastVideoConfig;

    if-eqz v1, :cond_1

    .line 124
    check-cast v10, Lcom/mopub/mobileads/VastVideoConfig;

    .end local v10    # "resumedVastConfiguration":Ljava/io/Serializable;
    iput-object v10, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 125
    const-string v1, "current_position"

    const/4 v2, -0x1

    .line 126
    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 133
    .end local v11    # "serializable":Ljava/io/Serializable;
    :goto_0
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 134
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VastVideoConfig does not have a video disk path"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    .restart local v10    # "resumedVastConfiguration":Ljava/io/Serializable;
    .restart local v11    # "serializable":Ljava/io/Serializable;
    :cond_1
    if-eqz v11, :cond_2

    instance-of v1, v11, Lcom/mopub/mobileads/VastVideoConfig;

    if-eqz v1, :cond_2

    .line 128
    check-cast v11, Lcom/mopub/mobileads/VastVideoConfig;

    .end local v11    # "serializable":Ljava/io/Serializable;
    iput-object v11, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    goto :goto_0

    .line 130
    .restart local v11    # "serializable":Ljava/io/Serializable;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VastVideoConfig is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    .end local v10    # "resumedVastConfiguration":Ljava/io/Serializable;
    .end local v11    # "serializable":Ljava/io/Serializable;
    :cond_3
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 138
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 137
    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 139
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getSocialActionsCompanionAds()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSocialActionsCompanionAds:Ljava/util/Map;

    .line 140
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    .line 142
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$1;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/VastVideoViewController$1;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    .line 162
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 165
    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/mopub/mobileads/VastVideoViewController;->addBlurredLastVideoFrameImageView(Landroid/content/Context;I)V

    .line 168
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/mopub/mobileads/VastVideoViewController;->createVideoView(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    .line 169
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoView;->requestFocus()Z

    .line 172
    new-instance v1, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {v1, p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 173
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1, p1, v2, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createVideoSession(Landroid/app/Activity;Landroid/view/View;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 177
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const/4 v2, 0x2

    .line 178
    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v1

    const/4 v2, 0x4

    .line 177
    invoke-virtual {p0, p1, v1, v2}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionAdView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    .line 180
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const/4 v2, 0x1

    .line 181
    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v1

    const/4 v2, 0x4

    .line 180
    invoke-virtual {p0, p1, v1, v2}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionAdView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    .line 185
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->addTopGradientStripWidget(Landroid/content/Context;)V

    .line 188
    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/mopub/mobileads/VastVideoViewController;->addProgressBarWidget(Landroid/content/Context;I)V

    .line 191
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->addBottomGradientStripWidget(Landroid/content/Context;)V

    .line 194
    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/mopub/mobileads/VastVideoViewController;->addRadialCountdownWidget(Landroid/content/Context;I)V

    .line 197
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v1, v2}, Lcom/mopub/mobileads/VastVideoViewController;->createIconView(Landroid/content/Context;Lcom/mopub/mobileads/VastIconConfig;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    .line 198
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/mopub/mobileads/VastVideoViewController$2;

    invoke-direct {v2, p0, p1}, Lcom/mopub/mobileads/VastVideoViewController$2;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->addCtaButtonWidget(Landroid/content/Context;)V

    .line 213
    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v1, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v4

    .line 215
    .local v4, "ctaHeight":I
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSocialActionsCompanionAds:Ljava/util/Map;

    const-string v2, "socialActions"

    .line 216
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/mobileads/VastCompanionAdConfig;

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    const/4 v7, 0x4

    const/16 v8, 0x10

    move-object v1, p0

    move-object v2, p1

    .line 215
    invoke-virtual/range {v1 .. v8}, Lcom/mopub/mobileads/VastVideoViewController;->createSocialActionsView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;IILandroid/view/View;II)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSocialActionsView:Landroid/view/View;

    .line 222
    const/16 v1, 0x8

    invoke-direct {p0, p1, v1}, Lcom/mopub/mobileads/VastVideoViewController;->addCloseButtonWidget(Landroid/content/Context;I)V

    .line 224
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    const/4 v2, 0x7

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    aput-object v5, v2, v3

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    aput-object v5, v2, v3

    const/4 v3, 0x5

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSocialActionsView:Landroid/view/View;

    aput-object v5, v2, v3

    const/4 v3, 0x6

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    aput-object v5, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstructions(Ljava/util/List;)V

    .line 228
    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 229
    .local v9, "mainHandler":Landroid/os/Handler;
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {v1, p0, v2, v9}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoConfig;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    .line 231
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    invoke-direct {v1, p0, v9}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->shouldAllowClickThrough()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSocialActions:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mopub/mobileads/VastVideoViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopRunnables()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoCtaButtonWidget;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/VastVideoViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    return v0
.end method

.method static synthetic access$402(Lcom/mopub/mobileads/VastVideoViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    return p1
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mopub/mobileads/VastVideoViewController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mAdsByView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->adjustSkipOffset()V

    return-void
.end method

.method private addBlurredLastVideoFrameImageView(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialVisibility"    # I

    .prologue
    const/4 v2, -0x1

    .line 599
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    .line 600
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 605
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    return-void
.end method

.method private addBottomGradientStripWidget(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 512
    .local v4, "hasCompanionAd":Z
    :goto_0
    new-instance v0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 514
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x2

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 518
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->getId()I

    move-result v7

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;Lcom/mopub/common/util/DeviceUtils$ForceOrientation;ZIII)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    .line 519
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 520
    return-void

    .line 510
    .end local v4    # "hasCompanionAd":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private addCloseButtonWidget(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialVisibility"    # I

    .prologue
    .line 555
    new-instance v3, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-direct {v3, p1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    .line 556
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, p2}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setVisibility(I)V

    .line 558
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 560
    new-instance v0, Lcom/mopub/mobileads/VastVideoViewController$6;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/VastVideoViewController$6;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 581
    .local v0, "closeOnTouchListener":Landroid/view/View$OnTouchListener;
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, v0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    .line 584
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, "customSkipText":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 586
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, v2}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->updateCloseButtonText(Ljava/lang/String;)V

    .line 590
    :cond_0
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "customCloseIconUrl":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 592
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v3, v1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->updateCloseButtonIcon(Ljava/lang/String;)V

    .line 594
    :cond_1
    return-void
.end method

.method private addCtaButtonWidget(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 536
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v5, :cond_1

    move v2, v3

    .line 537
    .local v2, "hasCompanionAd":Z
    :goto_0
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 538
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v5

    .line 537
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    .line 540
    .local v1, "hasClickthroughUrl":Z
    :goto_1
    new-instance v3, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoView;->getId()I

    move-result v4

    invoke-direct {v3, p1, v4, v2, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;-><init>(Landroid/content/Context;IZZ)V

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    .line 543
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 545
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 548
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "customCtaText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 550
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v3, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->updateCtaText(Ljava/lang/String;)V

    .line 552
    :cond_0
    return-void

    .end local v0    # "customCtaText":Ljava/lang/String;
    .end local v1    # "hasClickthroughUrl":Z
    .end local v2    # "hasCompanionAd":Z
    :cond_1
    move v2, v4

    .line 536
    goto :goto_0

    .restart local v2    # "hasCompanionAd":Z
    :cond_2
    move v1, v4

    .line 537
    goto :goto_1
.end method

.method private addProgressBarWidget(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialVisibility"    # I

    .prologue
    .line 523
    new-instance v0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 524
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setAnchorId(I)V

    .line 525
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 526
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 527
    return-void
.end method

.method private addRadialCountdownWidget(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialVisibility"    # I

    .prologue
    .line 530
    new-instance v0, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    .line 531
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setVisibility(I)V

    .line 532
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 533
    return-void
.end method

.method private addTopGradientStripWidget(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 497
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 499
    .local v4, "hasCompanionAd":Z
    :goto_0
    new-instance v0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 501
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v3

    const/4 v6, 0x6

    .line 505
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;Lcom/mopub/common/util/DeviceUtils$ForceOrientation;ZIII)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    .line 506
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 507
    return-void

    .end local v4    # "hasCompanionAd":Z
    :cond_0
    move v4, v5

    .line 497
    goto :goto_0
.end method

.method private adjustSkipOffset()V
    .locals 3

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v1

    .line 373
    .local v1, "videoDuration":I
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->isRewardedVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    iput v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const/16 v2, 0x3e80

    if-ge v1, v2, :cond_2

    .line 380
    iput v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 384
    :cond_2
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffsetMillis(I)Ljava/lang/Integer;

    move-result-object v0

    .line 385
    .local v0, "skipOffsetMillis":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 387
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSkipOffset:Z

    goto :goto_0
.end method

.method private createCompanionVastWebView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;)Lcom/mopub/mobileads/VastWebView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vastCompanionAdConfig"    # Lcom/mopub/mobileads/VastCompanionAdConfig;

    .prologue
    .line 846
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 847
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 850
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v1

    .line 849
    invoke-static {p1, v1}, Lcom/mopub/mobileads/VastWebView;->createView(Landroid/content/Context;Lcom/mopub/mobileads/VastResource;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v0

    .line 857
    .local v0, "companionView":Lcom/mopub/mobileads/VastWebView;
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/mopub/mobileads/VastVideoViewController$9;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastCompanionAdConfig;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastWebView;->setVastWebViewClickListener(Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;)V

    .line 871
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/mopub/mobileads/VastVideoViewController$10;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastCompanionAdConfig;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 879
    return-object v0
.end method

.method private createVideoView(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialVisibility"    # I

    .prologue
    .line 392
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 393
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VastVideoConfig does not have a video disk path"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/VastVideoView;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastVideoView;-><init>(Landroid/content/Context;)V

    .line 397
    .local v0, "videoView":Lcom/mopub/mobileads/VastVideoView;
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setId(I)V

    .line 399
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$3;

    invoke-direct {v1, p0, v0}, Lcom/mopub/mobileads/VastVideoViewController$3;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 417
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 419
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/mopub/mobileads/VastVideoViewController$4;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 473
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$5;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VastVideoViewController$5;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 490
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoView;->setVisibility(I)V

    .line 493
    return-object v0
.end method

.method private shouldAllowClickThrough()Z
    .locals 1

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method private startRunnables()V
    .locals 4

    .prologue
    .line 834
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->startRepeating(J)V

    .line 835
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->startRepeating(J)V

    .line 836
    return-void
.end method

.method private stopRunnables()V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->stop()V

    .line 840
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->stop()V

    .line 841
    return-void
.end method


# virtual methods
.method public backButtonEnabled()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method createAdsByView(Landroid/app/Activity;)Landroid/view/View;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSocialActionsCompanionAds:Ljava/util/Map;

    const-string v1, "adsBy"

    .line 237
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x6

    move-object v0, p0

    move-object v1, p1

    .line 236
    invoke-virtual/range {v0 .. v7}, Lcom/mopub/mobileads/VastVideoViewController;->createSocialActionsView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;IILandroid/view/View;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method createCompanionAdView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;I)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vastCompanionAdConfig"    # Lcom/mopub/mobileads/VastCompanionAdConfig;
    .param p3, "initialVisibility"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 620
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 622
    if-nez p2, :cond_0

    .line 623
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 624
    .local v2, "emptyView":Landroid/view/View;
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 647
    .end local v2    # "emptyView":Landroid/view/View;
    :goto_0
    return-object v2

    .line 628
    :cond_0
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 629
    .local v4, "relativeLayout":Landroid/widget/RelativeLayout;
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 630
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 634
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 636
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionVastWebView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v1

    .line 638
    .local v1, "companionView":Lcom/mopub/mobileads/VastWebView;
    invoke-virtual {v1, p3}, Lcom/mopub/mobileads/VastWebView;->setVisibility(I)V

    .line 640
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 641
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    int-to-float v5, v5

    invoke-static {v5, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v5

    .line 642
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    int-to-float v6, v6

    invoke-static {v6, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 644
    .local v0, "companionAdLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 646
    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v1

    .line 647
    goto :goto_0
.end method

.method createIconView(Landroid/content/Context;Lcom/mopub/mobileads/VastIconConfig;I)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vastIconConfig"    # Lcom/mopub/mobileads/VastIconConfig;
    .param p3, "initialVisibility"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    .line 716
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 718
    if-nez p2, :cond_0

    .line 719
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 757
    :goto_0
    return-object v0

    .line 722
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastIconConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mopub/mobileads/VastWebView;->createView(Landroid/content/Context;Lcom/mopub/mobileads/VastResource;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v0

    .line 723
    .local v0, "iconView":Lcom/mopub/mobileads/VastWebView;
    new-instance v4, Lcom/mopub/mobileads/VastVideoViewController$7;

    invoke-direct {v4, p0, p2, p1}, Lcom/mopub/mobileads/VastVideoViewController$7;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastIconConfig;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/VastWebView;->setVastWebViewClickListener(Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;)V

    .line 736
    new-instance v4, Lcom/mopub/mobileads/VastVideoViewController$8;

    invoke-direct {v4, p0, p2}, Lcom/mopub/mobileads/VastVideoViewController$8;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastIconConfig;)V

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/VastWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 743
    invoke-virtual {v0, p3}, Lcom/mopub/mobileads/VastWebView;->setVisibility(I)V

    .line 745
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 747
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastIconConfig;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v4

    .line 748
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastIconConfig;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 749
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v6, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 751
    .local v2, "leftMargin":I
    invoke-static {v6, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    .line 753
    .local v3, "topMargin":I
    invoke-virtual {v1, v2, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 755
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method createSocialActionsView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;IILandroid/view/View;II)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vastCompanionAdConfig"    # Lcom/mopub/mobileads/VastCompanionAdConfig;
    .param p3, "anchorHeight"    # I
    .param p4, "layoutVerb"    # I
    .param p5, "anchorView"    # Landroid/view/View;
    .param p6, "initialVisibility"    # I
    .param p7, "leftMarginDips"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 667
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 668
    invoke-static/range {p5 .. p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 670
    if-nez p2, :cond_0

    .line 671
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 672
    .local v3, "emptyView":Landroid/view/View;
    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 703
    .end local v3    # "emptyView":Landroid/view/View;
    :goto_0
    return-object v3

    .line 676
    :cond_0
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSocialActions:Z

    .line 677
    iget-object v10, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    iget-boolean v11, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSocialActions:Z

    invoke-virtual {v10, v11}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setHasSocialActions(Z)V

    .line 679
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionVastWebView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v2

    .line 681
    .local v2, "companionView":Lcom/mopub/mobileads/VastWebView;
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v10, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v9

    .line 682
    .local v9, "width":I
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v10, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v4

    .line 683
    .local v4, "height":I
    sub-int v10, p3, v4

    div-int/lit8 v7, v10, 0x2

    .line 684
    .local v7, "offset":I
    move/from16 v0, p7

    int-to-float v10, v0

    invoke-static {v10, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v6

    .line 686
    .local v6, "leftMargin":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 688
    .local v1, "companionAdLayout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v10

    move/from16 v0, p4

    invoke-virtual {v1, v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 689
    const/4 v10, 0x6

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 690
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v6, v7, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 692
    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-direct {v8, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 693
    .local v8, "relativeLayout":Landroid/widget/RelativeLayout;
    const/16 v10, 0x10

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 694
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 698
    .local v5, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v8, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v10, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/VastWebView;->setVisibility(I)V

    move-object v3, v2

    .line 703
    goto :goto_0
.end method

.method getCurrentPosition()I
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method getDuration()I
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method getNetworkMediaFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    if-nez v0, :cond_0

    .line 794
    const/4 v0, 0x0

    .line 796
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getVideoView()Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    return-object v0
.end method

.method handleIconDisplay(I)V
    .locals 3
    .param p1, "currentPosition"    # I

    .prologue
    .line 807
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getOffsetMS()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 812
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/mopub/mobileads/VastIconConfig;->handleImpression(Landroid/content/Context;ILjava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getDurationMS()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getOffsetMS()I

    move-result v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastIconConfig;->getDurationMS()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method handleViewabilityQuartileEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "enumValue"    # Ljava/lang/String;

    .prologue
    .line 824
    const-class v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-static {v1, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 826
    .local v0, "videoEvent":Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 827
    return-void
.end method

.method makeVideoInteractable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    .line 771
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setVisibility(I)V

    .line 772
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->notifyVideoSkippable()V

    .line 775
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSocialActionsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 776
    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 364
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    .line 367
    :cond_0
    return-void
.end method

.method protected onBackPressed()V
    .locals 3

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_SKIPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 354
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 333
    .local v0, "orientation":I
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 334
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    .line 335
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 336
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 337
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :goto_0
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    invoke-virtual {v1, v2, v3}, Lcom/mopub/mobileads/VastCompanionAdConfig;->handleImpression(Landroid/content/Context;I)V

    .line 347
    :cond_1
    return-void

    .line 340
    :cond_2
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate()V
    .locals 3

    .prologue
    .line 263
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->onCreate()V

    .line 265
    sget-object v0, Lcom/mopub/mobileads/VastVideoViewController$11;->$SwitchMap$com$mopub$common$util$DeviceUtils$ForceOrientation:[I

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 280
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleImpression(Landroid/content/Context;I)V

    .line 281
    const-string v0, "com.mopub.action.interstitial.show"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 282
    return-void

    .line 267
    :pswitch_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onSetRequestedOrientation(I)V

    goto :goto_0

    .line 270
    :pswitch_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onSetRequestedOrientation(I)V

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopRunnables()V

    .line 317
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_STOPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 318
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endVideoSession()V

    .line 319
    const-string v0, "com.mopub.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->onDestroy()V

    .line 322
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopRunnables()V

    .line 306
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 307
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->pause()V

    .line 308
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_PAUSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 310
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handlePause(Landroid/content/Context;I)V

    .line 312
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->startRunnables()V

    .line 288
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    if-lez v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_PLAYING:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 290
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->seekTo(I)V

    .line 295
    :goto_0
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->start()V

    .line 298
    :cond_0
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 299
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleResume(Landroid/content/Context;I)V

    .line 301
    :cond_1
    return-void

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_LOADED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 326
    const-string v0, "current_position"

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    const-string v0, "resumed_vast_config"

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 328
    return-void
.end method

.method shouldBeInteractable()Z
    .locals 2

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateCountdown()V
    .locals 3

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->updateCountdownProgress(II)V

    .line 786
    :cond_0
    return-void
.end method

.method updateProgressBar()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->updateProgress(I)V

    .line 790
    return-void
.end method
