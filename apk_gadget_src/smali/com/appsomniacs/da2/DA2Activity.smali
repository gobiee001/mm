.class public Lcom/appsomniacs/da2/DA2Activity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "DA2Activity.java"

# interfaces
.implements Lcom/amazon/device/ads/ExtendedAdListener;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;,
        Lcom/appsomniacs/da2/DA2Activity$AppsomniacsGooglePlayLicenseCheckerCallback;,
        Lcom/appsomniacs/da2/DA2Activity$OnlineCheckTask;
    }
.end annotation


# static fields
.field private static ANDROID_ID:Ljava/lang/String;

.field private static PHONE_ID:Ljava/lang/String;

.field private static final SALT:[B

.field private static SALTSTEP:I

.field private static USER_ID:Ljava/lang/String;

.field private static USER_ID_G:Ljava/lang/String;

.field public static final _lockGpgInit:Ljava/lang/Object;

.field private static dialogKeepLuminatiEnabledListener:Landroid/content/DialogInterface$OnClickListener;

.field private static hasKickedOffLeaderboardFetch:Z

.field private static isWaitingToRetryBannerAdLoad:Z

.field private static ism_HasCompletedInitialGoogleServicesCheck:Z

.field private static ism_HasGoogleServicesInstalled:Z

.field private static ism_WarnedOnceAboutGooglePlayInstall:Z

.field private static mBillingStatusMessage:Ljava/lang/String;

.field private static mFoundAchievementState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mFoundAchievementSteps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mFoundLeaderboardIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mFoundLeaderboardScores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mHasForcedAchievementReload:Z

.field private static mHasForcedLeaderboardReload:Z

.field private static m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

.field private static m_IsSupersonicRewardedAdReady:Z

.field private static m_ResultOfPrepareRewardedAdCall:Z

.field private static m_hasInitializedLuminati:Z

.field private static m_hasPassedFLC:Z

.field private static m_hasPassedRLC:Z

.field private static m_isAllowingOnlineActivities:Z

.field private static m_rnd:Ljava/security/SecureRandom;

.field private static m_skuPriceLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_AllowedRewardedVideoSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_ConfigKey_LuminatiSentry:Ljava/lang/String;

.field private static s_ConfigKey_RewardedVideoTimeAward:Ljava/lang/String;

.field private static s_ResultOfShowRewardedAdCall:Z

.field private static s_RewardedVideo_ProPackTrial_MoPubAdunit:Ljava/lang/String;

.field private static s_Using_RVIronSourceSupersonic:Z

.field private static s_Using_RVMoPub:Z

.field private static s_allowLuminatiParticipation:Z

.field private static s_config_rt:I

.field private static s_hasSeenLuminatiPromptOnce:Z

.field private static s_onlineCheckLock:Ljava/util/concurrent/locks/Lock;

.field private static final staticRunner_prepareRewardedAd:Ljava/lang/Runnable;

.field private static final staticRunner_showRewardedAd:Ljava/lang/Runnable;


# instance fields
.field amazonGameFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/amazon/ags/api/AmazonGamesFeature;",
            ">;"
        }
    .end annotation
.end field

.field private da2AmazonIapManager:Lcom/amazon/iap/util/DA2IapManager;

.field private init_view_settings:Ljava/lang/Runnable;

.field private isM_WindowChangeListenerSetup:Z

.field private luminatiSelectionListener:Lio/topvpn/vpn_api/api$on_selection_listener;

.field private mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

.field mAlertsShown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoStartSignInFlow:Z

.field private mCountOfIapHelperAsyncOperations:I

.field private mExpectedLeaderboardCount:I

.field private mFetchAttemptsMaxPerScore:I

.field private mFetchStepPauseExponent:D

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field mGooglePlayIabConsumeFinishedListener:Lcom/android/util/IabHelper$OnConsumeFinishedListener;

.field private mGooglePlayIabGotInventoryListener:Lcom/android/util/IabHelper$QueryInventoryFinishedListener;

.field private mGooglePlayIabHelper:Lcom/android/util/IabHelper;

.field private mGooglePlayIabHelperDestroyed:Z

.field mGooglePlayIabPurchaseFinishedListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

.field private mGooglePlayLicenceChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mGooglePlayLicenceChecker2:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mGooglePlayLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field private mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private mGpgSignInClicked:Z

.field private mHandler:Landroid/os/Handler;

.field private mLeaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

.field private mMsBetweenScoreFetchStart:I

.field private mResolvingConnectionFailure:Z

.field private m_IronSourceSupersonicRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

.field private m_IsIronSourceSupersonicRewardedVideoInitialized:Z

.field private m_IsMoPubRewardedVideoInitialized:Z

.field private m_MoPubRewardedVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

.field private m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

.field private m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

.field private m_amazonGamesCallback:Lcom/amazon/ags/api/AmazonGamesCallback;

.field private m_amazonGamesClient:Lcom/amazon/ags/api/AmazonGamesClient;

.field private m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

.field private m_analyticsAttributeMap:Ljava/util/Map;
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

.field private m_appLayout:Landroid/widget/FrameLayout;

.field private m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

.field private m_hasAmazonGamesClientInitializedJni:Z

.field private m_isAmazonInterstitialAdReady:Z

.field private m_isAppLovinInterstitialAdReady:Z

.field m_isGooglePlayIabSetup:Z

.field private m_isSessionEstablished:Z

.field private m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private m_mopubView:Lcom/mopub/mobileads/MoPubView;

.field private m_relAppLayout:Landroid/widget/RelativeLayout;

