.class public Lcom/supersonicads/sdk/controller/SupersonicWebView;
.super Landroid/webkit/WebView;
.source "SupersonicWebView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;
.implements Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonicads/sdk/controller/SupersonicWebView$8;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$State;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$FrameBustWebViewClient;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$ViewClient;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;
    }
.end annotation


# static fields
.field public static APP_IDS:Ljava/lang/String;

.field public static DISPLAY_WEB_VIEW_INTENT:I

.field public static EXTERNAL_URL:Ljava/lang/String;

.field public static IS_INSTALLED:Ljava/lang/String;

.field public static IS_STORE:Ljava/lang/String;

.field public static IS_STORE_CLOSE:Ljava/lang/String;

.field private static JSON_KEY_FAIL:Ljava/lang/String;

.field private static JSON_KEY_SUCCESS:Ljava/lang/String;

.field public static OPEN_URL_INTENT:I

.field public static REQUEST_ID:Ljava/lang/String;

.field public static RESULT:Ljava/lang/String;

.field public static SECONDARY_WEB_VIEW:Ljava/lang/String;

.field public static WEBVIEW_TYPE:Ljava/lang/String;

.field public static mDebugMode:I


# instance fields
.field private final GENERIC_MESSAGE:Ljava/lang/String;

.field private PUB_TAG:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

.field private isKitkatAndAbove:Ljava/lang/Boolean;

.field private isRemoveCloseEventHandler:Z

.field private mCacheDirectory:Ljava/lang/String;

.field private mChangeListener:Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;

.field private mCloseEventTimer:Landroid/os/CountDownTimer;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mControllerKeyPressed:Ljava/lang/String;

.field private mControllerLayout:Landroid/widget/FrameLayout;

.field private mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

.field mCurrentActivityContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mGlobalControllerTimeFinish:Z

.field private mGlobalControllerTimer:Landroid/os/CountDownTimer;

.field private mHiddenForceCloseHeight:I

.field private mHiddenForceCloseLocation:Ljava/lang/String;

.field private mHiddenForceCloseWidth:I

.field private mISAppKey:Ljava/lang/String;

.field private mISExtraParameters:Ljava/util/Map;
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

.field private mISUserId:Ljava/lang/String;

.field private mISmiss:Z

.field private mIsImmersive:Z

.field private mIsInterstitialAvailable:Ljava/lang/Boolean;

.field private mLoadControllerTimer:Landroid/os/CountDownTimer;

.field private mOWAppKey:Ljava/lang/String;

.field private mOWCreditsAppKey:Ljava/lang/String;

.field private mOWCreditsMiss:Z

.field private mOWCreditsUserId:Ljava/lang/String;

.field private mOWExtraParameters:Ljava/util/Map;
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

.field private mOWUserId:Ljava/lang/String;

.field private mOWmiss:Z

.field private mOnGenericFunctionListener:Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;

.field private mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

.field private mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

.field private mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;

.field private mOrientationState:Ljava/lang/String;

.field private mRVAppKey:Ljava/lang/String;

.field private mRVUserId:Ljava/lang/String;

.field private mRequestParameters:Ljava/lang/String;

.field private mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

.field private mSavedStateLocker:Ljava/lang/Object;

.field private mState:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

.field mUiHandler:Landroid/os/Handler;

.field private mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;

