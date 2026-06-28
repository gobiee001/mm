.class final Lcom/inmobi/ads/ao;
.super Ljava/lang/Object;
.source "NativeLayoutInflater.java"

# interfaces
.implements Lcom/inmobi/ads/NativeScrollableContainer$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ao$b;,
        Lcom/inmobi/ads/ao$c;,
        Lcom/inmobi/ads/ao$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;

.field private static n:Landroid/os/Handler;


# instance fields
.field a:Lcom/inmobi/ads/bb;

.field b:I

.field final c:Lcom/inmobi/ads/k;

.field d:Lcom/inmobi/ads/NativeViewFactory;

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/inmobi/ads/ai;

.field private final h:Lcom/inmobi/ads/ac;

.field private final i:Lcom/inmobi/ads/b;

.field private j:Lcom/inmobi/ads/ao$c;

.field private k:Lcom/inmobi/ads/ao$a;

.field private l:Lcom/inmobi/ads/ao$b;

.field private m:Lcom/inmobi/ads/as;

.field private o:Z

.field private p:Lcom/inmobi/rendering/RenderView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-class v0, Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ao;->e:Ljava/lang/String;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/ads/ao;->n:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/b;Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/ao$c;Lcom/inmobi/ads/ao$a;Lcom/inmobi/ads/ao$b;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v0, p0, Lcom/inmobi/ads/ao;->b:I

    .line 91
    iput-boolean v0, p0, Lcom/inmobi/ads/ao;->o:Z

    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/ao;->f:Ljava/lang/ref/WeakReference;

    .line 103
    iput-object p3, p0, Lcom/inmobi/ads/ao;->h:Lcom/inmobi/ads/ac;

    .line 104
    iput-object p4, p0, Lcom/inmobi/ads/ao;->g:Lcom/inmobi/ads/ai;

    .line 105
    iput-object p5, p0, Lcom/inmobi/ads/ao;->j:Lcom/inmobi/ads/ao$c;

    .line 106
    iput-object p6, p0, Lcom/inmobi/ads/ao;->k:Lcom/inmobi/ads/ao$a;

    .line 107
    iput-object p7, p0, Lcom/inmobi/ads/ao;->l:Lcom/inmobi/ads/ao$b;

    .line 108
    new-instance v0, Lcom/inmobi/ads/k;

    invoke-direct {v0}, Lcom/inmobi/ads/k;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ao;->c:Lcom/inmobi/ads/k;

    .line 109
    iput-object p2, p0, Lcom/inmobi/ads/ao;->i:Lcom/inmobi/ads/b;

    .line 110
    invoke-static {p1}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/content/Context;)Lcom/inmobi/ads/NativeViewFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/ao;->d:Lcom/inmobi/ads/NativeViewFactory;

    .line 111
    return-void
.end method

