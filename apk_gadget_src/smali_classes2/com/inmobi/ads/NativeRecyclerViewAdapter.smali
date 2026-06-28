.class public Lcom/inmobi/ads/NativeRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NativeRecyclerViewAdapter.java"

# interfaces
.implements Lcom/inmobi/ads/as;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;",
        ">;",
        "Lcom/inmobi/ads/as;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/inmobi/ads/ai;

.field private c:Lcom/inmobi/ads/ao;

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/inmobi/ads/NativeRecyclerViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/ai;Lcom/inmobi/ads/ao;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->e:Z

    .line 24
    iput-object p1, p0, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->b:Lcom/inmobi/ads/ai;

    .line 25
    iput-object p2, p0, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->c:Lcom/inmobi/ads/ao;

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->d:Landroid/util/SparseArray;

    .line 27
    return-void
.end method


# virtual methods
.method public buildScrollableView(ILandroid/view/ViewGroup;Lcom/inmobi/ads/ag;)Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->c:Lcom/inmobi/ads/ao;

    .line 79
    invoke-virtual {v0, p2, p3}, Lcom/inmobi/ads/ao;->a(Landroid/view/ViewGroup;Lcom/inmobi/ads/ag;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->c:Lcom/inmobi/ads/ao;

    .line 1181
    invoke-virtual {v1, v0, p3}, Lcom/inmobi/ads/ao;->b(Landroid/view/ViewGroup;Lcom/inmobi/ads/ag;)Landroid/view/ViewGroup;

    .line 82
    invoke-static {p3, p2}, Lcom/inmobi/ads/NativeViewFactory;->a(Lcom/inmobi/ads/NativeAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->e:Z

    .line 94
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->b:Lcom/inmobi/ads/ai;

    invoke-virtual {v0}, Lcom/inmobi/ads/ai;->b()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;

    invoke-virtual {p0, p1, p2}, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->onBindViewHolder(Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v0, p0, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->b:Lcom/inmobi/ads/ai;

    invoke-virtual {v0, p2}, Lcom/inmobi/ads/ai;->a(I)Lcom/inmobi/ads/ag;

    move-result-object v1

    .line 49
    iget-object v0, p0, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 52
    if-nez v0, :cond_1

    .line 56
    :cond_0
    invoke-static {p1}, Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;->a(Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->buildScrollableView(ILandroid/view/ViewGroup;Lcom/inmobi/ads/ag;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 58
    :cond_1
    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_2

    .line 61
    invoke-static {p1}, Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;->a(Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;)Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 63
    :cond_2
    invoke-static {p1}, Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;->a(Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    iget-object v1, p0, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->d:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    :cond_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->c:Lcom/inmobi/ads/ao;

    invoke-virtual {v1}, Lcom/inmobi/ads/ao;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v1, Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;

    invoke-direct {v1, p0, v0}, Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;-><init>(Lcom/inmobi/ads/NativeRecyclerViewAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/NativeRecyclerViewAdapter;->onViewRecycled(Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;)V

    return-void
.end method

.method public onViewRecycled(Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;)V
    .locals 1

    .prologue
    .line 70
    invoke-static {p1}, Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;->a(Lcom/inmobi/ads/NativeRecyclerViewAdapter$a;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 71
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 72
    return-void
.end method
