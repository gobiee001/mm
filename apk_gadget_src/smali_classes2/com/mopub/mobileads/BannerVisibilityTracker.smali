.class Lcom/mopub/mobileads/BannerVisibilityTracker;
.super Ljava/lang/Object;
.source "BannerVisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;,
        Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;,
        Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;
    }
.end annotation


# instance fields
.field private mBannerVisibilityTrackerListener:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

.field private mIsImpTrackerFired:Z

.field private mIsVisibilityScheduled:Z

.field final mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mRootView:Landroid/view/View;

.field private final mTrackedView:Landroid/view/View;

.field private final mVisibilityChecker:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

.field private final mVisibilityHandler:Landroid/os/Handler;

.field private final mVisibilityRunnable:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;

.field mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "trackedView"    # Landroid/view/View;
    .param p4, "minVisibleDips"    # I
    .param p5, "minVisibleMillis"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 88
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 90
    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mRootView:Landroid/view/View;

    .line 91
    iput-object p3, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mTrackedView:Landroid/view/View;

    .line 93
    new-instance v0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    invoke-direct {v0, p4, p5}, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;-><init>(II)V

    iput-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityChecker:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;-><init>(Lcom/mopub/mobileads/BannerVisibilityTracker;)V

    iput-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityRunnable:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;

    .line 97
    new-instance v0, Lcom/mopub/mobileads/BannerVisibilityTracker$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/BannerVisibilityTracker$1;-><init>(Lcom/mopub/mobileads/BannerVisibilityTracker;)V

    iput-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 105
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 106
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mTrackedView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/BannerVisibilityTracker;->setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/BannerVisibilityTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/BannerVisibilityTracker;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsImpTrackerFired:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mopub/mobileads/BannerVisibilityTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/BannerVisibilityTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsImpTrackerFired:Z

    return p1
.end method

.method static synthetic access$102(Lcom/mopub/mobileads/BannerVisibilityTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/BannerVisibilityTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsVisibilityScheduled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/BannerVisibilityTracker;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/BannerVisibilityTracker;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/BannerVisibilityTracker;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/BannerVisibilityTracker;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mTrackedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/BannerVisibilityTracker;)Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/BannerVisibilityTracker;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityChecker:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/BannerVisibilityTracker;)Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/BannerVisibilityTracker;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mBannerVisibilityTrackerListener:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

    return-object v0
.end method

.method private setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v3, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    .line 111
    .local v0, "originalViewTreeObserver":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {p1, p2}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "rootView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 117
    const-string v3, "Unable to set Visibility Tracker due to no available root view."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 122
    .local v2, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2

    .line 123
    const-string v3, "Visibility Tracker was unable to track views because the root view tree observer was not alive"

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 129
    iget-object v3, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method


# virtual methods
.method destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    iput-boolean v2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsVisibilityScheduled:Z

    .line 150
    iget-object v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    .line 151
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mBannerVisibilityTrackerListener:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

    .line 156
    return-void
.end method

.method scheduleVisibilityCheck()V
    .locals 4

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsVisibilityScheduled:Z

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsVisibilityScheduled:Z

    .line 166
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityRunnable:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method setBannerVisibilityTrackerListener(Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;)V
    .locals 0
    .param p1, "bannerVisibilityTrackerListener"    # Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mBannerVisibilityTrackerListener:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

    .line 142
    return-void
.end method