.method private a(Lcom/inmobi/ads/ar;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ar;
    .locals 4

    .prologue
    .line 162
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ao;->d:Lcom/inmobi/ads/NativeViewFactory;

    .line 164
    invoke-virtual {p0}, Lcom/inmobi/ads/ao;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/ao;->g:Lcom/inmobi/ads/ai;

    .line 3305
    iget-object v2, v2, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 164
    iget-object v3, p0, Lcom/inmobi/ads/ao;->i:Lcom/inmobi/ads/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ar;

    .line 166
    :goto_0
    invoke-virtual {v0}, Lcom/inmobi/ads/ar;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 167
    iget-object v2, p0, Lcom/inmobi/ads/ao;->d:Lcom/inmobi/ads/NativeViewFactory;

    .line 3641
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 3642
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3643
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 3644
    invoke-virtual {v2, v3}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/view/View;)V

    .line 3641
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    move-object v0, p1

    .line 164
    goto :goto_0

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/ao;->g:Lcom/inmobi/ads/ai;

    .line 4305
    iget-object v1, v1, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 168
    invoke-virtual {v1}, Lcom/inmobi/ads/ag;->b()Lcom/inmobi/ads/af;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/view/View;Lcom/inmobi/ads/af;)V

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/ao;->g:Lcom/inmobi/ads/ai;

    .line 5305
    iget-object v1, v1, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 171
    invoke-virtual {v1}, Lcom/inmobi/ads/ag;->b()Lcom/inmobi/ads/af;

    move-result-object v1

    .line 6137
    iget-object v1, v1, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 171
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 170
    invoke-static {v1}, Lcom/inmobi/ads/NativeViewFactory;->b(I)V

    .line 174
    iget-object v1, p0, Lcom/inmobi/ads/ao;->g:Lcom/inmobi/ads/ai;

    .line 6305
    iget-object v1, v1, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 175
    invoke-static {v1, p2}, Lcom/inmobi/ads/NativeViewFactory;->a(Lcom/inmobi/ads/NativeAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    return-object v0
.end method

.method private a(Lcom/inmobi/ads/NativeAsset;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Lcom/inmobi/ads/ao$5;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/ads/ao$5;-><init>(Lcom/inmobi/ads/ao;Lcom/inmobi/ads/NativeAsset;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/ao;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/inmobi/ads/ao;->o:Z

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/ads/ao;->g:Lcom/inmobi/ads/ai;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ao$b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/ads/ao;->l:Lcom/inmobi/ads/ao$b;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/inmobi/ads/ao;->e:Ljava/lang/String;

    return-object v0
.end method

.method private d()I
    .locals 2

    .prologue
    .line 444
    iget v0, p0, Lcom/inmobi/ads/ao;->b:I

    if-nez v0, :cond_0

    .line 445
    const v0, 0x800003

    .line 449
    :goto_0
    return v0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ao;->g:Lcom/inmobi/ads/ai;

    invoke-virtual {v0}, Lcom/inmobi/ads/ai;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/inmobi/ads/ao;->b:I

    if-ne v0, v1, :cond_1

    .line 447
    const v0, 0x800005

    goto :goto_0

    .line 449
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ao$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/ads/ao;->k:Lcom/inmobi/ads/ao$a;

    return-object v0
.end method

.method static synthetic e(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/bb;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/ads/ao;->a:Lcom/inmobi/ads/bb;

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .prologue
    .line 196
    iput p1, p0, Lcom/inmobi/ads/ao;->b:I

    .line 197
    iget-object v0, p0, Lcom/inmobi/ads/ao;->j:Lcom/inmobi/ads/ao$c;

    iget-object v1, p0, Lcom/inmobi/ads/ao;->g:Lcom/inmobi/ads/ai;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ai;->a(I)Lcom/inmobi/ads/ag;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/inmobi/ads/ao$c;->a(ILcom/inmobi/ads/NativeAsset;)V

    .line 199
    invoke-direct {p0}, Lcom/inmobi/ads/ao;->d()I

    move-result v0

    return v0
.end method

.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/inmobi/ads/ao;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;Lcom/inmobi/ads/ag;)Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/inmobi/ads/ao;->d:Lcom/inmobi/ads/NativeViewFactory;

    .line 187
    invoke-virtual {p0}, Lcom/inmobi/ads/ao;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/ao;->i:Lcom/inmobi/ads/b;

    invoke-virtual {v0, v1, p2, v2}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-static {p2, p1}, Lcom/inmobi/ads/NativeViewFactory;->a(Lcom/inmobi/ads/NativeAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    :cond_0
    return-object v0
.end method

.method public final a(Lcom/inmobi/ads/ar;Landroid/view/ViewGroup;Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/ar;
    .locals 2

    .prologue
    .line 132
    iput-object p3, p0, Lcom/inmobi/ads/ao;->p:Lcom/inmobi/rendering/RenderView;

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ar;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ar;

    move-result-object v0

    .line 135
    iget-boolean v1, p0, Lcom/inmobi/ads/ao;->o:Z

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/inmobi/ads/ao;->g:Lcom/inmobi/ads/ai;

    .line 2305
    iget-object v1, v1, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 3181
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/ao;->b(Landroid/view/ViewGroup;Lcom/inmobi/ads/ag;)Landroid/view/ViewGroup;

    .line 138
    :cond_0
    return-object v0
.end method

.method final b(Landroid/view/ViewGroup;Lcom/inmobi/ads/ag;)Landroid/view/ViewGroup;
    .locals 18

    .prologue
    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/NativeAsset;Landroid/view/View;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Lcom/inmobi/ads/ag;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/inmobi/ads/NativeAsset;

    .line 218
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {v10}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 219
    invoke-virtual {v10}, Lcom/inmobi/ads/NativeAsset;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "card_scrollable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ao;->d:Lcom/inmobi/ads/NativeViewFactory;

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/ads/ao;->a()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inmobi/ads/ao;->i:Lcom/inmobi/ads/b;

    invoke-virtual {v4, v5, v10, v6}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/inmobi/ads/NativeScrollableContainer;

    .line 223
    if-eqz v4, :cond_0

    .line 224
    invoke-virtual {v4}, Lcom/inmobi/ads/NativeScrollableContainer;->getType()I

    move-result v5

    .line 225
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inmobi/ads/ao;->g:Lcom/inmobi/ads/ai;

    move-object/from16 v0, p0

    invoke-static {v5, v6, v0}, Lcom/inmobi/ads/at;->a(ILcom/inmobi/ads/ai;Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/as;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/inmobi/ads/ao;->m:Lcom/inmobi/ads/as;

    .line 226
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inmobi/ads/ao;->m:Lcom/inmobi/ads/as;

    if-eqz v5, :cond_0

    move-object v5, v10

    .line 227
    check-cast v5, Lcom/inmobi/ads/ag;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inmobi/ads/ao;->m:Lcom/inmobi/ads/as;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/inmobi/ads/ao;->b:I

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/inmobi/ads/ao;->d()I

    move-result v8

    move-object/from16 v9, p0

    .line 227
    invoke-virtual/range {v4 .. v9}, Lcom/inmobi/ads/NativeScrollableContainer;->a(Lcom/inmobi/ads/ag;Lcom/inmobi/ads/as;IILcom/inmobi/ads/NativeScrollableContainer$a;)V

    .line 230
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/inmobi/ads/NativeViewFactory;->a(Lcom/inmobi/ads/NativeAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 229
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inmobi/ads/ao;->c:Lcom/inmobi/ads/k;

    invoke-virtual {v5, v4, v10}, Lcom/inmobi/ads/k;->a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;)V

    goto :goto_0

    .line 235
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ao;->d:Lcom/inmobi/ads/NativeViewFactory;

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/ads/ao;->a()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inmobi/ads/ao;->i:Lcom/inmobi/ads/b;

    invoke-virtual {v4, v5, v10, v6}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 237
    if-eqz v4, :cond_0

    move-object v5, v10

    .line 238
    check-cast v5, Lcom/inmobi/ads/ag;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/inmobi/ads/ao;->b(Landroid/view/ViewGroup;Lcom/inmobi/ads/ag;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 240
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/inmobi/ads/NativeViewFactory;->a(Lcom/inmobi/ads/NativeAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inmobi/ads/ao;->c:Lcom/inmobi/ads/k;

    invoke-virtual {v5, v4, v10}, Lcom/inmobi/ads/k;->a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;)V

    goto/16 :goto_0

    .line 246
    :cond_2
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_WEBVIEW:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {v10}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v5

    if-ne v4, v5, :cond_c

    move-object v4, v10

    check-cast v4, Lcom/inmobi/ads/ba;

    .line 7044
    iget-boolean v4, v4, Lcom/inmobi/ads/ba;->A:Z

    .line 247
    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ao;->p:Lcom/inmobi/rendering/RenderView;

    if-eqz v4, :cond_c

    .line 249
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inmobi/ads/ao;->p:Lcom/inmobi/rendering/RenderView;

    .line 251
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 252
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 255
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/inmobi/ads/ao;->p:Lcom/inmobi/rendering/RenderView;

    .line 266
    :goto_1
    if-eqz v6, :cond_0

    .line 268
    invoke-virtual {v10}, Lcom/inmobi/ads/NativeAsset;->o()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    .line 269
    const/4 v4, 0x4

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 270
    sget-object v4, Lcom/inmobi/ads/ao;->n:Landroid/os/Handler;

    new-instance v5, Lcom/inmobi/ads/ao$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/inmobi/ads/ao$3;-><init>(Lcom/inmobi/ads/ao;Landroid/view/View;)V

    .line 275
    invoke-virtual {v10}, Lcom/inmobi/ads/NativeAsset;->o()I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v8, v7

    .line 270
    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    :cond_4
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/inmobi/ads/NativeViewFactory;->a(Lcom/inmobi/ads/NativeAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ao;->c:Lcom/inmobi/ads/k;

    invoke-virtual {v4, v6, v10}, Lcom/inmobi/ads/k;->a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;)V

    .line 286
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-lt v4, v5, :cond_8

    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    .line 287
    invoke-virtual {v10}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v5

    if-ne v4, v5, :cond_8

    move-object v4, v10

    .line 288
    check-cast v4, Lcom/inmobi/ads/az;

    move-object v5, v6

    check-cast v5, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 289
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v7

    .line 8330
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xf

    if-lt v5, v8, :cond_8

    .line 8332
    invoke-virtual {v4}, Lcom/inmobi/ads/az;->u()Lcom/inmobi/ads/NativeAsset;

    move-result-object v5

    check-cast v5, Lcom/inmobi/ads/ag;

    .line 8333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 8334
    if-eqz v5, :cond_5

    const-wide/16 v12, 0x0

    .line 9045
    iget-wide v14, v5, Lcom/inmobi/ads/ag;->z:J

    .line 8334
    cmp-long v12, v12, v14

    if-eqz v12, :cond_5

    .line 10045
    iget-wide v8, v5, Lcom/inmobi/ads/ag;->z:J

    .line 8337
    :cond_5
    if-eqz v5, :cond_6

    .line 11041
    iput-wide v8, v5, Lcom/inmobi/ads/ag;->z:J

    .line 8341
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Lcom/inmobi/ads/NativeVideoView;->setClickable(Z)V

    .line 8343
    const v5, 0x7fffffff

    invoke-virtual {v7, v5}, Lcom/inmobi/ads/NativeVideoView;->setId(I)V

    .line 11453
    const/4 v5, 0x0

    iput v5, v7, Lcom/inmobi/ads/NativeVideoView;->e:I

    .line 11454
    const/4 v5, 0x0

    iput v5, v7, Lcom/inmobi/ads/NativeVideoView;->f:I

    .line 11455
    invoke-virtual {v4}, Lcom/inmobi/ads/az;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/ads/bq;

    invoke-interface {v5}, Lcom/inmobi/ads/bq;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v7, Lcom/inmobi/ads/NativeVideoView;->a:Landroid/net/Uri;

    .line 11457
    invoke-virtual {v4}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v5

    const-string v8, "placementType"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 11458
    sget-object v8, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-ne v8, v5, :cond_f

    new-instance v5, Lcom/inmobi/ads/ap;

    invoke-direct {v5}, Lcom/inmobi/ads/ap;-><init>()V

    .line 11460
    :goto_3
    iput-object v5, v7, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 11461
    iget v5, v7, Lcom/inmobi/ads/NativeVideoView;->d:I

    if-eqz v5, :cond_10

    .line 11462
    iget-object v5, v7, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    iget v8, v7, Lcom/inmobi/ads/NativeVideoView;->d:I

    invoke-virtual {v5, v8}, Lcom/inmobi/ads/ap;->setAudioSessionId(I)V

    .line 11468
    :goto_4
    :try_start_0
    iget-object v5, v7, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v7}, Lcom/inmobi/ads/NativeVideoView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v7, Lcom/inmobi/ads/NativeVideoView;->a:Landroid/net/Uri;

    iget-object v12, v7, Lcom/inmobi/ads/NativeVideoView;->b:Ljava/util/Map;

    invoke-virtual {v5, v8, v9, v12}, Lcom/inmobi/ads/ap;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11475
    invoke-virtual {v7, v4}, Lcom/inmobi/ads/NativeVideoView;->setTag(Ljava/lang/Object;)V

    .line 11476
    new-instance v5, Lcom/inmobi/ads/NativeVideoView$c;

    invoke-direct {v5, v7}, Lcom/inmobi/ads/NativeVideoView$c;-><init>(Lcom/inmobi/ads/NativeVideoView;)V

    iput-object v5, v7, Lcom/inmobi/ads/NativeVideoView;->g:Lcom/inmobi/ads/NativeVideoView$c;

    .line 11477
    iget-object v5, v7, Lcom/inmobi/ads/NativeVideoView;->l:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v7, v5}, Lcom/inmobi/ads/NativeVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 11478
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Lcom/inmobi/ads/NativeVideoView;->setFocusable(Z)V

    .line 11479
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Lcom/inmobi/ads/NativeVideoView;->setFocusableInTouchMode(Z)V

    .line 11480
    invoke-virtual {v7}, Lcom/inmobi/ads/NativeVideoView;->requestFocus()Z

    .line 12275
    :goto_5
    iget-object v5, v4, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 8346
    if-eqz v5, :cond_7

    .line 13275
    iget-object v5, v4, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 8347
    check-cast v5, Lcom/inmobi/ads/az;

    invoke-virtual {v4, v5}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/az;)V

    .line 8349
    :cond_7
    new-instance v5, Lcom/inmobi/ads/ao$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/inmobi/ads/ao$6;-><init>(Lcom/inmobi/ads/ao;Lcom/inmobi/ads/az;)V

    invoke-virtual {v7, v5}, Lcom/inmobi/ads/NativeVideoView;->setQuartileCompletedListener(Lcom/inmobi/ads/NativeVideoView$b;)V

    .line 8366
    new-instance v5, Lcom/inmobi/ads/ao$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/inmobi/ads/ao$7;-><init>(Lcom/inmobi/ads/ao;Lcom/inmobi/ads/az;)V

    invoke-virtual {v7, v5}, Lcom/inmobi/ads/NativeVideoView;->setPlaybackEventListener(Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;)V

    .line 8418
    new-instance v5, Lcom/inmobi/ads/ao$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/inmobi/ads/ao$8;-><init>(Lcom/inmobi/ads/ao;Lcom/inmobi/ads/az;)V

    invoke-virtual {v7, v5}, Lcom/inmobi/ads/NativeVideoView;->setMediaErrorListener(Lcom/inmobi/ads/NativeVideoView$a;)V

    .line 8432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ao;->a:Lcom/inmobi/ads/bb;

    if-eqz v4, :cond_8

    .line 8434
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ao;->a:Lcom/inmobi/ads/bb;

    invoke-interface {v4, v7}, Lcom/inmobi/ads/bb;->a(Lcom/inmobi/ads/NativeVideoView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/NativeAsset;Landroid/view/View;)V

    .line 292
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_TIMER:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {v10}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v5

    if-ne v4, v5, :cond_9

    .line 293
    const-string v4, "timerView"

    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v10

    .line 294
    check-cast v4, Lcom/inmobi/ads/aw;

    move-object v5, v6

    check-cast v5, Lcom/inmobi/ads/NativeTimerView;

    .line 14203
    new-instance v7, Lcom/inmobi/ads/ao$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v4}, Lcom/inmobi/ads/ao$2;-><init>(Lcom/inmobi/ads/ao;Lcom/inmobi/ads/aw;)V

    invoke-virtual {v5, v7}, Lcom/inmobi/ads/NativeTimerView;->setTimerEventsListener(Lcom/inmobi/ads/NativeTimerView$a;)V

    .line 296
    :cond_9
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-lt v4, v5, :cond_a

    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    .line 297
    invoke-virtual {v10}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v5

    if-ne v4, v5, :cond_a

    move-object v4, v6

    .line 298
    check-cast v4, Lcom/inmobi/ads/NativeVideoWrapper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inmobi/ads/ao;->a:Lcom/inmobi/ads/bb;

    invoke-virtual {v4, v5}, Lcom/inmobi/ads/NativeVideoWrapper;->setVideoEventListener(Lcom/inmobi/ads/bb;)V

    move-object v4, v6

    .line 299
    check-cast v4, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 15065
    iget-object v5, v4, Lcom/inmobi/ads/NativeVideoWrapper;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v5}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/ads/az;

    .line 15066
    if-eqz v5, :cond_a

    .line 15069
    :try_start_2
    invoke-virtual {v5}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v7

    invoke-interface {v7}, Lcom/inmobi/ads/bq;->b()Ljava/lang/String;

    move-result-object v7

    .line 15070
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 15071
    invoke-virtual {v8, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 15072
    const/16 v7, 0x12

    invoke-virtual {v8, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 15073
    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 15074
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 15076
    invoke-virtual {v5}, Lcom/inmobi/ads/az;->b()Lcom/inmobi/ads/af;

    move-result-object v5

    .line 15137
    iget-object v5, v5, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 15077
    iget v8, v5, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v8

    int-to-double v12, v8

    iget v8, v5, Landroid/graphics/Point;->y:I

    .line 15078
    invoke-static {v8}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v8

    int-to-double v14, v8

    div-double/2addr v12, v14

    .line 15079
    int-to-double v14, v7

    int-to-double v0, v9

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    .line 15081
    cmpl-double v8, v12, v14

    if-lez v8, :cond_11

    .line 15082
    int-to-double v12, v7

    iget v7, v5, Landroid/graphics/Point;->y:I

    .line 15083
    invoke-static {v7}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v7

    int-to-double v14, v7

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    int-to-double v8, v9

    div-double v8, v14, v8

    mul-double/2addr v12, v8

    .line 15084
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v5

    int-to-double v8, v5

    .line 15090
    :goto_7
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    double-to-int v7, v12

    double-to-int v8, v8

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 15099
    :goto_8
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15100
    iget-object v4, v4, Lcom/inmobi/ads/NativeVideoWrapper;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v4, v5}, Lcom/inmobi/ads/NativeVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    :cond_a
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_WEBVIEW:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {v10}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v5

    if-ne v4, v5, :cond_0

    instance-of v4, v6, Lcom/inmobi/rendering/RenderView;

    if-eqz v4, :cond_0

    move-object v4, v6

    .line 303
    check-cast v4, Lcom/inmobi/rendering/RenderView;

    move-object v5, v10

    check-cast v5, Lcom/inmobi/ads/ba;

    .line 16048
    iget-boolean v5, v5, Lcom/inmobi/ads/ba;->B:Z

    .line 303
    invoke-virtual {v4, v5}, Lcom/inmobi/rendering/RenderView;->setScrollable(Z)V

    move-object v4, v6

    .line 304
    check-cast v4, Lcom/inmobi/rendering/RenderView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inmobi/ads/ao;->h:Lcom/inmobi/ads/ac;

    .line 16391
    iget-object v5, v5, Lcom/inmobi/ads/ac;->k:Lcom/inmobi/ads/ac;

    .line 304
    invoke-virtual {v4, v5}, Lcom/inmobi/rendering/RenderView;->setReferenceContainer(Lcom/inmobi/ads/AdContainer;)V

    move-object v4, v6

    .line 305
    check-cast v4, Lcom/inmobi/rendering/RenderView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inmobi/ads/ao;->h:Lcom/inmobi/ads/ac;

    .line 16798
    iget-object v7, v5, Lcom/inmobi/ads/ac;->w:Lcom/inmobi/rendering/RenderView$a;

    if-nez v7, :cond_b

    .line 16799
    new-instance v7, Lcom/inmobi/ads/ac$7;

    invoke-direct {v7, v5}, Lcom/inmobi/ads/ac$7;-><init>(Lcom/inmobi/ads/ac;)V

    iput-object v7, v5, Lcom/inmobi/ads/ac;->w:Lcom/inmobi/rendering/RenderView$a;

    .line 16878
    :cond_b
    iget-object v5, v5, Lcom/inmobi/ads/ac;->w:Lcom/inmobi/rendering/RenderView$a;

    .line 305
    invoke-virtual {v4, v5}, Lcom/inmobi/rendering/RenderView;->setRenderViewEventListener(Lcom/inmobi/rendering/RenderView$a;)V

    .line 306
    check-cast v10, Lcom/inmobi/ads/ba;

    .line 17044
    iget-boolean v4, v10, Lcom/inmobi/ads/ba;->A:Z

    .line 306
    if-nez v4, :cond_0

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ao;->h:Lcom/inmobi/ads/ac;

    check-cast v6, Lcom/inmobi/rendering/RenderView;

    .line 17627
    iget v5, v4, Lcom/inmobi/ads/ac;->v:I

    .line 17618
    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/inmobi/ads/ac;->u:Lcom/inmobi/rendering/RenderView;

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    if-nez v5, :cond_0

    .line 17620
    iput-object v6, v4, Lcom/inmobi/ads/ac;->u:Lcom/inmobi/rendering/RenderView;

    goto/16 :goto_0

    .line 256
    :cond_c
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_WEBVIEW:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {v10}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v5

    if-ne v4, v5, :cond_d

    sget-object v5, Lcom/inmobi/ads/ba$a;->e:Lcom/inmobi/ads/ba$a;

    move-object v4, v10

    check-cast v4, Lcom/inmobi/ads/ba;

    .line 8036
    iget-object v4, v4, Lcom/inmobi/ads/ba;->z:Lcom/inmobi/ads/ba$a;

    .line 258
    if-eq v5, v4, :cond_0

    .line 262
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ao;->d:Lcom/inmobi/ads/NativeViewFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/ads/ao;->a()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inmobi/ads/ao;->i:Lcom/inmobi/ads/b;

    invoke-virtual {v4, v5, v10, v6}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_1

    .line 276
    :cond_e
    invoke-virtual {v10}, Lcom/inmobi/ads/NativeAsset;->p()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 277
    sget-object v4, Lcom/inmobi/ads/ao;->n:Landroid/os/Handler;

    new-instance v5, Lcom/inmobi/ads/ao$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/inmobi/ads/ao$4;-><init>(Lcom/inmobi/ads/ao;Landroid/view/View;)V

    .line 282
    invoke-virtual {v10}, Lcom/inmobi/ads/NativeAsset;->p()I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v8, v7

    .line 277
    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 11460
    :cond_f
    invoke-static {}, Lcom/inmobi/ads/ap;->a()Lcom/inmobi/ads/ap;

    move-result-object v5

    goto/16 :goto_3

    .line 11464
    :cond_10
    iget-object v5, v7, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v5}, Lcom/inmobi/ads/ap;->getAudioSessionId()I

    move-result v5

    iput v5, v7, Lcom/inmobi/ads/NativeVideoView;->d:I

    goto/16 :goto_4

    .line 11470
    :catch_0
    move-exception v5

    iget-object v5, v7, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 12046
    const/4 v8, -0x1

    iput v8, v5, Lcom/inmobi/ads/ap;->a:I

    .line 11471
    iget-object v5, v7, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 12054
    const/4 v8, -0x1

    iput v8, v5, Lcom/inmobi/ads/ap;->b:I

    goto/16 :goto_5

    .line 8435
    :catch_1
    move-exception v4

    .line 8436
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "SDK encountered unexpected error in handling the onVideoViewCreated event; "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8437
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 15086
    :cond_11
    :try_start_3
    iget v8, v5, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v8

    int-to-double v12, v8

    .line 15087
    int-to-double v8, v9

    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 15088
    invoke-static {v5}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v5

    int-to-double v14, v5

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    int-to-double v0, v7

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    mul-double/2addr v8, v14

    goto/16 :goto_7

    .line 15093
    :catch_2
    move-exception v5

    move-object v7, v5

    .line 15096
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 15097
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v8

    new-instance v9, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v9, v7}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v8, v9}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_8

    .line 313
    :cond_12
    return-object p1
.end method

.method public final b(Lcom/inmobi/ads/ar;Landroid/view/ViewGroup;Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/ar;
    .locals 3

    .prologue
    .line 143
    iput-object p3, p0, Lcom/inmobi/ads/ao;->p:Lcom/inmobi/rendering/RenderView;

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ar;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ar;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/inmobi/ads/ao;->n:Landroid/os/Handler;

    new-instance v2, Lcom/inmobi/ads/ao$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/inmobi/ads/ao$1;-><init>(Lcom/inmobi/ads/ao;Lcom/inmobi/ads/ar;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-object v0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ao;->o:Z

    .line 463
    iget-object v0, p0, Lcom/inmobi/ads/ao;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 464
    iget-object v0, p0, Lcom/inmobi/ads/ao;->m:Lcom/inmobi/ads/as;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/inmobi/ads/ao;->m:Lcom/inmobi/ads/as;

    invoke-interface {v0}, Lcom/inmobi/ads/as;->destroy()V

    .line 467
    :cond_0
    return-void
.end method
