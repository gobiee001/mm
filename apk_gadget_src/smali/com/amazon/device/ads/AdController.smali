.class Lcom/amazon/device/ads/AdController;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/amazon/device/ads/Metrics$MetricsSubmitter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdController$AdControllerAdWebViewClientListener;,
        Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field protected static final MSG_PREPARE_AD_LOADING:Ljava/lang/String; = "An ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad."

.field protected static final MSG_PREPARE_AD_READY_TO_SHOW:Ljava/lang/String; = "An ad is ready to show. Please call showAd() to show the ad before loading another ad."

.field protected static final MSG_PREPARE_AD_SHOWING:Ljava/lang/String; = "An ad is currently showing. Please wait for the user to dismiss the ad before loading an ad."

.field protected static final MSG_SHOW_AD_ANOTHER_SHOWING:Ljava/lang/String; = "Another ad is currently showing. Please wait for the AdListener.onAdDismissed callback of the other ad."

.field protected static final MSG_SHOW_AD_DESTROYED:Ljava/lang/String; = "The ad cannot be shown because it has been destroyed. Create a new Ad object to load a new ad."

.field protected static final MSG_SHOW_AD_DISMISSED:Ljava/lang/String; = "The ad cannot be shown because it has already been displayed to the user. Please call loadAd(AdTargetingOptions) to load a new ad."

.field protected static final MSG_SHOW_AD_EXPIRED:Ljava/lang/String; = "This ad has expired. Please load another ad."

.field protected static final MSG_SHOW_AD_LOADING:Ljava/lang/String; = "The ad cannot be shown because it is still loading. Please wait for the AdListener.onAdLoaded() callback before showing the ad."

.field protected static final MSG_SHOW_AD_READY_TO_LOAD:Ljava/lang/String; = "The ad cannot be shown because it has not loaded successfully. Please call loadAd(AdTargetingOptions) to load an ad first."

.field protected static final MSG_SHOW_AD_SHOWING:Ljava/lang/String; = "The ad cannot be shown because it is already displayed on the screen. Please wait for the AdListener.onAdDismissed() callback and then load a new ad."


# instance fields
.field private adActivity:Landroid/app/Activity;

.field private final adCloser:Lcom/amazon/device/ads/AdCloser;

.field private adContainer:Lcom/amazon/device/ads/AdContainer;

.field private final adContainerFactory:Lcom/amazon/device/ads/AdContainer$AdContainerFactory;

.field private adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

.field private adControlCallback:Lcom/amazon/device/ads/AdControlCallback;

.field private adData:Lcom/amazon/device/ads/AdData;

.field private final adHtmlPreprocessor:Lcom/amazon/device/ads/AdHtmlPreprocessor;

.field private final adSdkBridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

.field private final adSize:Lcom/amazon/device/ads/AdSize;

.field private adState:Lcom/amazon/device/ads/AdState;

.field private final adTimer:Lcom/amazon/device/ads/AdTimer;

.field private final adUrlLoader:Lcom/amazon/device/ads/AdUrlLoader;

.field private final adUtils:Lcom/amazon/device/ads/AdUtils2;

.field private adWindowHeight:I

.field private adWindowWidth:I

.field private final androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

.field private backButtonOverridden:Z

.field private final bridgeSelector:Lcom/amazon/device/ads/BridgeSelector;

.field private connectionInfo:Lcom/amazon/device/ads/ConnectionInfo;

.field private final context:Landroid/content/Context;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private defaultParent:Landroid/view/ViewGroup;

.field private disableHardwareAccelerationRequest:Z

.field private forceDisableHardwareAcceleration:Z

.field private final hasFinishedLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private isModallyExpanded:Z

.field private isPrepared:Z

.field private final isRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

.field private orientationFailureMetricRecorded:Z

.field private originalOrientation:I

.field private final permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

.field private scalingMultiplier:D

.field private final sdkEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/device/ads/SDKEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:I

.field protected final webUtils:Lcom/amazon/device/ads/WebUtils2;