.field private mWebChromeClient:Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    sput v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mDebugMode:I

    .line 123
    const-string v0, "is_store"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_STORE:Ljava/lang/String;

    .line 124
    const-string v0, "is_store_close"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_STORE_CLOSE:Ljava/lang/String;

    .line 125
    const-string v0, "webview_type"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->WEBVIEW_TYPE:Ljava/lang/String;

    .line 126
    const-string v0, "external_url"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->EXTERNAL_URL:Ljava/lang/String;

    .line 127
    const-string v0, "secondary_web_view"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    .line 128
    sput v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->DISPLAY_WEB_VIEW_INTENT:I

    .line 129
    const/4 v0, 0x1

    sput v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->OPEN_URL_INTENT:I

    .line 130
    const-string v0, "appIds"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->APP_IDS:Ljava/lang/String;

    .line 131
    const-string v0, "requestId"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->REQUEST_ID:Ljava/lang/String;

    .line 132
    const-string v0, "isInstalled"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_INSTALLED:Ljava/lang/String;

    .line 133
    const-string v0, "result"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->RESULT:Ljava/lang/String;

    .line 2811
    const-string v0, "success"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    .line 2812
    const-string v0, "fail"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x32

    const/4 v2, 0x0

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 98
    const-class v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    .line 99
    const-string v0, "Supersonic"

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->PUB_TAG:Ljava/lang/String;

    .line 103
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->GENERIC_MESSAGE:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    .line 148
    const-string v0, "interrupt"

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 155
    iput v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseWidth:I

    .line 156
    iput v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseHeight:I

    .line 157
    const-string v0, "top-right"

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    .line 175
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->None:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .line 177
    iput-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedStateLocker:Ljava/lang/Object;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsImmersive:Z

    .line 3382
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$7;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$7;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v1, "C\'tor"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCurrentActivityContext:Landroid/content/Context;

    .line 199
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCurrentActivityContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initLayout(Landroid/content/Context;)V

    .line 201
    new-instance v0, Lcom/supersonicads/sdk/data/AdUnitsState;

    invoke-direct {v0}, Lcom/supersonicads/sdk/data/AdUnitsState;-><init>()V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    .line 203
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->getInstance(Ljava/lang/String;)Lcom/supersonicads/sdk/precache/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    .line 204
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-virtual {v0, p0}, Lcom/supersonicads/sdk/precache/DownloadManager;->setOnPreCacheCompletion(Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;)V

    .line 206
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;

    invoke-direct {v0, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mWebChromeClient:Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;

    .line 208
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ViewClient;

    invoke-direct {v0, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$ViewClient;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 209
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mWebChromeClient:Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 211
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebViewSettings()V

    .line 213
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    invoke-direct {v0, p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/content/Context;)V

    const-string v1, "Android"

    invoke-virtual {p0, v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 217
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;

    invoke-direct {v0, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mUiHandler:Landroid/os/Handler;

    .line 219
    return-void
.end method

.method static synthetic access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISmiss:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISExtraParameters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWmiss:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWExtraParameters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsMiss:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/content/Context;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseWidth:I

    return v0
.end method

.method static synthetic access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/supersonicads/sdk/controller/SupersonicWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseWidth:I

    return p1
.end method

.method static synthetic access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getApplicationParams(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getAppsStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/precache/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsImmersive:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/supersonicads/sdk/controller/SupersonicWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsImmersive:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView$State;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mState:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->closeWebView()V

    return-void
.end method

.method static synthetic access$500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseHeight:I

    return v0
.end method

.method static synthetic access$5000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/supersonicads/sdk/controller/SupersonicWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseHeight:I

    return p1
.end method

.method static synthetic access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->PUB_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnGenericFunctionListener:Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebviewBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Ljava/lang/String;
    .param p10, "x10"    # Z

    .prologue
    .line 93
    invoke-direct/range {p0 .. p10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->evaluateJavascriptKitKat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isRemoveCloseEventHandler:Z

    return v0
.end method

.method static synthetic access$702(Lcom/supersonicads/sdk/controller/SupersonicWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isRemoveCloseEventHandler:Z

    return p1
.end method

.method static synthetic access$800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$902(Lcom/supersonicads/sdk/controller/SupersonicWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimeFinish:Z

    return p1
.end method

.method private closeWebView()V
    .locals 1

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;

    if-eqz v0, :cond_0

    .line 2804
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;

    invoke-interface {v0}, Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;->onCloseRequested()V

    .line 2806
    :cond_0
    return-void
.end method

.method private createInitProductJSMethod(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 19
    .param p1, "type"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 2477
    const/16 v18, 0x0

    .line 2479
    .local v18, "script":Ljava/lang/String;
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 2480
    invoke-virtual/range {p0 .. p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getDemandSourceByName(Ljava/lang/String;)Lcom/supersonicads/sdk/data/DemandSource;

    move-result-object v13

    .line 2481
    .local v13, "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 2482
    .local v17, "rvParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "applicationKey"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVAppKey:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    const-string v2, "applicationUserId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVUserId:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2484
    if-eqz v13, :cond_1

    .line 2485
    invoke-virtual {v13}, Lcom/supersonicads/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2486
    invoke-virtual {v13}, Lcom/supersonicads/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2489
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2490
    const-string v2, "demandSourceName"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2493
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v16

    .line 2494
    .local v16, "params":Ljava/lang/String;
    const-string v2, "initRewardedVideo"

    const-string v3, "onInitRewardedVideoSuccess"

    const-string v4, "onInitRewardedVideoFail"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2528
    .end local v13    # "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    .end local v16    # "params":Ljava/lang/String;
    .end local v17    # "rvParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_0
    if-eqz v18, :cond_3

    .line 2529
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2530
    :cond_3
    return-void

    .line 2496
    :cond_4
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 2499
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 2500
    .local v14, "interstitialParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "applicationKey"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2501
    const-string v2, "applicationUserId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISExtraParameters:Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 2503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISExtraParameters:Ljava/util/Map;

    invoke-interface {v14, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2506
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v16

    .line 2507
    .restart local v16    # "params":Ljava/lang/String;
    const-string v2, "initInterstitial"

    const-string v3, "onInitInterstitialSuccess"

    const-string v4, "onInitInterstitialFail"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2509
    goto :goto_0

    .end local v14    # "interstitialParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "params":Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 2511
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 2512
    .local v15, "offerwallParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "applicationKey"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2513
    const-string v2, "applicationUserId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWExtraParameters:Ljava/util/Map;

    if-eqz v2, :cond_7

    .line 2515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWExtraParameters:Ljava/util/Map;

    invoke-interface {v15, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2517
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v16

    .line 2518
    .restart local v16    # "params":Ljava/lang/String;
    const-string v2, "initOfferWall"

    const-string v3, "onInitOfferWallSuccess"

    const-string v4, "onInitOfferWallFail"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2520
    goto/16 :goto_0

    .end local v15    # "offerwallParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "params":Ljava/lang/String;
    :cond_8
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 2521
    const-string v3, "productType"

    const-string v4, "OfferWall"

    const-string v5, "applicationKey"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsAppKey:Ljava/lang/String;

    const-string v7, "applicationUserId"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsUserId:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    .line 2525
    .restart local v16    # "params":Ljava/lang/String;
    const-string v2, "getUserCredits"

    const-string v3, "null"

    const-string v4, "onGetUserCreditsFail"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0
.end method

.method private evaluateJavascriptKitKat(Ljava/lang/String;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 2734
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2735
    return-void
.end method

.method private extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 2867
    new-instance v1, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2868
    .local v1, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    sget-object v2, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2870
    .local v0, "funToCall":Ljava/lang/String;
    return-object v0
.end method

.method private extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 2859
    new-instance v1, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2860
    .local v1, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    sget-object v2, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2862
    .local v0, "funToCall":Ljava/lang/String;
    return-object v0
.end method

.method private flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2533
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2534
    .local v2, "jsObj":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 2535
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2536
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2537
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2539
    .local v3, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2543
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2540
    :catch_0
    move-exception v0

    .line 2541
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flatMapToJsonAsStringfailed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2547
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    instance-of v4, v2, Lorg/json/JSONObject;

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :goto_2
    return-object v4

    .restart local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_1
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "jsObj":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private generateJSToInject(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "funToCall"    # Ljava/lang/String;

    .prologue
    .line 3566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3567
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3568
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;

    .prologue
    .line 3572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3574
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?parameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3575
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "successFunc"    # Ljava/lang/String;
    .param p3, "failFunc"    # Ljava/lang/String;

    .prologue
    .line 3580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3582
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3584
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "successFunc"    # Ljava/lang/String;
    .param p4, "failFunc"    # Ljava/lang/String;

    .prologue
    .line 3589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3591
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?parameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3594
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getApplicationParams(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 15
    .param p1, "productType"    # Ljava/lang/String;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 3098
    const/4 v5, 0x0

    .line 3100
    .local v5, "fail":Z
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 3102
    .local v7, "jsObj":Lorg/json/JSONObject;
    const-string v1, ""

    .line 3103
    .local v1, "appKey":Ljava/lang/String;
    const-string v10, ""

    .line 3105
    .local v10, "userId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 3107
    .local v8, "productExtraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 3109
    sget-object v11, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v11}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3110
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVAppKey:Ljava/lang/String;

    .line 3111
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVUserId:Ljava/lang/String;

    .line 3113
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Landroid/app/Activity;

    invoke-static {v11}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getDemandSourceByName(Ljava/lang/String;)Lcom/supersonicads/sdk/data/DemandSource;

    move-result-object v2

    .line 3114
    .local v2, "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    if-eqz v2, :cond_0

    .line 3115
    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v8

    .line 3130
    .end local v2    # "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    :cond_0
    :goto_0
    :try_start_0
    const-string v11, "productType"

    move-object/from16 v0, p1

    invoke-virtual {v7, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3146
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 3148
    :try_start_1
    const-string v11, "applicationUserId"

    invoke-static {v11}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3161
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 3163
    :try_start_2
    const-string v11, "applicationKey"

    invoke-static {v11}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3175
    :goto_3
    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 3177
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3179
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "sdkWebViewCache"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3180
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebviewCache(Ljava/lang/String;)V

    .line 3184
    :cond_1
    :try_start_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 3185
    :catch_0
    move-exception v3

    .line 3186
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3187
    new-instance v11, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v11}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "https://www.supersonicads.com/mobile/sdk5/log?method=extraParametersToJson"

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    .line 3118
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    sget-object v11, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v11}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3119
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    .line 3120
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    .line 3121
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISExtraParameters:Ljava/util/Map;

    goto/16 :goto_0

    .line 3123
    :cond_3
    sget-object v11, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v11}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3124
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;

    .line 3125
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;

    .line 3126
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWExtraParameters:Ljava/util/Map;

    goto/16 :goto_0

    .line 3136
    :catch_1
    move-exception v3

    .line 3137
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3138
    new-instance v11, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v11}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "https://www.supersonicads.com/mobile/sdk5/log?method=noProductType"

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 3142
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 3152
    :catch_2
    move-exception v3

    .line 3153
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3154
    new-instance v11, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v11}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "https://www.supersonicads.com/mobile/sdk5/log?method=encodeAppUserId"

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 3157
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_5
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 3166
    :catch_3
    move-exception v3

    .line 3167
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3168
    new-instance v11, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v11}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "https://www.supersonicads.com/mobile/sdk5/log?method=encodeAppKey"

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3

    .line 3171
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_6
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 3192
    :cond_7
    const/4 v11, 0x2

    new-array v9, v11, [Ljava/lang/Object;

    .line 3193
    .local v9, "result":[Ljava/lang/Object;
    const/4 v12, 0x0

    instance-of v11, v7, Lorg/json/JSONObject;

    if-nez v11, :cond_8

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v7    # "jsObj":Lorg/json/JSONObject;
    :goto_5
    aput-object v11, v9, v12

    .line 3194
    const/4 v11, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    .line 3196
    return-object v9

    .line 3193
    .restart local v7    # "jsObj":Lorg/json/JSONObject;
    :cond_8
    check-cast v7, Lorg/json/JSONObject;

    .end local v7    # "jsObj":Lorg/json/JSONObject;
    invoke-static {v7}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    goto :goto_5
.end method

.method private getAppsStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 17
    .param p1, "appIds"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 3201
    const/4 v6, 0x0

    .line 3203
    .local v6, "fail":Z
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 3206
    .local v14, "result":Lorg/json/JSONObject;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 3207
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "null"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 3208
    invoke-virtual/range {p0 .. p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 3209
    .local v4, "ctx":Landroid/content/Context;
    invoke-static {v4}, Lcom/supersonic/environment/DeviceStatus;->getInstalledApplications(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    .line 3212
    .local v13, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v15, Lorg/json/JSONArray;

    invoke-static/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3214
    .local v2, "appIdsArray":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3216
    .local v3, "bundleIds":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v9, v15, :cond_3

    .line 3217
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3219
    .local v1, "appId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 3220
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 3221
    .local v11, "isInstalled":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 3223
    .local v8, "found":Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ApplicationInfo;

    .line 3224
    .local v12, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v15, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 3225
    sget-object v15, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_INSTALLED:Ljava/lang/String;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3226
    invoke-virtual {v3, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3227
    const/4 v8, 0x1

    .line 3231
    .end local v12    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    if-nez v8, :cond_2

    .line 3232
    sget-object v15, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_INSTALLED:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3233
    invoke-virtual {v3, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3216
    .end local v8    # "found":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "isInstalled":Lorg/json/JSONObject;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3238
    .end local v1    # "appId":Ljava/lang/String;
    :cond_3
    sget-object v15, Lcom/supersonicads/sdk/controller/SupersonicWebView;->RESULT:Ljava/lang/String;

    invoke-virtual {v14, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3239
    sget-object v15, Lcom/supersonicads/sdk/controller/SupersonicWebView;->REQUEST_ID:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3253
    .end local v2    # "appIdsArray":Lorg/json/JSONArray;
    .end local v3    # "bundleIds":Lorg/json/JSONObject;
    .end local v4    # "ctx":Landroid/content/Context;
    .end local v9    # "i":I
    .end local v13    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_1
    const/4 v15, 0x2

    new-array v7, v15, [Ljava/lang/Object;

    .line 3254
    .local v7, "finalResult":[Ljava/lang/Object;
    const/16 v16, 0x0

    instance-of v15, v14, Lorg/json/JSONObject;

    if-nez v15, :cond_6

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    .end local v14    # "result":Lorg/json/JSONObject;
    :goto_2
    aput-object v15, v7, v16

    .line 3255
    const/4 v15, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v7, v15

    .line 3257
    return-object v7

    .line 3242
    .end local v7    # "finalResult":[Ljava/lang/Object;
    .restart local v14    # "result":Lorg/json/JSONObject;
    :cond_4
    const/4 v6, 0x1

    .line 3243
    :try_start_1
    const-string v15, "error"

    const-string v16, "requestId is null or empty"

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 3249
    :catch_0
    move-exception v5

    .line 3250
    .local v5, "e":Ljava/lang/Exception;
    const/4 v6, 0x1

    goto :goto_1

    .line 3246
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v6, 0x1

    .line 3247
    const-string v15, "error"

    const-string v16, "appIds is null or empty"

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3254
    .restart local v7    # "finalResult":[Ljava/lang/Object;
    :cond_6
    check-cast v14, Lorg/json/JSONObject;

    .end local v14    # "result":Lorg/json/JSONObject;
    invoke-static {v14}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    goto :goto_2
.end method

.method private getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;
    .locals 38
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2929
    const/16 v18, 0x0

    .line 2931
    .local v18, "fail":Z
    invoke-static/range {p1 .. p1}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/DeviceProperties;

    move-result-object v13

    .line 2933
    .local v13, "deviceProperties":Lcom/supersonicads/sdk/utils/DeviceProperties;
    new-instance v24, Lorg/json/JSONObject;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONObject;-><init>()V

    .line 2938
    .local v24, "jsObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v32, "appOrientation"

    invoke-virtual/range {p0 .. p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/supersonic/environment/DeviceStatus;->getActivityRequestedOrientation(Landroid/content/Context;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Lcom/supersonicads/sdk/utils/SDKUtils;->translateRequestedOrientation(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2941
    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceOem()Ljava/lang/String;

    move-result-object v12

    .line 2942
    .local v12, "deviceOem":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 2943
    const-string v32, "deviceOEM"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static {v12}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2947
    :cond_0
    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceModel()Ljava/lang/String;

    move-result-object v9

    .line 2948
    .local v9, "deviceModel":Ljava/lang/String;
    if-eqz v9, :cond_a

    .line 2949
    const-string v32, "deviceModel"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static {v9}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2955
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/supersonicads/sdk/utils/SDKUtils;->loadGoogleAdvertiserInfo(Landroid/content/Context;)V

    .line 2956
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getAdvertiserId()Ljava/lang/String;

    move-result-object v4

    .line 2957
    .local v4, "advertiserId":Ljava/lang/String;
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->isLimitAdTrackingEnabled()Z

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 2959
    .local v22, "isLAT":Ljava/lang/Boolean;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_1

    .line 2961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "add AID and LAT"

    invoke-static/range {v32 .. v33}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    const-string v32, "isLimitAdTrackingEnabled"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2967
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "deviceIds"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "AID"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2973
    .local v5, "aid":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static {v4}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2977
    .end local v5    # "aid":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v10

    .line 2978
    .local v10, "deviceOSType":Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 2979
    const-string v32, "deviceOs"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static {v10}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2985
    :goto_1
    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceOsVersion()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 2986
    .local v11, "deviceOSVersion":Ljava/lang/String;
    if-eqz v11, :cond_c

    .line 2987
    const-string v32, "deviceOSVersion"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2993
    :goto_2
    invoke-static {}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v30

    .line 2994
    .local v30, "ssaSDKVersion":Ljava/lang/String;
    if-eqz v30, :cond_2

    .line 2995
    const-string v32, "SDKVersion"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v30}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2999
    :cond_2
    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_3

    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_3

    .line 3000
    const-string v32, "mobileCarrier"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3004
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/supersonic/environment/ConnectivityService;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 3005
    .local v6, "connectionType":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_d

    .line 3006
    const-string v32, "connectionType"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static {v6}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3012
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 3013
    .local v8, "deviceLanguage":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_4

    .line 3014
    const-string v32, "deviceLanguage"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3018
    :cond_4
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v32

    if-eqz v32, :cond_e

    .line 3019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/supersonic/environment/DeviceStatus;->getAvailableMemorySizeInMegaBytes(Ljava/lang/String;)J

    move-result-wide v20

    .line 3020
    .local v20, "freeDiskSize":J
    const-string v32, "diskFreeSize"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3028
    .end local v20    # "freeDiskSize":J
    :goto_4
    invoke-static {}, Lcom/supersonic/environment/DeviceStatus;->getDeviceWidth()I

    move-result v16

    .line 3029
    .local v16, "deviceWidth":I
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    .line 3030
    .local v31, "width":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_f

    .line 3032
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 3033
    .local v25, "key":Ljava/lang/StringBuilder;
    const-string v32, "deviceScreenSize"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "width"

    invoke-static/range {v33 .. v33}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3038
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v31}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3045
    .end local v25    # "key":Ljava/lang/StringBuilder;
    :goto_5
    invoke-static {}, Lcom/supersonic/environment/DeviceStatus;->getDeviceHeight()I

    move-result v7

    .line 3046
    .local v7, "deviceHeigh":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 3048
    .local v19, "height":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 3049
    .restart local v25    # "key":Ljava/lang/StringBuilder;
    const-string v32, "deviceScreenSize"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "height"

    invoke-static/range {v33 .. v33}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3054
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v19 .. v19}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3057
    invoke-virtual/range {p0 .. p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/supersonic/environment/ApplicationContext;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    .line 3058
    .local v26, "packageName":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_5

    .line 3059
    const-string v32, "bundleId"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v26 .. v26}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3062
    :cond_5
    invoke-static {}, Lcom/supersonic/environment/DeviceStatus;->getDeviceDensity()F

    move-result v14

    .line 3063
    .local v14, "deviceScale":F
    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v29

    .line 3064
    .local v29, "scaleStr":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_6

    .line 3065
    const-string v32, "deviceScreenScale"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3068
    :cond_6
    invoke-static {}, Lcom/supersonic/environment/DeviceStatus;->isRootedDevice()Z

    move-result v23

    .line 3069
    .local v23, "isRoot":Z
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v28

    .line 3070
    .local v28, "rootStr":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_7

    .line 3071
    const-string v32, "unLocked"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v28 .. v28}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3074
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/DeviceProperties;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceVolume(Landroid/content/Context;)F

    move-result v15

    .line 3075
    .local v15, "deviceVolume":F
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_8

    .line 3076
    const-string v32, "deviceVolume"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    float-to-double v0, v15

    move-wide/from16 v34, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 3079
    :cond_8
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x13

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v32, v0

    if-eqz v32, :cond_9

    .line 3080
    const-string v32, "immersiveMode"

    invoke-static/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v32

    check-cast v32, Landroid/app/Activity;

    invoke-static/range {v32 .. v32}, Lcom/supersonic/environment/DeviceStatus;->isImmersiveSupported(Landroid/app/Activity;)Z

    move-result v32

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3089
    .end local v4    # "advertiserId":Ljava/lang/String;
    .end local v6    # "connectionType":Ljava/lang/String;
    .end local v7    # "deviceHeigh":I
    .end local v8    # "deviceLanguage":Ljava/lang/String;
    .end local v9    # "deviceModel":Ljava/lang/String;
    .end local v10    # "deviceOSType":Ljava/lang/String;
    .end local v11    # "deviceOSVersion":Ljava/lang/String;
    .end local v12    # "deviceOem":Ljava/lang/String;
    .end local v14    # "deviceScale":F
    .end local v15    # "deviceVolume":F
    .end local v16    # "deviceWidth":I
    .end local v19    # "height":Ljava/lang/String;
    .end local v22    # "isLAT":Ljava/lang/Boolean;
    .end local v23    # "isRoot":Z
    .end local v25    # "key":Ljava/lang/StringBuilder;
    .end local v26    # "packageName":Ljava/lang/String;
    .end local v28    # "rootStr":Ljava/lang/String;
    .end local v29    # "scaleStr":Ljava/lang/String;
    .end local v30    # "ssaSDKVersion":Ljava/lang/String;
    .end local v31    # "width":Ljava/lang/String;
    :cond_9
    :goto_6
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    .line 3090
    .local v27, "result":[Ljava/lang/Object;
    const/16 v33, 0x0

    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/json/JSONObject;

    move/from16 v32, v0

    if-nez v32, :cond_10

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v32

    .end local v24    # "jsObj":Lorg/json/JSONObject;
    :goto_7
    aput-object v32, v27, v33

    .line 3091
    const/16 v32, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    aput-object v33, v27, v32

    .line 3093
    return-object v27

    .line 2951
    .end local v27    # "result":[Ljava/lang/Object;
    .restart local v9    # "deviceModel":Ljava/lang/String;
    .restart local v12    # "deviceOem":Ljava/lang/String;
    .restart local v24    # "jsObj":Lorg/json/JSONObject;
    :cond_a
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 2981
    .restart local v4    # "advertiserId":Ljava/lang/String;
    .restart local v10    # "deviceOSType":Ljava/lang/String;
    .restart local v22    # "isLAT":Ljava/lang/Boolean;
    :cond_b
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2989
    .restart local v11    # "deviceOSVersion":Ljava/lang/String;
    :cond_c
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 3008
    .restart local v6    # "connectionType":Ljava/lang/String;
    .restart local v30    # "ssaSDKVersion":Ljava/lang/String;
    :cond_d
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 3024
    .restart local v8    # "deviceLanguage":Ljava/lang/String;
    :cond_e
    const/16 v18, 0x1

    goto/16 :goto_4

    .line 3041
    .restart local v16    # "deviceWidth":I
    .restart local v31    # "width":Ljava/lang/String;
    :cond_f
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 3084
    .end local v4    # "advertiserId":Ljava/lang/String;
    .end local v6    # "connectionType":Ljava/lang/String;
    .end local v8    # "deviceLanguage":Ljava/lang/String;
    .end local v9    # "deviceModel":Ljava/lang/String;
    .end local v10    # "deviceOSType":Ljava/lang/String;
    .end local v11    # "deviceOSVersion":Ljava/lang/String;
    .end local v12    # "deviceOem":Ljava/lang/String;
    .end local v16    # "deviceWidth":I
    .end local v22    # "isLAT":Ljava/lang/Boolean;
    .end local v30    # "ssaSDKVersion":Ljava/lang/String;
    .end local v31    # "width":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 3085
    .local v17, "e":Lorg/json/JSONException;
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->printStackTrace()V

    .line 3086
    new-instance v32, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct/range {v32 .. v32}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v36

    const/16 v37, 0x0

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-virtual/range {v32 .. v33}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_6

    .line 3090
    .end local v17    # "e":Lorg/json/JSONException;
    .restart local v27    # "result":[Ljava/lang/Object;
    :cond_10
    check-cast v24, Lorg/json/JSONObject;

    .end local v24    # "jsObj":Lorg/json/JSONObject;
    invoke-static/range {v24 .. v24}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v32

    goto :goto_7
.end method

.method private getRequestParameters()Ljava/lang/String;
    .locals 12

    .prologue
    .line 2745
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/DeviceProperties;

    move-result-object v6

    .line 2747
    .local v6, "properties":Lcom/supersonicads/sdk/utils/DeviceProperties;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2749
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v8

    .line 2750
    .local v8, "sdkVer":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2751
    const-string v10, "SDKVersion"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    :cond_0
    invoke-virtual {v6}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v4

    .line 2758
    .local v4, "osType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2759
    const-string v10, "deviceOs"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2764
    :cond_1
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v9

    .line 2765
    .local v9, "serverControllerUrl":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2767
    .local v2, "downloadUri":Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 2768
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2769
    .local v7, "scheme":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 2770
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->getPort()I

    move-result v5

    .line 2771
    .local v5, "port":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_2

    .line 2772
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2775
    :cond_2
    const-string v10, "&"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "protocol"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    const-string v10, "&"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "domain"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getControllerConfig()Ljava/lang/String;

    move-result-object v1

    .line 2786
    .local v1, "config":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2787
    const-string v10, "&"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "controllerConfig"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2793
    :cond_3
    const-string v10, "&"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "debug"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2799
    .end local v1    # "config":Ljava/lang/String;
    .end local v3    # "host":Ljava/lang/String;
    .end local v5    # "port":I
    .end local v7    # "scheme":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    .line 304
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 309
    .local v0, "coverScreenParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    .line 313
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 314
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 315
    .local v1, "fp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 319
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 320
    .local v3, "mContentView":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 321
    .local v2, "lpChild2":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 324
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 326
    return-void
.end method

.method private initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 2317
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2318
    :cond_0
    const-string v0, "User id or Application key are missing"

    invoke-direct {p0, v0, p3, p5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2348
    :cond_1
    :goto_0
    return-void

    .line 2322
    :cond_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_3

    .line 2325
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setApplicationKey(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 2326
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setUserID(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 2327
    invoke-direct {p0, p3, p5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->createInitProductJSMethod(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_0

    .line 2331
    :cond_3
    invoke-direct {p0, p3, p5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setMissProduct(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2333
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_4

    .line 2336
    const-string v0, "Initiating Controller"

    invoke-static {p4, v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_0

    .line 2343
    :cond_4
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimeFinish:Z

    if-eqz v0, :cond_1

    .line 2344
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadController()V

    goto :goto_0
.end method

.method private injectJavascript(Ljava/lang/String;)V
    .locals 5
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 2666
    const-string v0, "empty"

    .line 2667
    .local v0, "catchClosure":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v3

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->MODE_0:Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v4}, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2669
    const-string v0, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    .line 2682
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2683
    .local v1, "scriptBuilder":Ljava/lang/StringBuilder;
    const-string v3, "try{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}catch(e){"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2692
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;

    invoke-direct {v3, p0, v2, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2730
    return-void

    .line 2671
    .end local v1    # "scriptBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v3

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->MODE_1:Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v4}, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v3

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->MODE_3:Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v4}, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 2674
    const-string v0, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    goto :goto_0
.end method

.method private parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/String;
    .param p3, "key2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/String;
    .param p5, "key3"    # Ljava/lang/String;
    .param p6, "value3"    # Ljava/lang/String;
    .param p7, "key4"    # Ljava/lang/String;
    .param p8, "value4"    # Ljava/lang/String;
    .param p9, "key5"    # Ljava/lang/String;
    .param p10, "value5"    # Z

    .prologue
    .line 2876
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2880
    .local v3, "jsObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2881
    invoke-static {p2}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2884
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2885
    invoke-static {p4}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2888
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2889
    invoke-static/range {p6 .. p6}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2892
    :cond_2
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2893
    invoke-static/range {p8 .. p8}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2896
    :cond_3
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2897
    move-object/from16 v0, p9

    move/from16 v1, p10

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2905
    :cond_4
    :goto_0
    instance-of v4, v3, Lorg/json/JSONObject;

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v3    # "jsObj":Lorg/json/JSONObject;
    :goto_1
    return-object v4

    .line 2900
    .restart local v3    # "jsObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 2901
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2902
    new-instance v4, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v4}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2905
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_5
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "jsObj":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Z
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 2816
    new-instance v4, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v4, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2817
    .local v4, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    sget-object v6, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2818
    .local v5, "success":Ljava/lang/String;
    sget-object v6, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2820
    .local v0, "fail":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2823
    .local v1, "funToCall":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 2824
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2825
    move-object v1, v5

    .line 2834
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2836
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2838
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2839
    .local v2, "jsObj":Lorg/json/JSONObject;
    const-string v6, "errMsg"

    invoke-virtual {v2, v6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    instance-of v7, v6, Lorg/json/JSONObject;

    if-nez v7, :cond_5

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 2844
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2846
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2847
    .restart local v2    # "jsObj":Lorg/json/JSONObject;
    const-string v6, "errCode"

    invoke-virtual {v2, v6, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    instance-of v7, v6, Lorg/json/JSONObject;

    if-nez v7, :cond_6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    .line 2852
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2853
    .local v3, "script":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2855
    .end local v3    # "script":Ljava/lang/String;
    :cond_3
    return-void

    .line 2828
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2829
    move-object v1, v0

    goto :goto_0

    .line 2839
    .restart local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_5
    :try_start_2
    check-cast v6, Lorg/json/JSONObject;

    invoke-static {v6}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p1

    goto :goto_1

    .line 2847
    :cond_6
    :try_start_3
    check-cast v6, Lorg/json/JSONObject;

    invoke-static {v6}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object p1

    goto :goto_2

    .line 2848
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 2840
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;
    .param p2, "demnadSourceName"    # Ljava/lang/String;

    .prologue
    .line 3519
    const-string v0, ""

    .line 3521
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$8;->$SwitchMap$com$supersonicads$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3545
    :goto_0
    const-string v1, "Initiating Controller"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 3548
    return-void

    .line 3524
    :pswitch_0
    const-string v0, "Init RV"

    .line 3525
    goto :goto_0

    .line 3529
    :pswitch_1
    const-string v0, "Init IS"

    .line 3530
    goto :goto_0

    .line 3534
    :pswitch_2
    const-string v0, "Init OW"

    .line 3535
    goto :goto_0

    .line 3539
    :pswitch_3
    const-string v0, "Show OW Credits"

    goto :goto_0

    .line 3521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDisplayZoomControls(Landroid/webkit/WebSettings;)V
    .locals 2
    .param p1, "s"    # Landroid/webkit/WebSettings;

    .prologue
    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 367
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 369
    :cond_0
    return-void
.end method

.method public static setEXTERNAL_URL(Ljava/lang/String;)V
    .locals 0
    .param p0, "EXTERNAL_URL"    # Ljava/lang/String;

    .prologue
    .line 2193
    sput-object p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->EXTERNAL_URL:Ljava/lang/String;

    .line 2194
    return-void
.end method

.method private setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    .locals 2
    .param p1, "s"    # Landroid/webkit/WebSettings;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 378
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 379
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 381
    :cond_0
    return-void
.end method

.method private setMissProduct(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2551
    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v1, :cond_1

    .line 2552
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getDemandSourceByName(Ljava/lang/String;)Lcom/supersonicads/sdk/data/DemandSource;

    move-result-object v0

    .line 2553
    .local v0, "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    if-eqz v0, :cond_0

    .line 2554
    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 2563
    .end local v0    # "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMissProduct("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    return-void

    .line 2556
    :cond_1
    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v1, :cond_2

    .line 2557
    iput-boolean v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISmiss:Z

    goto :goto_0

    .line 2558
    :cond_2
    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v1, :cond_3

    .line 2559
    iput-boolean v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWmiss:Z

    goto :goto_0

    .line 2560
    :cond_3
    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v1, :cond_0

    .line 2561
    iput-boolean v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsMiss:Z

    goto :goto_0
.end method

.method private setWebViewSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 329
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 331
    .local v1, "s":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 332
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 333
    invoke-virtual {p0, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setVerticalScrollBarEnabled(Z)V

    .line 334
    invoke-virtual {p0, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 340
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 342
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 344
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 345
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 348
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 349
    const-string v2, "/data/data/org.itri.html5webview/databases/"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 356
    :try_start_0
    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setDisplayZoomControls(Landroid/webkit/WebSettings;)V

    .line 357
    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWebSettings - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v2, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=setWebViewSettings"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setWebviewBackground(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2209
    new-instance v2, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2210
    .local v2, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v3, "color"

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2212
    .local v1, "keyColor":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2214
    .local v0, "bgColor":I
    const-string v3, "transparent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2215
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 2218
    :cond_0
    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setBackgroundColor(I)V

    .line 2219
    return-void
.end method

.method private setWebviewCache(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3481
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3483
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 3488
    :goto_0
    return-void

    .line 3486
    :cond_0
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0
.end method

.method private shouldNotifyDeveloper(Ljava/lang/String;)Z
    .locals 4
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 452
    const/4 v0, 0x0

    .line 455
    .local v0, "shouldNotify":Z
    if-nez p1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v3, "Trying to trigger a listener - no product was found"

    invoke-static {v1, v3}, Lcom/supersonicads/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_0
    return v2

    .line 460
    :cond_0
    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 461
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    if-eqz v3, :cond_3

    move v0, v1

    .line 468
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 469
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to trigger a listener - no listener was found for product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v2, v0

    .line 471
    goto :goto_0

    :cond_3
    move v0, v2

    .line 461
    goto :goto_1

    .line 462
    :cond_4
    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 463
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;

    if-eqz v3, :cond_5

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 464
    :cond_6
    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    :cond_7
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    if-eqz v3, :cond_8

    move v0, v1

    :goto_3
    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method private toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3319
    new-instance v1, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v1, p2}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3320
    .local v1, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3322
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3323
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$6;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3331
    :cond_0
    return-void
.end method

.method private triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;
    .param p3, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 2569
    invoke-virtual {p2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2570
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2597
    :cond_0
    return-void
.end method


# virtual methods
.method public assetCached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2611
    const-string v1, "file"

    const-string v3, "path"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 2612
    .local v11, "params":Ljava/lang/String;
    const-string v0, "assetCached"

    invoke-direct {p0, v0, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2613
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2614
    return-void
.end method

.method public assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 2617
    const-string v1, "file"

    const-string v3, "path"

    const-string v5, "errMsg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 2618
    .local v11, "params":Ljava/lang/String;
    const-string v0, "assetCachedFailed"

    invoke-direct {p0, v0, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2619
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2620
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3552
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 3554
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    if-eqz v0, :cond_0

    .line 3555
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->release()V

    .line 3557
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 3558
    iput-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 3560
    :cond_1
    iput-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mUiHandler:Landroid/os/Handler;

    .line 3561
    iput-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCurrentActivityContext:Landroid/content/Context;

    .line 3562
    return-void
.end method

.method public deviceStatusChanged(Ljava/lang/String;)V
    .locals 13
    .param p1, "networkType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3367
    const-string v1, "connectionType"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 3368
    .local v11, "params":Ljava/lang/String;
    const-string v0, "deviceStatusChanged"

    invoke-direct {p0, v0, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3369
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3370
    return-void
.end method

.method public downloadController()V
    .locals 9

    .prologue
    .line 393
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "mobileController.html"

    invoke-static {v0, v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 394
    const-string v6, ""

    .line 396
    .local v6, "controllerPath":Ljava/lang/String;
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v7

    .line 397
    .local v7, "controllerUrl":Ljava/lang/String;
    new-instance v8, Lcom/supersonicads/sdk/data/SSAFile;

    invoke-direct {v8, v7, v6}, Lcom/supersonicads/sdk/data/SSAFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .local v8, "indexHtml":Lcom/supersonicads/sdk/data/SSAFile;
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$1;

    const-wide/32 v2, 0x9c40

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView$1;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;JJ)V

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    .line 417
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->isMobileControllerThreadLive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Mobile Controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-virtual {v0, v8}, Lcom/supersonicads/sdk/precache/DownloadManager;->downloadMobileControllerFile(Lcom/supersonicads/sdk/data/SSAFile;)V

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v1, "Download Mobile Controller: already alive"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public engageEnd(Ljava/lang/String;)V
    .locals 13
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3373
    const-string v0, "forceClose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3374
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->closeWebView()V

    .line 3377
    :cond_0
    const-string v1, "action"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 3378
    .local v11, "params":Ljava/lang/String;
    const-string v0, "engageEnd"

    invoke-direct {p0, v0, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3379
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3380
    return-void
.end method

.method public enterBackground()V
    .locals 3

    .prologue
    .line 2624
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v1, v2, :cond_0

    .line 2625
    const-string v1, "enterBackground"

    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2626
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2628
    .end local v0    # "script":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public enterForeground()V
    .locals 3

    .prologue
    .line 2632
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v1, v2, :cond_0

    .line 2633
    const-string v1, "enterForeground"

    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2634
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2636
    .end local v0    # "script":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getControllerKeyPressed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 3343
    .local v0, "keyPressed":Ljava/lang/String;
    const-string v1, "interrupt"

    invoke-virtual {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setControllerKeyPressed(Ljava/lang/String;)V

    .line 3345
    return-object v0
.end method

.method public getCurrentActivityContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 2739
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCurrentActivityContext:Landroid/content/Context;

    check-cast v0, Landroid/content/MutableContextWrapper;

    .line 2740
    .local v0, "mctx":Landroid/content/MutableContextWrapper;
    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method public getDebugMode()I
    .locals 1

    .prologue
    .line 446
    sget v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mDebugMode:I

    return v0
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 3452
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V
    .locals 6
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    .prologue
    .line 2466
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsAppKey:Ljava/lang/String;

    .line 2467
    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsUserId:Ljava/lang/String;

    .line 2469
    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    .line 2471
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsUserId:Ljava/lang/String;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v4, "Show OW Credits"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    return-void
.end method

.method public getOrientationState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOrientationState:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedState()Lcom/supersonicads/sdk/data/AdUnitsState;
    .locals 1

    .prologue
    .line 3598
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    return-object v0
.end method

.method public getState()Lcom/supersonicads/sdk/controller/SupersonicWebView$State;
    .locals 1

    .prologue
    .line 3514
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mState:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    return-object v0
.end method

.method public handleSearchKeysURLs(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3491
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSearchKeys()Ljava/util/List;

    move-result-object v3

    .line 3493
    .local v3, "searchKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3495
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3496
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3497
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/supersonic/environment/UrlHandler;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3498
    const/4 v4, 0x1

    .line 3506
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    return v4

    .line 3502
    :catch_0
    move-exception v0

    .line 3503
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3506
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public hideCustomView()V
    .locals 1

    .prologue
    .line 3460
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mWebChromeClient:Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->onHideCustomView()V

    .line 3461
    return-void
.end method

.method public inCustomView()Z
    .locals 1

    .prologue
    .line 3456
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V
    .locals 6
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/supersonicads/sdk/listeners/OnInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnInterstitialListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2377
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    .line 2378
    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    .line 2379
    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISExtraParameters:Ljava/util/Map;

    .line 2380
    iput-object p4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    .line 2383
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setInterstitialAppKey(Ljava/lang/String;)V

    .line 2384
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setInterstitialUserId(Ljava/lang/String;)V

    .line 2385
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISExtraParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setInterstitialExtraParams(Ljava/util/Map;)V

    .line 2387
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setReportInitInterstitial(Z)V

    .line 2389
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v4, "Init IS"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    return-void
.end method

.method public initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V
    .locals 6
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2442
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;

    .line 2443
    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;

    .line 2444
    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWExtraParameters:Ljava/util/Map;

    .line 2445
    iput-object p4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    .line 2447
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWExtraParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setOfferWallExtraParams(Ljava/util/Map;)V

    .line 2449
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setOfferwallReportInit(Z)V

    .line 2451
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v4, "Init OW"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;)V
    .locals 6
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "demandSourceName"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;

    .prologue
    .line 2355
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVAppKey:Ljava/lang/String;

    .line 2356
    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVUserId:Ljava/lang/String;

    .line 2357
    iput-object p4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;

    .line 2358
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    invoke-virtual {v0, p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setRVAppKey(Ljava/lang/String;)V

    .line 2359
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    invoke-virtual {v0, p2}, Lcom/supersonicads/sdk/data/AdUnitsState;->setRVUserId(Ljava/lang/String;)V

    .line 2361
    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v4, "Init RV"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    return-void
.end method

.method public interceptedUrlToStore()V
    .locals 2

    .prologue
    .line 2659
    const-string v1, "interceptedUrlToStore"

    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2660
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2661
    return-void
.end method

.method public isInterstitialAdAvailable()Z
    .locals 1

    .prologue
    .line 2420
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public load(I)V
    .locals 13
    .param p1, "loadAttemp"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2227
    :try_start_0
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2234
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2236
    .local v7, "controllerPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2237
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2240
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getRequestParameters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRequestParameters:Ljava/lang/String;

    .line 2243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRequestParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2246
    .local v8, "controllerPathWithParams":Ljava/lang/String;
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;JJI)V

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    .line 2295
    :try_start_1
    invoke-virtual {p0, v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2302
    :goto_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    .end local v8    # "controllerPathWithParams":Ljava/lang/String;
    :goto_2
    return-void

    .line 2228
    .end local v7    # "controllerPath":Ljava/lang/String;
    .end local v10    # "file":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 2229
    .local v9, "e":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewController:: load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadBlank"

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 2296
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v7    # "controllerPath":Ljava/lang/String;
    .restart local v8    # "controllerPathWithParams":Ljava/lang/String;
    .restart local v10    # "file":Ljava/io/File;
    :catch_1
    move-exception v9

    .line 2297
    .restart local v9    # "e":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewController:: load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadWithPath"

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 2305
    .end local v8    # "controllerPathWithParams":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v1, "load(): Mobile Controller HTML Does not exist"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=htmlControllerDoesNotExistOnFileSystem"

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public loadInterstitial()V
    .locals 4

    .prologue
    .line 2397
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isInterstitialAdAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2399
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/data/AdUnitsState;->setReportLoadInterstitial(Z)V

    .line 2401
    const-string v1, "loadInterstitial"

    const-string v2, "onLoadInterstitialSuccess"

    const-string v3, "onLoadInterstitialFail"

    invoke-direct {p0, v1, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2402
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2416
    .end local v0    # "script":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2406
    :cond_1
    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2408
    new-instance v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;

    invoke-direct {v1, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V

    invoke-virtual {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public nativeNavigationPressed(Ljava/lang/String;)V
    .locals 13
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2648
    const-string v1, "action"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 2649
    .local v11, "params":Ljava/lang/String;
    const-string v0, "nativeNavigationPressed"

    invoke-direct {p0, v0, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2650
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2651
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3315
    return-void
.end method

.method public onFileDownloadFail(Lcom/supersonicads/sdk/data/SSAFile;)V
    .locals 6
    .param p1, "file"    # Lcom/supersonicads/sdk/data/SSAFile;

    .prologue
    const/4 v5, 0x0

    .line 3279
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobileController.html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3281
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 3285
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getDemandSources()Ljava/util/Collection;

    move-result-object v1

    .line 3286
    .local v1, "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/supersonicads/sdk/data/DemandSource;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonicads/sdk/data/DemandSource;

    .line 3287
    .local v0, "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3288
    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_0

    .line 3292
    .end local v0    # "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    :cond_1
    iget-boolean v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISmiss:Z

    if-eqz v3, :cond_2

    .line 3293
    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v3, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 3296
    :cond_2
    iget-boolean v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWmiss:Z

    if-eqz v3, :cond_3

    .line 3297
    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v3, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 3300
    :cond_3
    iget-boolean v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsMiss:Z

    if-eqz v3, :cond_4

    .line 3301
    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v3, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 3307
    .end local v1    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/supersonicads/sdk/data/DemandSource;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    return-void

    .line 3305
    :cond_5
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getErrMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onFileDownloadSuccess(Lcom/supersonicads/sdk/data/SSAFile;)V
    .locals 2
    .param p1, "file"    # Lcom/supersonicads/sdk/data/SSAFile;

    .prologue
    .line 3267
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3269
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->load(I)V

    .line 3273
    :goto_0
    return-void

    .line 3271
    :cond_0
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->assetCached(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3689
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 3690
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;

    invoke-interface {v0}, Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;->onBackButtonPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3691
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3697
    :goto_0
    return v0

    .line 3693
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3697
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public pageFinished()V
    .locals 2

    .prologue
    .line 2654
    const-string v1, "pageFinished"

    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2655
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2656
    return-void
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 3420
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 3422
    :try_start_0
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3430
    :cond_0
    :goto_0
    return-void

    .line 3423
    :catch_0
    move-exception v0

    .line 3424
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: pause() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    new-instance v1, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewPause"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public registerConnectionReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3401
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3403
    return-void
.end method

.method public removeVideoEventsListener()V
    .locals 1

    .prologue
    .line 2203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;

    .line 2204
    return-void
.end method

.method public restoreState(Lcom/supersonicads/sdk/data/AdUnitsState;)V
    .locals 13
    .param p1, "state"    # Lcom/supersonicads/sdk/data/AdUnitsState;

    .prologue
    const/4 v12, -0x1

    .line 3603
    iget-object v9, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedStateLocker:Ljava/lang/Object;

    monitor-enter v9

    .line 3605
    :try_start_0
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->shouldRestore()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v10, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    invoke-virtual {v8, v10}, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3607
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreState(state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getDisplayedProduct()I

    move-result v6

    .line 3611
    .local v6, "lastAd":I
    if-eq v6, v12, :cond_6

    .line 3615
    sget-object v8, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v8}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v8

    if-ne v6, v8, :cond_4

    .line 3616
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v10, "onRVAdClosed()"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getDisplayedDemandSourceName()Ljava/lang/String;

    move-result-object v2

    .line 3619
    .local v2, "demandSourceName":Ljava/lang/String;
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;

    if-eqz v8, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3620
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;

    invoke-interface {v8, v2}, Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;->onRVAdClosed(Ljava/lang/String;)V

    .line 3637
    .end local v2    # "demandSourceName":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v8, -0x1

    invoke-virtual {p1, v8}, Lcom/supersonicads/sdk/data/AdUnitsState;->adOpened(I)V

    .line 3638
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/supersonicads/sdk/data/AdUnitsState;->setDisplayedDemandSourceName(Ljava/lang/String;)V

    .line 3645
    :goto_1
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->isInterstitialInitSuccess()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3647
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v10, "onInterstitialAvailability(false)"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    if-eqz v8, :cond_1

    .line 3653
    :cond_1
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getInterstitialAppKey()Ljava/lang/String;

    move-result-object v0

    .line 3654
    .local v0, "appKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getInterstitialUserId()Ljava/lang/String;

    move-result-object v7

    .line 3655
    .local v7, "userId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getInterstitialExtraParams()Ljava/util/Map;

    move-result-object v4

    .line 3657
    .local v4, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initInterstitial(appKey:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", userId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", extraParam:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    invoke-virtual {p0, v0, v7, v4, v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V

    .line 3664
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v4    # "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "userId":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getRVAppKey()Ljava/lang/String;

    move-result-object v0

    .line 3665
    .restart local v0    # "appKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getRVUserId()Ljava/lang/String;

    move-result-object v7

    .line 3667
    .restart local v7    # "userId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-static {v8}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getDemandSources()Ljava/util/Collection;

    move-result-object v3

    .line 3668
    .local v3, "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/supersonicads/sdk/data/DemandSource;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonicads/sdk/data/DemandSource;

    .line 3669
    .local v1, "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    .line 3670
    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v2

    .line 3671
    .restart local v2    # "demandSourceName":Ljava/lang/String;
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v10, "onRVNoMoreOffers()"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;

    invoke-interface {v8, v2}, Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;->onRVNoMoreOffers(Ljava/lang/String;)V

    .line 3673
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;

    invoke-virtual {p0, v0, v7, v2, v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;)V

    goto :goto_2

    .line 3682
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    .end local v2    # "demandSourceName":Ljava/lang/String;
    .end local v3    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/supersonicads/sdk/data/DemandSource;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "lastAd":I
    .end local v7    # "userId":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3624
    .restart local v6    # "lastAd":I
    :cond_4
    :try_start_1
    sget-object v8, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v8}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v8

    if-ne v6, v8, :cond_5

    .line 3625
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v10, "onInterstitialAdClosed()"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    if-eqz v8, :cond_0

    .line 3627
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    invoke-interface {v8}, Lcom/supersonicads/sdk/listeners/OnInterstitialListener;->onInterstitialClose()V

    goto/16 :goto_0

    .line 3630
    :cond_5
    sget-object v8, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v8}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v8

    if-ne v6, v8, :cond_0

    .line 3631
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v10, "onOWAdClosed()"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    if-eqz v8, :cond_0

    .line 3633
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    invoke-interface {v8}, Lcom/supersonicads/sdk/listeners/OnOfferWallListener;->onOWAdClosed()V

    goto/16 :goto_0

    .line 3640
    :cond_6
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v10, "No ad was opened"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3677
    .restart local v0    # "appKey":Ljava/lang/String;
    .restart local v3    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/supersonicads/sdk/data/DemandSource;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "userId":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/supersonicads/sdk/data/AdUnitsState;->setShouldRestore(Z)V

    .line 3680
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v3    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/supersonicads/sdk/data/DemandSource;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "lastAd":I
    .end local v7    # "userId":Ljava/lang/String;
    :cond_8
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    .line 3682
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3683
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 3434
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 3436
    :try_start_0
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3442
    :cond_0
    :goto_0
    return-void

    .line 3437
    :catch_0
    move-exception v0

    .line 3438
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: onResume() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3439
    new-instance v1, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewResume"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 3701
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3702
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public setControllerKeyPressed(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3334
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 3335
    return-void
.end method

.method public setDebugMode(I)V
    .locals 0
    .param p1, "debugMode"    # I

    .prologue
    .line 426
    sput p1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mDebugMode:I

    .line 427
    return-void
.end method

.method public setOnWebViewControllerChangeListener(Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;

    .prologue
    .line 3448
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;

    .line 3449
    return-void
.end method

.method public setOrientationState(Ljava/lang/String;)V
    .locals 0
    .param p1, "orientaiton"    # Ljava/lang/String;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOrientationState:Ljava/lang/String;

    .line 476
    return-void
.end method

.method public setState(Lcom/supersonicads/sdk/controller/SupersonicWebView$State;)V
    .locals 0
    .param p1, "state"    # Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    .prologue
    .line 3510
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mState:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    .line 3511
    return-void
.end method

.method public setVideoEventsListener(Lcom/supersonicads/sdk/controller/VideoEventsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/supersonicads/sdk/controller/VideoEventsListener;

    .prologue
    .line 2198
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;

    .line 2199
    return-void
.end method

.method public showInterstitial()V
    .locals 4

    .prologue
    .line 2425
    const-string v1, "showInterstitial"

    const-string v2, "onShowInterstitialSuccess"

    const-string v3, "onShowInterstitialFail"

    invoke-direct {p0, v1, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2426
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2427
    return-void
.end method

.method public showOfferWall(Ljava/util/Map;)V
    .locals 4
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
    .line 2456
    .local p1, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWExtraParameters:Ljava/util/Map;

    .line 2457
    const-string v1, "showOfferWall"

    const-string v2, "onShowOfferWallSuccess"

    const-string v3, "onShowOfferWallFail"

    invoke-direct {p0, v1, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2458
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2459
    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 6
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 2601
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2602
    .local v1, "rvParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2603
    const-string v3, "demandSourceName"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2605
    :cond_0
    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 2606
    .local v0, "params":Ljava/lang/String;
    const-string v3, "showRewardedVideo"

    const-string v4, "onShowRewardedVideoSuccess"

    const-string v5, "onShowRewardedVideoFail"

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2607
    .local v2, "script":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2608
    return-void
.end method

.method public unregisterConnectionReceiver(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 3407
    :try_start_0
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3416
    :goto_0
    return-void

    .line 3410
    :catch_0
    move-exception v0

    .line 3413
    .local v0, "e1":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterConnectionReceiver - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    new-instance v1, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3408
    .end local v0    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public viewableChange(ZLjava/lang/String;)V
    .locals 13
    .param p1, "visibility"    # Z
    .param p2, "webview"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2639
    const-string v1, "webview"

    const-string v9, "isViewable"

    move-object v0, p0

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 2643
    .local v11, "params":Ljava/lang/String;
    const-string v0, "viewableChange"

    invoke-direct {p0, v0, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2644
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2645
    return-void
.end method
