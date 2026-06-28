.class Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;
.super Ljava/lang/Object;
.source "BannerVisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/BannerVisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BannerVisibilityChecker"
.end annotation


# instance fields
.field private final mClipRect:Landroid/graphics/Rect;

.field private mMinVisibleDips:I

.field private mMinVisibleMillis:I

.field private mStartTimeMillis:J


# direct methods
.method constructor <init>(II)V
    .locals 2
    .param p1, "minVisibleDips"    # I
    .param p2, "minVisibleMillis"    # I

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mStartTimeMillis:J

    .line 233
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    .line 236
    iput p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mMinVisibleDips:I

    .line 237
    iput p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mMinVisibleMillis:I

    .line 238
    return-void
.end method


# virtual methods
.method hasBeenVisibleYet()Z
    .locals 4

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mStartTimeMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasRequiredTimeElapsed()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->hasBeenVisibleYet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mStartTimeMillis:J

    sub-long/2addr v2, v4

    iget v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mMinVisibleMillis:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isVisible(Landroid/view/View;Landroid/view/View;)Z
    .locals 8
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 269
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v4

    .line 274
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_0

    .line 279
    iget-object v5, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 284
    iget-object v5, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 285
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 284
    invoke-static {v5, v6}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v1

    .line 286
    .local v1, "widthInDips":I
    iget-object v5, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 287
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 286
    invoke-static {v5, v6}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v0

    .line 288
    .local v0, "heightInDips":I
    mul-int v5, v1, v0

    int-to-long v2, v5

    .line 290
    .local v2, "visibleViewAreaInDips":J
    iget v5, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mMinVisibleDips:I

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method setStartTimeMillis()V
    .locals 2

    .prologue
    .line 245
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mStartTimeMillis:J

    .line 246
    return-void
.end method
