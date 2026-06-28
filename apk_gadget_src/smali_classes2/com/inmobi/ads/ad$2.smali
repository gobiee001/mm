.class final Lcom/inmobi/ads/ad$2;
.super Ljava/lang/Object;
.source "NativeAdTracker.java"

# interfaces
.implements Lcom/inmobi/ads/bv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ad$2;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 66
    instance-of v0, p4, Lcom/inmobi/ads/ac;

    if-nez v0, :cond_0

    move v0, v1

    .line 102
    :goto_0
    return v0

    .line 69
    :cond_0
    check-cast p4, Lcom/inmobi/ads/ac;

    .line 1532
    iget-boolean v0, p4, Lcom/inmobi/ads/ac;->i:Z

    .line 70
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 75
    :cond_1
    instance-of v0, p2, Lcom/inmobi/ads/NativeVideoView;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 76
    check-cast v0, Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getMediaPlayer()Lcom/inmobi/ads/ap;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    const/4 v2, 0x3

    .line 2050
    iget v0, v0, Lcom/inmobi/ads/ap;->a:I

    .line 78
    if-eq v2, v0, :cond_2

    move v0, v1

    .line 79
    goto :goto_0

    .line 89
    :cond_2
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    .line 90
    goto :goto_0

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/ad$2;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 95
    goto :goto_0

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/inmobi/ads/ad$2;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Lcom/inmobi/ads/ad$2;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-long v6, v0

    mul-long/2addr v4, v6

    .line 102
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    int-to-long v6, p3

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method
