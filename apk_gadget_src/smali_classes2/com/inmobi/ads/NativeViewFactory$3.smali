.class final Lcom/inmobi/ads/NativeViewFactory$3;
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
    .line 564
    iput-object p1, p0, Lcom/inmobi/ads/NativeViewFactory$3;->a:Lcom/inmobi/ads/NativeViewFactory;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeViewFactory$c;-><init>(Lcom/inmobi/ads/NativeViewFactory;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 567
    new-instance v0, Lcom/inmobi/rendering/RenderView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    sget-object v3, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/inmobi/rendering/RenderView;-><init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Ljava/util/Set;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)V
    .locals 0

    .prologue
    .line 575
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/ads/NativeViewFactory$c;->a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)V

    .line 576
    check-cast p1, Lcom/inmobi/rendering/RenderView;

    invoke-static {p1, p2, p3}, Lcom/inmobi/ads/NativeViewFactory;->a(Lcom/inmobi/rendering/RenderView;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)V

    .line 577
    return-void
.end method

.method public final a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 581
    instance-of v0, p1, Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    .line 1290
    iget-boolean v0, v0, Lcom/inmobi/rendering/RenderView;->v:Z

    .line 581
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/inmobi/ads/NativeViewFactory$c;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
