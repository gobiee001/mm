.class Lcom/inmobi/ads/NativeViewFactory;
.super Ljava/lang/Object;
.source "NativeViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeViewFactory$b;,
        Lcom/inmobi/ads/NativeViewFactory$a;,
        Lcom/inmobi/ads/NativeViewFactory$PicassoCallback;,
        Lcom/inmobi/ads/NativeViewFactory$c;,
        Lcom/inmobi/ads/NativeViewFactory$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/inmobi/ads/NativeViewFactory$d;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/NativeViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static g:I

.field private static h:I


# instance fields
.field private b:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/ads/NativeViewFactory$d;",
            "Lcom/inmobi/ads/NativeViewFactory$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 69
    const-class v0, Lcom/inmobi/ads/NativeViewFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeViewFactory;->a:Ljava/lang/String;

    .line 294
    sput v1, Lcom/inmobi/ads/NativeViewFactory;->g:I

    .line 295
    sput v1, Lcom/inmobi/ads/NativeViewFactory;->h:I

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 299
    sput-object v0, Lcom/inmobi/ads/NativeViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/ar;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->a:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/bi;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->b:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/bh;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->c:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/NativeContainerLayout;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->d:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->c:Ljava/util/Map;

    const-class v1, Landroid/widget/ImageView;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->g:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/NativeVideoWrapper;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->h:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/NativeViewFactory$b;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->e:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->c:Ljava/util/Map;

    const-class v1, Landroid/widget/Button;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->f:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/NativeTimerView;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->i:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/rendering/RenderView;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->j:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/GifView;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->k:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/inmobi/ads/NativeViewFactory;->f:Ljava/lang/ref/WeakReference;

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    .line 338
    new-instance v0, Lcom/inmobi/ads/NativeViewFactory$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeViewFactory$1;-><init>(Lcom/inmobi/ads/NativeViewFactory;)V

    .line 351
    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->a:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v0, Lcom/inmobi/ads/NativeViewFactory$7;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeViewFactory$7;-><init>(Lcom/inmobi/ads/NativeViewFactory;)V

    .line 367
    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->d:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    new-instance v0, Lcom/inmobi/ads/NativeViewFactory$8;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeViewFactory$8;-><init>(Lcom/inmobi/ads/NativeViewFactory;)V

    .line 389
    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->b:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v0, Lcom/inmobi/ads/NativeViewFactory$9;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeViewFactory$9;-><init>(Lcom/inmobi/ads/NativeViewFactory;)V

    .line 404
    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->c:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v0, Lcom/inmobi/ads/NativeViewFactory$10;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeViewFactory$10;-><init>(Lcom/inmobi/ads/NativeViewFactory;)V

    .line 431
    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->g:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v0, Lcom/inmobi/ads/NativeViewFactory$11;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeViewFactory$11;-><init>(Lcom/inmobi/ads/NativeViewFactory;)V

    .line 456
    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->k:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    new-instance v0, Lcom/inmobi/ads/NativeViewFactory$12;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeViewFactory$12;-><init>(Lcom/inmobi/ads/NativeViewFactory;)V

    .line 488
    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->h:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    new-instance v0, Lcom/inmobi/ads/NativeViewFactory$13;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeViewFactory$13;-><init>(Lcom/inmobi/ads/NativeViewFactory;)V

    .line 514
    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->e:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    new-instance v0, Lcom/inmobi/ads/NativeViewFactory$14;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeViewFactory$14;-><init>(Lcom/inmobi/ads/NativeViewFactory;)V

    .line 540
    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->f:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    new-instance v0, Lcom/inmobi/ads/NativeViewFactory$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeViewFactory$2;-><init>(Lcom/inmobi/ads/NativeViewFactory;)V

    .line 561
    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->i:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    new-instance v0, Lcom/inmobi/ads/NativeViewFactory$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeViewFactory$3;-><init>(Lcom/inmobi/ads/NativeViewFactory;)V

    .line 584
    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeViewFactory$d;->j:Lcom/inmobi/ads/NativeViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeViewFactory;)I
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/inmobi/ads/NativeViewFactory;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/inmobi/ads/NativeViewFactory;->b:I

    return v0
.end method

