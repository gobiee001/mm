.class public Lcom/mopub/mraid/MraidController;
.super Ljava/lang/Object;
.source "MraidController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;,
        Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;,
        Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;,
        Lcom/mopub/mraid/MraidController$UseCustomCloseListener;,
        Lcom/mopub/mraid/MraidController$MraidListener;
    }
.end annotation


# instance fields
.field private final mAdReport:Lcom/mopub/common/AdReport;

.field private mAllowOrientationChange:Z

.field private final mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

.field private final mContext:Landroid/content/Context;

.field private mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

.field private final mDefaultAdContainer:Landroid/widget/FrameLayout;

.field private mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

.field private mIsPaused:Z

.field private final mMraidBridge:Lcom/mopub/mraid/MraidBridge;

.field private final mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field private mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

.field private final mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

.field private mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

.field private mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

.field private mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

.field private mOriginalActivityOrientation:Ljava/lang/Integer;

.field private final mPlacementType:Lcom/mopub/mraid/PlacementType;

.field private mRootView:Landroid/view/ViewGroup;

.field private final mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

.field private final mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

.field private final mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

.field private final mTwoPartBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field private mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

.field private mViewState:Lcom/mopub/mraid/ViewState;

.field private final mWeakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adReport"    # Lcom/mopub/common/AdReport;
    .param p3, "placementType"    # Lcom/mopub/mraid/PlacementType;

    .prologue
    .line 128
    new-instance v4, Lcom/mopub/mraid/MraidBridge;

    invoke-direct {v4, p2, p3}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    new-instance v5, Lcom/mopub/mraid/MraidBridge;

    sget-object v0, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    invoke-direct {v5, p2, v0}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    new-instance v6, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    invoke-direct {v6}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;)V

    .line 132
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adReport"    # Lcom/mopub/common/AdReport;
    .param p3, "placementType"    # Lcom/mopub/mraid/PlacementType;
    .param p4, "bridge"    # Lcom/mopub/mraid/MraidBridge;
    .param p5, "twoPartBridge"    # Lcom/mopub/mraid/MraidBridge;
    .param p6, "screenMetricsWaiter"    # Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v2, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 111
    new-instance v2, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    .line 119
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    .line 120
    sget-object v2, Lcom/mopub/mraid/MraidOrientation;->NONE:Lcom/mopub/mraid/MraidOrientation;

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    .line 184
    new-instance v2, Lcom/mopub/mraid/MraidController$3;

    invoke-direct {v2, p0}, Lcom/mopub/mraid/MraidController$3;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 255
    new-instance v2, Lcom/mopub/mraid/MraidController$4;

    invoke-direct {v2, p0}, Lcom/mopub/mraid/MraidController$4;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    .line 140
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 141
    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->mAdReport:Lcom/mopub/common/AdReport;

    .line 142
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 143
    new-instance v2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    .line 150
    :goto_0
    iput-object p3, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    .line 151
    iput-object p4, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    .line 152
    iput-object p5, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    .line 153
    iput-object p6, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    .line 155
    sget-object v2, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 157
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 158
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v2, Lcom/mopub/mraid/MraidScreenMetrics;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v2, v3, v4}, Lcom/mopub/mraid/MraidScreenMetrics;-><init>(Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 159
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    .line 160
    new-instance v2, Lcom/mopub/common/CloseableLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    .line 161
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Lcom/mopub/mraid/MraidController$1;

    invoke-direct {v3, p0}, Lcom/mopub/mraid/MraidController$1;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {v2, v3}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 168
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, "dimmingView":Landroid/view/View;
    new-instance v2, Lcom/mopub/mraid/MraidController$2;

    invoke-direct {v2, p0}, Lcom/mopub/mraid/MraidController$2;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 179
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/MraidBridge;->setMraidBridgeListener(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V

    .line 180
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/MraidBridge;->setMraidBridgeListener(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V

    .line 181
    new-instance v2, Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;-><init>()V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    .line 182
    return-void

    .line 147
    .end local v0    # "dimmingView":Landroid/view/View;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidController$MraidListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/ViewState;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mopub/mraid/MraidController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getDisplayRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mopub/mraid/MraidController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->isInlineVideoAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/PlacementType;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    return-object v0
.end method

.method private getAndMemoizeRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 911
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private getDisplayRotation()I
    .locals 3

    .prologue
    .line 402
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    const-string v2, "window"

    .line 403
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 404
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method private getRootView()Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 897
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 898
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    .line 903
    :goto_0
    return-object v0

    .line 901
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-static {v1, v2}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 903
    .local v0, "bestRootView":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method private hydrateMraidWebView(Ljava/lang/Long;Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;)Z
    .locals 4
    .param p1, "broadcastIdentifier"    # Ljava/lang/Long;
    .param p2, "listener"    # Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;

    .prologue
    const/4 v2, 0x1

    .line 378
    if-eqz p1, :cond_1

    .line 380
    invoke-static {p1}, Lcom/mopub/mobileads/WebViewCacheService;->popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;

    move-result-object v0

    .line 381
    .local v0, "config":Lcom/mopub/mobileads/WebViewCacheService$Config;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v1

    instance-of v1, v1, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v1, :cond_1

    .line 382
    invoke-virtual {v0}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v1

    check-cast v1, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 383
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->enablePlugins(Z)V

    .line 385
    if-eqz p2, :cond_0

    .line 386
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getViewabilityManager()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;->onReady(Lcom/mopub/mraid/MraidBridge$MraidWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;)V

    :cond_0
    move v1, v2

    .line 397
    .end local v0    # "config":Lcom/mopub/mobileads/WebViewCacheService$Config;
    :goto_0
    return v1

    .line 391
    :cond_1
    const-string v1, "WebView cache miss. Creating a new MraidWebView."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 392
    new-instance v1, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 394
    if-eqz p2, :cond_2

    .line 395
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;->onReady(Lcom/mopub/mraid/MraidBridge$MraidWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;)V

    .line 397
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInlineVideoAvailable()Z
    .locals 3

    .prologue
    .line 505
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 507
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 508
    :cond_0
    const/4 v1, 0x0

    .line 511
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isInlineVideoAvailable(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v1

    goto :goto_0
.end method

.method private setViewState(Lcom/mopub/mraid/ViewState;)V
    .locals 1
    .param p1, "viewState"    # Lcom/mopub/mraid/ViewState;

    .prologue
    .line 670
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V

    .line 671
    return-void
.end method

.method private setViewState(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "viewState"    # Lcom/mopub/mraid/ViewState;
    .param p2, "successRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID state set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 677
    .local v0, "previousViewState":Lcom/mopub/mraid/ViewState;
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 678
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->notifyViewState(Lcom/mopub/mraid/ViewState;)V

    .line 681
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->notifyViewState(Lcom/mopub/mraid/ViewState;)V

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v1, :cond_1

    .line 686
    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne p1, v1, :cond_2

    .line 687
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v1}, Lcom/mopub/mraid/MraidController$MraidListener;->onExpand()V

    .line 695
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V

    .line 696
    return-void

    .line 688
    :cond_2
    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne p1, v1, :cond_3

    .line 689
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v1}, Lcom/mopub/mraid/MraidController$MraidListener;->onClose()V

    goto :goto_0

    .line 690
    :cond_3
    sget-object v1, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne p1, v1, :cond_1

    .line 691
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v1}, Lcom/mopub/mraid/MraidController$MraidListener;->onClose()V

    goto :goto_0
.end method

.method private updateScreenMetricsAsync(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "successRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 562
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->cancelLastRequest()V

    .line 565
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v0

    .line 566
    .local v0, "currentWebView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 607
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->waitFor([Landroid/view/View;)Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    move-result-object v1

    new-instance v2, Lcom/mopub/mraid/MraidController$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/mopub/mraid/MraidController$7;-><init>(Lcom/mopub/mraid/MraidController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method applyOrientation()V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 939
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    sget-object v2, Lcom/mopub/mraid/MraidOrientation;->NONE:Lcom/mopub/mraid/MraidOrientation;

    if-ne v1, v2, :cond_2

    .line 940
    iget-boolean v1, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    if-eqz v1, :cond_0

    .line 943
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->unApplyOrientation()V

    .line 959
    :goto_0
    return-void

    .line 945
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 946
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 947
    new-instance v1, Lcom/mopub/mraid/MraidCommandException;

    const-string v2, "Unable to set MRAID expand orientation to \'none\'; expected passed in Activity Context."

    invoke-direct {v1, v2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 953
    :cond_1
    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->lockOrientation(I)V

    goto :goto_0

    .line 957
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidOrientation;->getActivityInfoOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->lockOrientation(I)V

    goto :goto_0
.end method

.method clampInt(III)I
    .locals 1
    .param p1, "min"    # I
    .param p2, "target"    # I
    .param p3, "max"    # I

    .prologue
    .line 699
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 638
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->cancelLastRequest()V

    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :cond_0
    iget-boolean v1, p0, Lcom/mopub/mraid/MraidController;->mIsPaused:Z

    if-nez v1, :cond_1

    .line 650
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->pause(Z)V

    .line 654
    :cond_1
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-static {v1}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 657
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->detach()V

    .line 658
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->destroy()V

    .line 660
    iput-object v3, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 662
    :cond_2
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->detach()V

    .line 663
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v1, :cond_3

    .line 664
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->destroy()V

    .line 665
    iput-object v3, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 667
    :cond_3
    return-void

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    throw v0
.end method

.method public fillContent(Ljava/lang/Long;Ljava/lang/String;Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;)V
    .locals 5
    .param p1, "broadcastIdentifier"    # Ljava/lang/Long;
    .param p2, "htmlData"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;

    .prologue
    const/4 v4, -0x1

    .line 349
    const-string v1, "htmlData cannot be null"

    invoke-static {p2, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-direct {p0, p1, p3}, Lcom/mopub/mraid/MraidController;->hydrateMraidWebView(Ljava/lang/Long;Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;)Z

    move-result v0

    .line 352
    .local v0, "cacheHit":Z
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    const-string v2, "mMraidWebView cannot be null"

    invoke-static {v1, v2}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 354
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge;->attachView(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 355
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->handlePageLoad()V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p2}, Lcom/mopub/mraid/MraidBridge;->setContentHtml(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAdContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    goto :goto_0
.end method

.method protected handleClose()V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 854
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_0

    .line 864
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_3

    .line 865
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->unApplyOrientation()V

    .line 868
    :cond_3
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_6

    .line 869
    :cond_4
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_5

    .line 871
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 872
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->detach()V

    .line 880
    :goto_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 883
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    goto :goto_0

    .line 875
    :cond_5
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 876
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 878
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 884
    :cond_6
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_0

    .line 885
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 886
    sget-object v0, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    goto :goto_0
.end method

.method handleConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidWebViewDebugListener;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    .line 413
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected handleCustomClose(Z)V
    .locals 4
    .param p1, "useCustomClose"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1011
    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v3}, Lcom/mopub/common/CloseableLayout;->isCloseVisible()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 1012
    .local v0, "wasUsingCustomClose":Z
    :goto_0
    if-ne p1, v0, :cond_2

    .line 1020
    :cond_0
    :goto_1
    return-void

    .end local v0    # "wasUsingCustomClose":Z
    :cond_1
    move v0, v2

    .line 1011
    goto :goto_0

    .line 1016
    .restart local v0    # "wasUsingCustomClose":Z
    :cond_2
    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 1017
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    if-eqz v1, :cond_0

    .line 1018
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    invoke-interface {v1, p1}, Lcom/mopub/mraid/MraidController$UseCustomCloseListener;->useCustomCloseChanged(Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1016
    goto :goto_2
.end method

.method handleExpand(Ljava/net/URI;Z)V
    .locals 6
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "shouldUseCustomClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v5, -0x1

    .line 794
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v2, :cond_0

    .line 795
    new-instance v2, Lcom/mopub/mraid/MraidCommandException;

    const-string v3, "Unable to expand after the WebView is destroyed"

    invoke-direct {v2, v3}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 798
    :cond_0
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v3, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v2, v3, :cond_2

    .line 850
    :cond_1
    :goto_0
    return-void

    .line 802
    :cond_2
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v2, v3, :cond_1

    .line 806
    :cond_3
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->applyOrientation()V

    .line 809
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    .line 810
    .local v0, "isTwoPart":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 813
    new-instance v2, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 814
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/MraidBridge;->attachView(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 817
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/MraidBridge;->setContentUrl(Ljava/lang/String;)V

    .line 821
    :cond_4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 823
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v2, v3, :cond_8

    .line 824
    if-eqz v0, :cond_7

    .line 825
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3, v1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    :goto_2
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getAndMemoizeRootView()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, v1}, Lcom/mopub/common/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->handleCustomClose(Z)V

    .line 849
    sget-object v2, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v2}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    goto :goto_0

    .line 809
    .end local v0    # "isTwoPart":Z
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 827
    .restart local v0    # "isTwoPart":Z
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 828
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 829
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3, v1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 833
    :cond_8
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v2, v3, :cond_5

    .line 834
    if-eqz v0, :cond_5

    .line 837
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 838
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 840
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3, v1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method handleJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/webkit/JsResult;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mraid/MraidWebViewDebugListener;->onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 422
    :goto_0
    return v0

    .line 421
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/JsResult;->confirm()V

    .line 422
    const/4 v0, 0x1

    goto :goto_0
.end method

.method handleOpen(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v1, :cond_0

    .line 1102
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v1}, Lcom/mopub/mraid/MraidController$MraidListener;->onOpen()V

    .line 1105
    :cond_0
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 1107
    .local v0, "builder":Lcom/mopub/common/UrlHandler$Builder;
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mAdReport:Lcom/mopub/common/AdReport;

    if-eqz v1, :cond_1

    .line 1108
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mAdReport:Lcom/mopub/common/AdReport;

    invoke-virtual {v1}, Lcom/mopub/common/AdReport;->getDspCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    .line 1111
    :cond_1
    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v1

    .line 1118
    invoke-virtual {v1}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 1119
    return-void
.end method

.method handleOrientationChange(I)V
    .locals 1
    .param p1, "currentRotation"    # I

    .prologue
    .line 610
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V

    .line 611
    return-void
.end method

.method handlePageLoad()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 516
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    new-instance v1, Lcom/mopub/mraid/MraidController$5;

    invoke-direct {v1, p0}, Lcom/mopub/mraid/MraidController$5;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-direct {p0, v0, v1}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V

    .line 532
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/mopub/mraid/MraidController$MraidListener;->onLoaded(Landroid/view/View;)V

    .line 535
    :cond_0
    return-void
.end method

.method handleResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .locals 18
    .param p1, "widthDips"    # I
    .param p2, "heightDips"    # I
    .param p3, "offsetXDips"    # I
    .param p4, "offsetYDips"    # I
    .param p5, "closePosition"    # Lcom/mopub/common/CloseableLayout$ClosePosition;
    .param p6, "allowOffscreen"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 707
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v13, :cond_0

    .line 708
    new-instance v13, Lcom/mopub/mraid/MraidCommandException;

    const-string v14, "Unable to resize after the WebView is destroyed"

    invoke-direct {v13, v14}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 713
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v14, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v14, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne v13, v14, :cond_2

    .line 790
    :cond_1
    :goto_0
    return-void

    .line 716
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v14, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v13, v14, :cond_3

    .line 717
    new-instance v13, Lcom/mopub/mraid/MraidCommandException;

    const-string v14, "Not allowed to resize from an already expanded ad"

    invoke-direct {v13, v14}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 720
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v14, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v13, v14, :cond_4

    .line 721
    new-instance v13, Lcom/mopub/mraid/MraidCommandException;

    const-string v14, "Not allowed to resize from an interstitial ad"

    invoke-direct {v13, v14}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 725
    :cond_4
    move/from16 v0, p1

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v12

    .line 726
    .local v12, "width":I
    move/from16 v0, p2

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    .line 727
    .local v3, "height":I
    move/from16 v0, p3

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v8

    .line 728
    .local v8, "offsetX":I
    move/from16 v0, p4

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v9

    .line 729
    .local v9, "offsetY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v13}, Lcom/mopub/mraid/MraidScreenMetrics;->getDefaultAdRect()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int v5, v13, v8

    .line 730
    .local v5, "left":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v13}, Lcom/mopub/mraid/MraidScreenMetrics;->getDefaultAdRect()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int v11, v13, v9

    .line 731
    .local v11, "top":I
    new-instance v10, Landroid/graphics/Rect;

    add-int v13, v5, v12

    add-int v14, v11, v3

    invoke-direct {v10, v5, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 733
    .local v10, "resizeRect":Landroid/graphics/Rect;
    if-nez p6, :cond_7

    .line 735
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v13}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 736
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-gt v13, v14, :cond_5

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-le v13, v14, :cond_6

    .line 737
    :cond_5
    new-instance v13, Lcom/mopub/mraid/MraidCommandException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "resizeProperties specified a size ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") and offset ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") that doesn\'t allow the ad to appear within the max allowed size ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 741
    invoke-virtual {v15}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 742
    invoke-virtual {v15}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 746
    :cond_6
    iget v13, v1, Landroid/graphics/Rect;->left:I

    iget v14, v10, Landroid/graphics/Rect;->left:I

    iget v15, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/mopub/mraid/MraidController;->clampInt(III)I

    move-result v6

    .line 747
    .local v6, "newLeft":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    iget v14, v10, Landroid/graphics/Rect;->top:I

    iget v15, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/mopub/mraid/MraidController;->clampInt(III)I

    move-result v7

    .line 748
    .local v7, "newTop":I
    invoke-virtual {v10, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 752
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v6    # "newLeft":I
    .end local v7    # "newTop":I
    :cond_7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 753
    .local v2, "closeRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    move-object/from16 v0, p5

    invoke-virtual {v13, v0, v10, v2}, Lcom/mopub/common/CloseableLayout;->applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v13}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 755
    new-instance v13, Lcom/mopub/mraid/MraidCommandException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "resizeProperties specified a size ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") and offset ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") that doesn\'t allow the close region to appear within the max allowed size ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 759
    invoke-virtual {v15}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 760
    invoke-virtual {v15}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 763
    :cond_8
    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 764
    new-instance v13, Lcom/mopub/mraid/MraidCommandException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "resizeProperties specified a size ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") and offset ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") that don\'t allow the close region to appear within the resized ad."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 771
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 772
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 775
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-direct {v4, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 776
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v13, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v14}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 777
    iget v13, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v14}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 778
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v14, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v13, v14, :cond_b

    .line 779
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 781
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v15 .. v17}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14, v15}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    invoke-direct/range {p0 .. p0}, Lcom/mopub/mraid/MraidController;->getAndMemoizeRootView()Landroid/view/ViewGroup;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v13, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 789
    sget-object v13, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    goto/16 :goto_0

    .line 784
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v14, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v13, v14, :cond_a

    .line 785
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v13, v4}, Lcom/mopub/common/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method handleSetOrientationProperties(ZLcom/mopub/mraid/MraidOrientation;)V
    .locals 3
    .param p1, "allowOrientationChange"    # Z
    .param p2, "forceOrientation"    # Lcom/mopub/mraid/MraidOrientation;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 1082
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->shouldAllowForceOrientation(Lcom/mopub/mraid/MraidOrientation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to force orientation to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    .line 1088
    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    .line 1090
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_2

    .line 1091
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->applyOrientation()V

    .line 1093
    :cond_2
    return-void
.end method

.method handleShowVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoUrl"    # Ljava/lang/String;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 919
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->startMraid(Landroid/content/Context;Ljava/lang/String;)V

    .line 920
    return-void
.end method

.method handleTwoPartPageLoad()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 539
    new-instance v0, Lcom/mopub/mraid/MraidController$6;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$6;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V

    .line 554
    return-void
.end method

.method public loadJavascript(Ljava/lang/String;)V
    .locals 1
    .param p1, "javascript"    # Ljava/lang/String;

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method lockOrientation(I)V
    .locals 4
    .param p1, "screenOrientation"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 924
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 925
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->shouldAllowForceOrientation(Lcom/mopub/mraid/MraidOrientation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 926
    :cond_0
    new-instance v1, Lcom/mopub/mraid/MraidCommandException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to lock orientation to unsupported value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    .line 927
    invoke-virtual {v3}, Lcom/mopub/mraid/MraidOrientation;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 930
    :cond_1
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 931
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    .line 934
    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 935
    return-void
.end method

.method public pause(Z)V
    .locals 1
    .param p1, "isFinishing"    # Z

    .prologue
    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mIsPaused:Z

    .line 617
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    .line 623
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mIsPaused:Z

    .line 629
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->onResume()V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->onResume()V

    .line 635
    :cond_1
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V
    .locals 0
    .param p1, "debugListener"    # Lcom/mopub/mraid/MraidWebViewDebugListener;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    .line 333
    return-void
.end method

.method public setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V
    .locals 0
    .param p1, "mraidListener"    # Lcom/mopub/mraid/MraidController$MraidListener;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    .line 325
    return-void
.end method

.method public setUseCustomCloseListener(Lcom/mopub/mraid/MraidController$UseCustomCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    .line 329
    return-void
.end method

.method shouldAllowForceOrientation(Lcom/mopub/mraid/MraidOrientation;)Z
    .locals 10
    .param p1, "newOrientation"    # Lcom/mopub/mraid/MraidOrientation;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 973
    sget-object v7, Lcom/mopub/mraid/MraidOrientation;->NONE:Lcom/mopub/mraid/MraidOrientation;

    if-ne p1, v7, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return v5

    .line 977
    :cond_1
    iget-object v7, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 979
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_2

    move v5, v6

    .line 980
    goto :goto_0

    .line 985
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    .line 986
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x0

    .line 985
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 992
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v2, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 993
    .local v2, "activityOrientation":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 994
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidOrientation;->getActivityInfoOrientation()I

    move-result v7

    if-eq v2, v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 987
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "activityOrientation":I
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v5, v6

    .line 988
    goto :goto_0

    .line 999
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "activityOrientation":I
    :cond_3
    iget v7, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v8, 0x80

    .line 1000
    invoke-static {v7, v8}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result v3

    .line 1003
    .local v3, "containsNecessaryConfigChanges":Z
    if-eqz v3, :cond_4

    iget v7, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v8, 0x400

    .line 1004
    invoke-static {v7, v8}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v5

    :goto_1
    move v5, v3

    .line 1006
    goto :goto_0

    :cond_4
    move v3, v6

    .line 1004
    goto :goto_1
.end method

.method unApplyOrientation()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 963
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 964
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 965
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 967
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    .line 968
    return-void
.end method