.field private windowDimensionsSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdController;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/amazon/device/ads/AdSize;

    .prologue
    .line 122
    new-instance v3, Lcom/amazon/device/ads/WebUtils2;

    invoke-direct {v3}, Lcom/amazon/device/ads/WebUtils2;-><init>()V

    new-instance v4, Lcom/amazon/device/ads/MetricsCollector;

    invoke-direct {v4}, Lcom/amazon/device/ads/MetricsCollector;-><init>()V

    new-instance v5, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v5}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v6, Lcom/amazon/device/ads/AdUtils2;

    invoke-direct {v6}, Lcom/amazon/device/ads/AdUtils2;-><init>()V

    new-instance v7, Lcom/amazon/device/ads/AdContainer$AdContainerFactory;

    invoke-direct {v7}, Lcom/amazon/device/ads/AdContainer$AdContainerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v8

    new-instance v9, Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {v9}, Lcom/amazon/device/ads/PermissionChecker;-><init>()V

    new-instance v10, Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-direct {v10}, Lcom/amazon/device/ads/AndroidBuildInfo;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/BridgeSelector;->getInstance()Lcom/amazon/device/ads/BridgeSelector;

    move-result-object v11

    new-instance v12, Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-direct {v12}, Lcom/amazon/device/ads/AdSDKBridgeList;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v13

    new-instance v14, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-direct {v14}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v18, Lcom/amazon/device/ads/AdTimer;

    invoke-direct/range {v18 .. v18}, Lcom/amazon/device/ads/AdTimer;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v19}, Lcom/amazon/device/ads/AdController;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/MetricsCollector;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdUtils2;Lcom/amazon/device/ads/AdContainer$AdContainerFactory;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/AndroidBuildInfo;Lcom/amazon/device/ads/BridgeSelector;Lcom/amazon/device/ads/AdSDKBridgeList;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/AdHtmlPreprocessor;Lcom/amazon/device/ads/AdUrlLoader;Lcom/amazon/device/ads/AdCloser;Lcom/amazon/device/ads/AdTimer;Lcom/amazon/device/ads/DebugProperties;)V

    .line 141
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/MetricsCollector;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdUtils2;Lcom/amazon/device/ads/AdContainer$AdContainerFactory;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/AndroidBuildInfo;Lcom/amazon/device/ads/BridgeSelector;Lcom/amazon/device/ads/AdSDKBridgeList;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/AdWebViewClientFactory;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/AdHtmlPreprocessor;Lcom/amazon/device/ads/AdUrlLoader;Lcom/amazon/device/ads/AdCloser;Lcom/amazon/device/ads/AdTimer;Lcom/amazon/device/ads/DebugProperties;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/amazon/device/ads/AdSize;
    .param p3, "webUtils"    # Lcom/amazon/device/ads/WebUtils2;
    .param p4, "metricsCollector"    # Lcom/amazon/device/ads/MetricsCollector;
    .param p5, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p6, "adUtils"    # Lcom/amazon/device/ads/AdUtils2;
    .param p7, "adContainerFactory"    # Lcom/amazon/device/ads/AdContainer$AdContainerFactory;
    .param p8, "infoStore"    # Lcom/amazon/device/ads/MobileAdsInfoStore;
    .param p9, "permissionChecker"    # Lcom/amazon/device/ads/PermissionChecker;
    .param p10, "androidBuildInfo"    # Lcom/amazon/device/ads/AndroidBuildInfo;
    .param p11, "bridgeSelector"    # Lcom/amazon/device/ads/BridgeSelector;
    .param p12, "adSdkBridgeList"    # Lcom/amazon/device/ads/AdSDKBridgeList;
    .param p13, "threadRunner"    # Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .param p14, "adWebViewClientFactory"    # Lcom/amazon/device/ads/AdWebViewClientFactory;
    .param p15, "webRequestFactory"    # Lcom/amazon/device/ads/WebRequest$WebRequestFactory;
    .param p16, "adHtmlPreprocessor"    # Lcom/amazon/device/ads/AdHtmlPreprocessor;
    .param p17, "adUrlLoader"    # Lcom/amazon/device/ads/AdUrlLoader;
    .param p18, "adCloser"    # Lcom/amazon/device/ads/AdCloser;
    .param p19, "adTimer"    # Lcom/amazon/device/ads/AdTimer;
    .param p20, "debugProperties"    # Lcom/amazon/device/ads/DebugProperties;

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v2, 0x4e20

    iput v2, p0, Lcom/amazon/device/ads/AdController;->timeout:I

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amazon/device/ads/AdController;->sdkEventListeners:Ljava/util/ArrayList;

    .line 91
    const/4 v2, 0x0

    iput v2, p0, Lcom/amazon/device/ads/AdController;->adWindowHeight:I

    .line 92
    const/4 v2, 0x0

    iput v2, p0, Lcom/amazon/device/ads/AdController;->adWindowWidth:I

    .line 94
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amazon/device/ads/AdController;->windowDimensionsSet:Z

    .line 96
    sget-object v2, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    iput-object v2, p0, Lcom/amazon/device/ads/AdController;->adState:Lcom/amazon/device/ads/AdState;

    .line 98
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/amazon/device/ads/AdController;->scalingMultiplier:D

    .line 100
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amazon/device/ads/AdController;->isPrepared:Z

    .line 104
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amazon/device/ads/AdController;->defaultParent:Landroid/view/ViewGroup;

    .line 107
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/amazon/device/ads/AdController;->isRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/amazon/device/ads/AdController;->hasFinishedLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amazon/device/ads/AdController;->disableHardwareAccelerationRequest:Z

    .line 111
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amazon/device/ads/AdController;->forceDisableHardwareAcceleration:Z

    .line 112
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amazon/device/ads/AdController;->backButtonOverridden:Z

    .line 114
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amazon/device/ads/AdController;->isModallyExpanded:Z

    .line 118
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amazon/device/ads/AdController;->orientationFailureMetricRecorded:Z

    .line 206
    iput-object p1, p0, Lcom/amazon/device/ads/AdController;->context:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Lcom/amazon/device/ads/AdController;->adSize:Lcom/amazon/device/ads/AdSize;

    .line 208
    iput-object p3, p0, Lcom/amazon/device/ads/AdController;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    .line 209
    iput-object p4, p0, Lcom/amazon/device/ads/AdController;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    .line 210
    sget-object v2, Lcom/amazon/device/ads/AdController;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p5, v2}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 211
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    .line 212
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->adContainerFactory:Lcom/amazon/device/ads/AdContainer$AdContainerFactory;

    .line 213
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 214
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    .line 215
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    .line 216
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->bridgeSelector:Lcom/amazon/device/ads/BridgeSelector;

    .line 217
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->adTimer:Lcom/amazon/device/ads/AdTimer;

    .line 218
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 219
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->adSdkBridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    .line 220
    if-eqz p16, :cond_0

    .line 222
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->adHtmlPreprocessor:Lcom/amazon/device/ads/AdHtmlPreprocessor;

    .line 228
    :goto_0
    if-eqz p17, :cond_1

    .line 230
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->adUrlLoader:Lcom/amazon/device/ads/AdUrlLoader;

    .line 238
    :goto_1
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->adUrlLoader:Lcom/amazon/device/ads/AdUrlLoader;

    new-instance v3, Lcom/amazon/device/ads/AdController$AdControllerAdWebViewClientListener;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/amazon/device/ads/AdController$AdControllerAdWebViewClientListener;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdController$1;)V

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdUrlLoader;->setAdWebViewClientListener(Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;)V

    .line 239
    if-eqz p18, :cond_2

    .line 241
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->adCloser:Lcom/amazon/device/ads/AdCloser;

    .line 247
    :goto_2
    return-void

    .line 226
    :cond_0
    new-instance v2, Lcom/amazon/device/ads/AdHtmlPreprocessor;

    iget-object v4, p0, Lcom/amazon/device/ads/AdController;->adSdkBridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdControlAccessor()Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v5

    move-object/from16 v3, p11

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/amazon/device/ads/AdHtmlPreprocessor;-><init>(Lcom/amazon/device/ads/BridgeSelector;Lcom/amazon/device/ads/AdSDKBridgeList;Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdUtils2;)V

    iput-object v2, p0, Lcom/amazon/device/ads/AdController;->adHtmlPreprocessor:Lcom/amazon/device/ads/AdHtmlPreprocessor;

    goto :goto_0

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->adSdkBridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdControlAccessor()Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v3

    move-object/from16 v0, p14

    invoke-virtual {v0, p1, v2, v3}, Lcom/amazon/device/ads/AdWebViewClientFactory;->createAdWebViewClient(Landroid/content/Context;Lcom/amazon/device/ads/AdSDKBridgeList;Lcom/amazon/device/ads/AdControlAccessor;)Lcom/amazon/device/ads/AdWebViewClient;

    move-result-object v4

    .line 235
    .local v4, "adWebViewClient":Lcom/amazon/device/ads/AdWebViewClient;
    new-instance v2, Lcom/amazon/device/ads/AdUrlLoader;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdControlAccessor()Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v6

    invoke-virtual/range {p8 .. p8}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v9

    move-object/from16 v3, p13

    move-object/from16 v5, p15

    move-object v7, p3

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/amazon/device/ads/AdUrlLoader;-><init>(Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/AdWebViewClient;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/DeviceInfo;)V

    iput-object v2, p0, Lcom/amazon/device/ads/AdController;->adUrlLoader:Lcom/amazon/device/ads/AdUrlLoader;

    goto :goto_1

    .line 245
    .end local v4    # "adWebViewClient":Lcom/amazon/device/ads/AdWebViewClient;
    :cond_2
    new-instance v2, Lcom/amazon/device/ads/AdCloser;

    invoke-direct {v2, p0}, Lcom/amazon/device/ads/AdCloser;-><init>(Lcom/amazon/device/ads/AdController;)V

    iput-object v2, p0, Lcom/amazon/device/ads/AdController;->adCloser:Lcom/amazon/device/ads/AdCloser;

    goto :goto_2
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/MetricsCollector;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdUtils2;Lcom/amazon/device/ads/AdContainer$AdContainerFactory;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/AndroidBuildInfo;Lcom/amazon/device/ads/BridgeSelector;Lcom/amazon/device/ads/AdSDKBridgeList;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/AdHtmlPreprocessor;Lcom/amazon/device/ads/AdUrlLoader;Lcom/amazon/device/ads/AdCloser;Lcom/amazon/device/ads/AdTimer;Lcom/amazon/device/ads/DebugProperties;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/amazon/device/ads/AdSize;
    .param p3, "webUtils"    # Lcom/amazon/device/ads/WebUtils2;
    .param p4, "metricsCollector"    # Lcom/amazon/device/ads/MetricsCollector;
    .param p5, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p6, "adUtils"    # Lcom/amazon/device/ads/AdUtils2;
    .param p7, "adContainerFactory"    # Lcom/amazon/device/ads/AdContainer$AdContainerFactory;
    .param p8, "infoStore"    # Lcom/amazon/device/ads/MobileAdsInfoStore;
    .param p9, "permissionChecker"    # Lcom/amazon/device/ads/PermissionChecker;
    .param p10, "androidBuildInfo"    # Lcom/amazon/device/ads/AndroidBuildInfo;
    .param p11, "bridgeSelector"    # Lcom/amazon/device/ads/BridgeSelector;
    .param p12, "adSdkBridgeList"    # Lcom/amazon/device/ads/AdSDKBridgeList;
    .param p13, "threadRunner"    # Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .param p14, "webRequestFactory"    # Lcom/amazon/device/ads/WebRequest$WebRequestFactory;
    .param p15, "adHtmlPreprocessor"    # Lcom/amazon/device/ads/AdHtmlPreprocessor;
    .param p16, "adUrlLoader"    # Lcom/amazon/device/ads/AdUrlLoader;
    .param p17, "adCloser"    # Lcom/amazon/device/ads/AdCloser;
    .param p18, "adTimer"    # Lcom/amazon/device/ads/AdTimer;
    .param p19, "debugProperties"    # Lcom/amazon/device/ads/DebugProperties;

    .prologue
    .line 163
    new-instance v18, Lcom/amazon/device/ads/AdWebViewClientFactory;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p10

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/AdWebViewClientFactory;-><init>(Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AndroidBuildInfo;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v19, p14

    move-object/from16 v20, p15

    move-object/from16 v21, p16

    move-object/from16 v22, p17

    move-object/from16 v23, p18

    move-object/from16 v24, p19

    invoke-direct/range {v4 .. v24}, Lcom/amazon/device/ads/AdController;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/MetricsCollector;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdUtils2;Lcom/amazon/device/ads/AdContainer$AdContainerFactory;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/AndroidBuildInfo;Lcom/amazon/device/ads/BridgeSelector;Lcom/amazon/device/ads/AdSDKBridgeList;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/AdWebViewClientFactory;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/AdHtmlPreprocessor;Lcom/amazon/device/ads/AdUrlLoader;Lcom/amazon/device/ads/AdCloser;Lcom/amazon/device/ads/AdTimer;Lcom/amazon/device/ads/DebugProperties;)V

    .line 183
    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/AdController;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/AdController;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/amazon/device/ads/AdController;->onAdExpired()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/AdController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method private adFailedAfterTimerCheck(Lcom/amazon/device/ads/AdError;)V
    .locals 1
    .param p1, "error"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MetricsCollector;->isMetricsCollectorEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdController;->adFailedBeforeAdMetricsStart(Lcom/amazon/device/ads/AdError;)V

    .line 1259
    :goto_0
    return-void

    .line 1257
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdController;->adFailedAfterAdMetricsStart(Lcom/amazon/device/ads/AdError;)V

    goto :goto_0
