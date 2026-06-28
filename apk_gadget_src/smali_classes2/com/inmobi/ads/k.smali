.class public Lcom/inmobi/ads/k;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/k$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/k$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/k;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/k;->a:Ljava/util/List;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/k;->b:Z

    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;FF)Landroid/animation/Animator;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 103
    div-float v0, p3, p2

    .line 104
    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 105
    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 106
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/animation/Animator;Lcom/inmobi/ads/NativeAsset;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v0, 0x0

    .line 78
    .line 6084
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 6085
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 6086
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->g()Lcom/inmobi/ads/av;

    move-result-object v0

    .line 6087
    if-eqz v0, :cond_1

    .line 7020
    iget-object v1, v0, Lcom/inmobi/ads/av;->a:Lcom/inmobi/ads/av$a;

    .line 7024
    iget-object v0, v0, Lcom/inmobi/ads/av;->b:Lcom/inmobi/ads/av$a;

    .line 6090
    if-eqz v0, :cond_0

    .line 6091
    invoke-virtual {v0}, Lcom/inmobi/ads/av$a;->a()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 6093
    :cond_0
    if-eqz v1, :cond_1

    .line 6094
    invoke-virtual {v1}, Lcom/inmobi/ads/av$a;->a()J

    move-result-wide v0

    mul-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/k;->a:Ljava/util/List;

    new-instance v1, Lcom/inmobi/ads/k$a;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/k$a;-><init>(Lcom/inmobi/ads/k;Landroid/animation/Animator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;)V
    .locals 4

    .prologue
    .line 37
    .line 38
    :try_start_0
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v0

    .line 1141
    iget-object v0, v0, Lcom/inmobi/ads/af;->c:Landroid/graphics/Point;

    .line 38
    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v0

    int-to-float v0, v0

    .line 40
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v1

    .line 1180
    iget-object v1, v1, Lcom/inmobi/ads/af;->d:Landroid/graphics/Point;

    .line 40
    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v1

    int-to-float v1, v1

    .line 41
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 2116
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    float-to-int v0, v0

    int-to-float v0, v0

    aput v0, v2, v3

    const/4 v0, 0x1

    float-to-int v1, v1

    int-to-float v1, v1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2117
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeContainerLayout$a;

    .line 2118
    new-instance v2, Lcom/inmobi/ads/k$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/inmobi/ads/k$1;-><init>(Lcom/inmobi/ads/k;Lcom/inmobi/ads/NativeContainerLayout$a;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    invoke-direct {p0, v1, p2}, Lcom/inmobi/ads/k;->a(Landroid/animation/Animator;Lcom/inmobi/ads/NativeAsset;)V

    .line 47
    :cond_0
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v0

    .line 2141
    iget-object v0, v0, Lcom/inmobi/ads/af;->c:Landroid/graphics/Point;

    .line 47
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v0

    int-to-float v0, v0

    .line 49
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v1

    .line 2180
    iget-object v1, v1, Lcom/inmobi/ads/af;->d:Landroid/graphics/Point;

    .line 49
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v1

    int-to-float v1, v1

    .line 50
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    .line 3136
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    float-to-int v0, v0

    int-to-float v0, v0

    aput v0, v2, v3

    const/4 v0, 0x1

    float-to-int v1, v1

    int-to-float v1, v1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3137
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeContainerLayout$a;

    .line 3138
    new-instance v2, Lcom/inmobi/ads/k$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/inmobi/ads/k$2;-><init>(Lcom/inmobi/ads/k;Lcom/inmobi/ads/NativeContainerLayout$a;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    invoke-direct {p0, v1, p2}, Lcom/inmobi/ads/k;->a(Landroid/animation/Animator;Lcom/inmobi/ads/NativeAsset;)V

    .line 56
    :cond_1
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v0

    .line 4137
    iget-object v0, v0, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 56
    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v0

    int-to-float v0, v0

    .line 58
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v1

    .line 4176
    iget-object v1, v1, Lcom/inmobi/ads/af;->b:Landroid/graphics/Point;

    .line 58
    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v1

    int-to-float v1, v1

    .line 59
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    .line 60
    const-string v2, "scaleX"

    invoke-static {p1, v2, v0, v1}, Lcom/inmobi/ads/k;->a(Landroid/view/View;Ljava/lang/String;FF)Landroid/animation/Animator;

    move-result-object v0

    .line 61
    invoke-direct {p0, v0, p2}, Lcom/inmobi/ads/k;->a(Landroid/animation/Animator;Lcom/inmobi/ads/NativeAsset;)V

    .line 64
    :cond_2
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v0

    .line 5137
    iget-object v0, v0, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 64
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v0

    int-to-float v0, v0

    .line 66
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->b()Lcom/inmobi/ads/af;

    move-result-object v1

    .line 5176
    iget-object v1, v1, Lcom/inmobi/ads/af;->b:Landroid/graphics/Point;

    .line 66
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcom/inmobi/ads/NativeViewFactory;->c(I)I

    move-result v1

    int-to-float v1, v1

    .line 67
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    .line 68
    const-string v2, "scaleY"

    invoke-static {p1, v2, v0, v1}, Lcom/inmobi/ads/k;->a(Landroid/view/View;Ljava/lang/String;FF)Landroid/animation/Animator;

    move-result-object v0

    .line 70
    invoke-direct {p0, v0, p2}, Lcom/inmobi/ads/k;->a(Landroid/animation/Animator;Lcom/inmobi/ads/NativeAsset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
