.class public Lcom/inmobi/ads/NativeVideoController;
.super Landroid/widget/FrameLayout;
.source "NativeVideoController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeVideoController$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Z

.field private c:Lcom/inmobi/ads/ay;

.field private d:Lcom/inmobi/ads/NativeVideoController$a;

.field private e:Lcom/inmobi/ads/NativeVideoView;

.field private f:Lcom/inmobi/rendering/CustomView;

.field private g:Lcom/inmobi/rendering/CustomView;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Z

.field private k:F

.field private final l:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/inmobi/ads/NativeVideoController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeVideoController;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/inmobi/ads/NativeVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/inmobi/ads/NativeVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v4, p0, Lcom/inmobi/ads/NativeVideoController;->j:Z

    .line 294
    new-instance v0, Lcom/inmobi/ads/NativeVideoController$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeVideoController$1;-><init>(Lcom/inmobi/ads/NativeVideoController;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->l:Landroid/view/View$OnClickListener;

    .line 1063
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->i:Landroid/widget/RelativeLayout;

    .line 1064
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1065
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/NativeVideoController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1070
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->i:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 1071
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->a()Lcom/inmobi/commons/core/utilities/b/d;

    move-result-object v0

    .line 2023
    iget v0, v0, Lcom/inmobi/commons/core/utilities/b/d;->c:F

    .line 1071
    iput v0, p0, Lcom/inmobi/ads/NativeVideoController;->k:F

    .line 1072
    new-instance v0, Lcom/inmobi/rendering/CustomView;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/inmobi/ads/NativeVideoController;->k:F

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FI)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->f:Lcom/inmobi/rendering/CustomView;

    .line 1073
    new-instance v0, Lcom/inmobi/rendering/CustomView;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/inmobi/ads/NativeVideoController;->k:F

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FI)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->g:Lcom/inmobi/rendering/CustomView;

    .line 1074
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoController;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->h:Landroid/widget/ProgressBar;

    .line 1075
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->h:Landroid/widget/ProgressBar;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setScaleY(F)V

    .line 1076
    invoke-direct {p0}, Lcom/inmobi/ads/NativeVideoController;->c()V

    .line 2109
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2110
    const/16 v0, 0xc

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2111
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->a()Lcom/inmobi/commons/core/utilities/b/d;

    move-result-object v0

    .line 3023
    iget v0, v0, Lcom/inmobi/commons/core/utilities/b/d;->c:F

    .line 2112
    const/high16 v2, -0x3f400000    # -6.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/high16 v3, -0x3f000000    # -8.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v4, v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2114
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 2115
    if-eqz v0, :cond_0

    .line 2116
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "#FFFFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2117
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v2, "#FFFB0006"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2119
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoController;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    :cond_1
    new-instance v0, Lcom/inmobi/ads/NativeVideoController$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeVideoController$a;-><init>(Lcom/inmobi/ads/NativeVideoController;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->d:Lcom/inmobi/ads/NativeVideoController$a;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeVideoController;)I
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/inmobi/ads/NativeVideoController;->e()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/NativeVideoController;)Lcom/inmobi/ads/NativeVideoView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x41f00000    # 30.0f

    .line 89
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/inmobi/ads/NativeVideoController;->k:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcom/inmobi/ads/NativeVideoController;->k:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 91
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 94
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoController;->f:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->f:Lcom/inmobi/rendering/CustomView;

    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method static synthetic c(Lcom/inmobi/ads/NativeVideoController;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    .line 7302
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    if-eqz v0, :cond_0

    .line 7303
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 7304
    iget-boolean v1, p0, Lcom/inmobi/ads/NativeVideoController;->j:Z

    if-eqz v1, :cond_1

    .line 7305
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->e()V

    .line 7306
    iput-boolean v2, p0, Lcom/inmobi/ads/NativeVideoController;->j:Z

    .line 7307
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoController;->g:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 7308
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoController;->f:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 7309
    invoke-direct {p0}, Lcom/inmobi/ads/NativeVideoController;->c()V

    .line 7310
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->c:Lcom/inmobi/ads/ay;

    if-eqz v1, :cond_0

    .line 7312
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->c:Lcom/inmobi/ads/ay;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/ay;->d(Lcom/inmobi/ads/az;)V

    .line 8186
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/inmobi/ads/az;->A:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7336
    :cond_0
    :goto_0
    return-void

    .line 7314
    :catch_0
    move-exception v0

    .line 7315
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling the onVideoUnMuted event; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7317
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7318
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 7322
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->d()V

    .line 7323
    iput-boolean v3, p0, Lcom/inmobi/ads/NativeVideoController;->j:Z

    .line 7324
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoController;->f:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 7325
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoController;->g:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 7326
    invoke-direct {p0}, Lcom/inmobi/ads/NativeVideoController;->d()V

    .line 7327
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->c:Lcom/inmobi/ads/ay;

    if-eqz v1, :cond_0

    .line 7329
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->c:Lcom/inmobi/ads/ay;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/ay;->c(Lcom/inmobi/ads/az;)V

    .line 9186
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/inmobi/ads/az;->A:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 7331
    :catch_1
    move-exception v0

    .line 7332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling the onVideoMuted event; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7334
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7335
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x41f00000    # 30.0f

    .line 99
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/inmobi/ads/NativeVideoController;->k:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcom/inmobi/ads/NativeVideoController;->k:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 101
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 104
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoController;->g:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->g:Lcom/inmobi/rendering/CustomView;

    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method private e()I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    if-nez v0, :cond_1

    .line 162
    const/4 v0, 0x0

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getCurrentPosition()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->getDuration()I

    move-result v1

    .line 166
    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoController;->h:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 167
    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoController;->h:Landroid/widget/ProgressBar;

    mul-int/lit8 v3, v0, 0x64

    div-int v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 127
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeVideoController;->a:Z

    if-nez v0, :cond_2

    .line 128
    invoke-direct {p0}, Lcom/inmobi/ads/NativeVideoController;->e()I

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/NativeVideoController;->a:Z

    .line 130
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 131
    if-eqz v0, :cond_1

    .line 132
    iget-object v4, p0, Lcom/inmobi/ads/NativeVideoController;->f:Lcom/inmobi/rendering/CustomView;

    .line 5198
    iget-boolean v1, v0, Lcom/inmobi/ads/az;->B:Z

    .line 132
    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/inmobi/rendering/CustomView;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->h:Landroid/widget/ProgressBar;

    .line 5206
    iget-boolean v0, v0, Lcom/inmobi/ads/az;->D:Z

    .line 133
    if-eqz v0, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 135
    :cond_1
    invoke-virtual {p0, v2}, Lcom/inmobi/ads/NativeVideoController;->setVisibility(I)V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->d:Lcom/inmobi/ads/NativeVideoController$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeVideoController$a;->sendEmptyMessage(I)Z

    .line 139
    return-void

    :cond_3
    move v1, v3

    .line 132
    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeVideoController;->a:Z

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->d:Lcom/inmobi/ads/NativeVideoController$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeVideoController$a;->removeMessages(I)V

    .line 149
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/NativeVideoController;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/NativeVideoController;->a:Z

    .line 157
    :cond_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 152
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 185
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 186
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 187
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 188
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_a

    .line 189
    const/16 v3, 0x4f

    if-eq v2, v3, :cond_0

    const/16 v3, 0x55

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_4

    .line 192
    :cond_0
    if-eqz v0, :cond_1

    .line 7238
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7239
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->pause()V

    .line 194
    :goto_1
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoController;->a()V

    .line 220
    :cond_1
    :goto_2
    return v1

    .line 187
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 7241
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->start()V

    goto :goto_1

    .line 197
    :cond_4
    const/16 v3, 0x7e

    if-ne v2, v3, :cond_5

    .line 198
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->start()V

    .line 200
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoController;->a()V

    goto :goto_2

    .line 203
    :cond_5
    const/16 v3, 0x56

    if-eq v2, v3, :cond_6

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_7

    .line 205
    :cond_6
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->pause()V

    .line 207
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoController;->a()V

    goto :goto_2

    .line 210
    :cond_7
    const/16 v0, 0x19

    if-eq v2, v0, :cond_8

    const/16 v0, 0x18

    if-eq v2, v0, :cond_8

    const/16 v0, 0xa4

    if-eq v2, v0, :cond_8

    const/16 v0, 0x1b

    if-ne v2, v0, :cond_9

    .line 215
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2

    .line 217
    :cond_9
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoController;->a()V

    .line 220
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 248
    const-class v0, Lcom/inmobi/ads/NativeVideoController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 256
    const-class v0, Lcom/inmobi/ads/NativeVideoController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    .line 176
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6142
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeVideoController;->a:Z

    .line 5343
    if-eqz v0, :cond_1

    .line 5344
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoController;->b()V

    .line 179
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 7123
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoController;->a()V

    goto :goto_0
.end method

.method public setMediaPlayer(Lcom/inmobi/ads/NativeVideoView;)V
    .locals 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    .line 3224
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->e:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 3225
    if-eqz v0, :cond_0

    .line 4198
    iget-boolean v1, v0, Lcom/inmobi/ads/az;->B:Z

    .line 3226
    if-eqz v1, :cond_0

    .line 5194
    iget-boolean v0, v0, Lcom/inmobi/ads/az;->A:Z

    .line 3227
    if-nez v0, :cond_0

    .line 3228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/NativeVideoController;->j:Z

    .line 3229
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->g:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 3230
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoController;->f:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 3231
    invoke-direct {p0}, Lcom/inmobi/ads/NativeVideoController;->d()V

    .line 86
    :cond_0
    return-void
.end method

.method public setVideoAd(Lcom/inmobi/ads/ay;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/inmobi/ads/NativeVideoController;->c:Lcom/inmobi/ads/ay;

    .line 352
    return-void
.end method
