.class final Lcom/inmobi/ads/aj;
.super Landroid/support/v4/view/PagerAdapter;
.source "NativeDataSource.java"

# interfaces
.implements Lcom/inmobi/ads/as;


# static fields
.field private static final a:Ljava/lang/String;

.field private static e:Landroid/os/Handler;


# instance fields
.field private b:Z

.field private final c:Lcom/inmobi/ads/ai;

.field private d:Lcom/inmobi/ads/ao;

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-class v0, Lcom/inmobi/ads/aj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/aj;->a:Ljava/lang/String;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/ads/aj;->e:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/ai;Lcom/inmobi/ads/ao;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/aj;->f:Landroid/util/SparseArray;

    .line 63
    iput-object p1, p0, Lcom/inmobi/ads/aj;->c:Lcom/inmobi/ads/ai;

    .line 64
    iput-object p2, p0, Lcom/inmobi/ads/aj;->d:Lcom/inmobi/ads/ao;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/aj;)Lcom/inmobi/ads/ao;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/ads/aj;->d:Lcom/inmobi/ads/ao;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/ads/aj;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/inmobi/ads/aj;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/inmobi/ads/aj;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/ads/aj;->f:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .locals 5

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/aj;->b:Z

    .line 148
    iget-object v0, p0, Lcom/inmobi/ads/aj;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 149
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/inmobi/ads/aj;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 151
    sget-object v3, Lcom/inmobi/ads/aj;->e:Landroid/os/Handler;

    iget-object v4, p0, Lcom/inmobi/ads/aj;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/aj;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 154
    return-void
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 103
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/inmobi/ads/aj;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 106
    if-eqz v0, :cond_0

    .line 107
    sget-object v1, Lcom/inmobi/ads/aj;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    const-class v0, Lcom/inmobi/ads/NativeViewFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 110
    :cond_0
    sget-object v0, Lcom/inmobi/ads/aj;->e:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/aj$1;

    invoke-direct {v1, p0, p3}, Lcom/inmobi/ads/aj$1;-><init>(Lcom/inmobi/ads/aj;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/inmobi/ads/aj;->c:Lcom/inmobi/ads/ai;

    invoke-virtual {v0}, Lcom/inmobi/ads/ai;->b()I

    move-result v0

    return v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 69
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 70
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 71
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    :goto_1
    return v0

    .line 69
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, -0x2

    goto :goto_1
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/inmobi/ads/aj;->c:Lcom/inmobi/ads/ai;

    invoke-virtual {v0, p2}, Lcom/inmobi/ads/ai;->a(I)Lcom/inmobi/ads/ag;

    move-result-object v5

    .line 91
    if-nez v5, :cond_0

    .line 92
    const/4 v3, 0x0

    .line 98
    :goto_0
    return-object v3

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/aj;->d:Lcom/inmobi/ads/ao;

    invoke-virtual {v0, p1, v5}, Lcom/inmobi/ads/ao;->a(Landroid/view/ViewGroup;Lcom/inmobi/ads/ag;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 1123
    iget-object v0, p0, Lcom/inmobi/ads/aj;->d:Lcom/inmobi/ads/ao;

    .line 1454
    iget v0, v0, Lcom/inmobi/ads/ao;->b:I

    .line 1123
    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1125
    new-instance v0, Lcom/inmobi/ads/aj$2;

    move-object v1, p0

    move v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/aj$2;-><init>(Lcom/inmobi/ads/aj;ILandroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/ag;)V

    .line 1139
    iget-object v1, p0, Lcom/inmobi/ads/aj;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1140
    sget-object v1, Lcom/inmobi/ads/aj;->e:Landroid/os/Handler;

    mul-int/lit8 v2, v6, 0x32

    int-to-long v6, v2

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    invoke-static {v5, p1}, Lcom/inmobi/ads/NativeViewFactory;->a(Lcom/inmobi/ads/NativeAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
