.class final Lcom/inmobi/ads/NativeViewFactory$14;
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
    .line 517
    iput-object p1, p0, Lcom/inmobi/ads/NativeViewFactory$14;->a:Lcom/inmobi/ads/NativeViewFactory;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeViewFactory$c;-><init>(Lcom/inmobi/ads/NativeViewFactory;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 520
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected final a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)V
    .locals 0

    .prologue
    .line 526
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/ads/NativeViewFactory$c;->a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)V

    .line 527
    check-cast p1, Landroid/widget/Button;

    invoke-static {p1, p2}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/widget/Button;Lcom/inmobi/ads/NativeAsset;)Landroid/widget/Button;

    .line 528
    return-void
.end method

.method public final a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 532
    instance-of v0, p1, Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 533
    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 536
    check-cast v0, Landroid/widget/Button;

    invoke-static {v0}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/widget/TextView;)V

    .line 537
    invoke-super {p0, p1}, Lcom/inmobi/ads/NativeViewFactory$c;->a(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method
