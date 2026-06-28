.class final Lcom/inmobi/ads/NativeViewFactory$12;
.super Lcom/inmobi/ads/NativeViewFactory$c;
.source "NativeViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/NativeViewFactory;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/NativeViewFactory;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/NativeViewFactory;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/inmobi/ads/NativeViewFactory$12;->a:Lcom/inmobi/ads/NativeViewFactory;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeViewFactory$c;-><init>(Lcom/inmobi/ads/NativeViewFactory;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 462
    new-instance v0, Lcom/inmobi/ads/NativeVideoWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/ads/NativeVideoWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected final a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)V
    .locals 0

    .prologue
    .line 468
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/ads/NativeViewFactory$c;->a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)V

    .line 469
    check-cast p1, Lcom/inmobi/ads/NativeVideoWrapper;

    invoke-static {p1, p2}, Lcom/inmobi/ads/NativeViewFactory;->a(Lcom/inmobi/ads/NativeVideoWrapper;Lcom/inmobi/ads/NativeAsset;)V

    .line 470
    return-void
.end method

.method public final a(Landroid/view/View;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 475
    instance-of v0, p1, Lcom/inmobi/ads/NativeVideoWrapper;

    if-nez v0, :cond_0

    .line 476
    const/4 v0, 0x0

    .line 485
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 478
    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 479
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v0, p1

    .line 480
    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getPoster()Landroid/widget/ImageView;

    move-result-object v0

    .line 481
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, p1

    .line 482
    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->a()V

    .line 485
    invoke-super {p0, p1}, Lcom/inmobi/ads/NativeViewFactory$c;->a(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method
