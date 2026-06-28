.class Lcom/adcolony/sdk/ba;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/ba$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/io/FileInputStream;

.field private I:Lcom/adcolony/sdk/af;

.field private J:Lcom/adcolony/sdk/c;

.field private K:Landroid/view/Surface;

.field private L:Landroid/graphics/SurfaceTexture;

.field private M:Landroid/graphics/RectF;

.field private N:Lcom/adcolony/sdk/ba$a;

.field private O:Landroid/widget/ProgressBar;

.field private P:Landroid/media/MediaPlayer;

.field private Q:Lorg/json/JSONObject;

.field private R:Ljava/util/concurrent/ExecutorService;

.field private S:Lcom/adcolony/sdk/af;

.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:Z

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:D

.field private t:D

.field private u:J

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/adcolony/sdk/af;ILcom/adcolony/sdk/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v1, p0, Lcom/adcolony/sdk/ba;->h:Z

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/ba;->i:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/adcolony/sdk/ba;->j:Landroid/graphics/Paint;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/ba;->M:Landroid/graphics/RectF;

    .line 79
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ba;->Q:Lorg/json/JSONObject;

    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ba;->R:Ljava/util/concurrent/ExecutorService;

    .line 95
    iput-object p4, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    .line 96
    iput-object p2, p0, Lcom/adcolony/sdk/ba;->I:Lcom/adcolony/sdk/af;

    .line 97
    iput p3, p0, Lcom/adcolony/sdk/ba;->o:I

    .line 99
    invoke-virtual {p0, p0}, Lcom/adcolony/sdk/ba;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/ba;D)D
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/adcolony/sdk/ba;->s:D

    return-wide p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/ba;J)J
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/adcolony/sdk/ba;->u:J

    return-wide p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/ba;)Lcom/adcolony/sdk/af;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->S:Lcom/adcolony/sdk/af;

    return-object v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/ba;Lcom/adcolony/sdk/ba$a;)Lcom/adcolony/sdk/ba$a;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adcolony/sdk/ba;->N:Lcom/adcolony/sdk/ba$a;

    return-object p1
.end method

.method private a(Lcom/adcolony/sdk/af;)Z
    .locals 3

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 231
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/adcolony/sdk/ba;->o:I

    if-ne v1, v2, :cond_0

    const-string v1, "container_id"

    .line 232
    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->d()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v1, "ad_session_id"

    .line 233
    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v1}, Lcom/adcolony/sdk/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/adcolony/sdk/ba;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/ba;->a(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/ba;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/adcolony/sdk/ba;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/adcolony/sdk/ba;D)D
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/adcolony/sdk/ba;->t:D

    return-wide p1
.end method