.end method

.method private adLoaded()V
    .locals 2

    .prologue
    .line 1266
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1273
    :goto_0
    return-void

    .line 1270
    :cond_0
    sget-object v1, Lcom/amazon/device/ads/AdState;->LOADED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    .line 1271
    iget-object v1, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdData;->getProperties()Lcom/amazon/device/ads/AdProperties;

    move-result-object v0

    .line 1272
    .local v0, "adProperties":Lcom/amazon/device/ads/AdProperties;
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdController;->callOnAdLoaded(Lcom/amazon/device/ads/AdProperties;)V

    goto :goto_0
.end method

.method private addAdSDKBridge(Lcom/amazon/device/ads/AdSDKBridge;)V
    .locals 1
    .param p1, "adSdkbridge"    # Lcom/amazon/device/ads/AdSDKBridge;

    .prologue
    .line 867
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adSdkBridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdSDKBridgeList;->addBridge(Lcom/amazon/device/ads/AdSDKBridge;)V

    .line 868
    return-void
.end method

.method private calculateScalingMultiplier()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 872
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->isInterstitial()Z

    move-result v3

    if-nez v3, :cond_1

    .line 874
    iget-object v3, p0, Lcom/amazon/device/ads/AdController;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v3}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/DeviceInfo;->getScalingFactorAsFloat()F

    move-result v2

    .line 875
    .local v2, "scalingDensity":F
    iget-object v3, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdData;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 876
    .local v1, "adWidth":I
    iget-object v3, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdData;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v0, v3

    .line 877
    .local v0, "adHeight":I
    iget-object v3, p0, Lcom/amazon/device/ads/AdController;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getWindowWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getWindowHeight()I

    move-result v5

    invoke-virtual {v3, v1, v0, v4, v5}, Lcom/amazon/device/ads/AdUtils2;->calculateScalingMultiplier(IIII)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/amazon/device/ads/AdController;->scalingMultiplier:D

    .line 879
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdSize;->canUpscale()Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v4, p0, Lcom/amazon/device/ads/AdController;->scalingMultiplier:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 881
    iput-wide v6, p0, Lcom/amazon/device/ads/AdController;->scalingMultiplier:D

    .line 883
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->setViewDimensionsToAdDimensions()V

    .line 889
    .end local v0    # "adHeight":I
    .end local v1    # "adWidth":I
    .end local v2    # "scalingDensity":F
    :goto_0
    return-void

    .line 887
    :cond_1
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, p0, Lcom/amazon/device/ads/AdController;->scalingMultiplier:D

    goto :goto_0
.end method