.method public static a(Lcom/inmobi/ads/NativeAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1272
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v0

    .line 9137
    iget-object v0, v0, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 1273
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v1

    .line 9141
    iget-object v2, v1, Lcom/inmobi/ads/af;->c:Landroid/graphics/Point;

    .line 1275
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v3

    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 1276
    invoke-static {v4}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1277
    instance-of v3, p1, Lcom/inmobi/ads/NativeContainerLayout;

    if-eqz v3, :cond_0

    .line 1278
    new-instance v1, Lcom/inmobi/ads/NativeContainerLayout$a;

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1279
    invoke-static {v0}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v0

    invoke-direct {v1, v3, v0}, Lcom/inmobi/ads/NativeContainerLayout$a;-><init>(II)V

    move-object v0, v1

    .line 1280
    check-cast v0, Lcom/inmobi/ads/NativeContainerLayout$a;

    iget v3, v2, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 1281
    invoke-static {v2}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v2

    .line 10081
    iput v3, v0, Lcom/inmobi/ads/NativeContainerLayout$a;->a:I

    .line 10082
    iput v2, v0, Lcom/inmobi/ads/NativeContainerLayout$a;->b:I

    .line 1300
    :goto_0
    return-object v1

    .line 1282
    :cond_0
    instance-of v3, p1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 1283
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1284
    invoke-static {v0}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v0

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 1285
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v2, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 1286
    invoke-static {v2}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v2

    .line 1285
    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1287
    :cond_1
    instance-of v3, p1, Landroid/widget/AbsListView;

    if-eqz v3, :cond_2

    .line 1289
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1290
    invoke-static {v0}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1291
    :cond_2
    instance-of v3, p1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 1292
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1293
    invoke-static {v0}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v0

    invoke-direct {v1, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 1294
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 1295
    invoke-static {v2}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v2

    .line 1294
    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1297
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not set layout params for Parent:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic a(Landroid/widget/Button;Lcom/inmobi/ads/NativeAsset;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/inmobi/ads/NativeViewFactory;->b(Landroid/widget/Button;Lcom/inmobi/ads/NativeAsset;)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/inmobi/ads/NativeViewFactory;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 593
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    move-object v0, v1

    .line 595
    :goto_0
    if-nez v0, :cond_1

    .line 596
    const-class v2, Lcom/inmobi/ads/NativeViewFactory;

    monitor-enter v2

    .line 597
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    move-object v0, v1

    .line 598
    :goto_1
    if-nez v0, :cond_0

    .line 599
    new-instance v0, Lcom/inmobi/ads/NativeViewFactory;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeViewFactory;-><init>(Landroid/content/Context;)V

    .line 600
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/inmobi/ads/NativeViewFactory;->e:Ljava/lang/ref/WeakReference;

    .line 602
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_1
    return-object v0

    .line 593
    :cond_2
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->e:Ljava/lang/ref/WeakReference;

    .line 594
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeViewFactory;

    goto :goto_0

    .line 597
    :cond_3
    :try_start_1
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeViewFactory;

    goto :goto_1

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 67
    sput-object p0, Lcom/inmobi/ads/NativeViewFactory;->f:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static a(I)V
    .locals 0

    .prologue
    .line 313
    sput p0, Lcom/inmobi/ads/NativeViewFactory;->g:I

    .line 314
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/inmobi/ads/NativeViewFactory;->b(Landroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/widget/ImageView;Lcom/inmobi/ads/NativeAsset;)V
    .locals 3

    .prologue
    .line 33942
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->q()Ljava/lang/String;

    .line 33943
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->r()Ljava/lang/String;

    move-result-object v0

    .line 33944
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->c()Ljava/lang/String;

    move-result-object v1

    .line 33953
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 33954
    const-string v2, "cross_button"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33955
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 33956
    invoke-static {p0, p1}, Lcom/inmobi/ads/NativeViewFactory;->b(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 67
    :cond_0
    return-void
.end method

.method static a(Landroid/view/View;Lcom/inmobi/ads/af;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1204
    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 1206
    :try_start_0
    invoke-virtual {p1}, Lcom/inmobi/ads/af;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1213
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1214
    const-string v1, "line"

    invoke-virtual {p1}, Lcom/inmobi/ads/af;->a()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 1215
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1216
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1217
    const-string v0, "curved"

    invoke-virtual {p1}, Lcom/inmobi/ads/af;->b()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1218
    invoke-virtual {p1}, Lcom/inmobi/ads/af;->c()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1220
    :cond_0
    const-string v0, "#ff000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 1222
    :try_start_1
    invoke-virtual {p1}, Lcom/inmobi/ads/af;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1228
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 1231
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1236
    :cond_1
    :goto_2
    return-void

    .line 1207
    :catch_0
    move-exception v1

    .line 1210
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 1223
    :catch_1
    move-exception v1

    .line 1226
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1

    .line 1233
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method static synthetic a(Landroid/widget/ImageView;Lcom/inmobi/ads/NativeAsset;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 10869
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10870
    if-eqz v0, :cond_2

    .line 10871
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v1

    .line 11137
    iget-object v1, v1, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 10871
    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v3

    .line 10872
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v1

    .line 12137
    iget-object v1, v1, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 10872
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v4

    .line 10873
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/af;->f()Ljava/lang/String;

    move-result-object v1

    .line 10874
    const-string v5, "aspectFit"

    if-ne v1, v5, :cond_3

    .line 10875
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 10884
    :goto_0
    sget-object v1, Lcom/inmobi/ads/NativeViewFactory;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 10885
    if-eqz v1, :cond_0

    .line 10886
    if-lez v3, :cond_0

    if-lez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 10887
    invoke-static {v1}, Lcom/inmobi/commons/core/a/a;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v3, Lcom/inmobi/ads/NativeViewFactory$PicassoCallback;

    invoke-direct {v3, v1, p0, p1}, Lcom/inmobi/ads/NativeViewFactory$PicassoCallback;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/inmobi/ads/NativeAsset;)V

    .line 10888
    invoke-virtual {v0, p0, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 10889
    const-string v0, "cross_button"

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10890
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 10892
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/inmobi/ads/NativeViewFactory$a;

    invoke-direct {v3, v1, p0}, Lcom/inmobi/ads/NativeViewFactory$a;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12162
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->u()Lcom/inmobi/ads/NativeAsset;

    move-result-object v5

    .line 12164
    const/4 v1, 0x0

    .line 12166
    if-eqz v5, :cond_a

    const-string v0, "line"

    invoke-virtual {v5}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/af;->a()Ljava/lang/String;

    move-result-object v3

    if-ne v0, v3, :cond_a

    .line 12167
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v0

    .line 13141
    iget-object v0, v0, Lcom/inmobi/ads/af;->c:Landroid/graphics/Point;

    .line 12167
    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v3

    .line 14141
    iget-object v3, v3, Lcom/inmobi/ads/af;->c:Landroid/graphics/Point;

    .line 12167
    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v0, v3, :cond_9

    move v0, v2

    .line 12171
    :goto_1
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v3

    .line 15137
    iget-object v3, v3, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 12171
    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v3

    .line 12172
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v4

    .line 16137
    iget-object v4, v4, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 12172
    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v4

    .line 12173
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v6

    .line 16141
    iget-object v6, v6, Lcom/inmobi/ads/af;->c:Landroid/graphics/Point;

    .line 12173
    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v6

    if-ne v3, v4, :cond_8

    move v3, v2

    .line 12177
    :goto_2
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v4

    .line 17141
    iget-object v4, v4, Lcom/inmobi/ads/af;->c:Landroid/graphics/Point;

    .line 12177
    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v4

    .line 12178
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v6

    .line 18141
    iget-object v6, v6, Lcom/inmobi/ads/af;->c:Landroid/graphics/Point;

    .line 12178
    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v6}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v6

    if-ne v4, v6, :cond_7

    move v4, v2

    .line 12182
    :goto_3
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v6

    .line 19137
    iget-object v6, v6, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 12182
    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v6}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v6

    .line 12183
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v7

    .line 20137
    iget-object v7, v7, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 12183
    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v7}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v7

    .line 12184
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v8

    .line 20141
    iget-object v8, v8, Lcom/inmobi/ads/af;->c:Landroid/graphics/Point;

    .line 12184
    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v8

    add-int/2addr v7, v8

    if-ne v6, v7, :cond_1

    move v1, v2

    .line 12188
    :cond_1
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v5

    .line 21137
    iget-object v5, v5, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 12188
    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v5

    .line 12189
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v6

    .line 22137
    iget-object v6, v6, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 12189
    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-static {v6}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    move v0, v2

    .line 12194
    :goto_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v3, v5, :cond_5

    .line 12195
    invoke-virtual {p0, v0, v4, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 10899
    :goto_5
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/view/View;Lcom/inmobi/ads/af;)V

    .line 67
    :cond_2
    return-void

    .line 10876
    :cond_3
    const-string v5, "aspectFill"

    if-ne v1, v5, :cond_4

    .line 10877
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    .line 10879
    :cond_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    .line 12197
    :cond_5
    invoke-virtual {p0, v0, v4, v2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_5

    :cond_6
    move v2, v3

    goto :goto_4

    :cond_7
    move v4, v1

    goto :goto_3

    :cond_8
    move v3, v1

    goto/16 :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_1

    :cond_a
    move v2, v1

    move v4, v1

    move v0, v1

    goto :goto_4
.end method

.method static synthetic a(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 67
    .line 28248
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 28249
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 28250
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 67
    return-void
.end method

.method static synthetic a(Landroid/widget/TextView;Lcom/inmobi/ads/NativeAsset;)V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x1

    .line 26031
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/au$a;

    .line 26032
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 26137
    iget-object v2, v0, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 26033
    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v2

    .line 27137
    iget-object v3, v0, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 26034
    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 26032
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26035
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26036
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28140
    iget v1, v0, Lcom/inmobi/ads/au$a;->p:I

    .line 28076
    packed-switch v1, :pswitch_data_0

    .line 28079
    const v1, 0x800013

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 26040
    :goto_0
    invoke-virtual {v0}, Lcom/inmobi/ads/au$a;->h()I

    move-result v1

    invoke-static {v1}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 26042
    const-string v1, "#ff000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 26044
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/ads/au$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 26051
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26053
    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 26055
    :try_start_1
    invoke-virtual {v0}, Lcom/inmobi/ads/au$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 26062
    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 26064
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_0

    .line 26065
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 26067
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/ads/au$a;->j()[Lcom/inmobi/ads/au$a$a;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/widget/TextView;[Lcom/inmobi/ads/au$a$a;)V

    .line 26068
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 26069
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 26070
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 26071
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 26072
    invoke-static {p0, v0}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/view/View;Lcom/inmobi/ads/af;)V

    .line 67
    return-void

    .line 28082
    :pswitch_0
    const v1, 0x800015

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 28085
    :pswitch_1
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 26045
    :catch_0
    move-exception v2

    .line 26049
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1

    .line 26056
    :catch_1
    move-exception v2

    .line 26060
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_2

    .line 28076
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Landroid/widget/TextView;[Lcom/inmobi/ads/au$a$a;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1090
    .line 1091
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    .line 1092
    array-length v3, p1

    move v2, v0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, p1, v2

    .line 1093
    sget-object v5, Lcom/inmobi/ads/NativeViewFactory$6;->c:[I

    invoke-virtual {v4}, Lcom/inmobi/ads/au$a$a;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 1092
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1096
    :pswitch_0
    or-int/lit8 v1, v1, 0x1

    .line 1097
    goto :goto_1

    .line 1099
    :pswitch_1
    or-int/lit8 v1, v1, 0x2

    .line 1100
    goto :goto_1

    .line 1102
    :pswitch_2
    or-int/lit8 v0, v0, 0x10

    .line 1103
    goto :goto_1

    .line 1105
    :pswitch_3
    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 1111
    :cond_0
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1112
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1113
    return-void

    .line 1093
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeVideoWrapper;Lcom/inmobi/ads/NativeAsset;)V
    .locals 2

    .prologue
    .line 67
    .line 26012
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 26013
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/view/View;Lcom/inmobi/ads/af;)V

    .line 26015
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->w()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26016
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/NativeVideoWrapper;->setPosterImage(Landroid/graphics/Bitmap;)V

    .line 26018
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoWrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 67
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeViewFactory;Lcom/inmobi/ads/GifView;Lcom/inmobi/ads/NativeAsset;)V
    .locals 3

    .prologue
    .line 22904
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v0

    .line 23137
    iget-object v0, v0, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 22904
    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v0

    .line 22905
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v1

    .line 24137
    iget-object v1, v1, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 22905
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v1

    .line 22907
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Lcom/inmobi/ads/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p2

    .line 22908
    check-cast v0, Lcom/inmobi/ads/ak;

    .line 25072
    iget-object v0, v0, Lcom/inmobi/ads/ak;->z:Landroid/graphics/Movie;

    .line 22908
    invoke-virtual {p1, v0}, Lcom/inmobi/ads/GifView;->setMovie(Landroid/graphics/Movie;)V

    .line 22909
    new-instance v0, Lcom/inmobi/ads/NativeViewFactory$5;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/ads/NativeViewFactory$5;-><init>(Lcom/inmobi/ads/NativeViewFactory;Lcom/inmobi/ads/GifView;)V

    invoke-virtual {p1, v0}, Lcom/inmobi/ads/GifView;->setGifCallbacks(Lcom/inmobi/ads/GifView$a;)V

    .line 22921
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/view/View;Lcom/inmobi/ads/af;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeViewFactory;Lcom/inmobi/ads/NativeTimerView;Lcom/inmobi/ads/NativeAsset;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 28804
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/inmobi/ads/NativeTimerView;->setVisibility(I)V

    .line 28805
    check-cast p2, Lcom/inmobi/ads/aw;

    .line 29029
    iget-object v0, p2, Lcom/inmobi/ads/aw;->A:Lcom/inmobi/ads/av;

    .line 30020
    iget-object v0, v0, Lcom/inmobi/ads/av;->a:Lcom/inmobi/ads/av$a;

    .line 30029
    iget-object v1, p2, Lcom/inmobi/ads/aw;->A:Lcom/inmobi/ads/av;

    .line 31024
    iget-object v6, v1, Lcom/inmobi/ads/av;->b:Lcom/inmobi/ads/av$a;

    .line 28810
    if-eqz v0, :cond_2

    .line 28811
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/ads/av$a;->a()J

    move-result-wide v0

    move-wide v4, v0

    .line 28814
    :goto_0
    if-eqz v6, :cond_1

    .line 28815
    invoke-virtual {v6}, Lcom/inmobi/ads/av$a;->a()J

    move-result-wide v0

    .line 28817
    :goto_1
    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 28818
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/NativeTimerView;->setTimerValue(J)V

    .line 28819
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/inmobi/ads/NativeViewFactory$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/inmobi/ads/NativeViewFactory$4;-><init>(Lcom/inmobi/ads/NativeViewFactory;Lcom/inmobi/ads/aw;Lcom/inmobi/ads/NativeTimerView;)V

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28834
    :cond_0
    :goto_2
    return-void

    .line 28831
    :catch_0
    move-exception v0

    .line 28833
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_2

    :cond_1
    move-wide v0, v2

    goto :goto_1

    :cond_2
    move-wide v4, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)V
    .locals 4

    .prologue
    .line 67
    .line 31840
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/inmobi/ads/ba;

    move-object v1, v0

    .line 31841
    sget-object v2, Lcom/inmobi/rendering/RenderView;->a:Lcom/inmobi/rendering/RenderView$a;

    invoke-virtual {p0, v2, p2}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView$a;Lcom/inmobi/ads/b;)V

    .line 32423
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->j:Z

    .line 31843
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31845
    sget-object v3, Lcom/inmobi/ads/NativeViewFactory$6;->b:[I

    .line 33036
    iget-object v1, v1, Lcom/inmobi/ads/ba;->z:Lcom/inmobi/ads/ba$a;

    .line 31845
    invoke-virtual {v1}, Lcom/inmobi/ads/ba$a;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 31853
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 31859
    :goto_0
    return-void

    .line 31848
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31856
    :catch_0
    move-exception v1

    .line 31858
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 31845
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/inmobi/ads/NativeViewFactory;)I
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/inmobi/ads/NativeViewFactory;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/inmobi/ads/NativeViewFactory;->b:I

    return v0
.end method

.method private static b(Landroid/widget/Button;Lcom/inmobi/ads/NativeAsset;)Landroid/widget/Button;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/16 v5, 0x11

    .line 1117
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ah$a;

    .line 1118
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 7137
    iget-object v2, v0, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 1119
    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v2

    .line 8137
    iget-object v3, v0, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 1120
    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1118
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1121
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/inmobi/ads/ah$a;->h()I

    move-result v2

    invoke-static {v2}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1126
    const-string v1, "#ff000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 1128
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/ads/ah$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1135
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1137
    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 1139
    :try_start_1
    invoke-virtual {v0}, Lcom/inmobi/ads/ah$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 1146
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1148
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_0

    .line 1149
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextAlignment(I)V

    .line 1151
    :cond_0
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setGravity(I)V

    .line 1153
    invoke-virtual {v0}, Lcom/inmobi/ads/ah$a;->j()[Lcom/inmobi/ads/au$a$a;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/widget/TextView;[Lcom/inmobi/ads/au$a$a;)V

    .line 1154
    invoke-static {p0, v0}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/view/View;Lcom/inmobi/ads/af;)V

    .line 1155
    return-object p0

    .line 1129
    :catch_0
    move-exception v2

    .line 1133
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 1140
    :catch_1
    move-exception v2

    .line 1144
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1
.end method

.method private b()Lcom/inmobi/ads/NativeViewFactory$c;
    .locals 5

    .prologue
    .line 792
    const/4 v3, 0x0

    .line 793
    const/4 v2, 0x0

    .line 794
    iget-object v0, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 795
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeViewFactory$c;

    .line 4244
    iget-object v1, v1, Lcom/inmobi/ads/NativeViewFactory$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 795
    if-le v1, v3, :cond_1

    .line 796
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeViewFactory$c;

    .line 5244
    iget-object v1, v0, Lcom/inmobi/ads/NativeViewFactory$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    :goto_1
    move-object v2, v0

    move v3, v1

    .line 799
    goto :goto_0

    .line 800
    :cond_0
    return-object v2

    :cond_1
    move-object v0, v2

    move v1, v3

    goto :goto_1
.end method

.method static b(I)V
    .locals 0

    .prologue
    .line 317
    sput p0, Lcom/inmobi/ads/NativeViewFactory;->h:I

    .line 318
    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 5

    .prologue
    const/16 v3, 0x28

    const/4 v4, 0x0

    .line 933
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 934
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->a()Lcom/inmobi/commons/core/utilities/b/d;

    move-result-object v0

    .line 6023
    iget v0, v0, Lcom/inmobi/commons/core/utilities/b/d;->c:F

    .line 935
    new-instance v1, Lcom/inmobi/rendering/CustomView;

    invoke-direct {v1, p0, v0, v4}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FI)V

    .line 6925
    invoke-static {v3}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 6926
    invoke-static {v3}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 6925
    invoke-virtual {v1, v4, v4, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 6927
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 6928
    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 6929
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 937
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 939
    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 10264
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    .line 10266
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static c(I)I
    .locals 6

    .prologue
    .line 321
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 322
    if-eqz v0, :cond_1

    .line 323
    instance-of v0, v0, Lcom/inmobi/rendering/InMobiAdActivity;

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return p0

    .line 327
    :cond_1
    sget v0, Lcom/inmobi/ads/NativeViewFactory;->g:I

    if-eqz v0, :cond_0

    .line 330
    int-to-double v0, p0

    sget v2, Lcom/inmobi/ads/NativeViewFactory;->g:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    sget v4, Lcom/inmobi/ads/NativeViewFactory;->h:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_0
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 747
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeViewFactory$d;

    .line 748
    if-nez v0, :cond_0

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "View type unknown, ignoring recycle:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 765
    :goto_0
    return-void

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeViewFactory$c;

    .line 753
    if-nez v1, :cond_1

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported AssetType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed to recycle view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 758
    :cond_1
    iget v0, p0, Lcom/inmobi/ads/NativeViewFactory;->b:I

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_2

    .line 2775
    invoke-direct {p0}, Lcom/inmobi/ads/NativeViewFactory;->b()Lcom/inmobi/ads/NativeViewFactory$c;

    move-result-object v0

    .line 2776
    if-eqz v0, :cond_2

    .line 3253
    iget-object v2, v0, Lcom/inmobi/ads/NativeViewFactory$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 3254
    iget-object v0, v0, Lcom/inmobi/ads/NativeViewFactory$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 761
    :cond_2
    invoke-virtual {v1, p1}, Lcom/inmobi/ads/NativeViewFactory$c;->a(Landroid/view/View;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 618
    .line 1699
    instance-of v0, p2, Lcom/inmobi/ads/ag;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 1700
    check-cast v0, Lcom/inmobi/ads/ag;

    .line 1701
    invoke-virtual {v0}, Lcom/inmobi/ads/ag;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1702
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory$d;->a:Lcom/inmobi/ads/NativeViewFactory$d;

    .line 619
    :goto_0
    if-nez v0, :cond_3

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported AssetType:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeAsset$AssetType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed to instantiate view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 632
    :goto_1
    return-object v0

    .line 1703
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/ads/ag;->y()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2095
    iget v0, v0, Lcom/inmobi/ads/ag;->A:I

    .line 1704
    packed-switch v0, :pswitch_data_0

    .line 1707
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory$d;->b:Lcom/inmobi/ads/NativeViewFactory$d;

    goto :goto_0

    .line 1709
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory$d;->c:Lcom/inmobi/ads/NativeViewFactory$d;

    goto :goto_0

    .line 1712
    :cond_1
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory$d;->d:Lcom/inmobi/ads/NativeViewFactory$d;

    goto :goto_0

    .line 1715
    :cond_2
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory$6;->a:[I

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeAsset$AssetType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    move-object v0, v1

    .line 1734
    goto :goto_0

    .line 1717
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory$d;->e:Lcom/inmobi/ads/NativeViewFactory$d;

    goto :goto_0

    .line 1720
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory$d;->g:Lcom/inmobi/ads/NativeViewFactory$d;

    goto :goto_0

    .line 1722
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory$d;->h:Lcom/inmobi/ads/NativeViewFactory$d;

    goto :goto_0

    .line 1724
    :pswitch_4
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory$d;->f:Lcom/inmobi/ads/NativeViewFactory$d;

    goto :goto_0

    .line 1726
    :pswitch_5
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory$d;->i:Lcom/inmobi/ads/NativeViewFactory$d;

    goto :goto_0

    .line 1728
    :pswitch_6
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory$d;->j:Lcom/inmobi/ads/NativeViewFactory$d;

    goto :goto_0

    .line 1730
    :pswitch_7
    sget-object v0, Lcom/inmobi/ads/NativeViewFactory$d;->k:Lcom/inmobi/ads/NativeViewFactory$d;

    goto :goto_0

    .line 626
    :cond_3
    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeViewFactory$c;

    .line 627
    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/NativeViewFactory$c;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1715
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final a(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 661
    instance-of v0, p1, Lcom/inmobi/ads/ar;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/inmobi/ads/NativeContainerLayout;

    if-eqz v0, :cond_3

    :cond_0
    move-object v0, p1

    .line 662
    check-cast v0, Lcom/inmobi/ads/NativeContainerLayout;

    .line 664
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeContainerLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_3

    .line 667
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 668
    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :goto_0
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 670
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeContainerLayout;

    .line 671
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeContainerLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_2

    .line 672
    invoke-virtual {v0, v2}, Lcom/inmobi/ads/NativeContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 674
    invoke-virtual {v0, v2}, Lcom/inmobi/ads/NativeContainerLayout;->removeViewAt(I)V

    .line 675
    instance-of v4, v1, Lcom/inmobi/ads/NativeContainerLayout;

    if-eqz v4, :cond_1

    .line 676
    check-cast v1, Lcom/inmobi/ads/NativeContainerLayout;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 678
    :cond_1
    invoke-direct {p0, v1}, Lcom/inmobi/ads/NativeViewFactory;->c(Landroid/view/View;)V

    goto :goto_2

    .line 682
    :cond_2
    invoke-direct {p0, v0}, Lcom/inmobi/ads/NativeViewFactory;->c(Landroid/view/View;)V

    goto :goto_0

    .line 687
    :cond_3
    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeViewFactory;->c(Landroid/view/View;)V

    .line 689
    :cond_4
    return-void
.end method