.method static synthetic b(Lcom/adcolony/sdk/ba;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/adcolony/sdk/ba;->o:I

    return v0
.end method

.method private b(Lcom/adcolony/sdk/af;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40800000    # 4.0f

    const/4 v3, 0x0

    .line 633
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 634
    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/ba;->k:I

    .line 635
    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/ba;->l:I

    .line 636
    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/ba;->m:I

    .line 637
    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ba;->n:I

    .line 638
    invoke-virtual {p0}, Lcom/adcolony/sdk/ba;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 639
    iget v1, p0, Lcom/adcolony/sdk/ba;->k:I

    iget v2, p0, Lcom/adcolony/sdk/ba;->l:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 640
    iget v1, p0, Lcom/adcolony/sdk/ba;->m:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 641
    iget v1, p0, Lcom/adcolony/sdk/ba;->n:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 642
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ba;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ba;->N:Lcom/adcolony/sdk/ba$a;

    if-eqz v0, :cond_0

    .line 644
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/adcolony/sdk/ba;->c:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget v2, p0, Lcom/adcolony/sdk/ba;->c:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 645
    iget-object v1, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v1}, Lcom/adcolony/sdk/c;->p()I

    move-result v1

    iget v2, p0, Lcom/adcolony/sdk/ba;->c:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 646
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 647
    iget-object v1, p0, Lcom/adcolony/sdk/ba;->N:Lcom/adcolony/sdk/ba$a;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/ba$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/adcolony/sdk/ba;Lcom/adcolony/sdk/af;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/ba;->b(Lcom/adcolony/sdk/af;)V

    return-void
.end method

.method static synthetic b(Lcom/adcolony/sdk/ba;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/adcolony/sdk/ba;->D:Z

    return p1
.end method

.method static synthetic c(Lcom/adcolony/sdk/ba;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->G:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/adcolony/sdk/af;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 657
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "visible"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    .line 658
    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/ba;->setVisibility(I)V

    .line 660
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ba;->N:Lcom/adcolony/sdk/ba$a;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->N:Lcom/adcolony/sdk/ba$a;

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/ba$a;->setVisibility(I)V

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/ba;->setVisibility(I)V

    .line 665
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ba;->N:Lcom/adcolony/sdk/ba$a;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->N:Lcom/adcolony/sdk/ba$a;

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/ba$a;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/adcolony/sdk/ba;Lcom/adcolony/sdk/af;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/ba;->c(Lcom/adcolony/sdk/af;)V

    return-void
.end method

.method static synthetic c(Lcom/adcolony/sdk/ba;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/adcolony/sdk/ba;->w:Z

    return p1
.end method

.method private d(Lcom/adcolony/sdk/af;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 679
    iget-boolean v2, p0, Lcom/adcolony/sdk/ba;->z:Z

    if-nez v2, :cond_0

    .line 691
    :goto_0
    return v0

    .line 682
    :cond_0
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "volume"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/y;->e(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    .line 683
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/l;->u()Lcom/adcolony/sdk/AdColonyInterstitial;

    move-result-object v3

    .line 684
    if-eqz v3, :cond_2

    .line 685
    float-to-double v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v3, v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->b(Z)V

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 688
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 689
    const-string v2, "success"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 690
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/af;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    move v0, v1

    .line 691
    goto :goto_0
.end method

.method static synthetic d(Lcom/adcolony/sdk/ba;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->v:Z

    return v0
.end method

.method static synthetic d(Lcom/adcolony/sdk/ba;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/ba;->e(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method private e(Lcom/adcolony/sdk/af;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 751
    iget-boolean v2, p0, Lcom/adcolony/sdk/ba;->z:Z

    if-nez v2, :cond_0

    .line 766
    :goto_0
    return v0

    .line 754
    :cond_0
    iget-boolean v2, p0, Lcom/adcolony/sdk/ba;->v:Z

    if-eqz v2, :cond_1

    .line 755
    iput-boolean v0, p0, Lcom/adcolony/sdk/ba;->v:Z

    .line 757
    :cond_1
    iput-object p1, p0, Lcom/adcolony/sdk/ba;->S:Lcom/adcolony/sdk/af;

    .line 758
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "time"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 759
    mul-int/lit16 v2, v0, 0x3e8

    .line 760
    iget-object v3, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    .line 761
    iget-object v4, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 762
    iget-object v4, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 763
    if-ne v3, v0, :cond_2

    .line 764
    iput-boolean v1, p0, Lcom/adcolony/sdk/ba;->v:Z

    :cond_2
    move v0, v1

    .line 766
    goto :goto_0
.end method

.method static synthetic e(Lcom/adcolony/sdk/ba;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->y:Z

    return v0
.end method

.method static synthetic e(Lcom/adcolony/sdk/ba;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/ba;->d(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/adcolony/sdk/ba;Lcom/adcolony/sdk/af;)Lcom/adcolony/sdk/af;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adcolony/sdk/ba;->S:Lcom/adcolony/sdk/af;

    return-object p1
.end method

.method static synthetic f(Lcom/adcolony/sdk/ba;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->A:Z

    return v0
.end method

.method static synthetic g(Lcom/adcolony/sdk/ba;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic h(Lcom/adcolony/sdk/ba;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/adcolony/sdk/ba;->u:J

    return-wide v0
.end method

.method static synthetic i(Lcom/adcolony/sdk/ba;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->D:Z

    return v0
.end method

.method static synthetic j(Lcom/adcolony/sdk/ba;)D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/adcolony/sdk/ba;->s:D

    return-wide v0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 384
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 385
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/ba;->G:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 386
    new-instance v1, Lcom/adcolony/sdk/af;

    const-string v2, "AdSession.on_error"

    iget-object v3, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->c()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->b()V

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/ba;->v:Z

    .line 388
    return-void
.end method

.method static synthetic k(Lcom/adcolony/sdk/ba;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adcolony/sdk/ba;->k()V

    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 489
    new-instance v0, Lcom/adcolony/sdk/ba$8;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ba$8;-><init>(Lcom/adcolony/sdk/ba;)V

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/adcolony/sdk/ba;->R:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 556
    invoke-direct {p0}, Lcom/adcolony/sdk/ba;->k()V

    goto :goto_0
.end method

.method static synthetic l(Lcom/adcolony/sdk/ba;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->C:Z

    return v0
.end method

.method static synthetic m(Lcom/adcolony/sdk/ba;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->x:Z

    return v0
.end method

.method static synthetic n(Lcom/adcolony/sdk/ba;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->Q:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic o(Lcom/adcolony/sdk/ba;)Lcom/adcolony/sdk/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    return-object v0
.end method

.method static synthetic p(Lcom/adcolony/sdk/ba;)D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/adcolony/sdk/ba;->t:D

    return-wide v0
.end method

.method static synthetic q(Lcom/adcolony/sdk/ba;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->w:Z

    return v0
.end method

.method static synthetic r(Lcom/adcolony/sdk/ba;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/adcolony/sdk/ba;->c:F

    return v0
.end method

.method static synthetic s(Lcom/adcolony/sdk/ba;)Lcom/adcolony/sdk/ba$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->N:Lcom/adcolony/sdk/ba$a;

    return-object v0
.end method

.method static synthetic t(Lcom/adcolony/sdk/ba;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->M:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic u(Lcom/adcolony/sdk/ba;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/adcolony/sdk/ba;->d:F

    return v0
.end method

.method static synthetic v(Lcom/adcolony/sdk/ba;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->i:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic w(Lcom/adcolony/sdk/ba;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/adcolony/sdk/ba;->g:I

    return v0
.end method

.method static synthetic x(Lcom/adcolony/sdk/ba;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->j:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->L:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/ba;->A:Z

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->R:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 110
    return-void
.end method

.method b()V
    .locals 8

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 118
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->I:Lcom/adcolony/sdk/af;

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 119
    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/ba;->G:Ljava/lang/String;

    .line 120
    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/ba;->k:I

    .line 121
    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/ba;->l:I

    .line 122
    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/ba;->m:I

    .line 123
    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/ba;->n:I

    .line 124
    const-string v1, "enable_timer"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adcolony/sdk/ba;->C:Z

    .line 125
    const-string v1, "enable_progress"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adcolony/sdk/ba;->E:Z

    .line 126
    const-string v1, "filepath"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/ba;->F:Ljava/lang/String;

    .line 127
    const-string v1, "video_width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/ba;->p:I

    .line 128
    const-string v1, "video_height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ba;->q:I

    .line 129
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v0}, Lcom/adcolony/sdk/n;->o()F

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ba;->f:F

    .line 131
    sget-object v0, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Original video dimensions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adcolony/sdk/ba;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adcolony/sdk/ba;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 133
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ba;->setVisibility(I)V

    .line 134
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/adcolony/sdk/ba;->m:I

    iget v2, p0, Lcom/adcolony/sdk/ba;->n:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 135
    iget v1, p0, Lcom/adcolony/sdk/ba;->k:I

    iget v2, p0, Lcom/adcolony/sdk/ba;->l:I

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 136
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 137
    iget-object v1, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v1, p0, v0}, Lcom/adcolony/sdk/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->E:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ba;->O:Landroid/widget/ProgressBar;

    .line 141
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    iget-object v1, p0, Lcom/adcolony/sdk/ba;->O:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/adcolony/sdk/ba;->f:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Lcom/adcolony/sdk/ba;->f:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    .line 146
    iput-boolean v7, p0, Lcom/adcolony/sdk/ba;->z:Z

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->F:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/adcolony/sdk/ba;->F:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ba;->H:Ljava/io/FileInputStream;

    .line 151
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adcolony/sdk/ba;->H:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 157
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 158
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 159
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_1
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "VideoView.play"

    new-instance v2, Lcom/adcolony/sdk/ba$1;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/ba$1;-><init>(Lcom/adcolony/sdk/ba;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "VideoView.set_bounds"

    new-instance v2, Lcom/adcolony/sdk/ba$2;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/ba$2;-><init>(Lcom/adcolony/sdk/ba;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "VideoView.set_visible"

    new-instance v2, Lcom/adcolony/sdk/ba$3;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/ba$3;-><init>(Lcom/adcolony/sdk/ba;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "VideoView.pause"

    new-instance v2, Lcom/adcolony/sdk/ba$4;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/ba$4;-><init>(Lcom/adcolony/sdk/ba;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "VideoView.seek_to_time"

    new-instance v2, Lcom/adcolony/sdk/ba$5;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/ba$5;-><init>(Lcom/adcolony/sdk/ba;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "VideoView.set_volume"

    new-instance v2, Lcom/adcolony/sdk/ba$6;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/ba$6;-><init>(Lcom/adcolony/sdk/ba;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->o()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "VideoView.play"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->o()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "VideoView.set_bounds"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->o()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "VideoView.set_visible"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->o()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "VideoView.pause"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->o()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "VideoView.seek_to_time"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->o()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "VideoView.set_volume"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    return-void

    .line 153
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/adcolony/sdk/ba;->B:Z

    .line 154
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adcolony/sdk/ba;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    sget-object v1, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v2, "Failed to create/prepare MediaPlayer: "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 163
    invoke-direct {p0}, Lcom/adcolony/sdk/ba;->k()V

    goto/16 :goto_1
.end method

.method c()V
    .locals 9

    .prologue
    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 564
    iget-boolean v2, p0, Lcom/adcolony/sdk/ba;->h:Z

    if-eqz v2, :cond_1

    .line 565
    const-wide v2, 0x4076800000000000L    # 360.0

    iget-wide v4, p0, Lcom/adcolony/sdk/ba;->t:D

    div-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/adcolony/sdk/ba;->e:F

    .line 568
    iget-object v2, p0, Lcom/adcolony/sdk/ba;->j:Landroid/graphics/Paint;

    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 569
    iget-object v2, p0, Lcom/adcolony/sdk/ba;->j:Landroid/graphics/Paint;

    iget v3, p0, Lcom/adcolony/sdk/ba;->f:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    const/high16 v4, -0x1000000

    invoke-virtual {v2, v3, v7, v7, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 570
    iget-object v2, p0, Lcom/adcolony/sdk/ba;->j:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 571
    iget-object v2, p0, Lcom/adcolony/sdk/ba;->j:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 572
    iget-object v2, p0, Lcom/adcolony/sdk/ba;->j:Landroid/graphics/Paint;

    const/high16 v3, 0x41400000    # 12.0f

    iget v4, p0, Lcom/adcolony/sdk/ba;->f:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 573
    iget-object v2, p0, Lcom/adcolony/sdk/ba;->i:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 574
    iget v2, p0, Lcom/adcolony/sdk/ba;->f:F

    mul-float/2addr v2, v6

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 575
    :goto_0
    cmpg-float v2, v1, v0

    if-gez v2, :cond_3

    .line 576
    :goto_1
    iget-object v1, p0, Lcom/adcolony/sdk/ba;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 577
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/adcolony/sdk/ba;->f:F

    mul-float/2addr v1, v8

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v7, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 578
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->i:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 581
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 582
    iget-object v1, p0, Lcom/adcolony/sdk/ba;->j:Landroid/graphics/Paint;

    const-string v2, "0123456789"

    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 583
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/adcolony/sdk/ba;->c:F

    .line 586
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Lcom/adcolony/sdk/ba$9;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ba$9;-><init>(Lcom/adcolony/sdk/ba;)V

    invoke-static {v0}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    .line 598
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/ba;->h:Z

    .line 600
    :cond_1
    iget-wide v0, p0, Lcom/adcolony/sdk/ba;->t:D

    iget-wide v2, p0, Lcom/adcolony/sdk/ba;->s:D

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/adcolony/sdk/ba;->g:I

    .line 601
    iget v0, p0, Lcom/adcolony/sdk/ba;->c:F

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/adcolony/sdk/ba;->a:F

    .line 602
    iget v0, p0, Lcom/adcolony/sdk/ba;->c:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/adcolony/sdk/ba;->b:F

    .line 603
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->M:Landroid/graphics/RectF;

    iget v1, p0, Lcom/adcolony/sdk/ba;->a:F

    iget v2, p0, Lcom/adcolony/sdk/ba;->c:F

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/adcolony/sdk/ba;->b:F

    iget v3, p0, Lcom/adcolony/sdk/ba;->c:F

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/adcolony/sdk/ba;->a:F

    iget v4, p0, Lcom/adcolony/sdk/ba;->c:F

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/adcolony/sdk/ba;->b:F

    iget v5, p0, Lcom/adcolony/sdk/ba;->c:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 606
    iget v0, p0, Lcom/adcolony/sdk/ba;->e:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/adcolony/sdk/ba;->t:D

    iget-wide v4, p0, Lcom/adcolony/sdk/ba;->s:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/adcolony/sdk/ba;->d:F

    .line 607
    return-void

    .line 574
    :cond_2
    iget v1, p0, Lcom/adcolony/sdk/ba;->f:F

    mul-float/2addr v1, v6

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 575
    goto/16 :goto_1
.end method

.method d()V
    .locals 2

    .prologue
    .line 610
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v1, "MediaPlayer stopped and released."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 612
    :try_start_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->O:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    iget-object v1, p0, Lcom/adcolony/sdk/ba;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 622
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/ba;->v:Z

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/ba;->z:Z

    .line 624
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 625
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    sget-object v0, Lcom/adcolony/sdk/aa;->f:Lcom/adcolony/sdk/aa;

    const-string v1, "Caught IllegalStateException when calling stop on MediaPlayer"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    goto :goto_0
.end method

.method e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 700
    iget-boolean v1, p0, Lcom/adcolony/sdk/ba;->z:Z

    if-nez v1, :cond_0

    .line 719
    :goto_0
    return v0

    .line 704
    :cond_0
    iget-boolean v1, p0, Lcom/adcolony/sdk/ba;->y:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/adcolony/sdk/a;->b:Z

    if-eqz v1, :cond_2

    .line 705
    iget-object v1, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 706
    invoke-direct {p0}, Lcom/adcolony/sdk/ba;->l()V

    .line 707
    sget-object v1, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    const-string v2, "MediaPlayer is prepared - ADCVideoView play() called."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 718
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ba;->setWillNotDraw(Z)V

    .line 719
    const/4 v0, 0x1

    goto :goto_0

    .line 708
    :cond_2
    iget-boolean v1, p0, Lcom/adcolony/sdk/ba;->v:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/adcolony/sdk/a;->b:Z

    if-eqz v1, :cond_1

    .line 709
    iget-object v1, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 710
    iput-boolean v0, p0, Lcom/adcolony/sdk/ba;->y:Z

    .line 711
    iget-object v1, p0, Lcom/adcolony/sdk/ba;->R:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_3

    .line 712
    invoke-direct {p0}, Lcom/adcolony/sdk/ba;->l()V

    .line 714
    :cond_3
    iget-object v1, p0, Lcom/adcolony/sdk/ba;->N:Lcom/adcolony/sdk/ba$a;

    if-eqz v1, :cond_1

    .line 715
    iget-object v1, p0, Lcom/adcolony/sdk/ba;->N:Lcom/adcolony/sdk/ba$a;

    invoke-virtual {v1}, Lcom/adcolony/sdk/ba$a;->invalidate()V

    goto :goto_1
.end method

.method f()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 728
    iget-boolean v2, p0, Lcom/adcolony/sdk/ba;->z:Z

    if-nez v2, :cond_0

    .line 729
    sget-object v1, Lcom/adcolony/sdk/aa;->f:Lcom/adcolony/sdk/aa;

    const-string v2, "ADCVideoView pause() called while MediaPlayer is not prepared."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 741
    :goto_0
    return v0

    .line 732
    :cond_0
    iget-boolean v2, p0, Lcom/adcolony/sdk/ba;->x:Z

    if-nez v2, :cond_1

    .line 733
    sget-object v1, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v2, "Ignoring ADCVideoView pause due to invalid MediaPlayer state."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    goto :goto_0

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ba;->r:I

    .line 737
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/adcolony/sdk/ba;->t:D

    .line 738
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 739
    iput-boolean v1, p0, Lcom/adcolony/sdk/ba;->y:Z

    .line 740
    sget-object v0, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    const-string v2, "Video view paused"

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    move v0, v1

    .line 741
    goto :goto_0
.end method

.method g()V
    .locals 1

    .prologue
    .line 770
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/ba;->w:Z

    .line 771
    return-void
.end method

.method h()Z
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method j()Z
    .locals 1

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->v:Z

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/ba;->v:Z

    .line 438
    iget-wide v0, p0, Lcom/adcolony/sdk/ba;->t:D

    iput-wide v0, p0, Lcom/adcolony/sdk/ba;->s:D

    .line 441
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->Q:Lorg/json/JSONObject;

    const-string v1, "id"

    iget v2, p0, Lcom/adcolony/sdk/ba;->o:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 442
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->Q:Lorg/json/JSONObject;

    const-string v1, "container_id"

    iget-object v2, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->d()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 443
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->Q:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    iget-object v2, p0, Lcom/adcolony/sdk/ba;->G:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 444
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->Q:Lorg/json/JSONObject;

    const-string v1, "elapsed"

    iget-wide v2, p0, Lcom/adcolony/sdk/ba;->s:D

    invoke-static {v0, v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 445
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->Q:Lorg/json/JSONObject;

    const-string v1, "duration"

    iget-wide v2, p0, Lcom/adcolony/sdk/ba;->t:D

    invoke-static {v0, v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 446
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v1, "VideoView.on_progress"

    iget-object v2, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->c()I

    move-result v2

    iget-object v3, p0, Lcom/adcolony/sdk/ba;->Q:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2, v3}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    .line 447
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/adcolony/sdk/ba;->k()V

    .line 396
    sget-object v0, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v1, "MediaPlayer error: "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adcolony/sdk/aa;->a(I)Lcom/adcolony/sdk/aa;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adcolony/sdk/aa;->b(I)Lcom/adcolony/sdk/aa;

    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method public onMeasure(II)V
    .locals 7
    .param p1, "width_measure_spec"    # I
    .param p2, "height_measure_spec"    # I

    .prologue
    const/4 v6, 0x0

    .line 359
    iget v0, p0, Lcom/adcolony/sdk/ba;->m:I

    int-to-double v0, v0

    iget v2, p0, Lcom/adcolony/sdk/ba;->p:I

    int-to-double v2, v2

    div-double v2, v0, v2

    .line 360
    iget v0, p0, Lcom/adcolony/sdk/ba;->n:I

    int-to-double v0, v0

    iget v4, p0, Lcom/adcolony/sdk/ba;->q:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    .line 361
    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    .line 362
    :goto_0
    iget v2, p0, Lcom/adcolony/sdk/ba;->p:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    .line 363
    iget v3, p0, Lcom/adcolony/sdk/ba;->q:I

    int-to-double v4, v3

    mul-double/2addr v0, v4

    double-to-int v1, v0

    .line 364
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v3, "setMeasuredDimension to "

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/aa;->a(I)Lcom/adcolony/sdk/aa;

    move-result-object v0

    const-string v3, " by "

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(I)Lcom/adcolony/sdk/aa;

    .line 365
    invoke-virtual {p0, v2, v1}, Lcom/adcolony/sdk/ba;->setMeasuredDimension(II)V

    .line 368
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->B:Z

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/adcolony/sdk/ba;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 370
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 371
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 372
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 373
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 374
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ba;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    :cond_0
    return-void

    :cond_1
    move-wide v0, v2

    .line 361
    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/ba;->z:Z

    .line 409
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->E:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    iget-object v1, p0, Lcom/adcolony/sdk/ba;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 414
    :cond_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->B:Z

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ba;->p:I

    .line 416
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ba;->q:I

    .line 417
    iget v0, p0, Lcom/adcolony/sdk/ba;->p:I

    iget v1, p0, Lcom/adcolony/sdk/ba;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/ba;->onMeasure(II)V

    .line 418
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v1, "MediaPlayer getVideoWidth = "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(I)Lcom/adcolony/sdk/aa;

    .line 419
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v1, "MediaPlayer getVideoHeight = "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(I)Lcom/adcolony/sdk/aa;

    .line 421
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 422
    const-string v1, "id"

    iget v2, p0, Lcom/adcolony/sdk/ba;->o:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 423
    const-string v1, "container_id"

    iget-object v2, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->d()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 424
    const-string v1, "ad_session_id"

    iget-object v2, p0, Lcom/adcolony/sdk/ba;->G:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 425
    sget-object v1, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    const-string v2, "ADCVideoView is prepared"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 426
    new-instance v1, Lcom/adcolony/sdk/af;

    const-string v2, "VideoView.on_ready"

    iget-object v3, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->c()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->b()V

    .line 427
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->R:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ba;->R:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->R:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/adcolony/sdk/ba$7;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ba$7;-><init>(Lcom/adcolony/sdk/ba;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    invoke-direct {p0}, Lcom/adcolony/sdk/ba;->k()V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 243
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->A:Z

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/aa;->h:Lcom/adcolony/sdk/aa;

    const-string v1, "Null texture provided by system\'s onSurfaceTextureAvailable or MediaPlayer has been destroyed."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 255
    :goto_0
    return-void

    .line 247
    :cond_1
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ba;->K:Landroid/view/Surface;

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->P:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adcolony/sdk/ba;->K:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_1
    iput-object p1, p0, Lcom/adcolony/sdk/ba;->L:Landroid/graphics/SurfaceTexture;

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    sget-object v0, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v1, "IllegalStateException thrown when calling MediaPlayer.setSurface()"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 252
    invoke-direct {p0}, Lcom/adcolony/sdk/ba;->k()V

    goto :goto_1
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/adcolony/sdk/ba;->L:Landroid/graphics/SurfaceTexture;

    .line 271
    iget-boolean v0, p0, Lcom/adcolony/sdk/ba;->A:Z

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 275
    :goto_0
    return v0

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 275
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 283
    iput-object p1, p0, Lcom/adcolony/sdk/ba;->L:Landroid/graphics/SurfaceTexture;

    .line 284
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/adcolony/sdk/ba;->L:Landroid/graphics/SurfaceTexture;

    .line 263
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v9, 0xff00

    const/4 v1, 0x1

    .line 295
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v2

    .line 296
    invoke-virtual {v2}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v0

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 299
    if-eqz v3, :cond_0

    if-eq v3, v1, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    .line 302
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    .line 304
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 306
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v6

    .line 307
    const-string v7, "view_id"

    iget v8, p0, Lcom/adcolony/sdk/ba;->o:I

    invoke-static {v6, v7, v8}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 308
    const-string v7, "ad_session_id"

    iget-object v8, p0, Lcom/adcolony/sdk/ba;->G:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 309
    const-string v7, "container_x"

    iget v8, p0, Lcom/adcolony/sdk/ba;->k:I

    add-int/2addr v8, v4

    invoke-static {v6, v7, v8}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 310
    const-string v7, "container_y"

    iget v8, p0, Lcom/adcolony/sdk/ba;->l:I

    add-int/2addr v8, v5

    invoke-static {v6, v7, v8}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 311
    const-string v7, "view_x"

    invoke-static {v6, v7, v4}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 312
    const-string v4, "view_y"

    invoke-static {v6, v4, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 313
    const-string v4, "id"

    iget-object v5, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v5}, Lcom/adcolony/sdk/c;->d()I

    move-result v5

    invoke-static {v6, v4, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 314
    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 350
    goto :goto_0

    .line 316
    :pswitch_1
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v2, "AdContainer.on_touch_began"

    iget-object v3, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->c()I

    move-result v3

    invoke-direct {v0, v2, v3, v6}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto :goto_1

    .line 319
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v9

    shr-int/lit8 v0, v0, 0x8

    .line 320
    const-string v2, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/adcolony/sdk/ba;->k:I

    add-int/2addr v3, v4

    invoke-static {v6, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 321
    const-string v2, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/adcolony/sdk/ba;->l:I

    add-int/2addr v3, v4

    invoke-static {v6, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 322
    const-string v2, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v6, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 323
    const-string v2, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v6, v2, v0}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 324
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v2, "AdContainer.on_touch_began"

    iget-object v3, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->c()I

    move-result v3

    invoke-direct {v0, v2, v3, v6}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto :goto_1

    .line 327
    :pswitch_3
    iget-object v3, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->r()Z

    move-result v3

    if-nez v3, :cond_1

    .line 328
    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->f()Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/adcolony/sdk/ba;->G:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bc;

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/l;->a(Lcom/adcolony/sdk/bc;)V

    .line 330
    :cond_1
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v2, "AdContainer.on_touch_ended"

    iget-object v3, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->c()I

    move-result v3

    invoke-direct {v0, v2, v3, v6}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto :goto_1

    .line 333
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x8

    .line 334
    const-string v4, "container_x"

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iget v7, p0, Lcom/adcolony/sdk/ba;->k:I

    add-int/2addr v5, v7

    invoke-static {v6, v4, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 335
    const-string v4, "container_y"

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iget v7, p0, Lcom/adcolony/sdk/ba;->l:I

    add-int/2addr v5, v7

    invoke-static {v6, v4, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 336
    const-string v4, "view_x"

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v6, v4, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 337
    const-string v4, "view_y"

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v6, v4, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 338
    iget-object v3, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->r()Z

    move-result v3

    if-nez v3, :cond_2

    .line 339
    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->f()Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/adcolony/sdk/ba;->G:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bc;

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/l;->a(Lcom/adcolony/sdk/bc;)V

    .line 341
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v2, "AdContainer.on_touch_ended"

    iget-object v3, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->c()I

    move-result v3

    invoke-direct {v0, v2, v3, v6}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto/16 :goto_1

    .line 344
    :pswitch_5
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v2, "AdContainer.on_touch_cancelled"

    iget-object v3, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->c()I

    move-result v3

    invoke-direct {v0, v2, v3, v6}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto/16 :goto_1

    .line 347
    :pswitch_6
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v2, "AdContainer.on_touch_moved"

    iget-object v3, p0, Lcom/adcolony/sdk/ba;->J:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->c()I

    move-result v3

    invoke-direct {v0, v2, v3, v6}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto/16 :goto_1

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
