.class Lcom/moat/analytics/mobile/mpub/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/mpub/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/moat/analytics/mobile/mpub/i;

.field final b:Ljava/lang/String;

.field final c:Z

.field d:Z

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z

.field private h:Z

.field private i:Lcom/moat/analytics/mobile/mpub/b$a;

.field private j:Lorg/json/JSONObject;

.field private k:Landroid/graphics/Rect;

.field private l:Landroid/graphics/Rect;

.field private m:Lorg/json/JSONObject;

.field private n:Lorg/json/JSONObject;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;ZZ)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->o:Ljava/util/Map;

    const-string/jumbo v0, "{}"

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->p:Ljava/lang/String;

    const/4 v0, 0x3

    const-string v1, "MoatBaseTracker"

    const-string v2, "Initializing."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->b:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->e:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/moat/analytics/mobile/mpub/b;->g:Z

    iput-boolean p3, p0, Lcom/moat/analytics/mobile/mpub/b;->c:Z

    iput-boolean v3, p0, Lcom/moat/analytics/mobile/mpub/b;->d:Z

    iput-boolean v3, p0, Lcom/moat/analytics/mobile/mpub/b;->h:Z

    new-instance v0, Lcom/moat/analytics/mobile/mpub/b$a;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/moat/analytics/mobile/mpub/b$a;-><init>(Lcom/moat/analytics/mobile/mpub/b;Landroid/graphics/Rect;D)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->i:Lcom/moat/analytics/mobile/mpub/b$a;

    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/view/View;)F
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    move v1, v0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    mul-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Rect;)I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method static a(Landroid/graphics/Rect;Ljava/util/Set;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/moat/analytics/mobile/mpub/b$1;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/mpub/b$1;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v2, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v7, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v6, v3, v7, v0, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    move v2, v0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v0, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v2, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v9, v2

    mul-int/2addr v2, v8

    add-int/2addr v3, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v8, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v0, v2

    move v2, v3

    move v3, v2

    move v2, v0

    goto :goto_3

    :cond_4
    move v2, v1

    :cond_5
    return v2

    :cond_6
    move v2, v3

    goto :goto_2
.end method

.method private a(Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;
    .locals 4

    const/4 v3, 0x0

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private a(Landroid/graphics/Rect;ZZZ)Lcom/moat/analytics/mobile/mpub/b$a;
    .locals 10

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    new-instance v0, Lcom/moat/analytics/mobile/mpub/b$a;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/moat/analytics/mobile/mpub/b$a;-><init>(Lcom/moat/analytics/mobile/mpub/b;Landroid/graphics/Rect;D)V

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/b;->a(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_3

    if-lez v1, :cond_3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/moat/analytics/mobile/mpub/b;->a(Landroid/graphics/Rect;)I

    move-result v3

    if-ge v3, v1, :cond_0

    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    iput-object v2, v0, Lcom/moat/analytics/mobile/mpub/b$a;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/moat/analytics/mobile/mpub/b;->a(Landroid/graphics/Rect;Landroid/view/View;Ljava/util/Set;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-wide v8, v0, Lcom/moat/analytics/mobile/mpub/b$a;->c:D

    :cond_1
    if-nez v5, :cond_3

    invoke-static {v2, v4}, Lcom/moat/analytics/mobile/mpub/b;->a(Landroid/graphics/Rect;Ljava/util/Set;)I

    move-result v2

    if-lez v2, :cond_2

    int-to-double v4, v2

    int-to-double v6, v3

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    iput-wide v4, v0, Lcom/moat/analytics/mobile/mpub/b$a;->c:D

    :cond_2
    sub-int v2, v3, v2

    int-to-double v2, v2

    int-to-double v4, v1

    mul-double/2addr v4, v8

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/moat/analytics/mobile/mpub/b$a;->b:D

    :cond_3
    return-object v0
.end method

.method private a(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/mpub/b;->b(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/b;->b(Landroid/graphics/Rect;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/graphics/Rect;Landroid/view/View;Ljava/util/Set;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/view/View;",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v7, Ljava/util/ArrayDeque;

    invoke-direct {v7}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v7, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const-string v0, "MoatBaseTracker"

    const-string v1, "starting covering rect search"

    invoke-static {v10, v0, p1, v1}, Lcom/moat/analytics/mobile/mpub/n;->b(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v3

    move v0, v3

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_2

    :cond_0
    move v4, v3

    :cond_1
    return v4

    :cond_2
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "MoatBaseTracker"

    const-string v1, "found target"

    invoke-static {v10, v0, p0, v1}, Lcom/moat/analytics/mobile/mpub/n;->b(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v4

    move v0, v5

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/b;->b(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_5

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_5

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v1, v6, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v6

    cmpl-float v1, v1, v6

    if-lez v1, :cond_7

    move v1, v4

    :goto_2
    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/b;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p0, v1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "MoatBaseTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Covered by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v6, v0, v8}, Lcom/moat/analytics/mobile/mpub/n;->b(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_6
    move v0, v5

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v6

    cmpl-float v1, v1, v6

    if-nez v1, :cond_9

    move v1, v4

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    move v1, v4

    goto :goto_2

    :cond_9
    move v1, v3

    goto :goto_2
.end method

.method private b(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;
    .locals 5

    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    div-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private static b(Landroid/graphics/Rect;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "x"

    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "y"

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "w"

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "h"

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static b(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    nop

    :array_0
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->f:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/a/a/a;->a(Ljava/lang/Object;)V

    const-string v0, "MoatBaseTracker"

    const-string v1, "Attempting bridge installation."

    invoke-static {v4, v0, p0, v1}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/b;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/b;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/moat/analytics/mobile/mpub/i;

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->j()Landroid/webkit/WebView;

    move-result-object v1

    sget-object v2, Lcom/moat/analytics/mobile/mpub/i$a;->a:Lcom/moat/analytics/mobile/mpub/i$a;

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/mpub/i;-><init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/mpub/i$a;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->a:Lcom/moat/analytics/mobile/mpub/i;

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->a:Lcom/moat/analytics/mobile/mpub/i;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/mpub/i;->a:Z

    const-string v1, "MoatBaseTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bridge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "installed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, p0, v0}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "not "

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->a:Lcom/moat/analytics/mobile/mpub/i;

    const-string v0, "MoatBaseTracker"

    const-string v1, "Bridge not installed, WebView is null."

    invoke-static {v4, v0, p0, v1}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private e()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()F
    .locals 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/mpub/b;->a(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->j()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method private k()Z
    .locals 1

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Landroid/util/DisplayMetrics;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/moat/analytics/mobile/mpub/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/moat/analytics/mobile/mpub/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 15

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "{}"

    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->k()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->l()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->e()Z

    move-result v6

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->f()Z

    move-result v7

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->g()Z

    move-result v8

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->h()F

    move-result v9

    const-string v3, "dr"

    iget v10, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v4, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "dv"

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/p;->a()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v4, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "adKey"

    iget-object v10, p0, Lcom/moat/analytics/mobile/mpub/b;->b:Ljava/lang/String;

    invoke-interface {v4, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "isAttached"

    if-eqz v6, :cond_8

    move v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "inFocus"

    if-eqz v7, :cond_9

    move v3, v2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "isHidden"

    if-eqz v8, :cond_a

    move v3, v2

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "opacity"

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v4, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/moat/analytics/mobile/mpub/b;->a(Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->b()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {p0, v9, v6, v7, v8}, Lcom/moat/analytics/mobile/mpub/b;->a(Landroid/graphics/Rect;ZZZ)Lcom/moat/analytics/mobile/mpub/b$a;

    move-result-object v6

    iget-object v7, p0, Lcom/moat/analytics/mobile/mpub/b;->j:Lorg/json/JSONObject;

    if-eqz v7, :cond_0

    iget-wide v10, v6, Lcom/moat/analytics/mobile/mpub/b$a;->b:D

    iget-object v7, p0, Lcom/moat/analytics/mobile/mpub/b;->i:Lcom/moat/analytics/mobile/mpub/b$a;

    iget-wide v12, v7, Lcom/moat/analytics/mobile/mpub/b$a;->b:D

    cmpl-double v7, v10, v12

    if-nez v7, :cond_0

    iget-object v7, v6, Lcom/moat/analytics/mobile/mpub/b$a;->a:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/moat/analytics/mobile/mpub/b;->i:Lcom/moat/analytics/mobile/mpub/b$a;

    iget-object v8, v8, Lcom/moat/analytics/mobile/mpub/b$a;->a:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-wide v10, v6, Lcom/moat/analytics/mobile/mpub/b$a;->c:D

    iget-object v7, p0, Lcom/moat/analytics/mobile/mpub/b;->i:Lcom/moat/analytics/mobile/mpub/b$a;

    iget-wide v12, v7, Lcom/moat/analytics/mobile/mpub/b$a;->c:D

    cmpl-double v7, v10, v12

    if-eqz v7, :cond_1

    :cond_0
    iput-object v6, p0, Lcom/moat/analytics/mobile/mpub/b;->i:Lcom/moat/analytics/mobile/mpub/b$a;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/moat/analytics/mobile/mpub/b;->i:Lcom/moat/analytics/mobile/mpub/b$a;

    iget-object v7, v7, Lcom/moat/analytics/mobile/mpub/b$a;->a:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v5}, Lcom/moat/analytics/mobile/mpub/b;->a(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Ljava/util/Map;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->j:Lorg/json/JSONObject;

    move v0, v2

    :cond_1
    const-string v7, "coveredPercent"

    iget-wide v10, v6, Lcom/moat/analytics/mobile/mpub/b$a;->c:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/moat/analytics/mobile/mpub/b;->n:Lorg/json/JSONObject;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/moat/analytics/mobile/mpub/b;->l:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    iput-object v3, p0, Lcom/moat/analytics/mobile/mpub/b;->l:Landroid/graphics/Rect;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {p0, v3, v5}, Lcom/moat/analytics/mobile/mpub/b;->a(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->n:Lorg/json/JSONObject;

    move v0, v2

    :cond_3
    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/b;->m:Lorg/json/JSONObject;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/b;->k:Landroid/graphics/Rect;

    invoke-virtual {v9, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iput-object v9, p0, Lcom/moat/analytics/mobile/mpub/b;->k:Landroid/graphics/Rect;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {p0, v9, v5}, Lcom/moat/analytics/mobile/mpub/b;->a(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->m:Lorg/json/JSONObject;

    move v0, v2

    :cond_5
    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/b;->o:Ljava/util/Map;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/b;->o:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    iput-object v4, p0, Lcom/moat/analytics/mobile/mpub/b;->o:Ljava/util/Map;

    move v0, v2

    :cond_7
    if-eqz v0, :cond_c

    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/b;->o:Ljava/util/Map;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "screen"

    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/b;->n:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "view"

    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/b;->m:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "visible"

    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "maybe"

    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "visiblePercent"

    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/b;->i:Lcom/moat/analytics/mobile/mpub/b$a;

    iget-wide v4, v3, Lcom/moat/analytics/mobile/mpub/b$a;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_b

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    :try_start_1
    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->p:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    return-object v0

    :cond_8
    move v3, v0

    goto/16 :goto_0

    :cond_9
    move v3, v0

    goto/16 :goto_1

    :cond_a
    move v3, v0

    goto/16 :goto_2

    :cond_b
    :try_start_2
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->p:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    :goto_5
    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->p:Ljava/lang/String;

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_5

    :cond_d
    move-object v0, v1

    goto :goto_4
.end method

.method a(Landroid/webkit/WebView;)V
    .locals 1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->f:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->a:Lcom/moat/analytics/mobile/mpub/i;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->d()V

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->a:Lcom/moat/analytics/mobile/mpub/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->a:Lcom/moat/analytics/mobile/mpub/i;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/mpub/i;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->a:Lcom/moat/analytics/mobile/mpub/i;

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/mpub/i;->a(Lcom/moat/analytics/mobile/mpub/b;)V

    :cond_1
    return-void
.end method

.method a(Lcom/moat/analytics/mobile/mpub/i;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/b;->a:Lcom/moat/analytics/mobile/mpub/i;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->a:Lcom/moat/analytics/mobile/mpub/i;

    invoke-virtual {v0, p1}, Lcom/moat/analytics/mobile/mpub/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method b()Landroid/graphics/Rect;
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v0, v2

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v3, v1, v0

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int v4, v2, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data
.end method

.method c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public changeTargetView(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x3

    const-string v2, "MoatBaseTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changing view to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, p0, v0}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->e:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method startTracking()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x3

    const-string v0, "MoatBaseTracker"

    const-string v1, "Attempting to start impression."

    invoke-static {v4, v0, p0, v1}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/b;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->a:Lcom/moat/analytics/mobile/mpub/i;

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/mpub/i;->b(Lcom/moat/analytics/mobile/mpub/b;)Z

    move-result v1

    const-string v2, "MoatBaseTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "started."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, p0, v0}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iput-boolean v5, p0, Lcom/moat/analytics/mobile/mpub/b;->d:Z

    iput-boolean v5, p0, Lcom/moat/analytics/mobile/mpub/b;->h:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "not "

    goto :goto_0

    :cond_2
    const-string v0, "MoatBaseTracker"

    const-string v1, "startTracking failed, tracker already started"

    invoke-static {v4, v0, p0, v1}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopTracking()V
    .locals 5

    const/4 v4, 0x3

    const-string v0, "MoatBaseTracker"

    const-string v1, "Attempting to stop impression."

    invoke-static {v4, v0, p0, v1}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/b;->d:Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->a:Lcom/moat/analytics/mobile/mpub/i;

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/mpub/i;->c(Lcom/moat/analytics/mobile/mpub/b;)Z

    move-result v0

    const-string v1, "MoatBaseTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression tracking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "stopped."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, p0, v0}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "not "

    goto :goto_0
.end method