.method private callOnAdExpired()V
    .locals 1

    .prologue
    .line 1219
    new-instance v0, Lcom/amazon/device/ads/AdController$3;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdController$3;-><init>(Lcom/amazon/device/ads/AdController;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 1228
    return-void
.end method

.method private declared-synchronized canExpireOrDraw(Lcom/amazon/device/ads/AdState;)Z
    .locals 2
    .param p1, "newState"    # Lcom/amazon/device/ads/AdState;

    .prologue
    .line 1139
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/amazon/device/ads/AdState;->RENDERED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1141
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    const/4 v0, 0x1

    .line 1144
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private canFireImpressionPixel()Z
    .locals 2

    .prologue
    .line 1180
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->HIDDEN:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private determineShouldForceDisableHardwareAcceleration()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdData;->getCreativeTypes()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->REQUIRES_TRANSPARENCY:Lcom/amazon/device/ads/AAXCreative;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdController;->forceDisableHardwareAcceleration:Z

    .line 907
    :goto_0
    return-void

    .line 905
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdController;->forceDisableHardwareAcceleration:Z

    goto :goto_0
.end method

.method private isReadyToLoad(Z)Z
    .locals 1
    .param p1, "deferredLoad"    # Z

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/device/ads/AdControlCallback;->isAdReady(Z)Z

    move-result v0

    return v0
.end method

.method private onAdExpired()V
    .locals 2

    .prologue
    .line 1210
    sget-object v0, Lcom/amazon/device/ads/AdState;->RENDERED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/amazon/device/ads/AdState;->INVALID:Lcom/amazon/device/ads/AdState;

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdController;->canExpireOrDraw(Lcom/amazon/device/ads/AdState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Ad Has Expired"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1213
    invoke-direct {p0}, Lcom/amazon/device/ads/AdController;->callOnAdExpired()V

    .line 1215
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 705
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    :goto_0
    return-void

    .line 709
    :cond_0
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdController;->isPrepared:Z

    .line 710
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adTimer:Lcom/amazon/device/ads/AdTimer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdTimer;->cancelTimer()V

    .line 711
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->resetMetricsCollector()V

    .line 712
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdController;->orientationFailureMetricRecorded:Z

    .line 713
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adContainer:Lcom/amazon/device/ads/AdContainer;

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adContainer:Lcom/amazon/device/ads/AdContainer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdContainer;->destroy()V

    .line 716
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adSdkBridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSDKBridgeList;->clear()V

    .line 717
    iput-object v2, p0, Lcom/amazon/device/ads/AdController;->adContainer:Lcom/amazon/device/ads/AdContainer;

    .line 719
    :cond_1
    iput-object v2, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    goto :goto_0
.end method

.method private shouldDisableHardwareAcceleration()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdController;->forceDisableHardwareAcceleration:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/device/ads/AdController;->disableHardwareAccelerationRequest:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startExpirationTimer()V
    .locals 4

    .prologue
    .line 1379
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdData;->getTimeToExpire()J

    move-result-wide v0

    .line 1380
    .local v0, "timeToExpire":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1382
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->adTimer:Lcom/amazon/device/ads/AdTimer;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdTimer;->restartTimer()V

    .line 1383
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->adTimer:Lcom/amazon/device/ads/AdTimer;

    new-instance v3, Lcom/amazon/device/ads/AdController$4;

    invoke-direct {v3, p0}, Lcom/amazon/device/ads/AdController$4;-><init>(Lcom/amazon/device/ads/AdController;)V

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/device/ads/AdTimer;->scheduleTask(Ljava/util/TimerTask;J)V

    .line 1392
    :cond_0
    return-void
.end method


# virtual methods
.method accumulateAdFailureMetrics(Lcom/amazon/device/ads/AdError;)V
    .locals 4
    .param p1, "error"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 1302
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1303
    .local v0, "renderStopTime":J
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_TOTAL:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 1304
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 1305
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_TOTAL_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 1308
    if-eqz p1, :cond_1

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdError$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdError$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdError$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdError$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1314
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 1315
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/AdError$ErrorCode;

    if-ne v2, v3, :cond_1

    .line 1317
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->isRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1319
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 1328
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_RENDER_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 1329
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/AdState;->RENDERING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1331
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_RENDERING_FATAL:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 1333
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->setAdditionalMetrics()V

    .line 1334
    return-void

    .line 1323
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    goto :goto_0
.end method

.method adFailed(Lcom/amazon/device/ads/AdError;)V
    .locals 1
    .param p1, "error"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 1237
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1241
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdController;->getAndSetHasFinishedLoading(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adTimer:Lcom/amazon/device/ads/AdTimer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdTimer;->cancelTimer()V

    .line 1244
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdController;->adFailedAfterTimerCheck(Lcom/amazon/device/ads/AdError;)V

    .line 1245
    sget-object v0, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    goto :goto_0
.end method

.method adFailedAfterAdMetricsStart(Lcom/amazon/device/ads/AdError;)V
    .locals 1
    .param p1, "error"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 1292
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdController;->accumulateAdFailureMetrics(Lcom/amazon/device/ads/AdError;)V

    .line 1293
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/AdController;->callOnAdFailedToLoad(Lcom/amazon/device/ads/AdError;Z)V

    .line 1294
    return-void
.end method

.method adFailedBeforeAdMetricsStart(Lcom/amazon/device/ads/AdError;)V
    .locals 1
    .param p1, "error"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 1282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/AdController;->callOnAdFailedToLoad(Lcom/amazon/device/ads/AdError;Z)V

    .line 1283
    return-void
.end method

.method public adHidden()V
    .locals 2

    .prologue
    .line 1185
    sget-object v0, Lcom/amazon/device/ads/AdState;->HIDDEN:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    .line 1186
    new-instance v0, Lcom/amazon/device/ads/SDKEvent;

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->HIDDEN:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/SDKEvent;-><init>(Lcom/amazon/device/ads/SDKEvent$SDKEventType;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdController;->fireSDKEvent(Lcom/amazon/device/ads/SDKEvent;)V

    .line 1187
    return-void
.end method

.method public adRendered(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1343
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1375
    :goto_0
    return-void

    .line 1347
    :cond_0
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Ad Rendered"

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/AdState;->RENDERING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1351
    invoke-virtual {p0, v4}, Lcom/amazon/device/ads/AdController;->getAndSetHasFinishedLoading(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1353
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->isRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1354
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->adTimer:Lcom/amazon/device/ads/AdTimer;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdTimer;->cancelTimer()V

    .line 1355
    invoke-direct {p0}, Lcom/amazon/device/ads/AdController;->startExpirationTimer()V

    .line 1356
    sget-object v2, Lcom/amazon/device/ads/AdState;->RENDERED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    .line 1357
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->callOnAdRendered()V

    .line 1358
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1359
    .local v0, "renderStopTime":J
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1361
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_RENDER:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 1362
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_TOTAL:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 1363
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_TOTAL_SUCCESS:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 1364
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->setAdditionalMetrics()V

    .line 1365
    invoke-virtual {p0, v4}, Lcom/amazon/device/ads/AdController;->submitAndResetMetricsIfNecessary(Z)V

    .line 1367
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->callPostAdRendered()V

    .line 1374
    .end local v0    # "renderStopTime":J
    :cond_2
    :goto_1
    new-instance v2, Lcom/amazon/device/ads/SDKEvent;

    sget-object v3, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->RENDERED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-direct {v2, v3}, Lcom/amazon/device/ads/SDKEvent;-><init>(Lcom/amazon/device/ads/SDKEvent$SDKEventType;)V

    const-string v3, "url"

    invoke-virtual {v2, v3, p1}, Lcom/amazon/device/ads/SDKEvent;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/SDKEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/AdController;->fireSDKEvent(Lcom/amazon/device/ads/SDKEvent;)V

    goto :goto_0

    .line 1372
    :cond_3
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad State was not Rendering. It was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public adShown()V
    .locals 4

    .prologue
    .line 1152
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1169
    :goto_0
    return-void

    .line 1156
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 1157
    iget-object v1, p0, Lcom/amazon/device/ads/AdController;->adTimer:Lcom/amazon/device/ads/AdTimer;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdTimer;->cancelTimer()V

    .line 1158
    invoke-direct {p0}, Lcom/amazon/device/ads/AdController;->canFireImpressionPixel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1160
    const/4 v0, 0x0

    .line 1161
    .local v0, "disconnectEnabled":Z
    iget-object v1, p0, Lcom/amazon/device/ads/AdController;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdData;->getImpressionPixelUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/WebUtils2;->executeWebRequestInThread(Ljava/lang/String;Z)V

    .line 1163
    .end local v0    # "disconnectEnabled":Z
    :cond_1
    sget-object v1, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    .line 1164
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->areWindowDimensionsSet()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1166
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/device/ads/AdController;->setWindowDimensions(II)V

    .line 1168
    :cond_2
    new-instance v1, Lcom/amazon/device/ads/SDKEvent;

    sget-object v2, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->VISIBLE:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-direct {v1, v2}, Lcom/amazon/device/ads/SDKEvent;-><init>(Lcom/amazon/device/ads/SDKEvent$SDKEventType;)V

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdController;->fireSDKEvent(Lcom/amazon/device/ads/SDKEvent;)V

    goto :goto_0
.end method

.method addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 1
    .param p1, "jsif"    # Ljava/lang/Object;
    .param p2, "shouldPreload"    # Z
    .param p3, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 1794
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/AdContainer;->addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 1795
    return-void
.end method

.method public addSDKEventListener(Lcom/amazon/device/ads/SDKEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/amazon/device/ads/SDKEventListener;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Add SDKEventListener %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->sdkEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    return-void
.end method

.method public areWindowDimensionsSet()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdController;->windowDimensionsSet:Z

    return v0
.end method

.method callOnAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 1
    .param p1, "adEvent"    # Lcom/amazon/device/ads/AdEvent;

    .prologue
    .line 1462
    new-instance v0, Lcom/amazon/device/ads/AdController$9;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdController$9;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdEvent;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 1474
    return-void
.end method

.method callOnAdFailedToLoad(Lcom/amazon/device/ads/AdError;Z)V
    .locals 1
    .param p1, "error"    # Lcom/amazon/device/ads/AdError;
    .param p2, "shouldSubmitMetrics"    # Z

    .prologue
    .line 1401
    new-instance v0, Lcom/amazon/device/ads/AdController$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/ads/AdController$5;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdError;Z)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 1410
    return-void
.end method

.method callOnAdLoaded(Lcom/amazon/device/ads/AdProperties;)V
    .locals 1
    .param p1, "adProperties"    # Lcom/amazon/device/ads/AdProperties;

    .prologue
    .line 1414
    new-instance v0, Lcom/amazon/device/ads/AdController$6;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdController$6;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdProperties;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 1426
    return-void
.end method

.method callOnAdRendered()V
    .locals 1

    .prologue
    .line 1430
    new-instance v0, Lcom/amazon/device/ads/AdController$7;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdController$7;-><init>(Lcom/amazon/device/ads/AdController;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 1442
    return-void
.end method

.method callPostAdRendered()V
    .locals 1

    .prologue
    .line 1446
    new-instance v0, Lcom/amazon/device/ads/AdController$8;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdController$8;-><init>(Lcom/amazon/device/ads/AdController;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 1458
    return-void
.end method

.method public canBeUsed()Z
    .locals 2

    .prologue
    .line 1099
    sget-object v0, Lcom/amazon/device/ads/AdState;->DESTROYED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/device/ads/AdState;->INVALID:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canShowViews()Z
    .locals 1

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdContainer;->canShowViews()Z

    move-result v0

    return v0
.end method

.method public captureBackButton()V
    .locals 2

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/AdController$10;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/AdController$10;-><init>(Lcom/amazon/device/ads/AdController;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdContainer;->listenForKey(Landroid/view/View$OnKeyListener;)V

    .line 1620
    return-void
.end method

.method checkDefinedActivities()Z
    .locals 2

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdUtils2;->checkDefinedActivities(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public clearSDKEventListeners()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->sdkEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 678
    return-void
.end method

.method public closeAd()Z
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adCloser:Lcom/amazon/device/ads/AdCloser;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdCloser;->closeAd()Z

    move-result v0

    return v0
.end method

.method createAdContainer()Lcom/amazon/device/ads/AdContainer;
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adContainerFactory:Lcom/amazon/device/ads/AdContainer$AdContainerFactory;

    iget-object v1, p0, Lcom/amazon/device/ads/AdController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->adCloser:Lcom/amazon/device/ads/AdCloser;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/AdContainer$AdContainerFactory;->createAdContainer(Landroid/content/Context;Lcom/amazon/device/ads/AdCloser;)Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1051
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "The ad cannot be destroyed because it has already been destroyed."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 1067
    :goto_0
    return-void

    .line 1056
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->closeAd()Z

    .line 1057
    sget-object v0, Lcom/amazon/device/ads/AdState;->DESTROYED:Lcom/amazon/device/ads/AdState;

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->adState:Lcom/amazon/device/ads/AdState;

    .line 1058
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adContainer:Lcom/amazon/device/ads/AdContainer;

    if-eqz v0, :cond_1

    .line 1060
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdContainer;->destroy()V

    .line 1061
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adSdkBridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSDKBridgeList;->clear()V

    .line 1062
    iput-object v1, p0, Lcom/amazon/device/ads/AdController;->adContainer:Lcom/amazon/device/ads/AdContainer;

    .line 1064
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdController;->isPrepared:Z

    .line 1065
    iput-object v1, p0, Lcom/amazon/device/ads/AdController;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    .line 1066
    iput-object v1, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    goto :goto_0
.end method

.method public enableNativeCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V
    .locals 1
    .param p1, "showImage"    # Z
    .param p2, "position"    # Lcom/amazon/device/ads/RelativePosition;

    .prologue
    .line 1528
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdContainer;->enableNativeCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V

    .line 1529
    return-void
.end method

.method public fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/amazon/device/ads/AdEvent;

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Firing AdEvent of type %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdEvent;->getAdEventType()Lcom/amazon/device/ads/AdEvent$AdEventType;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1499
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdController;->callOnAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    .line 1500
    return-void
.end method

.method public fireSDKEvent(Lcom/amazon/device/ads/SDKEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/amazon/device/ads/SDKEvent;

    .prologue
    .line 1508
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Firing SDK Event of type %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/amazon/device/ads/SDKEvent;->getEventType()Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1509
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->sdkEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/ads/SDKEventListener;

    .line 1511
    .local v1, "listener":Lcom/amazon/device/ads/SDKEventListener;
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdControlAccessor()Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/amazon/device/ads/SDKEventListener;->onSDKEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V

    goto :goto_0

    .line 1513
    .end local v1    # "listener":Lcom/amazon/device/ads/SDKEventListener;
    :cond_0
    return-void
.end method

.method getAdContainer()Lcom/amazon/device/ads/AdContainer;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adContainer:Lcom/amazon/device/ads/AdContainer;

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->createAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->adContainer:Lcom/amazon/device/ads/AdContainer;

    .line 254
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adContainer:Lcom/amazon/device/ads/AdContainer;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdController;->shouldDisableHardwareAcceleration()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdContainer;->disableHardwareAcceleration(Z)V

    .line 255
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adContainer:Lcom/amazon/device/ads/AdContainer;

    iget-object v1, p0, Lcom/amazon/device/ads/AdController;->adUrlLoader:Lcom/amazon/device/ads/AdUrlLoader;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdUrlLoader;->getAdWebViewClient()Lcom/amazon/device/ads/AdWebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdContainer;->setAdWebViewClient(Lcom/amazon/device/ads/AdWebViewClient;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adContainer:Lcom/amazon/device/ads/AdContainer;

    return-object v0
.end method

.method public getAdControlAccessor()Lcom/amazon/device/ads/AdControlAccessor;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lcom/amazon/device/ads/AdControlAccessor;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdControlAccessor;-><init>(Lcom/amazon/device/ads/AdController;)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    return-object v0
.end method

.method getAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adControlCallback:Lcom/amazon/device/ads/AdControlCallback;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;-><init>(Lcom/amazon/device/ads/AdController;)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->adControlCallback:Lcom/amazon/device/ads/AdControlCallback;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adControlCallback:Lcom/amazon/device/ads/AdControlCallback;

    return-object v0
.end method

.method public getAdData()Lcom/amazon/device/ads/AdData;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    return-object v0
.end method

.method getAdPosition()Lcom/amazon/device/ads/Position;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 1696
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getViewWidth()I

    move-result v1

    .line 1697
    .local v1, "adWidth":I
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getViewHeight()I

    move-result v0

    .line 1699
    .local v0, "adHeight":I
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 1701
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getWindowWidth()I

    move-result v1

    .line 1702
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getWindowHeight()I

    move-result v0

    .line 1704
    :cond_0
    iget-object v9, p0, Lcom/amazon/device/ads/AdController;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v9, v1}, Lcom/amazon/device/ads/AdUtils2;->pixelToDeviceIndependentPixel(I)I

    move-result v6

    .line 1705
    .local v6, "width":I
    iget-object v9, p0, Lcom/amazon/device/ads/AdController;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v9, v0}, Lcom/amazon/device/ads/AdUtils2;->pixelToDeviceIndependentPixel(I)I

    move-result v2

    .line 1706
    .local v2, "height":I
    new-array v3, v12, [I

    .line 1707
    .local v3, "onScreen":[I
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/amazon/device/ads/AdContainer;->getLocationOnScreen([I)V

    .line 1711
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    const v10, 0x1020002

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1712
    .local v4, "rootView":Landroid/view/View;
    if-nez v4, :cond_1

    .line 1714
    iget-object v9, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v10, "Could not find the activity\'s root view while determining ad position."

    invoke-virtual {v9, v10}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    .line 1715
    const/4 v9, 0x0

    .line 1723
    :goto_0
    return-object v9

    .line 1718
    :cond_1
    new-array v5, v12, [I

    .line 1719
    .local v5, "rootViewPos":[I
    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1721
    iget-object v9, p0, Lcom/amazon/device/ads/AdController;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    const/4 v10, 0x0

    aget v10, v3, v10

    invoke-virtual {v9, v10}, Lcom/amazon/device/ads/AdUtils2;->pixelToDeviceIndependentPixel(I)I

    move-result v7

    .line 1722
    .local v7, "xPosition":I
    iget-object v9, p0, Lcom/amazon/device/ads/AdController;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    aget v10, v3, v11

    aget v11, v5, v11

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/amazon/device/ads/AdUtils2;->pixelToDeviceIndependentPixel(I)I

    move-result v8

    .line 1723
    .local v8, "yPosition":I
    new-instance v9, Lcom/amazon/device/ads/Position;

    new-instance v10, Lcom/amazon/device/ads/Size;

    invoke-direct {v10, v6, v2}, Lcom/amazon/device/ads/Size;-><init>(II)V

    invoke-direct {v9, v10, v7, v8}, Lcom/amazon/device/ads/Position;-><init>(Lcom/amazon/device/ads/Size;II)V

    goto :goto_0
.end method

.method public getAdSize()Lcom/amazon/device/ads/AdSize;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adSize:Lcom/amazon/device/ads/AdSize;

    return-object v0
.end method

.method public getAdState()Lcom/amazon/device/ads/AdState;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adState:Lcom/amazon/device/ads/AdState;

    return-object v0
.end method

.method public getAndResetIsPrepared()Z
    .locals 2

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdController;->isPrepared:Z

    .line 417
    .local v0, "isPrepared":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazon/device/ads/AdController;->isPrepared:Z

    .line 418
    return v0
.end method

.method getAndSetHasFinishedLoading(Z)Z
    .locals 1
    .param p1, "hasFinishedLoading"    # Z

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->hasFinishedLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method public getConnectionInfo()Lcom/amazon/device/ads/ConnectionInfo;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->connectionInfo:Lcom/amazon/device/ads/ConnectionInfo;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->context:Landroid/content/Context;

    .line 393
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public getDestroyable()Lcom/amazon/device/ads/Destroyable;
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    return-object v0
.end method

.method public getInstrumentationPixelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdData;->getInstrumentationPixelUrl()Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMaxExpandableSize()Lcom/amazon/device/ads/Size;
    .locals 6

    .prologue
    .line 1745
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1746
    .local v1, "rootView":Landroid/widget/FrameLayout;
    if-nez v1, :cond_0

    .line 1748
    iget-object v3, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "Could not find the activity\'s root view while determining max expandable size."

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    .line 1749
    const/4 v3, 0x0

    .line 1756
    :goto_0
    return-object v3

    .line 1753
    :cond_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    .line 1754
    .local v2, "widthPixels":I
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 1756
    .local v0, "heightPixels":I
    new-instance v3, Lcom/amazon/device/ads/Size;

    iget-object v4, p0, Lcom/amazon/device/ads/AdController;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v4, v2}, Lcom/amazon/device/ads/AdUtils2;->pixelToDeviceIndependentPixel(I)I

    move-result v4

    iget-object v5, p0, Lcom/amazon/device/ads/AdController;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v5, v0}, Lcom/amazon/device/ads/AdUtils2;->pixelToDeviceIndependentPixel(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/amazon/device/ads/Size;-><init>(II)V

    goto :goto_0
.end method

.method public getMaxSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    const/4 v0, 0x0

    .line 632
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getWindowWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getWindowHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AdSize;->getAsSizeString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 1782
    iget-object v1, p0, Lcom/amazon/device/ads/AdController;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1783
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1784
    return-void
.end method

.method public getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    return-object v0
.end method

.method public getOriginalOrientation()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/amazon/device/ads/AdController;->originalOrientation:I

    return v0
.end method

.method public getScalingMultiplier()D
    .locals 2

    .prologue
    .line 550
    iget-wide v0, p0, Lcom/amazon/device/ads/AdController;->scalingMultiplier:D

    return-wide v0
.end method

.method public getScalingMultiplierDescription()Ljava/lang/String;
    .locals 4

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 641
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getScalingMultiplier()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 643
    const-string v0, "u"

    .line 649
    :goto_0
    return-object v0

    .line 645
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getScalingMultiplier()D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getScalingMultiplier()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 647
    const-string v0, "d"

    goto :goto_0

    .line 649
    :cond_1
    const-string v0, "n"

    goto :goto_0
.end method

.method getScreenSize()Lcom/amazon/device/ads/Size;
    .locals 6

    .prologue
    .line 1766
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1767
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdController;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1770
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1771
    .local v2, "widthPixels":I
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1773
    .local v0, "heightPixels":I
    new-instance v3, Lcom/amazon/device/ads/Size;

    iget-object v4, p0, Lcom/amazon/device/ads/AdController;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v4, v2}, Lcom/amazon/device/ads/AdUtils2;->pixelToDeviceIndependentPixel(I)I

    move-result v4

    iget-object v5, p0, Lcom/amazon/device/ads/AdController;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v5, v0}, Lcom/amazon/device/ads/AdUtils2;->pixelToDeviceIndependentPixel(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/amazon/device/ads/Size;-><init>(II)V

    return-object v3
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/amazon/device/ads/AdController;->timeout:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method getViewParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1645
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method getViewParentIfExpanded()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->defaultParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->defaultParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1652
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getViewParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1654
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdContainer;->getWidth()I

    move-result v0

    return v0
.end method

.method public getWindowHeight()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/amazon/device/ads/AdController;->adWindowHeight:I

    return v0
.end method

.method public getWindowWidth()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/amazon/device/ads/AdController;->adWindowWidth:I

    return v0
.end method

.method public initialize()V
    .locals 6

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/AdController;->determineShouldForceDisableHardwareAcceleration()V

    .line 843
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->initializeAdContainer()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 849
    invoke-direct {p0}, Lcom/amazon/device/ads/AdController;->calculateScalingMultiplier()V

    .line 851
    iget-object v5, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdData;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/ads/AAXCreative;

    .line 853
    .local v2, "creativeType":Lcom/amazon/device/ads/AAXCreative;
    iget-object v5, p0, Lcom/amazon/device/ads/AdController;->bridgeSelector:Lcom/amazon/device/ads/BridgeSelector;

    invoke-virtual {v5, v2}, Lcom/amazon/device/ads/BridgeSelector;->getBridgeFactories(Lcom/amazon/device/ads/AAXCreative;)Ljava/util/Set;

    move-result-object v0

    .line 854
    .local v0, "bridgeFactories":Ljava/util/Set;, "Ljava/util/Set<Lcom/amazon/device/ads/AdSDKBridgeFactory;>;"
    if-eqz v0, :cond_2

    .line 856
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/ads/AdSDKBridgeFactory;

    .line 858
    .local v1, "bridgeFactory":Lcom/amazon/device/ads/AdSDKBridgeFactory;
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdControlAccessor()Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/amazon/device/ads/AdSDKBridgeFactory;->createAdSDKBridge(Lcom/amazon/device/ads/AdControlAccessor;)Lcom/amazon/device/ads/AdSDKBridge;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amazon/device/ads/AdController;->addAdSDKBridge(Lcom/amazon/device/ads/AdSDKBridge;)V

    goto :goto_1

    .line 862
    .end local v0    # "bridgeFactories":Ljava/util/Set;, "Ljava/util/Set<Lcom/amazon/device/ads/AdSDKBridgeFactory;>;"
    .end local v1    # "bridgeFactory":Lcom/amazon/device/ads/AdSDKBridgeFactory;
    .end local v2    # "creativeType":Lcom/amazon/device/ads/AAXCreative;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0}, Lcom/amazon/device/ads/AdController;->adLoaded()V

    goto :goto_0
.end method

.method initializeAdContainer()Z
    .locals 5

    .prologue
    .line 914
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdContainer;->initialize()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 916
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "An unknown error occurred when attempting to create the web view."

    .line 919
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcom/amazon/device/ads/AdError;

    sget-object v3, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v4, "An unknown error occurred when attempting to create the web view."

    invoke-direct {v2, v3, v4}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/AdController;->adFailed(Lcom/amazon/device/ads/AdError;)V

    .line 920
    sget-object v2, Lcom/amazon/device/ads/AdState;->INVALID:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    .line 921
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "An unknown error occurred when attempting to create the web view."

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 922
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public injectJavascript(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "javascript"    # Ljava/lang/String;
    .param p2, "preload"    # Z

    .prologue
    .line 1036
    new-instance v0, Lcom/amazon/device/ads/AdController$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/ads/AdController$2;-><init>(Lcom/amazon/device/ads/AdController;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 1044
    return-void
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdData;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInterstitial()Z
    .locals 2

    .prologue
    .line 1731
    sget-object v0, Lcom/amazon/device/ads/AdSize$SizeType;->INTERSTITIAL:Lcom/amazon/device/ads/AdSize$SizeType;

    iget-object v1, p0, Lcom/amazon/device/ads/AdController;->adSize:Lcom/amazon/device/ads/AdSize;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdSize;->getSizeType()Lcom/amazon/device/ads/AdSize$SizeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdSize$SizeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1733
    const/4 v0, 0x1

    .line 1735
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSize;->isModal()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/device/ads/AdController;->isModallyExpanded:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->INVALID:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isValidAppKey()Z
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/RegistrationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 360
    sget-object v0, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadHtml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;

    .prologue
    .line 964
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazon/device/ads/AdController;->loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 965
    return-void
.end method

.method public loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "shouldPreload"    # Z
    .param p4, "callback"    # Lcom/amazon/device/ads/PreloadCallback;

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdContainer;->removePreviousInterfaces()V

    .line 979
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->clearSDKEventListeners()V

    .line 980
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adHtmlPreprocessor:Lcom/amazon/device/ads/AdHtmlPreprocessor;

    invoke-virtual {v0, p2, p3}, Lcom/amazon/device/ads/AdHtmlPreprocessor;->preprocessHtml(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 981
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/device/ads/AdContainer;->loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 982
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adUrlLoader:Lcom/amazon/device/ads/AdUrlLoader;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/AdUrlLoader;->loadUrl(Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 1002
    return-void
.end method

.method public moveViewBackToParent(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1664
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1665
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1667
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1669
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->setViewDimensionsToAdDimensions()V

    .line 1670
    iget-object v1, p0, Lcom/amazon/device/ads/AdController;->defaultParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1672
    iget-object v1, p0, Lcom/amazon/device/ads/AdController;->defaultParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1675
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdContainer;->listenForKey(Landroid/view/View$OnKeyListener;)V

    .line 1676
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdController;->setExpanded(Z)V

    .line 1677
    return-void
.end method

.method public moveViewToViewGroup(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2
    .param p1, "newViewGroup"    # Landroid/view/ViewGroup;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "isModal"    # Z

    .prologue
    .line 1585
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getViewParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1586
    .local v0, "currentParent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/amazon/device/ads/AdController;->defaultParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 1588
    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->defaultParent:Landroid/view/ViewGroup;

    .line 1590
    :cond_0
    if-eqz v0, :cond_1

    .line 1592
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1594
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->setViewDimensionsToMatchParent()V

    .line 1595
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1596
    iput-boolean p3, p0, Lcom/amazon/device/ads/AdController;->isModallyExpanded:Z

    .line 1597
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdController;->setExpanded(Z)V

    .line 1598
    iget-boolean v1, p0, Lcom/amazon/device/ads/AdController;->isModallyExpanded:Z

    if-eqz v1, :cond_2

    .line 1601
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->captureBackButton()V

    .line 1603
    :cond_2
    return-void
.end method

.method onAdTimedOut()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1194
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v1, "debug.canTimeout"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/AdController;->getAndSetHasFinishedLoading(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "Ad Load Timed Out"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdController;->adFailedAfterTimerCheck(Lcom/amazon/device/ads/AdError;)V

    .line 1200
    sget-object v0, Lcom/amazon/device/ads/AdState;->INVALID:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    .line 1203
    :cond_0
    return-void
.end method

.method onBackButtonPress()Z
    .locals 2

    .prologue
    .line 1628
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdController;->backButtonOverridden:Z

    if-eqz v0, :cond_0

    .line 1630
    new-instance v0, Lcom/amazon/device/ads/SDKEvent;

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->BACK_BUTTON_PRESSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/SDKEvent;-><init>(Lcom/amazon/device/ads/SDKEvent$SDKEventType;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdController;->fireSDKEvent(Lcom/amazon/device/ads/SDKEvent;)V

    .line 1631
    const/4 v0, 0x1

    .line 1636
    :goto_0
    return v0

    .line 1635
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->closeAd()Z

    .line 1636
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRequestError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 1086
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->REQUEST_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-direct {v0, v1, p1}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdController;->adFailed(Lcom/amazon/device/ads/AdError;)V

    .line 1087
    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adUrlLoader:Lcom/amazon/device/ads/AdUrlLoader;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdUrlLoader;->openUrl(Ljava/lang/String;)V

    .line 1011
    return-void
.end method

.method public orientationChangeAttemptedWhenNotAllowed()V
    .locals 2

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdController;->orientationFailureMetricRecorded:Z

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdController;->orientationFailureMetricRecorded:Z

    .line 379
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->SET_ORIENTATION_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 381
    :cond_0
    return-void
.end method

.method public overrideBackButton(Z)V
    .locals 0
    .param p1, "override"    # Z

    .prologue
    .line 1809
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdController;->backButtonOverridden:Z

    .line 1810
    return-void
.end method

.method protected passesInternetPermissionCheck(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/PermissionChecker;->hasInternetPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public popView()Z
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdContainer;->popView()Z

    move-result v0

    return v0
.end method

.method public preloadHtml(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/amazon/device/ads/PreloadCallback;

    .prologue
    .line 954
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazon/device/ads/AdController;->loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 955
    return-void
.end method

.method public preloadUrl(Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/amazon/device/ads/PreloadCallback;

    .prologue
    .line 992
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adUrlLoader:Lcom/amazon/device/ads/AdUrlLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/amazon/device/ads/AdUrlLoader;->loadUrl(Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 993
    return-void
.end method

.method public prepareForAdLoad(JZ)Z
    .locals 9
    .param p1, "loadAdStartTime"    # J
    .param p3, "deferredLoad"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 735
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 737
    const-string v3, "An ad could not be loaded because the view has been destroyed or was not created properly."

    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/AdController;->onRequestError(Ljava/lang/String;)V

    .line 830
    :cond_0
    :goto_0
    return v2

    .line 741
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->checkDefinedActivities()Z

    move-result v4

    if-nez v4, :cond_2

    .line 743
    const-string v1, "Ads cannot load unless \"com.amazon.device.ads.AdActivity\" is correctly declared as an activity in AndroidManifest.xml. Consult the online documentation for more info."

    .line 746
    .local v1, "msg":Ljava/lang/String;
    const-string v3, "Ads cannot load unless \"com.amazon.device.ads.AdActivity\" is correctly declared as an activity in AndroidManifest.xml. Consult the online documentation for more info."

    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/AdController;->onRequestError(Ljava/lang/String;)V

    goto :goto_0

    .line 750
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/amazon/device/ads/AdController;->context:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/amazon/device/ads/AdController;->passesInternetPermissionCheck(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 752
    const-string v1, "Ads cannot load because the INTERNET permission is missing from the app\'s manifest."

    .line 753
    .restart local v1    # "msg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdController;->onRequestError(Ljava/lang/String;)V

    goto :goto_0

    .line 757
    .end local v1    # "msg":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->isValidAppKey()Z

    move-result v4

    if-nez v4, :cond_4

    .line 759
    const-string v1, "Can\'t load an ad because Application Key has not been set. Did you forget to call AdRegistration.setAppKey( ... )?"

    .line 760
    .restart local v1    # "msg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdController;->onRequestError(Ljava/lang/String;)V

    goto :goto_0

    .line 764
    .end local v1    # "msg":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdContainer;->canShowViews()Z

    move-result v4

    if-nez v4, :cond_5

    .line 766
    const-string v1, "We will be unable to create a WebView for rendering an ad due to an unknown issue with the WebView."

    .line 767
    .restart local v1    # "msg":Ljava/lang/String;
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v3

    sget-object v4, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_UNKNOWN_WEBVIEW_ISSUE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 768
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdController;->onRequestError(Ljava/lang/String;)V

    goto :goto_0

    .line 772
    .end local v1    # "msg":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p3}, Lcom/amazon/device/ads/AdController;->isReadyToLoad(Z)Z

    move-result v4

    if-nez v4, :cond_6

    .line 774
    const/4 v0, 0x1

    .line 775
    .local v0, "failLoad":Z
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/AdState;->RENDERED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 779
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 781
    const/4 v0, 0x0

    .line 797
    :goto_1
    if-nez v0, :cond_0

    .line 803
    .end local v0    # "failLoad":Z
    :cond_6
    invoke-direct {p0}, Lcom/amazon/device/ads/AdController;->reset()V

    .line 805
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_TOTAL:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v4, v5, p1, p2}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 806
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_TOTAL_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v4, v5, p1, p2}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 807
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_TOTAL_SUCCESS:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v4, v5, p1, p2}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 808
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v4, v5, p1, p2}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 810
    sget-object v4, Lcom/amazon/device/ads/AdState;->LOADING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0, v4}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    .line 813
    iget-object v4, p0, Lcom/amazon/device/ads/AdController;->isRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 814
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/AdController;->setHasFinishedLoading(Z)V

    .line 816
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->adTimer:Lcom/amazon/device/ads/AdTimer;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdTimer;->restartTimer()V

    .line 817
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->adTimer:Lcom/amazon/device/ads/AdTimer;

    new-instance v4, Lcom/amazon/device/ads/AdController$1;

    invoke-direct {v4, p0}, Lcom/amazon/device/ads/AdController$1;-><init>(Lcom/amazon/device/ads/AdController;)V

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v4, v6, v7}, Lcom/amazon/device/ads/AdTimer;->scheduleTask(Ljava/util/TimerTask;J)V

    .line 826
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/device/ads/AdController;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/DeviceInfo;->populateUserAgentString(Landroid/content/Context;)V

    .line 829
    iput-boolean v3, p0, Lcom/amazon/device/ads/AdController;->isPrepared:Z

    move v2, v3

    .line 830
    goto/16 :goto_0

    .line 785
    .restart local v0    # "failLoad":Z
    :cond_7
    iget-object v4, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "An ad is ready to show. Please call showAd() to show the ad before loading another ad."

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 788
    :cond_8
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 790
    iget-object v4, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "An ad could not be loaded because another ad is currently expanded."

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 794
    :cond_9
    iget-object v4, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "An ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad."

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method putUrlExecutorInAdWebViewClient(Ljava/lang/String;Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;)V
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "executor"    # Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adUrlLoader:Lcom/amazon/device/ads/AdUrlLoader;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdUrlLoader;->putUrlExecutorInAdWebViewClient(Ljava/lang/String;Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;)V

    .line 1805
    return-void
.end method

.method reload()V
    .locals 1

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdContainer;->reload()V

    .line 1800
    return-void
.end method

.method public removeNativeCloseButton()V
    .locals 1

    .prologue
    .line 1533
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdContainer;->removeNativeCloseButton()V

    .line 1534
    return-void
.end method

.method public render()V
    .locals 5

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 943
    :goto_0
    return-void

    .line 936
    :cond_0
    sget-object v1, Lcom/amazon/device/ads/AdState;->RENDERING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    .line 937
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 938
    .local v2, "renderStartTime":J
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v4, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v4, v2, v3}, Lcom/amazon/device/ads/MetricsCollector;->stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 939
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v4, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_RENDER:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v4, v2, v3}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 940
    iget-object v1, p0, Lcom/amazon/device/ads/AdController;->isRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 941
    iget-object v1, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdData;->getCreative()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "html":Ljava/lang/String;
    const-string v1, "http://amazon-adsystem.amazon.com/"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/AdController;->loadHtml(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestDisableHardwareAcceleration(Z)V
    .locals 2
    .param p1, "shouldDisable"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdController;->disableHardwareAccelerationRequest:Z

    .line 282
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adContainer:Lcom/amazon/device/ads/AdContainer;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adContainer:Lcom/amazon/device/ads/AdContainer;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdController;->shouldDisableHardwareAcceleration()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdContainer;->disableHardwareAcceleration(Z)V

    .line 286
    :cond_0
    return-void
.end method

.method public resetMetricsCollector()V
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lcom/amazon/device/ads/MetricsCollector;

    invoke-direct {v0}, Lcom/amazon/device/ads/MetricsCollector;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdController;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    .line 324
    return-void
.end method

.method public resetToReady()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 685
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    :goto_0
    return-void

    .line 689
    :cond_0
    iput-object v2, p0, Lcom/amazon/device/ads/AdController;->adActivity:Landroid/app/Activity;

    .line 690
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdController;->isPrepared:Z

    .line 691
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adTimer:Lcom/amazon/device/ads/AdTimer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdTimer;->cancelTimer()V

    .line 692
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->resetMetricsCollector()V

    .line 693
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdController;->orientationFailureMetricRecorded:Z

    .line 694
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdContainer;->destroy()V

    .line 695
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adSdkBridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSDKBridgeList;->clear()V

    .line 696
    iput-object v2, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    .line 697
    sget-object v0, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    goto :goto_0
.end method

.method setAdActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/amazon/device/ads/AdController;->adActivity:Landroid/app/Activity;

    .line 277
    return-void
.end method

.method public setAdData(Lcom/amazon/device/ads/AdData;)V
    .locals 0
    .param p1, "adData"    # Lcom/amazon/device/ads/AdData;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    .line 444
    return-void
.end method

.method public setAdState(Lcom/amazon/device/ads/AdState;)V
    .locals 5
    .param p1, "adState"    # Lcom/amazon/device/ads/AdState;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Changing AdState from %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/device/ads/AdController;->adState:Lcom/amazon/device/ads/AdState;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iput-object p1, p0, Lcom/amazon/device/ads/AdController;->adState:Lcom/amazon/device/ads/AdState;

    .line 344
    return-void
.end method

.method protected setAdditionalMetrics()V
    .locals 3

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getConnectionInfo()Lcom/amazon/device/ads/ConnectionInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/AdUtils2;->setConnectionMetrics(Lcom/amazon/device/ads/ConnectionInfo;Lcom/amazon/device/ads/MetricsCollector;)V

    .line 1548
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getWindowHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 1550
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->ADLAYOUT_HEIGHT_ZERO:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 1552
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->VIEWPORT_SCALE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getScalingMultiplierDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V

    .line 1553
    return-void
.end method

.method public setAllowClicks(Z)V
    .locals 1
    .param p1, "allowClicks"    # Z

    .prologue
    .line 1814
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdContainer;->setAllowClicks(Z)V

    .line 1815
    return-void
.end method

.method public setCallback(Lcom/amazon/device/ads/AdControlCallback;)V
    .locals 0
    .param p1, "adControlCallback"    # Lcom/amazon/device/ads/AdControlCallback;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/amazon/device/ads/AdController;->adControlCallback:Lcom/amazon/device/ads/AdControlCallback;

    .line 659
    return-void
.end method

.method public setConnectionInfo(Lcom/amazon/device/ads/ConnectionInfo;)V
    .locals 0
    .param p1, "connectionInfo"    # Lcom/amazon/device/ads/ConnectionInfo;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/amazon/device/ads/AdController;->connectionInfo:Lcom/amazon/device/ads/ConnectionInfo;

    .line 568
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "isExpanded"    # Z

    .prologue
    .line 1019
    if-eqz p1, :cond_0

    .line 1021
    sget-object v0, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    .line 1027
    :goto_0
    return-void

    .line 1025
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    goto :goto_0
.end method

.method setHasFinishedLoading(Z)V
    .locals 1
    .param p1, "hasFinishedLoading"    # Z

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->hasFinishedLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1482
    return-void
.end method

.method public setOriginalOrientation(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/amazon/device/ads/AdController;->originalOrientation:I

    .line 403
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 460
    iput p1, p0, Lcom/amazon/device/ads/AdController;->timeout:I

    .line 461
    return-void
.end method

.method setViewDimensionsToAdDimensions()V
    .locals 6

    .prologue
    .line 507
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    if-eqz v2, :cond_1

    .line 509
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdData;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getScalingMultiplier()D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/amazon/device/ads/AdController;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdUtils2;->getScalingFactorAsFloat()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 512
    .local v0, "height":I
    if-gtz v0, :cond_0

    .line 514
    const/4 v0, -0x1

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSize;->canUpscale()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 519
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazon/device/ads/AdContainer;->setViewHeight(I)V

    .line 527
    .end local v0    # "height":I
    :cond_1
    :goto_0
    return-void

    .line 523
    .restart local v0    # "height":I
    :cond_2
    iget-object v2, p0, Lcom/amazon/device/ads/AdController;->adData:Lcom/amazon/device/ads/AdData;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdData;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getScalingMultiplier()D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/amazon/device/ads/AdController;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdUtils2;->getScalingFactorAsFloat()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 524
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdSize;->getGravity()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/amazon/device/ads/AdContainer;->setViewLayoutParams(III)V

    goto :goto_0
.end method

.method public setViewDimensionsToMatchParent()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 534
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v2, v2, v1}, Lcom/amazon/device/ads/AdContainer;->setViewLayoutParams(III)V

    .line 535
    return-void
.end method

.method public setWindowDimensions(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 494
    iput p1, p0, Lcom/amazon/device/ads/AdController;->adWindowWidth:I

    .line 495
    iput p2, p0, Lcom/amazon/device/ads/AdController;->adWindowHeight:I

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdController;->windowDimensionsSet:Z

    .line 497
    return-void
.end method

.method public showNativeCloseButtonImage(Z)V
    .locals 1
    .param p1, "showNativeCloseButtonImage"    # Z

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdContainer;->showNativeCloseButtonImage(Z)V

    .line 1539
    return-void
.end method

.method public startAdDrawing()Z
    .locals 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/amazon/device/ads/AdController;->adTimer:Lcom/amazon/device/ads/AdTimer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdTimer;->cancelTimer()V

    .line 1119
    sget-object v0, Lcom/amazon/device/ads/AdState;->RENDERED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/device/ads/AdState;->DRAWING:Lcom/amazon/device/ads/AdState;

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdController;->canExpireOrDraw(Lcom/amazon/device/ads/AdState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    const/4 v0, 0x1

    .line 1123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stashView()V
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdContainer;->stashView()V

    .line 592
    return-void
.end method

.method public submitAndResetMetrics()V
    .locals 1

    .prologue
    .line 1560
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/Metrics;->submitAndResetMetrics(Lcom/amazon/device/ads/Metrics$MetricsSubmitter;)V

    .line 1561
    return-void
.end method

.method public submitAndResetMetricsIfNecessary(Z)V
    .locals 0
    .param p1, "shouldSubmitMetrics"    # Z

    .prologue
    .line 1568
    if-eqz p1, :cond_0

    .line 1570
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdController;->submitAndResetMetrics()V

    .line 1572
    :cond_0
    return-void
.end method