.field private m_relBannerParam:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 236
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->m_hasPassedFLC:Z

    .line 238
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->m_hasPassedRLC:Z

    .line 243
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->m_isAllowingOnlineActivities:Z

    .line 244
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->s_onlineCheckLock:Ljava/util/concurrent/locks/Lock;

    .line 375
    sput v5, Lcom/appsomniacs/da2/DA2Activity;->s_config_rt:I

    .line 404
    sput v5, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 405
    const/16 v1, 0x14

    new-array v1, v1, [B

    sget v2, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 407
    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    sget v2, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 408
    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    const/4 v2, 0x2

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 409
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 410
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 411
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 412
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 413
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 414
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 415
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 416
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 417
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xb

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 418
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 419
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xd

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 420
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xe

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 421
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 422
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x10

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 423
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x11

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 424
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x12

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 425
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x13

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 426
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->SALT:[B

    .line 997
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->m_hasInitializedLuminati:Z

    .line 1048
    const-string v1, "lc"

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->s_ConfigKey_LuminatiSentry:Ljava/lang/String;

    .line 1049
    const-string v1, "rt"

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->s_ConfigKey_RewardedVideoTimeAward:Ljava/lang/String;

    .line 1051
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->s_hasSeenLuminatiPromptOnce:Z

    .line 1052
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->s_allowLuminatiParticipation:Z

    .line 1331
    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$7;

    invoke-direct {v1}, Lcom/appsomniacs/da2/DA2Activity$7;-><init>()V

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->dialogKeepLuminatiEnabledListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1592
    :try_start_0
    const-string v1, "AmazonGamesJni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1599
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const-string v1, "cocos2dcpp"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1640
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->ism_HasCompletedInitialGoogleServicesCheck:Z

    .line 1641
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->ism_HasGoogleServicesInstalled:Z

    .line 1643
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->ism_WarnedOnceAboutGooglePlayInstall:Z

    .line 1980
    sput-boolean v6, Lcom/appsomniacs/da2/DA2Activity;->s_Using_RVMoPub:Z

    .line 1981
    sput-boolean v6, Lcom/appsomniacs/da2/DA2Activity;->s_Using_RVIronSourceSupersonic:Z

    .line 1990
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->m_IsSupersonicRewardedAdReady:Z

    .line 1996
    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$14;

    invoke-direct {v1}, Lcom/appsomniacs/da2/DA2Activity$14;-><init>()V

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->staticRunner_prepareRewardedAd:Ljava/lang/Runnable;

    .line 2137
    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$15;

    invoke-direct {v1}, Lcom/appsomniacs/da2/DA2Activity$15;-><init>()V

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->staticRunner_showRewardedAd:Ljava/lang/Runnable;

    .line 3719
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->isWaitingToRetryBannerAdLoad:Z

    .line 3916
    const-string v1, ""

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    .line 4051
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->m_skuPriceLookup:Ljava/util/HashMap;

    .line 4241
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->_lockGpgInit:Ljava/lang/Object;

    .line 4496
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->mHasForcedAchievementReload:Z

    .line 4497
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->mFoundAchievementSteps:Ljava/util/Map;

    .line 4498
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->mFoundAchievementState:Ljava/util/Map;

    .line 4753
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->mFoundLeaderboardScores:Ljava/util/Map;

    .line 4754
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->mFoundLeaderboardIds:Ljava/util/Map;

    .line 4755
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->mHasForcedLeaderboardReload:Z

    .line 4801
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->hasKickedOffLeaderboardFetch:Z

    return-void

    .line 1593
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 1594
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "DA2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AmazonGamesJni Lib not found. Which is ok if not building for Amazon...\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 226
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 343
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->mResolvingConnectionFailure:Z

    .line 344
    iput-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mAutoStartSignInFlow:Z

    .line 345
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->mGpgSignInClicked:Z

    .line 348
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 349
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_appLayout:Landroid/widget/FrameLayout;

    .line 350
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_relBannerParam:Landroid/widget/RelativeLayout$LayoutParams;

    .line 351
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_relAppLayout:Landroid/widget/RelativeLayout;

    .line 353
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    .line 354
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 355
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    .line 356
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    .line 357
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoLocation(Z)Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 358
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAmazonInterstitialAdReady:Z

    .line 359
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAppLovinInterstitialAdReady:Z

    .line 556
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_hasAmazonGamesClientInitializedJni:Z

    .line 558
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$2;

    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity$2;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonGamesCallback:Lcom/amazon/ags/api/AmazonGamesCallback;

    .line 581
    sget-object v0, Lcom/amazon/ags/api/AmazonGamesFeature;->Achievements:Lcom/amazon/ags/api/AmazonGamesFeature;

    sget-object v1, Lcom/amazon/ags/api/AmazonGamesFeature;->Leaderboards:Lcom/amazon/ags/api/AmazonGamesFeature;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->amazonGameFeatures:Ljava/util/EnumSet;

    .line 1231
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$6;

    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity$6;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->luminatiSelectionListener:Lio/topvpn/vpn_api/api$on_selection_listener;

    .line 1411
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->isM_WindowChangeListenerSetup:Z

    .line 1986
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsIronSourceSupersonicRewardedVideoInitialized:Z

    .line 1987
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    .line 2324
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$16;

    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity$16;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    .line 2431
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$17;

    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity$17;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_MoPubRewardedVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    .line 3125
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$24;

    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity$24;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->init_view_settings:Ljava/lang/Runnable;

    .line 3922
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isGooglePlayIabSetup:Z

    .line 4096
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$28;

    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity$28;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabGotInventoryListener:Lcom/android/util/IabHelper$QueryInventoryFinishedListener;

    .line 4756
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mMsBetweenScoreFetchStart:I

    .line 4757
    const/16 v0, 0xa

    iput v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mFetchAttemptsMaxPerScore:I

    .line 4758
    const/4 v0, 0x7

    iput v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mExpectedLeaderboardCount:I

    .line 4759
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mFetchStepPauseExponent:D

    .line 5042
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mAlertsShown:Ljava/util/Map;

    .line 5248
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$47;

    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity$47;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabPurchaseFinishedListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 5318
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$48;

    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity$48;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabConsumeFinishedListener:Lcom/android/util/IabHelper$OnConsumeFinishedListener;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_analyticsAttributeMap:Ljava/util/Map;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appsomniacs/da2/DA2Activity;->s_AllowedRewardedVideoSources:Ljava/util/List;

    .line 230
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->s_AllowedRewardedVideoSources:Ljava/util/List;

    const-string v1, "MP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->s_AllowedRewardedVideoSources:Ljava/util/List;

    const-string v1, "IS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method private static ParseLuminatiSettingsFromConfig(Lorg/json/JSONObject;)V
    .locals 9
    .param p0, "configJsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1149
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->s_ConfigKey_LuminatiSentry:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1150
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->s_ConfigKey_LuminatiSentry:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1151
    .local v3, "luminatiConfigState":I
    packed-switch v3, :pswitch_data_0

    .line 1165
    :pswitch_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->disallowLuminatiParticipation()V

    .line 1171
    :goto_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1172
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1173
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-nez v0, :cond_1

    .line 1174
    const-string v5, "Activity Not Found"

    const-string v6, "ParseLuminatiSettingsFromConfig"

    invoke-static {v5, v6}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->disallowLuminatiParticipation()V

    .line 1185
    .end local v0    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "luminatiConfigState":I
    :cond_0
    :goto_1
    return-void

    .line 1154
    .restart local v3    # "luminatiConfigState":I
    :pswitch_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->allowLuminatiParticipation()V

    goto :goto_0

    .line 1159
    :pswitch_2
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->removeLuminatiParticipation()V

    .line 1160
    const/4 v3, 0x0

    .line 1162
    goto :goto_0

    .line 1178
    .restart local v0    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    invoke-virtual {v0, v8}, Lcom/appsomniacs/da2/DA2Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1179
    .local v4, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1180
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "%s%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "com.appsomniacs.da2.config"

    aput-object v7, v6, v8

    const/4 v7, 0x1

    sget-object v8, Lcom/appsomniacs/da2/DA2Activity;->s_ConfigKey_LuminatiSentry:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1181
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1182
    const-string v6, "DA2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Luminati Preference Saved: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->s_allowLuminatiParticipation:Z

    if-eqz v5, :cond_2

    const-string v5, "1 (ALLOW)"

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v5, "0 (DISALLOW)"

    goto :goto_2

    .line 1151
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->s_onlineCheckLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/appsomniacs/da2/DA2Activity;->m_isAllowingOnlineActivities:Z

    return v0
.end method

.method static synthetic access$1000(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 209
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->getLuminatiChoiceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 209
    sput-boolean p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAllowingOnlineActivities:Z

    return p0
.end method

.method static synthetic access$1100()V
    .locals 0

    .prologue
    .line 209
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeRewardedAdReset()V

    return-void
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 209
    sput-boolean p0, Lcom/appsomniacs/da2/DA2Activity;->s_hasSeenLuminatiPromptOnce:Z

    return p0
.end method

.method static synthetic access$1300()V
    .locals 0

    .prologue
    .line 209
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->showLuminatiRetentionPrompt()V

    return-void
.end method

.method static synthetic access$1400(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initDefaultLayout()V

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/appsomniacs/da2/DA2Activity;->ism_WarnedOnceAboutGooglePlayInstall:Z

    return v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 209
    sput-boolean p0, Lcom/appsomniacs/da2/DA2Activity;->ism_WarnedOnceAboutGooglePlayInstall:Z

    return p0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 209
    sput-boolean p0, Lcom/appsomniacs/da2/DA2Activity;->m_ResultOfPrepareRewardedAdCall:Z

    return p0
.end method

.method static synthetic access$1802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 209
    sput-boolean p0, Lcom/appsomniacs/da2/DA2Activity;->s_ResultOfShowRewardedAdCall:Z

    return p0
.end method

.method static synthetic access$1900()V
    .locals 0

    .prologue
    .line 209
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeRewardedAdClosed()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 209
    invoke-static {p0, p1}, Lcom/appsomniacs/da2/DA2Activity;->canResolveNameToAddress(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 209
    sput-boolean p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsSupersonicRewardedAdReady:Z

    return p0
.end method

.method static synthetic access$2100()V
    .locals 0

    .prologue
    .line 209
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeRewardedAdCompleted()V

    return-void
.end method

.method static synthetic access$2200(Lcom/appsomniacs/da2/DA2Activity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    return v0
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->s_RewardedVideo_ProPackTrial_MoPubAdunit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/appsomniacs/da2/DA2Activity;)Lcom/mopub/mobileads/MoPubView;
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 209
    sput-boolean p0, Lcom/appsomniacs/da2/DA2Activity;->isWaitingToRetryBannerAdLoad:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/appsomniacs/da2/DA2Activity;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/appsomniacs/da2/DA2Activity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->getSkus()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/appsomniacs/da2/DA2Activity;)Lcom/android/util/IabHelper;
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    return-object v0
.end method

.method static synthetic access$3000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_skuPriceLookup:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 209
    sput-object p0, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->incrementIapAsyncOperationInProgressCounter()V

    return-void
.end method

.method static synthetic access$3300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {p0, p1, p2}, Lcom/appsomniacs/da2/DA2Activity;->nativeRegisterPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->decrementIapAsyncOperationsInProgressCounter()V

    return-void
.end method

.method static synthetic access$3500(Lcom/appsomniacs/da2/DA2Activity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->tryInitGPGS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/appsomniacs/da2/DA2Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;
    .param p1, "x1"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/appsomniacs/da2/DA2Activity;->onConnected(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->onDisconnected()V

    return-void
.end method

.method static synthetic access$3800(Lcom/appsomniacs/da2/DA2Activity;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;
    .param p1, "x1"    # Ljava/lang/Exception;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/appsomniacs/da2/DA2Activity;->handleGpgsException(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 209
    sput-boolean p0, Lcom/appsomniacs/da2/DA2Activity;->mHasForcedAchievementReload:Z

    return p0
.end method

.method static synthetic access$400(Lcom/appsomniacs/da2/DA2Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/appsomniacs/da2/DA2Activity;->displayResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->mFoundAchievementSteps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->mFoundAchievementState:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4200(ZLjava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Z
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 209
    invoke-static {p0, p1, p2, p3}, Lcom/appsomniacs/da2/DA2Activity;->nativeFetchAllAchievementsCallback(ZLjava/lang/String;II)V

    return-void
.end method

.method static synthetic access$4302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 209
    sput-boolean p0, Lcom/appsomniacs/da2/DA2Activity;->mHasForcedLeaderboardReload:Z

    return p0
.end method

.method static synthetic access$4400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->mFoundLeaderboardIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/appsomniacs/da2/DA2Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 209
    invoke-direct {p0, p1, p2, p3}, Lcom/appsomniacs/da2/DA2Activity;->tryFetchGpgsScore(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/appsomniacs/da2/DA2Activity;)I
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mMsBetweenScoreFetchStart:I

    return v0
.end method

.method static synthetic access$4700(Lcom/appsomniacs/da2/DA2Activity;)I
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mFetchAttemptsMaxPerScore:I

    return v0
.end method

.method static synthetic access$4800(Lcom/appsomniacs/da2/DA2Activity;)I
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mExpectedLeaderboardCount:I

    return v0
.end method

.method static synthetic access$4900(Lcom/appsomniacs/da2/DA2Activity;)D
    .locals 2
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mFetchStepPauseExponent:D

    return-wide v0
.end method

.method static synthetic access$500(Lcom/appsomniacs/da2/DA2Activity;)Lcom/amazon/ags/api/AmazonGamesClient;
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonGamesClient:Lcom/amazon/ags/api/AmazonGamesClient;

    return-object v0
.end method

.method static synthetic access$5000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->mFoundLeaderboardScores:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$502(Lcom/appsomniacs/da2/DA2Activity;Lcom/amazon/ags/api/AmazonGamesClient;)Lcom/amazon/ags/api/AmazonGamesClient;
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;
    .param p1, "x1"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonGamesClient:Lcom/amazon/ags/api/AmazonGamesClient;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->checkAndAlertForLeaderboardLoadCompletion()V

    return-void
.end method

.method static synthetic access$600(Lcom/appsomniacs/da2/DA2Activity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_hasAmazonGamesClientInitializedJni:Z

    return v0
.end method

.method static synthetic access$602(Lcom/appsomniacs/da2/DA2Activity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;
    .param p1, "x1"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_hasAmazonGamesClientInitializedJni:Z

    return p1
.end method

.method static synthetic access$700(Lcom/appsomniacs/da2/DA2Activity;)Lio/topvpn/vpn_api/api$on_selection_listener;
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->luminatiSelectionListener:Lio/topvpn/vpn_api/api$on_selection_listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->showLuminatiOptInDialog()V

    return-void
.end method

.method static synthetic access$900()V
    .locals 0

    .prologue
    .line 209
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->rechargeLuminatiTrial()V

    return-void
.end method

.method public static allowFullUtf8InJniCalls()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1809
    :try_start_0
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1810
    .local v3, "stringArray":[Ljava/lang/String;
    array-length v6, v3

    new-array v1, v6, [I

    .line 1811
    .local v1, "intArray":[I
    array-length v6, v3

    if-lez v6, :cond_0

    .line 1812
    const/4 v6, 0x0

    aget-object v2, v3, v6

    .line 1813
    .local v2, "numberAsString":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v6

    .line 1814
    const/4 v6, 0x0

    aget v6, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    .line 1818
    .end local v1    # "intArray":[I
    .end local v2    # "numberAsString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .restart local v1    # "intArray":[I
    .restart local v2    # "numberAsString":Ljava/lang/String;
    :cond_1
    move v4, v5

    .line 1814
    goto :goto_0

    .line 1817
    .end local v1    # "intArray":[I
    .end local v2    # "numberAsString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1818
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private static allowLuminatiParticipation()V
    .locals 2

    .prologue
    .line 1195
    sget-boolean v0, Lcom/appsomniacs/da2/DA2Activity;->s_allowLuminatiParticipation:Z

    if-nez v0, :cond_0

    .line 1197
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->resetLuminatiOptionIfNotAlreadyAPeer()V

    .line 1199
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/appsomniacs/da2/DA2Activity;->s_allowLuminatiParticipation:Z

    .line 1200
    const-string v0, "DA2"

    const-string v1, "allowLuminatiParticipation() call completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    return-void
.end method

.method private analyticsBeginSection(Ljava/lang/String;)V
    .locals 3
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 5355
    if-nez p1, :cond_1

    .line 5367
    :cond_0
    :goto_0
    return-void

    .line 5358
    :cond_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5359
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;

    sget-object v2, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;->APP_TRACKER:Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;

    invoke-virtual {v1, v2}, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;->getTracker(Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 5360
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 5361
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 5362
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private analyticsEndSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 5370
    if-nez p1, :cond_0

    .line 5377
    :cond_0
    return-void
.end method

.method public static bundle2string(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 608
    if-nez p0, :cond_0

    .line 609
    const/4 v1, 0x0

    .line 616
    :goto_0
    return-object v1

    .line 611
    :cond_0
    const-string v1, "Bundle{"

    .line 612
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 613
    .local v0, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 614
    goto :goto_1

    .line 615
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " }Bundle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    goto :goto_0
.end method

.method private static canResolveNameToAddress(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2987
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 2988
    .local v1, "ipAddr":Ljava/net/InetAddress;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 2991
    .end local v1    # "ipAddr":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return v2

    .line 2990
    :catch_0
    move-exception v0

    .line 2991
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static canResolveNameToAddress(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "timeOut"    # I

    .prologue
    const/4 v5, 0x1

    .line 2997
    const/4 v3, 0x0

    .line 2999
    .local v3, "inetAddress":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v6, Lcom/appsomniacs/da2/DA2Activity$23;

    invoke-direct {v6, p0}, Lcom/appsomniacs/da2/DA2Activity$23;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 3009
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/net/InetAddress;>;"
    int-to-long v6, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v6, v7, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/InetAddress;

    move-object v3, v0

    .line 3010
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3015
    .end local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/net/InetAddress;>;"
    :goto_0
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    :goto_1
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 3013
    :catch_0
    move-exception v4

    goto :goto_0

    .line 3012
    :catch_1
    move-exception v4

    goto :goto_0

    .line 3011
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private checkAndAlertForLeaderboardLoadCompletion()V
    .locals 7

    .prologue
    .line 5022
    const/4 v1, 0x0

    .line 5023
    .local v1, "loadedCount":I
    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->mFoundLeaderboardIds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 5026
    .local v0, "isLoaded":Z
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5028
    .end local v0    # "isLoaded":Z
    :cond_1
    iget v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mExpectedLeaderboardCount:I

    if-lt v1, v3, :cond_2

    .line 5029
    const-string v3, "Google Play Games returned data for %d leaderboards."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/appsomniacs/da2/DA2Activity;->mExpectedLeaderboardCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5031
    .local v2, "msg":Ljava/lang/String;
    const-string v3, "DA2"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5032
    new-instance v3, Lcom/appsomniacs/da2/DA2Activity$43;

    invoke-direct {v3, p0, v2}, Lcom/appsomniacs/da2/DA2Activity$43;-><init>(Lcom/appsomniacs/da2/DA2Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5038
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static completedPurchaseValidation(ZILjava/lang/String;)V
    .locals 7
    .param p0, "success"    # Z
    .param p1, "code"    # I
    .param p2, "sku"    # Ljava/lang/String;

    .prologue
    .line 4028
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 4029
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 4030
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 4031
    invoke-direct {v0, p0, p1, p2}, Lcom/appsomniacs/da2/DA2Activity;->trySignalCompletedPurchaseValidation(ZILjava/lang/String;)V

    .line 4036
    :goto_0
    return-void

    .line 4034
    :cond_0
    const-string v2, "Anomaly"

    const-string v3, "ActivityNull%scompletedPurchaseValidation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 4035
    const-string v2, "DA2"

    const-string v3, "Activity not found! Trying to signal completion of purchase validation."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static convertCStringToJniSafeString([B)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B

    .prologue
    .line 5465
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5470
    :goto_0
    return-object v1

    .line 5467
    :catch_0
    move-exception v0

    .line 5468
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "DA2"

    const-string v3, "Couldn\'t convert the jbyteArray to UTF-8"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5470
    const-string v1, "UTF8_CONVERT_FAIL"

    goto :goto_0
.end method

.method public static createAdBanner()V
    .locals 7

    .prologue
    .line 2886
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2887
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2888
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 2889
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 2890
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->initializeAdBanner()V

    .line 2901
    :goto_0
    return-void

    .line 2892
    :cond_0
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$19;

    invoke-direct {v2}, Lcom/appsomniacs/da2/DA2Activity$19;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2899
    :cond_1
    const-string v2, "Anomaly"

    const-string v3, "ActivityNull%screateAdBanner"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static debugPrintRvNodes(Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .param p1, "actionTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "rvNodes":Ljava/util/List;, "Ljava/util/List<Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2245
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2246
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 2247
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v3, :cond_0

    .line 2248
    const-string v2, "DA2"

    const-string v3, "RV NODES: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2250
    const-string v3, "DA2"

    const-string v4, "node index: %d wo:%d id:%s"

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;

    iget v2, v2, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;->waterfallOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v6, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;

    iget-object v2, v2, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;->id:Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2254
    .end local v1    # "x":I
    :cond_0
    return-void
.end method

.method private declared-synchronized decrementIapAsyncOperationsInProgressCounter()V
    .locals 2

    .prologue
    .line 4179
    monitor-enter p0

    :try_start_0
    const-string v0, "DA2"

    const-string v1, "IapAsyncOperationInProgressCounter--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I

    .line 4181
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 4188
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4184
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelperDestroyed:Z

    if-eqz v0, :cond_0

    .line 4185
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->googlePlayIabTryDisposeIabHelper()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private destroyAdBanner()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2809
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    if-eqz v0, :cond_0

    .line 2810
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->destroy()V

    .line 2811
    iput-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    .line 2814
    :cond_0
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_1

    .line 2815
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 2816
    iput-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    .line 2818
    :cond_1
    return-void
.end method

.method private destroyInterstitial()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2822
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 2823
    iput-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    .line 2826
    :cond_0
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_1

    .line 2827
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 2828
    iput-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 2830
    :cond_1
    return-void
.end method

.method private destroyRewardedVideo()V
    .locals 0

    .prologue
    .line 2499
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->destroyRewardedVideo_MoPub()V

    .line 2501
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->destroyRewardedVideo_IronSourceSupersonic()V

    .line 2502
    return-void
.end method

.method private destroyRewardedVideo_IronSourceSupersonic()V
    .locals 1

    .prologue
    .line 2505
    sget-boolean v0, Lcom/appsomniacs/da2/DA2Activity;->s_Using_RVIronSourceSupersonic:Z

    if-eqz v0, :cond_0

    .line 2506
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    if-eqz v0, :cond_0

    .line 2507
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->removeRewardedVideoListener()V

    .line 2508
    const/4 v0, 0x0

    sput-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    .line 2511
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsIronSourceSupersonicRewardedVideoInitialized:Z

    .line 2512
    return-void
.end method

.method private destroyRewardedVideo_MoPub()V
    .locals 2

    .prologue
    .line 2515
    sget-boolean v1, Lcom/appsomniacs/da2/DA2Activity;->s_Using_RVMoPub:Z

    if-eqz v1, :cond_1

    .line 2517
    :try_start_0
    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    if-eqz v1, :cond_0

    .line 2518
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onDestroy(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2523
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    .line 2525
    :cond_1
    return-void

    .line 2520
    :catch_0
    move-exception v0

    .line 2521
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static disallowLuminatiParticipation()V
    .locals 2

    .prologue
    .line 1189
    const/4 v0, 0x0

    sput-boolean v0, Lcom/appsomniacs/da2/DA2Activity;->s_allowLuminatiParticipation:Z

    .line 1190
    const-string v0, "DA2"

    const-string v1, "disallowLumintiParticipation() call completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    return-void
.end method

.method private displayResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$1;

    invoke-direct {v1, p0, p1}, Lcom/appsomniacs/da2/DA2Activity$1;-><init>(Lcom/appsomniacs/da2/DA2Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private ensureGooglePlayIabIsSetup()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3926
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3997
    :cond_0
    :goto_0
    return-void

    .line 3931
    :cond_1
    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isGooglePlayIabSetup:Z

    if-nez v0, :cond_0

    .line 3935
    iput v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I

    .line 3936
    iput-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelperDestroyed:Z

    .line 3937
    const-string v0, ""

    sput-object v0, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    .line 3942
    new-instance v0, Lcom/android/util/IabHelper;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh2KG+zjczjQ/Gk7L7ZI3jPMQb98BGQ1kEqJksQBVroQYuS3jXe1AotSlIli3EDh37Fb+RrePQqTDXWkQ7IF7cc9ml/4LJFW/sf5Eghk6LGJPsKNmNbHivlwj3oNsjraE3CO9ZP4nvQPeDhJMjvZQnNAWc2cgu7KWxyTqIJu+EMvROwS3bwn/goXmFmhNK4dFtA7h6fFPqb6doKVEgyD9uR7xxnit7aUhzbvQWrX3ErnXJJ+qpcSKZEUMfeLWxuSA5FTk5DPaSoBkzvvU3VY8PL8iDCpCGW4zOgMpF9XZ8sjUZix5U7t2Eg2psL5VDADSx3Tk2eIdMl+R7qyYbQvDAQIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/android/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    .line 3945
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-nez v1, :cond_2

    .line 3948
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    const-string v1, "DA2"

    invoke-virtual {v0, v2, v1}, Lcom/android/util/IabHelper;->enableDebugLogging(ZLjava/lang/String;)V

    .line 3957
    :goto_1
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$27;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$27;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    invoke-virtual {v0, v1}, Lcom/android/util/IabHelper;->startSetup(Lcom/android/util/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_0

    .line 3951
    :cond_2
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    const-string v1, "DA2"

    invoke-virtual {v0, v2, v1}, Lcom/android/util/IabHelper;->enableDebugLogging(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public static fetchAllAchievementsProgress()V
    .locals 5

    .prologue
    .line 4573
    const-string v2, "DA2"

    const-string v3, "Static fetchAllAchievementsProgress() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4574
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 4575
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 4576
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 4577
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->fetchGpgsAchievementScores()V

    .line 4582
    :goto_0
    return-void

    .line 4580
    :cond_0
    const/4 v2, 0x1

    const-string v3, "DA2Activity.requestAchievementProgress()"

    const-string v4, "Activity is null"

    invoke-static {v2, v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticLogEntry(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchGpgsAchievementScores()V
    .locals 2

    .prologue
    .line 4699
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    if-nez v0, :cond_1

    .line 4731
    :cond_0
    :goto_0
    return-void

    .line 4701
    :cond_1
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->isGpgsSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4705
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    sget-boolean v0, Lcom/appsomniacs/da2/DA2Activity;->mHasForcedAchievementReload:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/AchievementsClient;->load(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$36;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$36;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 4706
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$35;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$35;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 4723
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 4705
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private fetchGpgsLeaderboardScores()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4879
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mLeaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    if-nez v1, :cond_1

    .line 4935
    :cond_0
    :goto_0
    return-void

    .line 4881
    :cond_1
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->isGpgsSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4885
    sget-boolean v1, Lcom/appsomniacs/da2/DA2Activity;->hasKickedOffLeaderboardFetch:Z

    if-nez v1, :cond_0

    .line 4888
    sput-boolean v0, Lcom/appsomniacs/da2/DA2Activity;->hasKickedOffLeaderboardFetch:Z

    .line 4890
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mLeaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    sget-boolean v2, Lcom/appsomniacs/da2/DA2Activity;->mHasForcedLeaderboardReload:Z

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/LeaderboardsClient;->loadLeaderboardMetadata(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$40;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$40;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 4891
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$39;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$39;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 4927
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 4890
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getAdIds()Ljava/lang/String;
    .locals 7

    .prologue
    .line 5748
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 5749
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 5750
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 5751
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryGetAdIds()Ljava/lang/String;

    move-result-object v2

    .line 5754
    :goto_0
    return-object v2

    .line 5753
    :cond_0
    const-string v2, "Anomaly"

    const-string v3, "ActivityNull%sgetAdIds"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 5754
    const-string v2, "?,?,?"

    goto :goto_0
.end method

.method public static getAppPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5663
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/appsomniacs/core/ForwardScoutUtility;->getPackageName(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 5674
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v3

    .line 5664
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 5665
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    .line 5667
    :try_start_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5668
    :catch_1
    move-exception v1

    .line 5669
    .local v1, "e1":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    .line 5671
    :try_start_2
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_0

    .line 5672
    :catch_2
    move-exception v2

    .line 5673
    .local v2, "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    .line 5674
    const-string v3, "UNKNOWN_PACKAGE"

    goto :goto_0
.end method

.method public static getApplicationLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5682
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5683
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 5684
    const-string v2, ""

    .line 5691
    :goto_0
    return-object v2

    .line 5686
    :cond_0
    invoke-static {v0}, Lcom/appsomniacs/core/ForwardScoutUtility;->getAppLabel(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 5688
    :catch_0
    move-exception v1

    .line 5689
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DA2"

    const-string v3, "getApplicationLabel Failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5690
    invoke-static {v1}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    .line 5691
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getApplicationVersionCode()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1623
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1624
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1625
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-nez v0, :cond_0

    .line 1626
    const-string v5, "?"

    .line 1635
    :goto_0
    return-object v5

    .line 1628
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1629
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1632
    .local v4, "packageName":Ljava/lang/String;
    :try_start_0
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1633
    :catch_0
    move-exception v2

    .line 1634
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1635
    const-string v5, "?"

    goto :goto_0
.end method

.method public static getApplicationVersionName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1604
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1605
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1606
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-nez v0, :cond_0

    .line 1607
    const-string v5, "?.?.?"

    .line 1616
    :goto_0
    return-object v5

    .line 1609
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1610
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1613
    .local v4, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1614
    :catch_0
    move-exception v2

    .line 1615
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1616
    const-string v5, "?.?.?"

    goto :goto_0
.end method

.method public static getBillingSystemFailureMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3919
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static getDirtyApps()Ljava/lang/String;
    .locals 17

    .prologue
    .line 5812
    const/4 v13, 0x5

    new-array v0, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "org.sbtools.gamehack"

    aput-object v14, v0, v13

    const/4 v13, 0x1

    const-string v14, "cc.cz.madkite.freedom"

    aput-object v14, v0, v13

    const/4 v13, 0x2

    const-string v14, "com.forpda.lp"

    aput-object v14, v0, v13

    const/4 v13, 0x3

    const-string v14, "com.revealedtricks4u.minimilitiamods_revealedtricks4u.com"

    aput-object v14, v0, v13

    const/4 v13, 0x4

    const-string v14, "com.kingroot.kinguser"

    aput-object v14, v0, v13

    .line 5819
    .local v0, "checks":[Ljava/lang/String;
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5820
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 5821
    const/4 v13, 0x0

    const-string v14, "DA2"

    const-string v15, "Context is null in app check call"

    invoke-static {v13, v14, v15}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticLogEntry(ILjava/lang/String;Ljava/lang/String;)V

    .line 5822
    const-string v13, "GH:?,FR:?,LP:?,TM:?,GK:?"

    .line 5870
    :goto_0
    return-object v13

    .line 5824
    :cond_0
    const/4 v9, 0x0

    .line 5825
    .local v9, "hasGH":Z
    const/4 v8, 0x0

    .line 5826
    .local v8, "hasFR":Z
    const/4 v11, 0x0

    .line 5827
    .local v11, "hasLP":Z
    const/4 v12, 0x0

    .line 5828
    .local v12, "hasTM":Z
    const/4 v10, 0x0

    .line 5829
    .local v10, "hasGK":Z
    const/4 v4, 0x1

    .line 5830
    .local v4, "errGH":Z
    const/4 v3, 0x1

    .line 5831
    .local v3, "errFR":Z
    const/4 v6, 0x1

    .line 5832
    .local v6, "errLP":Z
    const/4 v7, 0x1

    .line 5833
    .local v7, "errTM":Z
    const/4 v5, 0x1

    .line 5835
    .local v5, "errGK":Z
    const/4 v13, 0x0

    :try_start_0
    aget-object v13, v0, v13

    invoke-static {v1, v13}, Lcom/appsomniacs/core/ForwardScoutUtility;->hasApp(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 5836
    const/4 v4, 0x0

    .line 5842
    :goto_1
    const/4 v13, 0x1

    :try_start_1
    aget-object v13, v0, v13

    invoke-static {v1, v13}, Lcom/appsomniacs/core/ForwardScoutUtility;->hasApp(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 5843
    const/4 v3, 0x0

    .line 5849
    :goto_2
    const/4 v13, 0x2

    :try_start_2
    aget-object v13, v0, v13

    invoke-static {v1, v13}, Lcom/appsomniacs/core/ForwardScoutUtility;->hasApp(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v11

    .line 5850
    const/4 v6, 0x0

    .line 5856
    :goto_3
    const/4 v13, 0x3

    :try_start_3
    aget-object v13, v0, v13

    invoke-static {v1, v13}, Lcom/appsomniacs/core/ForwardScoutUtility;->hasApp(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v12

    .line 5857
    const/4 v7, 0x0

    .line 5863
    :goto_4
    const/4 v13, 0x4

    :try_start_4
    aget-object v13, v0, v13

    invoke-static {v1, v13}, Lcom/appsomniacs/core/ForwardScoutUtility;->hasApp(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v10

    .line 5864
    const/4 v5, 0x0

    .line 5870
    :goto_5
    const-string v14, "GH:%s,FR:%s,LP:%s,TM:%s,GK:%s"

    const/4 v13, 0x5

    new-array v15, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    if-eqz v4, :cond_1

    const-string v13, "?"

    :goto_6
    aput-object v13, v15, v16

    const/16 v16, 0x1

    if-eqz v3, :cond_3

    const-string v13, "?"

    :goto_7
    aput-object v13, v15, v16

    const/16 v16, 0x2

    if-eqz v6, :cond_5

    const-string v13, "?"

    :goto_8
    aput-object v13, v15, v16

    const/16 v16, 0x3

    if-eqz v7, :cond_7

    const-string v13, "?"

    :goto_9
    aput-object v13, v15, v16

    const/16 v16, 0x4

    if-eqz v5, :cond_9

    const-string v13, "?"

    :goto_a
    aput-object v13, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 5837
    :catch_0
    move-exception v2

    .line 5838
    .local v2, "e":Ljava/lang/Exception;
    const-string v13, "DA2"

    const-string v14, "App Check Failed"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5839
    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5844
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 5845
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v13, "DA2"

    const-string v14, "App Check Failed"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5846
    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 5851
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 5852
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v13, "DA2"

    const-string v14, "App Check Failed"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5853
    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 5858
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 5859
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v13, "DA2"

    const-string v14, "App Check Failed"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5860
    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 5865
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 5866
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v13, "DA2"

    const-string v14, "App Check Failed"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5867
    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 5870
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v9, :cond_2

    const-string v13, "1"

    goto :goto_6

    :cond_2
    const-string v13, "0"

    goto :goto_6

    :cond_3
    if-eqz v8, :cond_4

    const-string v13, "1"

    goto :goto_7

    :cond_4
    const-string v13, "0"

    goto :goto_7

    :cond_5
    if-eqz v11, :cond_6

    const-string v13, "1"

    goto :goto_8

    :cond_6
    const-string v13, "0"

    goto :goto_8

    :cond_7
    if-eqz v12, :cond_8

    const-string v13, "1"

    goto :goto_9

    :cond_8
    const-string v13, "0"

    goto :goto_9

    :cond_9
    if-eqz v10, :cond_a

    const-string v13, "1"

    goto :goto_a

    :cond_a
    const-string v13, "0"

    goto :goto_a
.end method

.method public static getLocalizedPurchasePrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 4055
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 4056
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 4057
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 4058
    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity;->tryGetLocalizedPurchasePrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4061
    :goto_0
    return-object v2

    .line 4060
    :cond_0
    const-string v2, "Anomaly"

    const-string v3, "ActivityNull%sgetLocalizedPurchasePrice"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 4061
    const-string v2, ""

    goto :goto_0
.end method

.method private static getLuminatiChoiceName(I)Ljava/lang/String;
    .locals 4
    .param p0, "choice"    # I

    .prologue
    .line 1259
    packed-switch p0, :pswitch_data_0

    .line 1271
    const-string v0, "%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1261
    :pswitch_0
    const-string v0, "CHOICE_PEER"

    goto :goto_0

    .line 1263
    :pswitch_1
    const-string v0, "CHOICE_NONE"

    goto :goto_0

    .line 1265
    :pswitch_2
    const-string v0, "CHOICE_NOT_PEER"

    goto :goto_0

    .line 1267
    :pswitch_3
    const-string v0, "CHOICE_ADS"

    goto :goto_0

    .line 1269
    :pswitch_4
    const-string v0, "CHOICE_SUBSCRIPTION"

    goto :goto_0

    .line 1259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1804
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getPlatformModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5657
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getPlatformOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5653
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getPlatformSignature()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5697
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appsomniacs/core/ForwardScoutUtility;->getSignature(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5701
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 5698
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 5699
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "DA2"

    const-string v2, "Signature Check Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5700
    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    .line 5701
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRndHalfInt()I
    .locals 2

    .prologue
    .line 433
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_rnd:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_rnd:Ljava/security/SecureRandom;

    .line 436
    :cond_0
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_rnd:Ljava/security/SecureRandom;

    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    return v0
.end method

.method private static getRndSaltyByte(I)I
    .locals 5
    .param p0, "step"    # I

    .prologue
    const/4 v4, 0x0

    .line 440
    sget-object v2, Lcom/appsomniacs/da2/DA2Activity;->m_rnd:Ljava/security/SecureRandom;

    if-nez v2, :cond_0

    .line 441
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    sput-object v2, Lcom/appsomniacs/da2/DA2Activity;->m_rnd:Ljava/security/SecureRandom;

    .line 443
    :cond_0
    sget-object v2, Lcom/appsomniacs/da2/DA2Activity;->m_rnd:Ljava/security/SecureRandom;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    .line 444
    .local v0, "num":I
    add-int/lit8 v0, v0, -0x80

    .line 445
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Byte;

    int-to-byte v2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    .line 446
    .local v1, "rndByte":[Ljava/lang/Byte;
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    return v2
.end method

.method private getSkus()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4007
    .local v0, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "com.chadtowns.da2.propack"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4008
    const-string v1, "com.chadtowns.da2.battlepack1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4009
    const-string v1, "com.chadtowns.da2.battlepack2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4010
    const-string v1, "com.chadtowns.da2.battlepack3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4011
    const-string v1, "com.chadtowns.da2.battlepack4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4012
    return-object v0
.end method

.method public static getThirdPartyConfigDiagnostic()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5707
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 5708
    .local v2, "context":Landroid/content/Context;
    move-object v0, v2

    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    move-object v1, v0

    .line 5709
    .local v1, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v1, :cond_0

    .line 5710
    invoke-direct {v1}, Lcom/appsomniacs/da2/DA2Activity;->tryGetThirdPartyConfigDiagnostic()Ljava/lang/String;

    move-result-object v4

    .line 5718
    .end local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :goto_0
    return-object v4

    .line 5712
    .restart local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :cond_0
    const-string v4, "Anomaly"

    const-string v5, "ActivityNull%sThirdPartyConfigDiagnostic"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 5713
    const-string v4, "null"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5715
    .end local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :catch_0
    move-exception v3

    .line 5716
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "DA2"

    const-string v5, "Third Party Diagnostic Check Error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5717
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    .line 5718
    const-string/jumbo v4, "{\"error\":\"%s\"}"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private declared-synchronized googlePlayIabTryDisposeIabHelper()V
    .locals 1

    .prologue
    .line 4196
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelperDestroyed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    .line 4206
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4202
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    if-eqz v0, :cond_0

    .line 4203
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    invoke-virtual {v0}, Lcom/android/util/IabHelper;->dispose()V

    .line 4204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static gpgNativeSignInCompleted()V
    .locals 0

    .prologue
    .line 5613
    return-void
.end method

.method public static gpgNativeSignedOutCompleted()V
    .locals 0

    .prologue
    .line 5609
    return-void
.end method

.method private handleGpgsException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "details"    # Ljava/lang/String;

    .prologue
    .line 5045
    const/4 v2, 0x0

    .line 5047
    .local v2, "status":I
    instance-of v3, p1, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 5048
    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    .line 5049
    .local v0, "apiException":Lcom/google/android/gms/common/api/ApiException;
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v2

    .line 5052
    .end local v0    # "apiException":Lcom/google/android/gms/common/api/ApiException;
    :cond_0
    const v3, 0x7f070067

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5054
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5055
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    .line 5056
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 5057
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5058
    return-void
.end method

.method public static hasRootAccess()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 5883
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/core/ForwardScoutUtility;->isRooted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5887
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 5884
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 5885
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "DA2"

    const-string v3, "Root Detection Failed: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5886
    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized incrementIapAsyncOperationInProgressCounter()V
    .locals 2

    .prologue
    .line 4191
    monitor-enter p0

    :try_start_0
    const-string v0, "DA2"

    const-string v1, "IapAsyncOperationInProgressCounter++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4193
    monitor-exit p0

    return-void

    .line 4191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initDefaultLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 1433
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1434
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1437
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 1438
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1462
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 1466
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1467
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 1468
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 1472
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->invalidateOptionsMenu()V

    .line 1473
    return-void

    .line 1439
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 1441
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 1442
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_3

    .line 1443
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x306

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 1450
    :cond_3
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1306

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public static initGPGS()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4269
    const-string v7, "DA2"

    const-string v10, "GPGS: initGPGS() called"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isGooglePlayServicesAvailable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4271
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "context":Landroid/content/Context;
    move-object v0, v2

    .line 4272
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 4273
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 4274
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    if-ne v7, v10, :cond_0

    .line 4275
    const-string v7, "DA2"

    const-string v8, "Call tryInitGPGS() was made while on ui thread."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4276
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryInitGPGS()Z

    move-result v7

    .line 4317
    :goto_0
    return v7

    .line 4278
    :cond_0
    new-instance v6, Ljava/util/concurrent/FutureTask;

    new-instance v7, Lcom/appsomniacs/da2/DA2Activity$30;

    invoke-direct {v7, v0}, Lcom/appsomniacs/da2/DA2Activity$30;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    invoke-direct {v6, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4287
    .local v6, "futureResult":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-virtual {v0, v6}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4289
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    goto :goto_0

    .line 4290
    :catch_0
    move-exception v4

    .line 4291
    .local v4, "ee":Ljava/util/concurrent/ExecutionException;
    const-string v7, "Google Play Games Services failed to initialize: %s"

    new-array v10, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4292
    .local v5, "errorMsg":Ljava/lang/String;
    const-string v7, "DA2"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    invoke-static {v4}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    move v7, v8

    .line 4315
    goto :goto_0

    .line 4294
    .end local v4    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v5    # "errorMsg":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 4295
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v7, "Google Play Games Services failed to initialize: %s"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4297
    .restart local v5    # "errorMsg":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0, v5}, Lcom/appsomniacs/da2/DA2Activity;->alert(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4305
    const-string v7, "DA2"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    move v7, v9

    .line 4307
    goto :goto_0

    .line 4298
    :catch_2
    move-exception v1

    .line 4301
    .local v1, "alertException":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "DA2"

    const-string v8, "Current Activity is not DA2"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4305
    const-string v7, "DA2"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    move v7, v9

    .line 4307
    goto :goto_0

    .line 4305
    .end local v1    # "alertException":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    const-string v7, "DA2"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    move v7, v9

    .line 4307
    goto :goto_0

    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "errorMsg":Ljava/lang/String;
    .end local v6    # "futureResult":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    :cond_1
    move v7, v9

    .line 4313
    goto :goto_0

    .end local v0    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .end local v2    # "context":Landroid/content/Context;
    :cond_2
    move v7, v9

    .line 4317
    goto :goto_0
.end method

.method private static initLuminatiTopVpnSdk()V
    .locals 9

    .prologue
    .line 1000
    sget-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->m_hasInitializedLuminati:Z

    if-eqz v4, :cond_0

    .line 1045
    .local v2, "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 1004
    .end local v2    # "context":Landroid/content/Context;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1005
    .restart local v2    # "context":Landroid/content/Context;
    move-object v0, v2

    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    move-object v1, v0

    .line 1006
    .local v1, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v1, :cond_2

    .line 1009
    invoke-virtual {v1}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_1

    .line 1024
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->resetLuminatiOptionIfNotAlreadyAPeer()V

    .line 1027
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/appsomniacs/da2/DA2Activity;->initializeLuminatiIoTopVpn(Z)V

    .line 1028
    const/4 v4, 0x1

    sput-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->m_hasInitializedLuminati:Z

    .line 1029
    const-string v4, "LuminatiInit"

    const-string v5, "SUCCESS"

    invoke-static {v4, v5}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1030
    :catch_0
    move-exception v3

    .line 1032
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_2
    sput-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->s_allowLuminatiParticipation:Z

    .line 1033
    const-string v4, "DA2"

    const-string v5, "Luminati topvpn not found/supported"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const-string v4, "LuminatiInit"

    const-string v5, "NOTFOUND"

    invoke-static {v4, v5}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1040
    .end local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1041
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v4, "LuminatiInit"

    const-string v5, "FAIL"

    invoke-static {v4, v5}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1037
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :cond_2
    :try_start_3
    const-string v4, "Anomaly"

    const-string v5, "ActivityNull%sinitLuminatiTopVpnSdk"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private initializeAdBanner()V
    .locals 1

    .prologue
    .line 2668
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2669
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeAmazonAdBanner()V

    .line 2673
    :goto_0
    return-void

    .line 2671
    :cond_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeMopubAdBanner()V

    goto :goto_0
.end method

.method private initializeAmazonAdBanner()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 2746
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    if-eqz v2, :cond_0

    .line 2792
    :goto_0
    return-void

    .line 2750
    :cond_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->destroyAdBanner()V

    .line 2752
    new-instance v2, Lcom/amazon/device/ads/AdLayout;

    sget-object v3, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO_NO_SCALE:Lcom/amazon/device/ads/AdSize;

    invoke-direct {v2, p0, v3}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/app/Activity;Lcom/amazon/device/ads/AdSize;)V

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    .line 2770
    const v2, 0x1020002

    invoke-virtual {p0, v2}, Lcom/appsomniacs/da2/DA2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_appLayout:Landroid/widget/FrameLayout;

    .line 2771
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2774
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x31

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2777
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_relAppLayout:Landroid/widget/RelativeLayout;

    .line 2778
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2782
    .local v1, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2785
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_relAppLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2786
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_appLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->m_relAppLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2791
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    goto :goto_0
.end method

.method private initializeAmazonInterstitial()V
    .locals 1

    .prologue
    .line 1912
    const-string v0, "161f45bad9264cc99d03eb2fad19cb21"

    invoke-static {v0}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    .line 1914
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-nez v0, :cond_0

    .line 1916
    new-instance v0, Lcom/amazon/device/ads/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/InterstitialAd;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    .line 1917
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/InterstitialAd;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 1918
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAmazonInterstitialAdReady:Z

    .line 1920
    :cond_0
    return-void
.end method

.method private initializeAppLovinInterstitial()V
    .locals 1

    .prologue
    .line 1841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAppLovinInterstitialAdReady:Z

    .line 1842
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;)V

    .line 1844
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1854
    :cond_0
    return-void
.end method

.method private initializeCuebiq()V
    .locals 7

    .prologue
    .line 986
    :try_start_0
    const-string v0, "aAPSaps"

    invoke-static {p0, v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDK;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 987
    const-string v1, "Android_SdkInitialization_VersionInit"

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getPlatformOsVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getPlatformModel()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/cuebiq/cuebiqsdk/CuebiqSDK;->collectCustomEvents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v1, "Android_SdkInitialization_PlatformServices"

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "GPGP_1"

    :goto_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->hasRootAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v5, "ROOT_1"

    :goto_1
    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/cuebiq/cuebiqsdk/CuebiqSDK;->collectCustomEvents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v1, "Android_SdkInitialization_AdInit"

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getAdIds()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/cuebiq/cuebiqsdk/CuebiqSDK;->collectCustomEvents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v0, "CuebiqInit"

    const-string v1, "SUCCESS"

    invoke-static {v0, v1}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    :goto_2
    return-void

    .line 988
    :cond_0
    const-string v4, "GPG_0"

    goto :goto_0

    :cond_1
    const-string v5, "ROOT_0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 991
    :catch_0
    move-exception v6

    .line 992
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "CuebiqInit"

    const-string v1, "FAIL"

    invoke-static {v0, v1}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    invoke-virtual {p0, v6}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private initializeInterstitial()V
    .locals 1

    .prologue
    .line 1823
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1824
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeAmazonInterstitial()V

    .line 1828
    :goto_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeAppLovinInterstitial()V

    .line 1829
    return-void

    .line 1826
    :cond_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeMopubInterstitial()V

    goto :goto_0
.end method

.method private static initializeLuminatiIoTopVpn(Z)V
    .locals 11
    .param p0, "showOptInPrompt"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1059
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1060
    .local v2, "context":Landroid/content/Context;
    move-object v0, v2

    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    move-object v1, v0

    .line 1061
    .local v1, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v1, :cond_3

    .line 1063
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/appsomniacs/da2/DA2Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1064
    .local v4, "sharedPref":Landroid/content/SharedPreferences;
    const-string v7, "%s%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "com.appsomniacs.da2.config"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/appsomniacs/da2/DA2Activity;->s_ConfigKey_LuminatiSentry:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_0

    :goto_0
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->s_allowLuminatiParticipation:Z

    .line 1067
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isLuminatiPeer()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1069
    const/4 v5, 0x0

    invoke-static {v1, v5}, Lio/topvpn/vpn_api/api;->init(Landroid/app/Activity;Z)V

    .line 1070
    const-string v5, "LuminatiInitExistingPeer"

    const-string v6, "SUCCESS"

    invoke-static {v5, v6}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    .end local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "sharedPref":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .restart local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v4    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_0
    move v5, v6

    .line 1064
    goto :goto_0

    .line 1071
    :cond_1
    if-eqz p0, :cond_2

    sget-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->s_allowLuminatiParticipation:Z

    if-eqz v5, :cond_2

    .line 1076
    invoke-direct {v1}, Lcom/appsomniacs/da2/DA2Activity;->showLuminatiOptInDialog()V

    .line 1078
    const-string v5, "LuminatiInitShowPrompt"

    const-string v6, "SUCCESS"

    invoke-static {v5, v6}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1087
    .end local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "sharedPref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    .line 1088
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "LuminatiInit"

    const-string v6, "FAIL"

    invoke-static {v5, v6}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1081
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v4    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lio/topvpn/vpn_api/api;->get_user_selection(Landroid/content/Context;)I

    goto :goto_1

    .line 1085
    .end local v4    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_3
    const-string v5, "Anomaly"

    const-string v6, "ActivityNull%sinitializeLuminatiIoTopVpn"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private initializeMopubAdBanner()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2676
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v2, :cond_0

    .line 2743
    :goto_0
    return-void

    .line 2680
    :cond_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->destroyAdBanner()V

    .line 2684
    new-instance v2, Lcom/mopub/mobileads/MoPubView;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    .line 2693
    const/4 v0, 0x0

    .line 2694
    .local v0, "adUnitId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 2707
    .local v1, "scale":F
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2708
    const-string v0, "815fbd0e71604d529b39bac95a90433a"

    .line 2709
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v3, :cond_1

    .line 2710
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2, v4}, Lcom/mopub/mobileads/MoPubView;->setTesting(Z)V

    .line 2711
    const-string v0, "b1607fd0620f4213911cd6ba2bc44f16"

    .line 2713
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x44360000    # 728.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    const/high16 v4, 0x42b40000    # 90.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 2729
    :goto_1
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 2730
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2, p0}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 2733
    const v2, 0x1020002

    invoke-virtual {p0, v2}, Lcom/appsomniacs/da2/DA2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_appLayout:Landroid/widget/FrameLayout;

    .line 2736
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x35

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2739
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_appLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2742
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    goto :goto_0

    .line 2718
    :cond_2
    const-string v0, "e920dac0641b4758a0b2d3e38c2a3448"

    .line 2719
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v3, :cond_3

    .line 2720
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2, v4}, Lcom/mopub/mobileads/MoPubView;->setTesting(Z)V

    .line 2721
    const-string v0, "3f2c1a504f6c4ab9b1fe24a119b05a55"

    .line 2723
    :cond_3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x43a00000    # 320.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_1
.end method

.method private initializeMopubInterstitial()V
    .locals 4

    .prologue
    .line 1863
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v2, :cond_0

    .line 1902
    :goto_0
    return-void

    .line 1867
    :cond_0
    const/4 v0, 0x0

    .line 1880
    .local v0, "adUnitId":Ljava/lang/String;
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1882
    const-string v0, "9810efc33b5a4855b366a5976be60f40"

    .line 1883
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v3, :cond_1

    .line 1884
    const-string v0, "f69388d72eba447d89b2af7f98fd2d47"

    .line 1895
    :cond_1
    :goto_1
    new-instance v2, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {v2, p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 1896
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2, p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 1899
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial;->getLocalExtras()Ljava/util/Map;

    move-result-object v1

    .line 1900
    .local v1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "MOPUB_ADD_UNIT_ID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setLocalExtras(Ljava/util/Map;)V

    goto :goto_0

    .line 1889
    .end local v1    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v0, "2ed112180a4e4d8f9b0a2d995d019740"

    .line 1890
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v3, :cond_1

    .line 1891
    const-string v0, "7aab546884a7453eb756f8a55f4a1d49"

    goto :goto_1
.end method

.method private initializeRewardedVideo_IronSourceSupersonic()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2529
    sget-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->s_Using_RVIronSourceSupersonic:Z

    if-nez v5, :cond_1

    .line 2573
    :cond_0
    :goto_0
    return v3

    .line 2534
    :cond_1
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->s_AllowedRewardedVideoSources:Ljava/util/List;

    const-string v6, "IS"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2535
    sput-boolean v3, Lcom/appsomniacs/da2/DA2Activity;->s_Using_RVIronSourceSupersonic:Z

    goto :goto_0

    .line 2539
    :cond_2
    iget-boolean v5, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsIronSourceSupersonicRewardedVideoInitialized:Z

    if-eqz v5, :cond_3

    move v3, v4

    .line 2540
    goto :goto_0

    .line 2544
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v5

    sput-object v5, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    .line 2545
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V

    .line 2546
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    new-instance v6, Lcom/appsomniacs/da2/DA2Activity$18;

    invoke-direct {v6, p0}, Lcom/appsomniacs/da2/DA2Activity$18;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    invoke-interface {v5, v6}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V

    .line 2554
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    invoke-interface {v5}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->removeRewardedVideoListener()V

    .line 2555
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    iget-object v6, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v5, v6}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;)V

    .line 2558
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getReportingUserIdString()Ljava/lang/String;

    move-result-object v2

    .line 2561
    .local v2, "mUserId":Ljava/lang/String;
    const-string v1, "3e31a941"

    .line 2563
    .local v1, "mAppKey":Ljava/lang/String;
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    invoke-interface {v5, p0, v1, v2}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsIronSourceSupersonicRewardedVideoInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 2565
    goto :goto_0

    .line 2566
    .end local v1    # "mAppKey":Ljava/lang/String;
    .end local v2    # "mUserId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2567
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    .line 2568
    iput-boolean v3, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsIronSourceSupersonicRewardedVideoInitialized:Z

    .line 2569
    sget-object v4, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    if-eqz v4, :cond_0

    .line 2570
    sget-object v4, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    invoke-interface {v4}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->removeRewardedVideoListener()V

    .line 2571
    sput-object v7, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    goto :goto_0
.end method

.method private initializeRewardedVideo_MoPub()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2578
    sget-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->s_Using_RVMoPub:Z

    if-nez v4, :cond_0

    .line 2628
    :goto_0
    return v2

    .line 2583
    :cond_0
    sget-object v4, Lcom/appsomniacs/da2/DA2Activity;->s_AllowedRewardedVideoSources:Ljava/util/List;

    const-string v5, "MP"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2584
    sput-boolean v2, Lcom/appsomniacs/da2/DA2Activity;->s_Using_RVMoPub:Z

    .line 2585
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    goto :goto_0

    .line 2589
    :cond_1
    iget-boolean v4, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    if-eqz v4, :cond_2

    move v2, v3

    .line 2590
    goto :goto_0

    .line 2593
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2595
    const-string v3, "08f2b9c82c2643d38af52694bc63166d"

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->s_RewardedVideo_ProPackTrial_MoPubAdunit:Ljava/lang/String;

    .line 2596
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v4, :cond_3

    .line 2597
    const-string v3, "7a47d21d055a4c94a49cbb29845cde4f"

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->s_RewardedVideo_ProPackTrial_MoPubAdunit:Ljava/lang/String;

    .line 2607
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getReportingUserIdString()Ljava/lang/String;

    move-result-object v1

    .line 2608
    .local v1, "reportingUserId":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mopub/common/MediationSettings;

    const/4 v4, 0x0

    new-instance v5, Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostMediationSettings;

    invoke-direct {v5, v1}, Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostMediationSettings;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;

    invoke-direct {v5}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;-><init>()V

    .line 2615
    invoke-virtual {v5, v1}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->withUserId(Ljava/lang/String;)Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;

    move-result-object v5

    const-string v6, "Cancel?"

    .line 2616
    invoke-virtual {v5, v6}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->withCancelDialogTitle(Ljava/lang/String;)Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;

    move-result-object v5

    .line 2617
    invoke-virtual {v5}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->build()Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2608
    invoke-static {p0, v3}, Lcom/mopub/mobileads/MoPubRewardedVideos;->initializeRewardedVideo(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    .line 2619
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onCreate(Landroid/app/Activity;)V

    .line 2620
    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->m_MoPubRewardedVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-static {v3}, Lcom/mopub/mobileads/MoPubRewardedVideos;->setRewardedVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V

    .line 2621
    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->s_RewardedVideo_ProPackTrial_MoPubAdunit:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/mopub/common/MediationSettings;

    invoke-static {v3, v4}, Lcom/mopub/mobileads/MoPubRewardedVideos;->loadRewardedVideo(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V

    .line 2622
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2628
    .end local v1    # "reportingUserId":Ljava/lang/String;
    :goto_2
    iget-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    goto :goto_0

    .line 2601
    :cond_4
    :try_start_1
    const-string v3, "04cd85b5d6f4422b83fbd5894e1b4ccf"

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->s_RewardedVideo_ProPackTrial_MoPubAdunit:Ljava/lang/String;

    .line 2602
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v4, :cond_3

    .line 2603
    const-string v3, "c4fb5977777f4fbcb10d22763c4257a7"

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->s_RewardedVideo_ProPackTrial_MoPubAdunit:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2623
    :catch_0
    move-exception v0

    .line 2624
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    .line 2625
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    goto :goto_2
.end method

.method public static isAppInstalled(Ljava/lang/String;)Z
    .locals 6
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 1748
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "context":Landroid/content/Context;
    move-object v0, v2

    .line 1749
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1751
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-nez v0, :cond_0

    .line 1752
    const/4 v1, 0x0

    .line 1763
    :goto_0
    return v1

    .line 1754
    :cond_0
    invoke-virtual {v0}, Lcom/appsomniacs/da2/DA2Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1755
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1757
    .local v1, "app_installed":Z
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, p0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    const/4 v1, 0x1

    goto :goto_0

    .line 1759
    :catch_0
    move-exception v3

    .line 1760
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBillingMechanismReady()Z
    .locals 8

    .prologue
    .line 3863
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 3864
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 3866
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 3867
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryIsIapReady()Z

    move-result v2

    .line 3873
    .local v2, "result":Z
    :goto_0
    return v2

    .line 3869
    .end local v2    # "result":Z
    :cond_0
    const-string v3, "Anomaly"

    const-string v4, "ActivityNull%sisBillingMechanismReady"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3870
    const-string v3, "Billing mechanism is not ready."

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    .line 3871
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public static isBillingPossible()Z
    .locals 8

    .prologue
    .line 3816
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 3817
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 3819
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 3820
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryIsGpIapPossible()Z

    move-result v2

    .line 3826
    .local v2, "result":Z
    :goto_0
    return v2

    .line 3822
    .end local v2    # "result":Z
    :cond_0
    const-string v3, "Unable to validate billing mechanism (Invalid Context)."

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    .line 3823
    const/4 v2, 0x0

    .line 3824
    .restart local v2    # "result":Z
    const-string v3, "Anomaly"

    const-string v4, "ActivityNull%sisBillingPossible"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isConnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2964
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2980
    .local v1, "manager":Landroid/net/ConnectivityManager;
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 2967
    .end local v1    # "manager":Landroid/net/ConnectivityManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2969
    .restart local v1    # "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2971
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2972
    sget-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->m_isAllowingOnlineActivities:Z

    if-nez v4, :cond_2

    .line 2973
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$OnlineCheckTask;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/appsomniacs/da2/DA2Activity$OnlineCheckTask;-><init>(Lcom/appsomniacs/da2/DA2Activity$1;)V

    .line 2974
    .local v0, "checkTask":Lcom/appsomniacs/da2/DA2Activity$OnlineCheckTask;
    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/appsomniacs/da2/DA2Activity$OnlineCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    .line 2978
    .end local v0    # "checkTask":Lcom/appsomniacs/da2/DA2Activity$OnlineCheckTask;
    :cond_2
    sget-boolean v3, Lcom/appsomniacs/da2/DA2Activity;->m_isAllowingOnlineActivities:Z

    goto :goto_0
.end method

.method public static isGooglePlayServicesAvailable()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1650
    sget-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->ism_HasCompletedInitialGoogleServicesCheck:Z

    if-eqz v5, :cond_0

    .line 1651
    sget-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->ism_HasGoogleServicesInstalled:Z

    .line 1707
    .local v2, "googleAPI":Lcom/google/android/gms/common/GoogleApiAvailability;
    .local v3, "result":I
    :goto_0
    return v4

    .line 1659
    .end local v2    # "googleAPI":Lcom/google/android/gms/common/GoogleApiAvailability;
    .end local v3    # "result":I
    :cond_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1660
    sput-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->ism_HasCompletedInitialGoogleServicesCheck:Z

    goto :goto_0

    .line 1663
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    .line 1664
    .restart local v2    # "googleAPI":Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    .line 1665
    .restart local v3    # "result":I
    if-eqz v3, :cond_4

    .line 1666
    const-string v5, "DA2"

    const-string v6, "Google API Availability: Pushing non-success resolution response to the UI thread."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1669
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-nez v0, :cond_3

    .line 1670
    const/4 v5, 0x0

    const-string v6, "DA2"

    const-string v7, "((DA2Activity) getContext()) returned null when attempting to present missing google services resolution dialog."

    invoke-static {v5, v6, v7}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticLogEntry(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1700
    .end local v0    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :cond_2
    :goto_1
    sput-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->ism_HasGoogleServicesInstalled:Z

    .line 1706
    :goto_2
    sput-boolean v8, Lcom/appsomniacs/da2/DA2Activity;->ism_HasCompletedInitialGoogleServicesCheck:Z

    .line 1707
    sget-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->ism_HasGoogleServicesInstalled:Z

    goto :goto_0

    .line 1672
    .restart local v0    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :cond_3
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1673
    new-instance v5, Lcom/appsomniacs/da2/DA2Activity$12;

    invoke-direct {v5, v2, v0, v3}, Lcom/appsomniacs/da2/DA2Activity$12;-><init>(Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/appsomniacs/da2/DA2Activity;I)V

    invoke-virtual {v0, v5}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1695
    .end local v0    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :catch_0
    move-exception v1

    .line 1696
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "DA2"

    const-string v6, "Unable to alert user to resolve missing Google Service APIs."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1697
    invoke-static {v1}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    .line 1698
    sput-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->ism_HasGoogleServicesInstalled:Z

    goto :goto_1

    .line 1702
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v4, "DA2"

    const-string v5, "Google API Availability: Services are present."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    sput-boolean v8, Lcom/appsomniacs/da2/DA2Activity;->ism_HasGoogleServicesInstalled:Z

    goto :goto_2
.end method

.method public static isGpgReady()Z
    .locals 5

    .prologue
    .line 5619
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 5620
    .local v2, "context":Landroid/content/Context;
    move-object v0, v2

    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    move-object v1, v0

    .line 5621
    .local v1, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-nez v1, :cond_0

    .line 5623
    const/4 v4, 0x0

    .line 5631
    .end local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .local v4, "result":Z
    :goto_0
    return v4

    .line 5625
    .end local v4    # "result":Z
    .restart local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :cond_0
    invoke-direct {v1}, Lcom/appsomniacs/da2/DA2Activity;->tryIsGooglePlayGamesReady()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .restart local v4    # "result":Z
    goto :goto_0

    .line 5627
    .end local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .end local v4    # "result":Z
    :catch_0
    move-exception v3

    .line 5629
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .restart local v4    # "result":Z
    goto :goto_0
.end method

.method private isGpgsSignedIn()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4323
    sget-object v2, Lcom/appsomniacs/da2/DA2Activity;->_lockGpgInit:Ljava/lang/Object;

    monitor-enter v2

    .line 4324
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isGooglePlayServicesAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4325
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 4326
    .local v0, "lastSignedInAccount":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_1

    .line 4331
    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v2

    .line 4334
    .end local v0    # "lastSignedInAccount":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :goto_1
    return v1

    .line 4329
    .restart local v0    # "lastSignedInAccount":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_1
    const-string v3, "DA2"

    const-string v4, "GPGS: Last signed in account is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4338
    .end local v0    # "lastSignedInAccount":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4333
    :cond_2
    :try_start_1
    const-string v3, "DA2"

    const-string v4, "Google Play Services Not Currently Available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4334
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static isIapOperationPending()Z
    .locals 8

    .prologue
    .line 3898
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 3899
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 3901
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 3902
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryIsIapOperationPending()Z

    move-result v2

    .line 3908
    .local v2, "result":Z
    :goto_0
    return v2

    .line 3904
    .end local v2    # "result":Z
    :cond_0
    const-string v3, "Billing operation is pending."

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    .line 3905
    const/4 v2, 0x0

    .line 3906
    .restart local v2    # "result":Z
    const-string v3, "Anomaly"

    const-string v4, "ActivityNull%sisIapOperationPending"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isLuminatiPeer()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1296
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1297
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/topvpn/vpn_api/api;->get_user_selection(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1300
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1297
    goto :goto_0

    .line 1298
    :catch_0
    move-exception v1

    .line 1299
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    move v2, v3

    .line 1300
    goto :goto_0
.end method

.method public static isRewardedAdReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2073
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isLuminatiPeer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2074
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->rechargeLuminatiTrial()V

    .line 2125
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isRewardedVideoReady_MoPub()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isRewardedVideoReady_IronSourceSupersonic()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isRewardedVideoReady_IronSourceSupersonic()Z
    .locals 1

    .prologue
    .line 2133
    sget-boolean v0, Lcom/appsomniacs/da2/DA2Activity;->s_Using_RVIronSourceSupersonic:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->isRewardedVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRewardedVideoReady_MoPub()Z
    .locals 1

    .prologue
    .line 2129
    sget-boolean v0, Lcom/appsomniacs/da2/DA2Activity;->s_Using_RVMoPub:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->s_RewardedVideo_ProPackTrial_MoPubAdunit:Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideos;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2654
    if-nez p0, :cond_1

    .line 2658
    :cond_0
    :goto_0
    return v3

    .line 2655
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 2656
    .local v1, "xlarge":Z
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move v0, v2

    .line 2658
    .local v0, "large":Z
    :goto_2
    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v3, v2

    goto :goto_0

    .end local v0    # "large":Z
    .end local v1    # "xlarge":Z
    :cond_3
    move v1, v3

    .line 2655
    goto :goto_1

    .restart local v1    # "xlarge":Z
    :cond_4
    move v0, v3

    .line 2656
    goto :goto_2
.end method

.method private loadAmazonInterstitial()V
    .locals 2

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-nez v0, :cond_1

    .line 1924
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeAmazonInterstitial()V

    .line 1925
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    .line 1938
    :cond_0
    :goto_0
    return-void

    .line 1927
    :cond_1
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1930
    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAmazonInterstitialAdReady:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/device/ads/InterstitialAd;->isAdShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1933
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAmazonInterstitialAdReady:Z

    .line 1934
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    goto :goto_0
.end method

.method private loadAppLovinInterstitial()V
    .locals 0

    .prologue
    .line 1858
    return-void
.end method

.method private loadInterstitial()V
    .locals 1

    .prologue
    .line 1832
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1833
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->loadAmazonInterstitial()V

    .line 1834
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->loadAppLovinInterstitial()V

    .line 1838
    :goto_0
    return-void

    .line 1836
    :cond_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->loadMopubInterstitial()V

    goto :goto_0
.end method

.method private loadMopubInterstitial()V
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    .line 1906
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeMopubInterstitial()V

    .line 1907
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 1909
    :cond_0
    return-void
.end method

.method private static native nativeFetchAllAchievementsCallback(ZLjava/lang/String;II)V
.end method

.method public static native nativeGetClaimedIdentity()Ljava/lang/String;
.end method

.method private static native nativeInitSession()V
.end method

.method private static native nativeIsPlatformAmazon()Z
.end method

.method private static native nativeLogin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeNotifyGpgsDisconnect()V
.end method

.method private static native nativeNotifyGpgsReady()V
.end method

.method public static native nativeOnActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method private static native nativeOnActivityDestroyed(Landroid/app/Activity;)V
.end method

.method private static native nativeOnActivityPaused(Landroid/app/Activity;)V
.end method

.method private static native nativeOnActivityPausedDueToScreenLock()V
.end method

.method public static native nativeOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end method

.method private static native nativeOnActivityResumed(Landroid/app/Activity;)V
.end method

.method private static native nativeOnActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method private static native nativeOnActivityStarted(Landroid/app/Activity;)V
.end method

.method private static native nativeOnActivityStopped(Landroid/app/Activity;)V
.end method

.method private static native nativeOnActivityWillStop(Landroid/app/Activity;)V
.end method

.method private static native nativeRegisterPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeResetInterstitial(Landroid/app/Activity;)V
.end method

.method private static native nativeRewardedAdClosed()V
.end method

.method private static native nativeRewardedAdCompleted()V
.end method

.method private static native nativeRewardedAdReset()V
.end method

.method private static native nativeSetActivity(Landroid/app/Activity;)V
.end method

.method private static native nativeSetAssetManager(Landroid/content/res/AssetManager;)V
.end method

.method private static native nativeSetGpgsReadyState(Z)V
.end method

.method public static native nativeSetIdentity(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private onConnected(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2
    .param p1, "googleSignInAccount"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .prologue
    .line 4384
    const-string v0, "DA2"

    const-string v1, "onConnected(): connected to Google APIs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    invoke-static {p0, p1}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    .line 4387
    invoke-static {p0, p1}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mLeaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    .line 4389
    const/4 v0, 0x0

    sput-boolean v0, Lcom/appsomniacs/da2/DA2Activity;->hasKickedOffLeaderboardFetch:Z

    .line 4449
    return-void
.end method

.method private onDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4452
    const-string v0, "DA2"

    const-string v1, "onDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    .line 4455
    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->mLeaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    .line 4466
    return-void
.end method

.method public static openUri(Ljava/lang/String;)V
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 1769
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1770
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1771
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1772
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1774
    :cond_0
    return-void
.end method

.method public static prepareInterstitial()V
    .locals 7

    .prologue
    .line 2924
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2925
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2926
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 2927
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 2928
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->initializeInterstitial()V

    .line 2939
    :goto_0
    return-void

    .line 2930
    :cond_0
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$21;

    invoke-direct {v2}, Lcom/appsomniacs/da2/DA2Activity$21;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2937
    :cond_1
    const-string v2, "Anomaly"

    const-string v3, "ActivityNull%sprepareInterstitial"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static prepareRewardedAd()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2008
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2009
    .local v2, "context":Landroid/content/Context;
    move-object v0, v2

    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    move-object v1, v0

    .line 2010
    .local v1, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v1, :cond_0

    .line 2011
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 2012
    invoke-direct {v1}, Lcom/appsomniacs/da2/DA2Activity;->tryPrepareRewardedAd()Z

    move-result v4

    .line 2044
    .end local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :cond_0
    :goto_0
    return v4

    .line 2014
    .restart local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :cond_1
    sget-object v6, Lcom/appsomniacs/da2/DA2Activity;->staticRunner_prepareRewardedAd:Ljava/lang/Runnable;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2015
    :try_start_1
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->staticRunner_prepareRewardedAd:Ljava/lang/Runnable;

    invoke-virtual {v1, v5}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2017
    :try_start_2
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->staticRunner_prepareRewardedAd:Ljava/lang/Runnable;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2022
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2023
    :try_start_4
    sget-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->m_ResultOfPrepareRewardedAdCall:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2018
    :catch_0
    move-exception v3

    .line 2019
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    .line 2020
    monitor-exit v6

    goto :goto_0

    .line 2022
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 2042
    .end local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :catch_1
    move-exception v3

    .line 2043
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static purchaseItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "sku"    # Ljava/lang/String;
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 5196
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 5197
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 5198
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 5199
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 5200
    invoke-direct {v0, p0, p1}, Lcom/appsomniacs/da2/DA2Activity;->tryPurchaseItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 5213
    :goto_0
    return-void

    .line 5202
    :cond_0
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$46;

    invoke-direct {v2, p0, p1}, Lcom/appsomniacs/da2/DA2Activity$46;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5211
    :cond_1
    const-string v2, "Anomaly"

    const-string v3, "ActivityNull%spurchaseItem"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static pushAchievementProgress(Ljava/lang/String;I)V
    .locals 5
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "progress"    # I

    .prologue
    .line 4586
    const-string v2, "DA2"

    const-string v3, "Static pushAchievementProgress(...) called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4587
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 4588
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 4589
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 4590
    invoke-direct {v0, p0, p1}, Lcom/appsomniacs/da2/DA2Activity;->tryPushAchievementProgress(Ljava/lang/String;I)V

    .line 4596
    :goto_0
    return-void

    .line 4593
    :cond_0
    const/4 v2, 0x1

    const-string v3, "DA2Activity.pushAchievementProgress()"

    const-string v4, "Activity is null"

    invoke-static {v2, v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticLogEntry(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static rechargeLuminatiTrial()V
    .locals 0

    .prologue
    .line 3305
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeRewardedAdReset()V

    .line 3306
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeRewardedAdCompleted()V

    .line 3307
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeRewardedAdCompleted()V

    .line 3308
    return-void
.end method

.method public static removeAdBanner()V
    .locals 7

    .prologue
    .line 2905
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2906
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2907
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 2908
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 2909
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->destroyAdBanner()V

    .line 2920
    :goto_0
    return-void

    .line 2911
    :cond_0
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$20;

    invoke-direct {v2}, Lcom/appsomniacs/da2/DA2Activity$20;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2918
    :cond_1
    const-string v2, "Anomaly"

    const-string v3, "ActivityNull%sremoveAdBanner"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static removeLuminatiParticipation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1205
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1206
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1208
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v1, :cond_0

    .line 1209
    :try_start_0
    invoke-static {v1}, Lio/topvpn/vpn_api/api;->get_user_selection(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1210
    const-string v3, "LuminatiPeerStateChange"

    const-string v4, "ActiveDeactivation"

    invoke-static {v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    :goto_0
    invoke-static {v0}, Lio/topvpn/vpn_api/api;->clear_selection(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    :cond_0
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->s_allowLuminatiParticipation:Z

    .line 1225
    :goto_1
    const-string v3, "DA2"

    const-string v4, "removeLuminatiParticipation() call completed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    return-void

    .line 1213
    :cond_1
    :try_start_1
    const-string v3, "LuminatiPeerStateChange"

    const-string v4, "InactiveDeactivation"

    invoke-static {v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1218
    :catch_0
    move-exception v2

    .line 1219
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1223
    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->s_allowLuminatiParticipation:Z

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    sput-boolean v5, Lcom/appsomniacs/da2/DA2Activity;->s_allowLuminatiParticipation:Z

    throw v3
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1305
    const-string v1, "DA2"

    const-string v2, "Report Event called: EventName=\"%s\""

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    if-eqz p0, :cond_0

    .line 1308
    :try_start_0
    const-string v1, "LOGOUT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1310
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isLuminatiPeer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1312
    const-string v1, "DA2"

    const-string v2, "Report Event (%s) Prompting to keep or stop Luminati participation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->showLuminatiRetentionPrompt()V

    .line 1314
    const-string v1, "DA2"

    const-string v2, "Report Event (%s) Completed call to show prompt to keep or stop Luminati participation."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/appsomniacs/core/AnswersLogUtility;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    :goto_1
    return-void

    .line 1316
    :cond_1
    const-string v1, "DA2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report Event ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): No action taken; not a Luminati peer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 v1, 0x0

    sput-boolean v1, Lcom/appsomniacs/da2/DA2Activity;->s_hasSeenLuminatiPromptOnce:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1326
    :catch_0
    move-exception v0

    .line 1327
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1319
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "APP_CONFIG_REQUEST_COMPLETED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1320
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->initLuminatiTopVpnSdk()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected static reportStaticLogEntry(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1966
    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/Crashlytics;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1967
    return-void
.end method

.method protected static reportStaticNonFatalException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1950
    const-string v0, "DA2"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1951
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 1952
    return-void
.end method

.method public static requestAchievementProgress(Ljava/lang/String;)I
    .locals 6
    .param p0, "achievementId"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 4556
    const-string v3, "DA2"

    const-string v4, "Static requestAchievementProgress(...) called."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4557
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 4558
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 4559
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 4560
    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->mFoundAchievementSteps:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4561
    sget-object v2, Lcom/appsomniacs/da2/DA2Activity;->mFoundAchievementSteps:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4568
    :cond_0
    :goto_0
    return v2

    .line 4567
    :cond_1
    const/4 v3, 0x1

    const-string v4, "DA2Activity.requestAchievementProgress()"

    const-string v5, "Activity is null"

    invoke-static {v3, v4, v5}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticLogEntry(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestExit()V
    .locals 4

    .prologue
    .line 4217
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 4218
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 4219
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 4220
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 4221
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryRequestExit()V

    .line 4232
    :cond_0
    :goto_0
    return-void

    .line 4223
    :cond_1
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$29;

    invoke-direct {v2}, Lcom/appsomniacs/da2/DA2Activity$29;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static requestIdentity()V
    .locals 5

    .prologue
    .line 5085
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 5086
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 5087
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 5088
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 5089
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryRequestIdentity()V

    .line 5103
    :goto_0
    return-void

    .line 5091
    :cond_0
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$44;

    invoke-direct {v2}, Lcom/appsomniacs/da2/DA2Activity$44;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5101
    :cond_1
    const/4 v2, 0x1

    const-string v3, "DA2Activity.requestIdentity()"

    const-string v4, "Activity is null"

    invoke-static {v2, v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticLogEntry(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestLeaderboardScore(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "leaderboardId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4807
    const-string v3, "DA2"

    const-string v6, "Static fetchLeaderboardScore(%s) called."

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p0, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4808
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 4809
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 4810
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 4811
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->fetchGpgsLeaderboardScores()V

    .line 4812
    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->mFoundLeaderboardScores:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4814
    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->mFoundLeaderboardScores:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 4815
    .local v4, "scoreVal":J
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 4816
    .local v2, "returnVal":Ljava/lang/String;
    const-string v3, "DA2"

    const-string v6, "DA2Activity.requestLeaderboardScore() return value found in lookup (long):%d /  (string):%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4824
    .end local v2    # "returnVal":Ljava/lang/String;
    .end local v4    # "scoreVal":J
    :goto_0
    return-object v2

    .line 4819
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 4823
    :cond_1
    const-string v3, "DA2Activity.requestLeaderboardScore()"

    const-string v6, "Activity is null"

    invoke-static {v9, v3, v6}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticLogEntry(ILjava/lang/String;Ljava/lang/String;)V

    .line 4824
    const-string v2, ""

    goto :goto_0
.end method

.method private static resetLuminatiOptionIfNotAlreadyAPeer()V
    .locals 1

    .prologue
    .line 1279
    sget-boolean v0, Lcom/appsomniacs/da2/DA2Activity;->s_allowLuminatiParticipation:Z

    if-eqz v0, :cond_0

    .line 1281
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isLuminatiPeer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1282
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lio/topvpn/vpn_api/api;->clear_selection(Landroid/content/Context;)V

    .line 1285
    :cond_0
    return-void
.end method

.method private restoreConfigSettingsFromPreferences()V
    .locals 7

    .prologue
    .line 967
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/appsomniacs/da2/DA2Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 968
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "com.appsomniacs.da2.config"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->s_ConfigKey_RewardedVideoTimeAward:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/appsomniacs/da2/DA2Activity;->s_config_rt:I

    .line 969
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v3, :cond_0

    .line 970
    const-string v2, "DA2"

    const-string v3, "DEBUG: restoreConfigSettingsFromPreferences::rt::%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/appsomniacs/da2/DA2Activity;->s_config_rt:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_0
    const-string v2, "DA2"

    const-string v3, "settings restore completed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    .end local v1    # "sharedPref":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Anomaly"

    const-string v3, "SettingsRestoreFailure"

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static sessionRequestCompleted(Z)V
    .locals 4
    .param p0, "isSessionEstablished"    # Z

    .prologue
    .line 1535
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1536
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1537
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 1538
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1539
    invoke-virtual {v0, p0}, Lcom/appsomniacs/da2/DA2Activity;->trySessionRequestedCompletedSetup(Z)V

    .line 1551
    :cond_0
    :goto_0
    return-void

    .line 1541
    :cond_1
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$10;

    invoke-direct {v2, p0}, Lcom/appsomniacs/da2/DA2Activity$10;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setIdentity(Ljava/lang/String;)V
    .locals 7
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 1779
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1780
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1781
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 1782
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1783
    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity;->trySetIdentity(Ljava/lang/String;)V

    .line 1794
    :goto_0
    return-void

    .line 1785
    :cond_0
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$13;

    invoke-direct {v2, p0}, Lcom/appsomniacs/da2/DA2Activity$13;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1792
    :cond_1
    const-string v2, "Anomaly"

    const-string v3, "ActivityNull%ssetIdentity"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupAmazonIAPOnCreate()V
    .locals 2

    .prologue
    .line 1402
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1409
    :goto_0
    return-void

    .line 1404
    :cond_0
    new-instance v1, Lcom/amazon/iap/util/DA2IapManager;

    invoke-direct {v1, p0}, Lcom/amazon/iap/util/DA2IapManager;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    iput-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->da2AmazonIapManager:Lcom/amazon/iap/util/DA2IapManager;

    .line 1405
    new-instance v0, Lcom/amazon/iap/util/DA2PurchasingListener;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->da2AmazonIapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-direct {v0, v1}, Lcom/amazon/iap/util/DA2PurchasingListener;-><init>(Lcom/amazon/iap/util/DA2IapManager;)V

    .line 1407
    .local v0, "amazonPurchasingListener":Lcom/amazon/iap/util/DA2PurchasingListener;
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    goto :goto_0
.end method

.method private setupGooglePlayLicenceValidation()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 468
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    sput-boolean v6, Lcom/appsomniacs/da2/DA2Activity;->m_hasPassedRLC:Z

    .line 490
    :goto_0
    return-void

    .line 474
    :cond_0
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$AppsomniacsGooglePlayLicenseCheckerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appsomniacs/da2/DA2Activity$AppsomniacsGooglePlayLicenseCheckerCallback;-><init>(Lcom/appsomniacs/da2/DA2Activity;Lcom/appsomniacs/da2/DA2Activity$1;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 478
    new-instance v0, Lcom/google/android/vending/licensing/LicenseChecker;

    new-instance v1, Lcom/google/android/vending/licensing/ServerManagedPolicy;

    new-instance v2, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->SALT:[B

    .line 482
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/google/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh2KG+zjczjQ/Gk7L7ZI3jPMQb98BGQ1kEqJksQBVroQYuS3jXe1AotSlIli3EDh37Fb+RrePQqTDXWkQ7IF7cc9ml/4LJFW/sf5Eghk6LGJPsKNmNbHivlwj3oNsjraE3CO9ZP4nvQPeDhJMjvZQnNAWc2cgu7KWxyTqIJu+EMvROwS3bwn/goXmFmhNK4dFtA7h6fFPqb6doKVEgyD9uR7xxnit7aUhzbvQWrX3ErnXJJ+qpcSKZEUMfeLWxuSA5FTk5DPaSoBkzvvU3VY8PL8iDCpCGW4zOgMpF9XZ8sjUZix5U7t2Eg2psL5VDADSx3Tk2eIdMl+R7qyYbQvDAQIDAQAB"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenceChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    .line 486
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenceChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    .line 488
    sput-boolean v6, Lcom/appsomniacs/da2/DA2Activity;->m_hasPassedRLC:Z

    goto :goto_0
.end method

.method private setupMainWindowDisplayMode()V
    .locals 3

    .prologue
    .line 1414
    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->isM_WindowChangeListenerSetup:Z

    if-nez v1, :cond_1

    .line 1415
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 1416
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1417
    .local v0, "decorView":Landroid/view/View;
    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$9;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$9;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 1424
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->isM_WindowChangeListenerSetup:Z

    .line 1426
    :cond_1
    return-void
.end method

.method public static showGpgsAchievements()V
    .locals 5

    .prologue
    .line 4502
    const-string v2, "DA2"

    const-string v3, "showGpgsAchievements() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 4505
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 4506
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 4507
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryShowGpgsAchievementsRequested()V

    .line 4553
    :goto_0
    return-void

    .line 4550
    :cond_0
    const/4 v2, 0x1

    const-string v3, "DA2Activity.showGpgsAchievements()"

    const-string v4, "Activity is null"

    invoke-static {v2, v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticLogEntry(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showGpgsLeaderboards()V
    .locals 5

    .prologue
    .line 4762
    const-string v2, "DA2"

    const-string v3, "Static showGpgsLeaderboards() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4764
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 4765
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 4766
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 4767
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryShowGpgsLeaderboardsRequested()V

    .line 4772
    :goto_0
    return-void

    .line 4770
    :cond_0
    const/4 v2, 0x1

    const-string v3, "DA2Activity.showGpgsLeaderboards()"

    const-string v4, "Activity is null"

    invoke-static {v2, v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticLogEntry(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showGpgsLeaderboardsRequested()V
    .locals 2

    .prologue
    .line 4858
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->fetchGpgsLeaderboardScores()V

    .line 4860
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mLeaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->isGpgsSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4861
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mLeaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/games/LeaderboardsClient;->getAllLeaderboardsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$38;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$38;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 4862
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$37;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$37;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 4868
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 4875
    :cond_0
    return-void
.end method

.method public static showInterstitial()V
    .locals 7

    .prologue
    .line 2943
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2944
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2945
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 2946
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 2947
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryShowInterstitial()Z

    .line 2958
    :goto_0
    return-void

    .line 2949
    :cond_0
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$22;

    invoke-direct {v2}, Lcom/appsomniacs/da2/DA2Activity$22;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2956
    :cond_1
    const-string v2, "Anomaly"

    const-string v3, "ActivityNull%sshowInterstitial"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showLuminatiOptInDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1094
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v3

    .local v3, "context":Landroid/content/Context;
    move-object v0, v3

    .line 1095
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1096
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 1097
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 1099
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1101
    .local v2, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v5, "Free Pro Pack Trial Offer"

    .line 1102
    .local v5, "title":Ljava/lang/String;
    const-string v4, "Full access to the Pro Pack features can be enabled in return for use of your device\'s idle resources (confirm on next screen).\n\nPlease note Pro Pack may be purchased for permanent unlock, as well as watching videos (if available) for trial access.\n-Logging out of your Appsomniacs account will give the option to opt-out."

    .line 1105
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1107
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1108
    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "I DISAGREE\nDon\'t use my idle resources"

    new-instance v8, Lcom/appsomniacs/da2/DA2Activity$4;

    invoke-direct {v8, p0, v0}, Lcom/appsomniacs/da2/DA2Activity$4;-><init>(Lcom/appsomniacs/da2/DA2Activity;Lcom/appsomniacs/da2/DA2Activity;)V

    .line 1109
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "I AGREE\nUse my idle resources"

    new-instance v8, Lcom/appsomniacs/da2/DA2Activity$3;

    invoke-direct {v8, p0, v0}, Lcom/appsomniacs/da2/DA2Activity$3;-><init>(Lcom/appsomniacs/da2/DA2Activity;Lcom/appsomniacs/da2/DA2Activity;)V

    .line 1117
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f020069

    .line 1129
    invoke-static {p0, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 1131
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1133
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1144
    .end local v1    # "alertDialog":Landroid/app/AlertDialog;
    .end local v2    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :goto_0
    return-void

    .line 1135
    :cond_0
    new-instance v6, Lcom/appsomniacs/da2/DA2Activity$5;

    invoke-direct {v6, p0}, Lcom/appsomniacs/da2/DA2Activity$5;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    invoke-virtual {v0, v6}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1142
    :cond_1
    const-string v6, "Anomaly"

    const-string v7, "ActivityNull%sshowLuminatiOptInDialog"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static showLuminatiRetentionPrompt()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1361
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "context":Landroid/content/Context;
    move-object v0, v2

    .line 1362
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1363
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 1364
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1365
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "Keep Pro Pack Trial Enabled?"

    .line 1366
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Do you want to keep trading idle device resources for continued Pro Pack Trial access?"

    .line 1367
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Keep Enabled"

    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->dialogKeepLuminatiEnabledListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1368
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Stop Pro Trial"

    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->dialogKeepLuminatiEnabledListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1369
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1370
    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1371
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1372
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020069

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1373
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1384
    .end local v1    # "alert":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 1375
    :cond_0
    new-instance v3, Lcom/appsomniacs/da2/DA2Activity$8;

    invoke-direct {v3}, Lcom/appsomniacs/da2/DA2Activity$8;-><init>()V

    invoke-virtual {v0, v3}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1382
    :cond_1
    const-string v3, "Anomaly"

    const-string v4, "ActivityNull%sshowLuminatiRetentionPrompt"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showRewardedAd()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 2260
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2261
    .local v2, "context":Landroid/content/Context;
    move-object v0, v2

    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    move-object v1, v0

    .line 2262
    .local v1, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v1, :cond_1

    .line 2263
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 2264
    const-string v5, "ProPackTrial"

    invoke-direct {v1, v5}, Lcom/appsomniacs/da2/DA2Activity;->tryShowRewardedAd(Ljava/lang/String;)Z

    move-result v4

    .line 2286
    .end local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :goto_0
    return v4

    .line 2266
    .restart local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :cond_0
    sget-object v6, Lcom/appsomniacs/da2/DA2Activity;->staticRunner_showRewardedAd:Ljava/lang/Runnable;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2267
    :try_start_1
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->staticRunner_showRewardedAd:Ljava/lang/Runnable;

    invoke-virtual {v1, v5}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2269
    :try_start_2
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->staticRunner_showRewardedAd:Ljava/lang/Runnable;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2274
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2275
    :try_start_4
    sget-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->s_ResultOfShowRewardedAdCall:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2270
    :catch_0
    move-exception v3

    .line 2271
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    .line 2272
    monitor-exit v6

    goto :goto_0

    .line 2274
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 2283
    .end local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :catch_1
    move-exception v3

    .line 2284
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "DA2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showRewardedAd() call failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2285
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2279
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :cond_1
    :try_start_7
    const-string v5, "Anomaly"

    const-string v6, "ActivityNull%sshowRewardedAd"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0
.end method

.method private signInSilently()V
    .locals 2

    .prologue
    .line 4347
    const-string v0, "DA2"

    const-string v1, "signInSilently() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4349
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->silentSignIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$31;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$31;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 4362
    return-void
.end method

.method public static startingPurchaseValidation(Ljava/lang/String;)V
    .locals 4
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 4016
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 4017
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 4018
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 4019
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->incrementIapAsyncOperationInProgressCounter()V

    .line 4023
    :goto_0
    return-void

    .line 4022
    :cond_0
    const-string v2, "DA2"

    const-string v3, "Activity not found! Trying to signal completion of purchase validation."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static static_analyticsBeginSection(Ljava/lang/String;)V
    .locals 7
    .param p0, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 5401
    if-nez p0, :cond_0

    .line 5410
    :goto_0
    return-void

    .line 5402
    :cond_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 5403
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 5404
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 5405
    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity;->analyticsBeginSection(Ljava/lang/String;)V

    goto :goto_0

    .line 5408
    :cond_1
    const-string v2, "Anomaly"

    const-string v3, "ActivityNull%sstatic_analyticsBeginSection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static static_analyticsEndSection(Ljava/lang/String;)V
    .locals 7
    .param p0, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 5413
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 5422
    :cond_0
    :goto_0
    return-void

    .line 5414
    :cond_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 5415
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 5416
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_2

    .line 5417
    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity;->analyticsEndSection(Ljava/lang/String;)V

    goto :goto_0

    .line 5420
    :cond_2
    const-string v2, "Anomaly"

    const-string v3, "ActivityNull%sstatic_analyticsEndSection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static static_analyticsEventOccured(Ljava/lang/String;)V
    .locals 7
    .param p0, "eventName"    # Ljava/lang/String;

    .prologue
    .line 5425
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 5434
    :cond_0
    :goto_0
    return-void

    .line 5426
    :cond_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 5427
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 5428
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_2

    .line 5429
    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity;->analyticsBeginSection(Ljava/lang/String;)V

    goto :goto_0

    .line 5432
    :cond_2
    const-string v2, "Anomaly"

    const-string v3, "ActivityNull%sstatic_analyticsEventOccured"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static submitLeaderboardScore(Ljava/lang/String;J)V
    .locals 11
    .param p0, "scoreId"    # Ljava/lang/String;
    .param p1, "newScore"    # J

    .prologue
    const/4 v9, 0x1

    .line 4775
    const-string v5, "DA2"

    const-string v6, "Static submitLeaderboardScore(%s, %d) called."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4776
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 4777
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 4778
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 4781
    :try_start_0
    invoke-direct {v0, p0, p1, p2}, Lcom/appsomniacs/da2/DA2Activity;->trySetGpgsScore(Ljava/lang/String;J)V

    .line 4784
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->mFoundLeaderboardIds:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4786
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->mFoundLeaderboardScores:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4787
    .local v2, "currentKnownScore":J
    cmp-long v5, v2, p1

    if-gez v5, :cond_0

    .line 4788
    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->mFoundLeaderboardScores:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4799
    .end local v2    # "currentKnownScore":J
    :cond_0
    :goto_0
    return-void

    .line 4791
    :catch_0
    move-exception v4

    .line 4792
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 4793
    invoke-static {v4}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4797
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, "DA2Activity.showGpgsLeaderboards()"

    const-string v6, "Activity is null"

    invoke-static {v9, v5, v6}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticLogEntry(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tryFetchGpgsScore(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "scoreId"    # Ljava/lang/String;
    .param p2, "scoreDisplayName"    # Ljava/lang/String;
    .param p3, "step"    # I

    .prologue
    .line 4939
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mLeaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->isGpgsSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4940
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mLeaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/games/LeaderboardsClient;->loadCurrentPlayerLeaderboardScore(Ljava/lang/String;II)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$42;

    invoke-direct {v1, p0, p1, p3}, Lcom/appsomniacs/da2/DA2Activity$42;-><init>(Lcom/appsomniacs/da2/DA2Activity;Ljava/lang/String;I)V

    .line 4941
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$41;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/appsomniacs/da2/DA2Activity$41;-><init>(Lcom/appsomniacs/da2/DA2Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 4960
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 5018
    :cond_0
    return-void
.end method

.method private tryGetAdIds()Ljava/lang/String;
    .locals 7

    .prologue
    .line 5764
    :try_start_0
    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    if-nez v4, :cond_0

    .line 5765
    const-string v1, "MP_BNR_NULL"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5775
    .local v1, "mopubBanner":Ljava/lang/String;
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-nez v4, :cond_1

    .line 5776
    const-string v2, "MP_INT_NULL"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 5796
    .local v2, "mopubInterstitialAdUnitId":Ljava/lang/String;
    :goto_1
    :try_start_2
    sget-object v4, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    if-nez v4, :cond_3

    .line 5797
    const-string v3, "SS_RWD_NULL"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 5807
    .local v3, "supersonicRewarded":Ljava/lang/String;
    :goto_2
    const-string v4, "%s,%s,%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 5767
    .end local v1    # "mopubBanner":Ljava/lang/String;
    .end local v2    # "mopubInterstitialAdUnitId":Ljava/lang/String;
    .end local v3    # "supersonicRewarded":Ljava/lang/String;
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubView;->getAdUnitId()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .restart local v1    # "mopubBanner":Ljava/lang/String;
    goto :goto_0

    .line 5769
    .end local v1    # "mopubBanner":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 5770
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DA2"

    const-string v5, "Error reading MoPub Banner AdUnit Id"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5771
    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    .line 5772
    const-string v1, "MP_BNR_ERR"

    .restart local v1    # "mopubBanner":Ljava/lang/String;
    goto :goto_0

    .line 5778
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_4
    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubInterstitial;->getLocalExtras()Ljava/util/Map;

    move-result-object v4

    const-string v5, "MOPUB_ADD_UNIT_ID"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v4

    if-eqz v4, :cond_2

    .line 5780
    :try_start_5
    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubInterstitial;->getLocalExtras()Ljava/util/Map;

    move-result-object v4

    const-string v5, "MOPUB_ADD_UNIT_ID"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .restart local v2    # "mopubInterstitialAdUnitId":Ljava/lang/String;
    goto :goto_1

    .line 5781
    .end local v2    # "mopubInterstitialAdUnitId":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 5782
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "MP_INT_ERR"

    .line 5783
    .restart local v2    # "mopubInterstitialAdUnitId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 5790
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "mopubInterstitialAdUnitId":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 5791
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "DA2"

    const-string v5, "Error reading MoPub Interstitial AdUnit Id"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5792
    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    .line 5793
    const-string v2, "MP_INT_ERR"

    .restart local v2    # "mopubInterstitialAdUnitId":Ljava/lang/String;
    goto :goto_1

    .line 5786
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "mopubInterstitialAdUnitId":Ljava/lang/String;
    :cond_2
    :try_start_7
    const-string v2, "MP_INT_NOTFND"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .restart local v2    # "mopubInterstitialAdUnitId":Ljava/lang/String;
    goto :goto_1

    .line 5799
    :cond_3
    :try_start_8
    sget-object v4, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-result-object v3

    .restart local v3    # "supersonicRewarded":Ljava/lang/String;
    goto :goto_2

    .line 5801
    .end local v3    # "supersonicRewarded":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 5802
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "DA2"

    const-string v5, "Error reading Supersonic Rewarded AdUnit Id"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5803
    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    .line 5804
    const-string v3, "SS_RWD_ERR"

    .restart local v3    # "supersonicRewarded":Ljava/lang/String;
    goto :goto_2
.end method

.method private tryGetLocalizedPurchasePrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 4068
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4075
    :cond_0
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_skuPriceLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4076
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_skuPriceLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4078
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private tryGetThirdPartyConfigDiagnostic()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5728
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5730
    .local v1, "thirdPartyConfigDiagnsoticJson":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "fabi"

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    :goto_0
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5732
    const-string v6, "mpbaid"

    iget-object v5, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v5}, Lcom/mopub/mobileads/MoPubView;->getAdUnitId()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5733
    const-string v5, "isaid"

    sget-object v6, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    if-eqz v6, :cond_0

    sget-object v2, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    invoke-interface {v2, p0}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5735
    const-string v5, "ilp"

    invoke-static {p0}, Lio/topvpn/vpn_api/api;->get_user_selection(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5736
    const-string v2, "ismc"

    invoke-static {p0}, Lcom/supersonic/environment/DeviceStatus;->getMobileCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5737
    const-string v5, "isir"

    invoke-static {}, Lcom/supersonic/environment/DeviceStatus;->isRootedDevice()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5743
    :goto_4
    const-string v3, "DA2"

    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5744
    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "thirdPartyConfigDiagnsoticJson":Lorg/json/JSONObject;
    :goto_6
    return-object v2

    .restart local v1    # "thirdPartyConfigDiagnsoticJson":Lorg/json/JSONObject;
    :cond_1
    move v5, v4

    .line 5730
    goto :goto_0

    :cond_2
    move-object v5, v2

    .line 5732
    goto :goto_1

    :cond_3
    move v2, v4

    .line 5735
    goto :goto_2

    :cond_4
    move v2, v4

    .line 5737
    goto :goto_3

    .line 5738
    :catch_0
    move-exception v0

    .line 5739
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    .line 5740
    const-string v2, "Anomaly"

    const-string v5, "JsonCreation%stryGetThirdPartyConfigDiagnostic"

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_5
    move-object v2, v1

    .line 5743
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 5744
    :cond_6
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "thirdPartyConfigDiagnsoticJson":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6
.end method

.method private tryInitGPGS()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4244
    const-string v4, "DA2"

    const-string v5, "GPGS: tryInitGPGS() called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4245
    sget-object v4, Lcom/appsomniacs/da2/DA2Activity;->_lockGpgInit:Ljava/lang/Object;

    monitor-enter v4

    .line 4247
    :try_start_0
    const-string v5, "DA2"

    const-string v6, "INITIALIZING GPGS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->isGpgsSignedIn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4250
    const-string v5, "DA2"

    const-string v6, "INITIALIZING GPGS Completed Successfully"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/appsomniacs/da2/DA2Activity;->nativeSetGpgsReadyState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4252
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4263
    :goto_0
    return v2

    .line 4254
    :cond_0
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->nativeSetGpgsReadyState(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4255
    :try_start_3
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 4257
    :catch_0
    move-exception v0

    .line 4258
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->nativeSetGpgsReadyState(Z)V

    .line 4259
    const-string v2, "INITIALIZING GPGS  failed to initialize: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4260
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "DA2"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4261
    invoke-virtual {p0, v1}, Lcom/appsomniacs/da2/DA2Activity;->alert(Ljava/lang/String;)V

    .line 4262
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    .line 4263
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 4265
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private tryIsGooglePlayGamesReady()Z
    .locals 3

    .prologue
    .line 5640
    :try_start_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->isGpgsSignedIn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 5645
    :goto_0
    return v2

    .line 5641
    :catch_0
    move-exception v0

    .line 5642
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Google Play Games Services was not found ready."

    .line 5643
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "DA2"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5644
    invoke-virtual {p0, v1}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V

    .line 5645
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private tryIsGpIapPossible()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3830
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3831
    iget v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I

    if-nez v3, :cond_1

    :goto_0
    move v2, v1

    .line 3855
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v2

    .line 3831
    goto :goto_0

    .line 3834
    :cond_2
    iget-boolean v3, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isSessionEstablished:Z

    if-nez v3, :cond_3

    .line 3835
    const-string v1, "The current client session is invalid. Google billing subsystems are unavailable. Please force close and restart the application and try again."

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    goto :goto_1

    .line 3838
    :cond_3
    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 3839
    :cond_4
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v4, :cond_6

    .line 3842
    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    if-nez v3, :cond_5

    const-string v3, "mGooglePlayIabHelper == null"

    invoke-virtual {p0, v3}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V

    .line 3843
    :cond_5
    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 3844
    const-string v3, "mBillingStatusMessage == null"

    invoke-virtual {p0, v3}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V

    .line 3846
    :cond_6
    const-string v0, "Billing is not initialized. Close the app, If present remove any modifications or blockers (re-install), and retry. "

    .line 3847
    .local v0, "billingMessageFragment":Ljava/lang/String;
    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3848
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    goto :goto_1

    .line 3855
    .end local v0    # "billingMessageFragment":Ljava/lang/String;
    :cond_8
    sget-object v1, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method

.method private tryIsIapOperationPending()Z
    .locals 1

    .prologue
    .line 3912
    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryIsIapReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3881
    sget-boolean v1, Lcom/appsomniacs/da2/DA2Activity;->s_allowLuminatiParticipation:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/appsomniacs/da2/DA2Activity;->s_hasSeenLuminatiPromptOnce:Z

    if-nez v1, :cond_0

    .line 3882
    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->initializeLuminatiIoTopVpn(Z)V

    .line 3883
    sput-boolean v0, Lcom/appsomniacs/da2/DA2Activity;->s_hasSeenLuminatiPromptOnce:Z

    .line 3886
    :cond_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3892
    :goto_0
    return v0

    .line 3889
    :cond_1
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    if-eqz v1, :cond_2

    .line 3890
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->tryIsIapOperationPending()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelperDestroyed:Z

    if-nez v1, :cond_2

    .line 3892
    .local v0, "iabReadyState":Z
    :goto_1
    goto :goto_0

    .line 3890
    .end local v0    # "iabReadyState":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private tryPrepareRewardedAd()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2051
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isLuminatiPeer()Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 2062
    :cond_0
    :goto_0
    return v3

    .line 2055
    :cond_1
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeRewardedVideo_IronSourceSupersonic()Z

    move-result v1

    .line 2056
    .local v1, "isIronSourceSupersonicReady":Z
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeRewardedVideo_MoPub()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2058
    .local v2, "isMoPubReady":Z
    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 2059
    .end local v1    # "isIronSourceSupersonicReady":Z
    .end local v2    # "isMoPubReady":Z
    :catch_0
    move-exception v0

    .line 2060
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DA2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tryPrepareRewardedAd() call failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2061
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private tryPurchaseItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 5110
    :try_start_0
    const-string v0, ""

    sput-object v0, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    .line 5112
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5116
    invoke-static {p1}, Lcom/amazon/device/iap/PurchasingService;->purchase(Ljava/lang/String;)Lcom/amazon/device/iap/model/RequestId;

    .line 5132
    :cond_0
    :goto_0
    return-void

    .line 5119
    :cond_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isBillingMechanismReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5121
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabPurchaseFinishedListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5125
    :catch_0
    move-exception v6

    .line 5128
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method private tryPushAchievementProgress(Ljava/lang/String;I)V
    .locals 2
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 4599
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->isGpgsSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4601
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    if-eqz v1, :cond_0

    .line 4604
    if-lez p2, :cond_0

    .line 4605
    :try_start_0
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/games/AchievementsClient;->setSteps(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4613
    :cond_0
    :goto_0
    return-void

    .line 4607
    :catch_0
    move-exception v0

    .line 4608
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4609
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private tryRequestExit()V
    .locals 0

    .prologue
    .line 4212
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->finish()V

    .line 4213
    return-void
.end method

.method private tryRequestIdentity()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 5064
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5066
    invoke-static {}, Lcom/amazon/device/iap/PurchasingService;->getUserData()Lcom/amazon/device/iap/model/RequestId;

    .line 5081
    :goto_0
    return-void

    .line 5071
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.google"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const-string v4, "\nYou are not using an identity (yet):\n1) Create a secure APPSOMNIACS account\n  -->(choose \"LOGIN\" on the main menu).\n2) Pick a DEVICE account below (insecure)\n3) Cancel and suffer limited services and annoying alerts... It\'s your call."

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v9

    .line 5074
    .local v9, "intent":Landroid/content/Intent;
    const v0, 0x34b20a

    invoke-virtual {p0, v9, v0}, Lcom/appsomniacs/da2/DA2Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5075
    .end local v9    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 5078
    .local v8, "e":Landroid/content/ActivityNotFoundException;
    const-string v0, "Google Play Services Required to make purchases at this time. Actual Error:\n%s"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trySetGpgsScore(Ljava/lang/String;J)V
    .locals 6
    .param p1, "scoreId"    # Ljava/lang/String;
    .param p2, "score"    # J

    .prologue
    .line 4837
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mLeaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->isGpgsSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4839
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mLeaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/games/LeaderboardsClient;->submitScore(Ljava/lang/String;J)V

    .line 4840
    const-string v0, "DA2"

    const-string v1, "Pushed Score to GPGS: ScoreId:%s  (score=%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4842
    :cond_0
    return-void
.end method

.method private trySetIdentity(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 1797
    sput-object p1, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    .line 1798
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/appsomniacs/da2/DA2Activity;->nativeSetIdentity(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->updateGlobalsWithCurrentIdentities()V

    .line 1801
    return-void
.end method

.method private tryShowGpgsAchievementsRequested()V
    .locals 6

    .prologue
    .line 4645
    :try_start_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->fetchGpgsAchievementScores()V

    .line 4646
    const-string v2, "DA2"

    const-string v3, "SHOWING GPGS ACHIEVEMENTS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->showGpgsAchievementsRequested()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4666
    :goto_0
    return-void

    .line 4658
    :catch_0
    move-exception v0

    .line 4659
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->handleGpgsException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 4660
    const-string v2, "GPGS failed to show achievements: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4661
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "DA2"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    invoke-virtual {p0, v1}, Lcom/appsomniacs/da2/DA2Activity;->alert(Ljava/lang/String;)V

    .line 4663
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private tryShowGpgsLeaderboardsRequested()V
    .locals 6

    .prologue
    .line 4846
    :try_start_0
    const-string v2, "DA2"

    const-string v3, "SHOWING GPGS LEADERBOARDS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4847
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->showGpgsLeaderboardsRequested()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4855
    :goto_0
    return-void

    .line 4848
    :catch_0
    move-exception v0

    .line 4849
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->handleGpgsException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 4850
    const-string v2, "GPGS failed to show leaderboards: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4851
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "DA2"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4852
    invoke-virtual {p0, v1}, Lcom/appsomniacs/da2/DA2Activity;->alert(Ljava/lang/String;)V

    .line 4853
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private tryShowInterstitial()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2833
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2834
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-nez v2, :cond_0

    .line 2835
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeAmazonInterstitial()V

    .line 2836
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->tryShowInterstitial()Z

    move-result v0

    .line 2878
    :goto_0
    return v0

    .line 2840
    :cond_0
    iget-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAmazonInterstitialAdReady:Z

    if-eqz v2, :cond_1

    .line 2841
    iput-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAmazonInterstitialAdReady:Z

    .line 2842
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/amazon/device/ads/InterstitialAd;->showAd()Z

    move-result v0

    goto :goto_0

    .line 2845
    :cond_1
    const/4 v0, 0x0

    .line 2846
    .local v0, "result":Z
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/amazon/device/ads/InterstitialAd;->isLoading()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/amazon/device/ads/InterstitialAd;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2848
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    move-result v0

    .line 2854
    :cond_2
    invoke-static {p0}, Lcom/applovin/adview/AppLovinInterstitialAd;->isAdReadyToDisplay(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2856
    invoke-static {p0}, Lcom/applovin/adview/AppLovinInterstitialAd;->show(Landroid/content/Context;)V

    .line 2857
    const/4 v0, 0x1

    .line 2858
    iput-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAppLovinInterstitialAdReady:Z

    goto :goto_0

    .line 2863
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 2869
    .end local v0    # "result":Z
    :cond_4
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-nez v2, :cond_5

    .line 2870
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeMopubInterstitial()V

    .line 2871
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->tryShowInterstitial()Z

    move-result v0

    goto :goto_0

    .line 2873
    :cond_5
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2875
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    move-result v0

    goto :goto_0

    .line 2877
    :cond_6
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    move v0, v1

    .line 2878
    goto :goto_0
.end method

.method private tryShowRewardedAd(Ljava/lang/String;)Z
    .locals 6
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2293
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/appsomniacs/da2/DA2Activity;->s_AllowedRewardedVideoSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2294
    const-string v4, "MP"

    sget-object v2, Lcom/appsomniacs/da2/DA2Activity;->s_AllowedRewardedVideoSources:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2297
    :try_start_0
    sget-boolean v2, Lcom/appsomniacs/da2/DA2Activity;->s_Using_RVMoPub:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isRewardedVideoReady_MoPub()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2298
    sget-object v2, Lcom/appsomniacs/da2/DA2Activity;->s_RewardedVideo_ProPackTrial_MoPubAdunit:Ljava/lang/String;

    invoke-static {v2}, Lcom/mopub/mobileads/MoPubRewardedVideos;->showRewardedVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 2321
    :goto_1
    return v2

    .line 2302
    :catch_0
    move-exception v0

    .line 2303
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DA2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MoPub tryShowRewardedAd() call failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2304
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    .line 2293
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2306
    :cond_1
    const-string v4, "IS"

    sget-object v2, Lcom/appsomniacs/da2/DA2Activity;->s_AllowedRewardedVideoSources:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2309
    :try_start_1
    sget-boolean v2, Lcom/appsomniacs/da2/DA2Activity;->s_Using_RVIronSourceSupersonic:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsIronSourceSupersonicRewardedVideoInitialized:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isRewardedVideoReady_IronSourceSupersonic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2310
    sget-object v2, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    invoke-interface {v2, p1}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->showRewardedVideo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    .line 2311
    goto :goto_1

    .line 2314
    :catch_1
    move-exception v0

    .line 2315
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "DA2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IronSourceSupersonic tryShowRewardedAd() call failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2316
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2321
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private trySignalCompletedPurchaseValidation(ZILjava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 4043
    if-nez p1, :cond_0

    .line 4044
    :try_start_0
    const-string v0, "Purchase Validation Failed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/appsomniacs/da2/DA2Activity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4047
    :cond_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->decrementIapAsyncOperationsInProgressCounter()V

    .line 4049
    return-void

    .line 4047
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->decrementIapAsyncOperationsInProgressCounter()V

    throw v0
.end method

.method private updateGlobalsWithCurrentIdentities()V
    .locals 2

    .prologue
    .line 590
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 591
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserIdentifier(Ljava/lang/String;)V

    .line 595
    :cond_0
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserEmail(Ljava/lang/String;)V

    .line 602
    :cond_1
    :goto_0
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 603
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserName(Ljava/lang/String;)V

    .line 605
    :cond_2
    return-void

    .line 597
    :cond_3
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID_G:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID_G:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID_G:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID_G:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserEmail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateWithAppConfig(Ljava/lang/String;)V
    .locals 18
    .param p0, "jsonAppConfig"    # Ljava/lang/String;

    .prologue
    .line 2173
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1

    .line 2242
    :cond_0
    :goto_0
    return-void

    .line 2177
    :cond_1
    const-string/jumbo v15, "{}"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2178
    sget-object v15, Lcom/appsomniacs/da2/DA2Activity;->s_AllowedRewardedVideoSources:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 2184
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2185
    .local v3, "context":Landroid/content/Context;
    move-object v0, v3

    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    move-object v1, v0

    .line 2187
    .local v1, "activity":Lcom/appsomniacs/da2/DA2Activity;
    new-instance v15, Lorg/json/JSONTokener;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 2188
    .local v2, "configJsonObject":Lorg/json/JSONObject;
    if-nez v2, :cond_3

    .line 2189
    const-string v15, "Config JSON Object Null"

    const-string v16, "updateWithAppConfig"

    invoke-static/range {v15 .. v16}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2239
    .end local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .end local v2    # "configJsonObject":Lorg/json/JSONObject;
    .end local v3    # "context":Landroid/content/Context;
    :catch_0
    move-exception v4

    .line 2240
    .local v4, "e":Lorg/json/JSONException;
    invoke-static {v4}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2194
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .restart local v2    # "configJsonObject":Lorg/json/JSONObject;
    .restart local v3    # "context":Landroid/content/Context;
    :cond_3
    :try_start_1
    const-string v15, "rv"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 2195
    .local v9, "rewardedVideoWaterfallItem":Lorg/json/JSONArray;
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_6

    .line 2196
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2197
    .local v11, "rvNodes":Ljava/util/List;, "Ljava/util/List<Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v6, v15, :cond_5

    .line 2198
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 2199
    .local v7, "jsonRvNode":Lorg/json/JSONObject;
    const-string v15, "wo"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 2200
    .local v13, "waterFallOrder":I
    const-string v15, "id"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2201
    .local v8, "networkId":Ljava/lang/String;
    if-nez v8, :cond_4

    .line 2197
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2204
    :cond_4
    new-instance v10, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;

    invoke-direct {v10}, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;-><init>()V

    .line 2205
    .local v10, "rvNode":Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;
    iput v13, v10, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;->waterfallOrder:I

    .line 2206
    iput-object v8, v10, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;->id:Ljava/lang/String;

    .line 2207
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2212
    .end local v7    # "jsonRvNode":Lorg/json/JSONObject;
    .end local v8    # "networkId":Ljava/lang/String;
    .end local v10    # "rvNode":Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;
    .end local v13    # "waterFallOrder":I
    :cond_5
    sget-object v15, Lcom/appsomniacs/da2/DA2Activity;->s_AllowedRewardedVideoSources:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 2213
    const-string v15, "PreSort"

    invoke-static {v11, v15}, Lcom/appsomniacs/da2/DA2Activity;->debugPrintRvNodes(Ljava/util/List;Ljava/lang/String;)V

    .line 2214
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2215
    const-string v15, "PostSort"

    invoke-static {v11, v15}, Lcom/appsomniacs/da2/DA2Activity;->debugPrintRvNodes(Ljava/util/List;Ljava/lang/String;)V

    .line 2216
    const/4 v14, 0x0

    .local v14, "x":I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_6

    .line 2217
    sget-object v16, Lcom/appsomniacs/da2/DA2Activity;->s_AllowedRewardedVideoSources:Ljava/util/List;

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;

    iget-object v15, v15, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;->id:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2216
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 2222
    .end local v6    # "i":I
    .end local v11    # "rvNodes":Ljava/util/List;, "Ljava/util/List<Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;>;"
    .end local v14    # "x":I
    :cond_6
    sget-object v15, Lcom/appsomniacs/da2/DA2Activity;->s_ConfigKey_RewardedVideoTimeAward:Ljava/lang/String;

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2223
    sget-object v15, Lcom/appsomniacs/da2/DA2Activity;->s_ConfigKey_RewardedVideoTimeAward:Ljava/lang/String;

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    sput v15, Lcom/appsomniacs/da2/DA2Activity;->s_config_rt:I

    .line 2224
    if-nez v1, :cond_8

    .line 2225
    const-string v15, "Activity Not Found"

    const-string v16, "ParseRewardedTimeSettingFromConfig"

    invoke-static/range {v15 .. v16}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    :cond_7
    :goto_4
    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->ParseLuminatiSettingsFromConfig(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 2228
    :cond_8
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/appsomniacs/da2/DA2Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 2229
    .local v12, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 2230
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "com.appsomniacs.da2.config"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/appsomniacs/da2/DA2Activity;->s_ConfigKey_RewardedVideoTimeAward:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Lcom/appsomniacs/da2/DA2Activity;->s_config_rt:I

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2231
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2232
    const-string v15, "DA2"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Rewarded Time Value Saved: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/appsomniacs/da2/DA2Activity;->s_ConfigKey_RewardedVideoTimeAward:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static verifyInventory()V
    .locals 7

    .prologue
    .line 5175
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 5176
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 5177
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 5178
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 5179
    invoke-virtual {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryVerifyInventory()V

    .line 5192
    :goto_0
    return-void

    .line 5181
    :cond_0
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$45;

    invoke-direct {v2}, Lcom/appsomniacs/da2/DA2Activity$45;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5190
    :cond_1
    const-string v2, "Anomaly"

    const-string v3, "ActivityNull%sverifyInventory"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 3613
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 3573
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 3574
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 3583
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 3584
    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 3549
    invoke-static {p0}, Lcom/applovin/adview/AppLovinInterstitialAd;->isAdReadyToDisplay(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAppLovinInterstitialAdReady:Z

    .line 3551
    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->isVideoAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3554
    :cond_0
    return-void
.end method

.method alert(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1560
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$11;

    invoke-direct {v0, p0, p1}, Lcom/appsomniacs/da2/DA2Activity$11;-><init>(Lcom/appsomniacs/da2/DA2Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1577
    return-void
.end method

.method complain(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1554
    const-string v0, "DA2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** DA2 Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->alert(Ljava/lang/String;)V

    .line 1556
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 3563
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 3564
    return-void
.end method

.method public forceCrash(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 585
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This is a crash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getReportingUserIdString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2634
    sget-object v1, Lcom/appsomniacs/da2/DA2Activity;->USER_ID_G:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/appsomniacs/da2/DA2Activity;->USER_ID_G:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2635
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID_G:Ljava/lang/String;

    .line 2641
    .local v0, "mUserId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2636
    .end local v0    # "mUserId":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2637
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    .restart local v0    # "mUserId":Ljava/lang/String;
    goto :goto_0

    .line 2639
    .end local v0    # "mUserId":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    .restart local v0    # "mUserId":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 3083
    const/16 v1, 0x2329

    if-ne p1, v1, :cond_0

    .line 3084
    iput-boolean v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mGpgSignInClicked:Z

    .line 3085
    iput-boolean v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mResolvingConnectionFailure:Z

    .line 3086
    if-ne p2, v2, :cond_0

    .line 3087
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 3088
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 3099
    :cond_0
    const v1, 0x34b20a

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 3100
    const-string v1, "authAccount"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3102
    .local v0, "accountName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->trySetIdentity(Ljava/lang/String;)V

    .line 3105
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    if-eqz v1, :cond_3

    .line 3107
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3121
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 3122
    return-void

    .line 3116
    :cond_2
    const-string v1, ""

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    goto :goto_0

    .line 3119
    :cond_3
    const-string v1, " Upon handling an activity result the IAB system was not present"

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 3626
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 3627
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 3636
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-ne p1, v0, :cond_0

    .line 3637
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    .line 3639
    :cond_0
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 3650
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 3660
    return-void
.end method

.method public onAdExpired(Lcom/amazon/device/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 3699
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "error"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 3669
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-ne p1, v0, :cond_0

    .line 3670
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    .line 3672
    :cond_0
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 3673
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 1
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "adProperties"    # Lcom/amazon/device/ads/AdProperties;

    .prologue
    .line 3682
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-ne v0, p1, :cond_0

    .line 3683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAmazonInterstitialAdReady:Z

    .line 3685
    :cond_0
    return-void
.end method

.method public onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 3694
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 3521
    :try_start_0
    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    if-eqz v1, :cond_0

    .line 3522
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onBackPressed(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3529
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3537
    :goto_1
    return-void

    .line 3524
    :catch_0
    move-exception v0

    .line 3525
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3533
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3535
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3532
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onBackPressed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .param p1, "moPubView"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 3707
    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .param p1, "moPubView"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 3712
    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .param p1, "moPubView"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 3717
    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4
    .param p1, "moPubView"    # Lcom/mopub/mobileads/MoPubView;
    .param p2, "moPubErrorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 3723
    const-string v2, "DA2"

    const-string v3, "MoPub BannerAdListener: onBannerFailed() callback entered."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    sget-boolean v2, Lcom/appsomniacs/da2/DA2Activity;->isWaitingToRetryBannerAdLoad:Z

    if-eqz v2, :cond_0

    .line 3725
    const-string v2, "DA2"

    const-string v3, "MoPub BannerAdListener: onBannerFailed() skipping load attempt, waiting for retry."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    :goto_0
    return-void

    .line 3728
    :cond_0
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    if-nez v2, :cond_1

    .line 3729
    const-string v2, "DA2"

    const-string v3, "MoPub BannerAdListener: onBannerFailed() skipping load attempt, m_mopubView is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3731
    :cond_1
    const-string v2, "DA2"

    const-string v3, "MoPub BannerAdListener: onBannerFailed() scheduling for retry."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    const/4 v2, 0x1

    sput-boolean v2, Lcom/appsomniacs/da2/DA2Activity;->isWaitingToRetryBannerAdLoad:Z

    .line 3733
    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$25;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$25;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 3748
    .local v1, "loadBannerRunnable":Ljava/lang/Runnable;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3749
    .local v0, "handleTimer":Landroid/os/Handler;
    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .param p1, "moPubView"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 3757
    if-eqz p1, :cond_0

    .line 3760
    :cond_0
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 5536
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    const/4 v2, 0x0

    .line 5552
    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mResolvingConnectionFailure:Z

    if-eqz v1, :cond_1

    .line 5587
    :cond_0
    :goto_0
    return-void

    .line 5560
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGpgSignInClicked:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mAutoStartSignInFlow:Z

    if-eqz v1, :cond_0

    .line 5561
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mAutoStartSignInFlow:Z

    .line 5562
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGpgSignInClicked:Z

    .line 5563
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mResolvingConnectionFailure:Z

    .line 5580
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mResolvingConnectionFailure:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5582
    :catch_0
    move-exception v0

    .line 5583
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    .line 5584
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->mResolvingConnectionFailure:Z

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 5541
    :try_start_0
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 5543
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5548
    :cond_0
    :goto_0
    return-void

    .line 5545
    :catch_0
    move-exception v0

    .line 5546
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "gadget"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 621
    const-string v12, "DA2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "details="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/appsomniacs/da2/DA2Activity;->bundle2string(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-super/range {p0 .. p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 663
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x2

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v13, :cond_a

    .line 665
    const-string v12, "AAfbeca5a9981874b750bc146f815eea5061fe838c"

    invoke-static {v12}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v12

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplication()Landroid/app/Application;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    :goto_0
    const/4 v12, 0x2

    :try_start_1
    new-array v12, v12, [Lio/fabric/sdk/android/Kit;

    const/4 v13, 0x0

    new-instance v14, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v14}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-instance v14, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    invoke-direct {v14}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;-><init>()V

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 680
    invoke-direct/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->updateGlobalsWithCurrentIdentities()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 689
    invoke-direct/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->restoreConfigSettingsFromPreferences()V

    .line 691
    invoke-static/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeSetActivity(Landroid/app/Activity;)V

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-static {v12}, Lcom/appsomniacs/da2/DA2Activity;->nativeSetAssetManager(Landroid/content/res/AssetManager;)V

    .line 697
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 698
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "action":Ljava/lang/String;
    const-string v12, "DA2"

    const-string v13, "onCreate INTENT ACTION: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 701
    .local v3, "data":Landroid/net/Uri;
    if-nez v3, :cond_b

    .line 702
    const-string v12, "DA2"

    const-string v13, "onCreate INTENT DATA IS NULL"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 704
    .local v6, "extras":Landroid/os/Bundle;
    invoke-static {v6}, Lcom/appsomniacs/da2/DA2Activity;->bundle2string(Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 730
    .end local v1    # "action":Ljava/lang/String;
    .end local v3    # "data":Landroid/net/Uri;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "android_id"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    .line 731
    invoke-direct/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->updateGlobalsWithCurrentIdentities()V

    .line 758
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x2

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v13, :cond_1

    .line 789
    :cond_1
    :goto_2
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 791
    const-string v12, "DA2"

    const-string v13, "Amazon Build: Chartboost is NOT to be initialized."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v12

    if-nez v12, :cond_3

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x2

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v13, :cond_d

    .line 812
    const-string v12, "d2728786e8244c2bacc592337ce0fe63"

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 813
    sget-object v12, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->DEBUG:Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    invoke-static {v12}, Lcom/inmobi/sdk/InMobiSdk;->setLogLevel(Lcom/inmobi/sdk/InMobiSdk$LogLevel;)V

    .line 814
    const-string v12, "DA2"

    const-string v13, "InMobi Version: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->getVersion()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 827
    :cond_3
    :goto_3
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "android.permission.READ_PHONE_STATE"

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 829
    .local v9, "permissionCheck":I
    if-nez v9, :cond_f

    .line 830
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    check-cast v12, Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/appsomniacs/da2/DA2Activity;->PHONE_ID:Ljava/lang/String;

    .line 831
    sget-object v12, Lcom/appsomniacs/da2/DA2Activity;->PHONE_ID:Ljava/lang/String;

    if-nez v12, :cond_e

    .line 832
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PHONE_ID_NULL_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/appsomniacs/da2/DA2Activity;->PHONE_ID:Ljava/lang/String;

    .line 868
    :cond_4
    :goto_4
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v12

    if-nez v12, :cond_5

    .line 871
    :try_start_4
    new-instance v12, Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-direct {v12}, Lcom/mopub/mobileads/MoPubConversionTracker;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/mopub/mobileads/MoPubConversionTracker;->reportAppOpen(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 878
    :cond_5
    :goto_5
    :try_start_5
    invoke-static/range {p0 .. p0}, Lorg/go3k/utilities/ZYWebView;->setActivity(Landroid/app/Activity;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 884
    :goto_6
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isGooglePlayServicesAvailable()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplication()Landroid/app/Application;

    move-result-object v12

    check-cast v12, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;

    sget-object v13, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;->APP_TRACKER:Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;

    invoke-virtual {v12, v13}, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;->getTracker(Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v11

    .line 887
    .local v11, "t":Lcom/google/android/gms/analytics/Tracker;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 888
    const-string v12, "Start"

    invoke-virtual {v11, v12}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 889
    new-instance v12, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v12}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 891
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->initGPGS()Z

    .line 895
    .end local v11    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x2

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v13, :cond_7

    .line 901
    :cond_7
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x2

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v13, :cond_8

    .line 921
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->incrementIapAsyncOperationInProgressCounter()V

    .line 922
    invoke-direct/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->setupAmazonIAPOnCreate()V

    .line 945
    :cond_9
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeInterstitial()V

    .line 959
    invoke-direct/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeCuebiq()V

    .line 961
    invoke-static/range {p0 .. p1}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 962
    const-string v12, "DA2"

    const-string v13, "DA2Activity.onCreate(...) has completed."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return-void

    .line 669
    .end local v9    # "permissionCheck":I
    :cond_a
    :try_start_6
    const-string v12, "AA3f2ddc0c0c2fcb54d2484561ab0776a4ad76718c"

    invoke-static {v12}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v12

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplication()Landroid/app/Application;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 672
    :catch_0
    move-exception v4

    .line 674
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v12, "DA2"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 677
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 679
    const/4 v13, 0x2

    :try_start_8
    new-array v13, v13, [Lio/fabric/sdk/android/Kit;

    const/4 v14, 0x0

    new-instance v15, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v15}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    invoke-direct {v15}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 680
    invoke-direct/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->updateGlobalsWithCurrentIdentities()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 684
    throw v12

    .line 681
    :catch_1
    move-exception v4

    .line 683
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v12, "DA2"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    throw v4

    .line 681
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 683
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v12, "DA2"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    throw v4

    .line 708
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v3    # "data":Landroid/net/Uri;
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_b
    :try_start_9
    const-string v12, "DA2"

    const-string v13, "onCreate PARSED URI: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 711
    .local v8, "lastPathSegment":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v12, "login"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 712
    new-instance v10, Landroid/net/UrlQuerySanitizer;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/net/UrlQuerySanitizer;-><init>(Ljava/lang/String;)V

    .line 713
    .local v10, "sanitizer":Landroid/net/UrlQuerySanitizer;
    const-string v12, "email"

    invoke-virtual {v10, v12}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 714
    .local v5, "email":Ljava/lang/String;
    const-string v12, "code"

    invoke-virtual {v10, v12}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, "code":Ljava/lang/String;
    const-string v12, "DA2"

    const-string v13, "onCreate Parsed from Uri: email=\'%s\' code=\'%s\'"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-static {v5, v2}, Lcom/appsomniacs/da2/DA2Activity;->nativeLogin(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 718
    :try_start_a
    invoke-static {v5}, Lcom/crashlytics/android/Crashlytics;->setUserEmail(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    .line 719
    :catch_3
    move-exception v4

    .line 720
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-static {v4}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    .line 724
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "code":Ljava/lang/String;
    .end local v3    # "data":Landroid/net/Uri;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "email":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "lastPathSegment":Ljava/lang/String;
    .end local v10    # "sanitizer":Landroid/net/UrlQuerySanitizer;
    :catch_4
    move-exception v4

    .line 725
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v12, "DA2"

    const-string v13, "Error handing intent."

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    invoke-static {v4}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 773
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_c
    new-instance v12, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v13, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v12, v13}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 774
    invoke-virtual {v12}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v12

    .line 773
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 775
    const-string v12, "DA2"

    const-string v13, "Google Sign In Client Created. (GPGS,etc.)"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 817
    :cond_d
    :try_start_c
    const-string v12, "2fbee7e9bcc5474496fb292497a6e0a6"

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_3

    .line 823
    :catch_5
    move-exception v4

    .line 824
    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 833
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v9    # "permissionCheck":I
    :cond_e
    sget-object v12, Lcom/appsomniacs/da2/DA2Activity;->PHONE_ID:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 834
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PHONE_ID_EMPTY_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/appsomniacs/da2/DA2Activity;->PHONE_ID:Ljava/lang/String;

    goto/16 :goto_4

    .line 837
    :cond_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PHONE_ID_PERMISSION_DENIED_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/appsomniacs/da2/DA2Activity;->PHONE_ID:Ljava/lang/String;

    goto/16 :goto_4

    .line 872
    :catch_6
    move-exception v4

    .line 873
    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 879
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    .line 880
    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 925
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x2

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v13, :cond_9

    goto/16 :goto_7
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 7

    .prologue
    const/4 v1, 0x5

    .line 1581
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 1583
    .local v0, "glSurfaceView":Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    const/4 v2, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    move v3, v1

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 1585
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 3312
    const-string v0, "DA2"

    const-string v1, "DA2Activity.onDestroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    :try_start_0
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_1

    .line 3317
    :cond_0
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onDestroy(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3323
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->googlePlayIabTryDisposeIabHelper()V

    .line 3324
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenceChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    if-eqz v0, :cond_2

    .line 3325
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenceChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 3327
    :cond_2
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenceChecker2:Lcom/google/android/vending/licensing/LicenseChecker;

    if-eqz v0, :cond_3

    .line 3328
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenceChecker2:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 3330
    :cond_3
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->destroyAdBanner()V

    .line 3331
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->destroyInterstitial()V

    .line 3332
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->destroyRewardedVideo()V

    .line 3334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_4

    .line 3340
    :cond_4
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->shutdown()V

    .line 3342
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 3345
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    if-eqz v0, :cond_5

    .line 3346
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->destroy()V

    .line 3349
    :cond_5
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityDestroyed(Landroid/app/Activity;)V

    .line 3350
    return-void

    .line 3319
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 3767
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 3774
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3775
    const-string v0, "DA2"

    const-string v1, "onInterstitialDismissed: Not ready; Calling Load()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 3778
    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 7
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;
    .param p2, "mopubErrorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 3782
    const-string v3, "DA2"

    const-string v4, "onInterstitialFailed() callback entered. Error Code: %s"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3786
    const-string v2, "DA2"

    const-string v3, "onInterstitialFailed: Not ready; Calling Load()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3787
    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$26;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$26;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 3795
    .local v1, "runInTen":Ljava/lang/Runnable;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3796
    .local v0, "handleTimer":Landroid/os/Handler;
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3798
    .end local v0    # "handleTimer":Landroid/os/Handler;
    .end local v1    # "runInTen":Ljava/lang/Runnable;
    :cond_0
    return-void

    .line 3782
    :cond_1
    const-string v2, "null"

    goto :goto_0
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 3803
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 3808
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 3809
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 3168
    const-string v1, "DA2"

    const-string v2, "DA2Activity.onPause() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 3172
    :try_start_0
    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    if-eqz v1, :cond_0

    .line 3173
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onPause(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3180
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_2

    .line 3182
    :cond_1
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onPause(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3189
    :cond_2
    :goto_1
    :try_start_2
    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsIronSourceSupersonicRewardedVideoInitialized:Z

    if-eqz v1, :cond_3

    .line 3190
    sget-object v1, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    if-eqz v1, :cond_3

    .line 3191
    sget-object v1, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    invoke-interface {v1, p0}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->onPause(Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3204
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonGamesClient:Lcom/amazon/ags/api/AmazonGamesClient;

    if-eqz v1, :cond_4

    .line 3206
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->release()V

    .line 3209
    :cond_4
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3210
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->da2AmazonIapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {v1}, Lcom/amazon/iap/util/DA2IapManager;->deactivate()V

    .line 3213
    :cond_5
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityPaused(Landroid/app/Activity;)V

    .line 3217
    return-void

    .line 3175
    :catch_0
    move-exception v0

    .line 3176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3184
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3185
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3194
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 3195
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1393
    const/4 v0, 0x0

    return v0
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 3436
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onRestart()V

    .line 3439
    :try_start_0
    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    if-eqz v1, :cond_0

    .line 3440
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onRestart(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3445
    :cond_0
    :goto_0
    return-void

    .line 3442
    :catch_0
    move-exception v0

    .line 3443
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 3237
    const-string v1, "DA2"

    const-string v2, "DA2Activity.onResume() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->setupMainWindowDisplayMode()V

    .line 3240
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initDefaultLayout()V

    .line 3242
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 3247
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->signInSilently()V

    .line 3250
    :try_start_0
    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    if-eqz v1, :cond_0

    .line 3251
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onResume(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3258
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_1

    .line 3267
    :cond_1
    :goto_1
    :try_start_2
    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsIronSourceSupersonicRewardedVideoInitialized:Z

    if-eqz v1, :cond_2

    .line 3268
    sget-object v1, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    if-eqz v1, :cond_2

    .line 3269
    sget-object v1, Lcom/appsomniacs/da2/DA2Activity;->m_IronSourceSupersonicMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    invoke-interface {v1, p0}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->onResume(Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3282
    :cond_2
    :goto_2
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3284
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonGamesCallback:Lcom/amazon/ags/api/AmazonGamesCallback;

    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->amazonGameFeatures:Ljava/util/EnumSet;

    invoke-static {p0, v1, v2}, Lcom/amazon/ags/api/AmazonGamesClient;->initialize(Landroid/app/Activity;Lcom/amazon/ags/api/AmazonGamesCallback;Ljava/util/EnumSet;)V

    .line 3286
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->da2AmazonIapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {v1}, Lcom/amazon/iap/util/DA2IapManager;->activate()V

    .line 3287
    const-string v1, "DA2"

    const-string v2, "onResume: call getUserData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    invoke-static {}, Lcom/amazon/device/iap/PurchasingService;->getUserData()Lcom/amazon/device/iap/model/RequestId;

    .line 3290
    const-string v1, "DA2"

    const-string v2, "onResume: getPurchaseUpdates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    .line 3295
    :cond_3
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isLuminatiPeer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3296
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->rechargeLuminatiTrial()V

    .line 3299
    :cond_4
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityResumed(Landroid/app/Activity;)V

    .line 3301
    const-string v1, "DA2"

    const-string v2, "DA2Activity.onResume() call ending."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    return-void

    .line 3253
    :catch_0
    move-exception v0

    .line 3254
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3262
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3263
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3272
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 3273
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 3354
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3355
    invoke-static {p0, p1}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3356
    return-void
.end method

.method protected onStart()V
    .locals 8

    .prologue
    .line 3360
    const-string v4, "DA2"

    const-string v5, "DA2Activity.onStart() called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    .line 3365
    :try_start_0
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/appsomniacs/da2/DA2Activity;->mHandler:Landroid/os/Handler;

    .line 3367
    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v4, :cond_0

    .line 3368
    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 3371
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 3374
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initDefaultLayout()V

    .line 3376
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->loadInterstitial()V

    .line 3378
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_1

    .line 3383
    :cond_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3385
    invoke-static {}, Lcom/amazon/device/iap/PurchasingService;->getUserData()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v3

    .line 3387
    .local v3, "requestId":Lcom/amazon/device/iap/model/RequestId;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3388
    .local v2, "productSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/amazon/iap/util/DA2Sku;->values()[Lcom/amazon/iap/util/DA2Sku;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 3389
    .local v1, "mySku":Lcom/amazon/iap/util/DA2Sku;
    invoke-virtual {v1}, Lcom/amazon/iap/util/DA2Sku;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3388
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3391
    .end local v1    # "mySku":Lcom/amazon/iap/util/DA2Sku;
    :cond_2
    invoke-static {v2}, Lcom/amazon/device/iap/PurchasingService;->getProductData(Ljava/util/Set;)Lcom/amazon/device/iap/model/RequestId;

    .line 3393
    .end local v2    # "productSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "requestId":Lcom/amazon/device/iap/model/RequestId;
    :cond_3
    iget-boolean v4, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    if-eqz v4, :cond_4

    .line 3394
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onStart(Landroid/app/Activity;)V

    .line 3397
    :cond_4
    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v4, :cond_6

    .line 3399
    :cond_5
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 3411
    :cond_6
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityStarted(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3432
    :goto_1
    return-void

    .line 3413
    :catch_0
    move-exception v0

    .line 3415
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 3449
    const-string v1, "DA2"

    const-string v2, "DA2Activity.onStop() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    :try_start_0
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityWillStop(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3458
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    if-eqz v1, :cond_0

    .line 3459
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onStop(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3466
    :cond_0
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_IsMoPubRewardedVideoInitialized:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_2

    .line 3468
    :cond_1
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3477
    :cond_2
    :goto_2
    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3485
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_3

    .line 3486
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 3493
    :cond_3
    :goto_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_4

    .line 3514
    :cond_4
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    .line 3515
    return-void

    .line 3453
    :catch_0
    move-exception v0

    .line 3454
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3461
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3462
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3470
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 3472
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3478
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 3480
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3488
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 3490
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 3133
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onWindowFocusChanged(Z)V

    .line 3134
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initDefaultLayout()V

    .line 3135
    if-eqz p1, :cond_1

    .line 3136
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mHandler:Landroid/os/Handler;

    .line 3140
    :cond_0
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->init_view_settings:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3142
    :cond_1
    return-void
.end method

.method protected raiseScreenStateChange()V
    .locals 7

    .prologue
    .line 3221
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 3222
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 3223
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 3224
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 3225
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityPausedDueToScreenLock()V

    .line 3233
    :goto_0
    return-void

    .line 3227
    :cond_0
    invoke-virtual {v0}, Lcom/appsomniacs/da2/DA2Activity;->raiseScreenStateChange()V

    goto :goto_0

    .line 3230
    :cond_1
    const-string v2, "Anomaly"

    const-string v3, "ActivityNull%sraiseScreenStateChange"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    const-string v2, "DA2"

    const-string v3, "Unable to raise screen state change to main thread."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "receipt"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;

    .prologue
    .line 4236
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4237
    const-string v0, ""

    invoke-static {p1, v0, p2}, Lcom/appsomniacs/da2/DA2Activity;->nativeRegisterPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4239
    :cond_0
    return-void
.end method

.method protected reportDebugMode()V
    .locals 3

    .prologue
    .line 1959
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v1, :cond_0

    .line 1961
    const/4 v0, 0x0

    const-string v1, "DA2"

    const-string v2, "DEBUG MODE DETECTED"

    invoke-virtual {p0, v0, v1, v2}, Lcom/appsomniacs/da2/DA2Activity;->reportLogEntry(ILjava/lang/String;Ljava/lang/String;)V

    .line 1963
    :cond_0
    return-void
.end method

.method protected reportLogEntry(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 1955
    invoke-static {p1, p2, p3}, Lcom/crashlytics/android/Crashlytics;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1956
    return-void
.end method

.method protected reportNonFatalException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1945
    const-string v0, "DA2"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1946
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 1947
    return-void
.end method

.method public showGpgsAchievementsRequested()V
    .locals 3

    .prologue
    .line 4669
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    invoke-virtual {v1}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$34;

    invoke-direct {v2, p0}, Lcom/appsomniacs/da2/DA2Activity$34;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 4670
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$33;

    invoke-direct {v2, p0}, Lcom/appsomniacs/da2/DA2Activity$33;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 4676
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 4696
    .local v0, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Landroid/content/Intent;>;"
    return-void
.end method

.method trySessionRequestedCompletedSetup(Z)V
    .locals 10
    .param p1, "isNewSessionEstablished"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1478
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isSessionEstablished:Z

    if-eqz v2, :cond_0

    .line 1479
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v3, :cond_0

    .line 1481
    const-string v2, "The current session has been invalidated."

    invoke-virtual {p0, v2}, Lcom/appsomniacs/da2/DA2Activity;->alert(Ljava/lang/String;)V

    .line 1485
    :cond_0
    iput-boolean p1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isSessionEstablished:Z

    .line 1492
    :try_start_0
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenceChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    if-nez v2, :cond_1

    .line 1493
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->setupGooglePlayLicenceValidation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isSessionEstablished:Z

    if-eqz v2, :cond_2

    .line 1505
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenceChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isGooglePlayIabSetup:Z

    if-eqz v2, :cond_3

    .line 1530
    :cond_2
    :goto_0
    return-void

    .line 1496
    :catch_0
    move-exception v0

    .line 1498
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    const-string v3, "DA2"

    const-string v4, "Google Play license validation setup failed."

    invoke-virtual {p0, v2, v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportLogEntry(ILjava/lang/String;Ljava/lang/String;)V

    .line 1499
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1523
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1524
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->reportDebugMode()V

    .line 1526
    const-string v2, "DA2"

    const-string v3, "Error during restore inventory pre-check (IAB setup): \"%s\""

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v8, v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportLogEntry(ILjava/lang/String;Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p0, v1}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    .line 1528
    const-string v2, "Inventory restore failed: %s"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V

    goto :goto_0

    .line 1511
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->ensureGooglePlayIabIsSetup()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1513
    :catch_2
    move-exception v0

    .line 1515
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    :try_start_3
    const-string v3, "DA2"

    const-string v4, "Error during Google Play IAB setup call: \"%s\""

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportLogEntry(ILjava/lang/String;Ljava/lang/String;)V

    .line 1516
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public tryVerifyInventory()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5136
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5138
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    .line 5171
    :cond_0
    :goto_0
    return-void

    .line 5140
    :cond_1
    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    if-eqz v3, :cond_0

    .line 5146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5151
    .local v2, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "com.chadtowns.da2.propack"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5152
    const-string v3, "com.chadtowns.da2.battlepack1"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5153
    const-string v3, "com.chadtowns.da2.battlepack2"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5154
    const-string v3, "com.chadtowns.da2.battlepack3"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5155
    const-string v3, "com.chadtowns.da2.battlepack4"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5159
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->incrementIapAsyncOperationInProgressCounter()V

    .line 5160
    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabGotInventoryListener:Lcom/android/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/android/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5164
    .end local v2    # "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 5165
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->decrementIapAsyncOperationsInProgressCounter()V

    .line 5166
    const-string v3, "Unable to verify purchases: \"%s\" Please restart the application. If this continues please capture this screen and contact support@appsomniacs.com"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5167
    .local v1, "msg":Ljava/lang/String;
    const-string v3, "DA2"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5169
    invoke-virtual {p0, v1}, Lcom/appsomniacs/da2/DA2Activity;->alert(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 3594
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "percentViewed"    # D
    .param p4, "fullyWatched"    # Z

    .prologue
    .line 3603
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 3604
    return-void
.end method
