.class Lcom/inmobi/ads/bh;
.super Lcom/inmobi/ads/NativeScrollableContainer;
.source "ScrollableDeckFreeContainer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/inmobi/ads/NativeScrollableContainer;-><init>(Landroid/content/Context;I)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/bh;->b:Z

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/ads/ag;Lcom/inmobi/ads/as;IILcom/inmobi/ads/NativeScrollableContainer$a;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Lcom/inmobi/ads/ag;->i(I)Lcom/inmobi/ads/NativeAsset;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/inmobi/ads/NativeViewFactory;->a(Lcom/inmobi/ads/NativeAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 31
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 32
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 36
    :goto_0
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 38
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/inmobi/ads/bh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/ads/bh;->a:Landroid/support/v7/widget/RecyclerView;

    .line 39
    iget-object v0, p0, Lcom/inmobi/ads/bh;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 42
    invoke-virtual {p0}, Lcom/inmobi/ads/bh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 43
    iget-object v1, p0, Lcom/inmobi/ads/bh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 44
    iget-object v0, p0, Lcom/inmobi/ads/bh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bh;->addView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/inmobi/ads/bh;->a:Landroid/support/v7/widget/RecyclerView;

    check-cast p2, Lcom/inmobi/ads/NativeRecyclerViewAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 46
    return-void

    .line 34
    :cond_0
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method
