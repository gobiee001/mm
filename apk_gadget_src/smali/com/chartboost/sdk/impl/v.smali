.class public Lcom/chartboost/sdk/impl/v;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/CharSequence;


# instance fields
.field final a:Landroid/widget/RelativeLayout;

.field final b:Lcom/chartboost/sdk/impl/u;

.field final c:Lcom/chartboost/sdk/impl/u;

.field final d:Lcom/chartboost/sdk/impl/ar;

.field final e:Landroid/widget/TextView;

.field final f:Lcom/chartboost/sdk/impl/r;

.field final g:Lcom/chartboost/sdk/impl/an;

.field final h:Lcom/chartboost/sdk/impl/p;

.field final i:Landroid/os/Handler;

.field final j:Ljava/lang/Runnable;

.field private l:Z

.field private m:Z

.field private final n:Ljava/lang/Runnable;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "00:00"

    sput-object v0, Lcom/chartboost/sdk/impl/v;->k:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/p;)V
    .locals 12

    .prologue
    const/4 v6, -0x2

    const/high16 v11, 0x41200000    # 10.0f

    const/16 v10, 0x8

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    iput-boolean v8, p0, Lcom/chartboost/sdk/impl/v;->l:Z

    .line 61
    iput-boolean v8, p0, Lcom/chartboost/sdk/impl/v;->m:Z

    .line 281
    new-instance v0, Lcom/chartboost/sdk/impl/v$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/v$2;-><init>(Lcom/chartboost/sdk/impl/v;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->n:Ljava/lang/Runnable;

    .line 287
    new-instance v0, Lcom/chartboost/sdk/impl/v$3;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/v$3;-><init>(Lcom/chartboost/sdk/impl/v;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->o:Ljava/lang/Runnable;

    .line 347
    new-instance v0, Lcom/chartboost/sdk/impl/v$4;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/v$4;-><init>(Lcom/chartboost/sdk/impl/v;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->j:Ljava/lang/Runnable;

    .line 69
    iput-object p2, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    .line 70
    iget-object v0, p2, Lcom/chartboost/sdk/impl/p;->a:Landroid/os/Handler;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    .line 72
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/p;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 74
    mul-float v0, v2, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 77
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v4

    .line 78
    new-instance v0, Lcom/chartboost/sdk/impl/an;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/an;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/an;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    .line 80
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    iget-object v5, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {p0, v5, v0}, Lcom/chartboost/sdk/impl/v;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->a:Landroid/widget/RelativeLayout;

    .line 88
    if-eqz v1, :cond_0

    const-string v0, "video-click-button"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/chartboost/sdk/impl/u;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/u;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    .line 90
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v10}, Lcom/chartboost/sdk/impl/u;->setVisibility(I)V

    .line 93
    new-instance v0, Lcom/chartboost/sdk/impl/v$1;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/v$1;-><init>(Lcom/chartboost/sdk/impl/v;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 109
    iget-object v0, p2, Lcom/chartboost/sdk/impl/p;->I:Lcom/chartboost/sdk/Libraries/h;

    .line 110
    const-string v1, "video-click-button"

    invoke-virtual {p2, v1}, Lcom/chartboost/sdk/impl/p;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 111
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 113
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v6

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 114
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v5, v0, v1}, Lcom/chartboost/sdk/impl/p;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 115
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ar;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v1, v5}, Lcom/chartboost/sdk/impl/u;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float v5, v11, v2

    add-float/2addr v1, v5

    .line 120
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 121
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->a:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    :goto_0
    new-instance v0, Lcom/chartboost/sdk/impl/u;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/u;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/u;

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v10}, Lcom/chartboost/sdk/impl/u;->setVisibility(I)V

    .line 131
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42020000    # 32.5f

    mul-float/2addr v1, v2

    .line 132
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->a:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/u;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u;->setGravity(I)V

    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/chartboost/sdk/impl/u;->setPadding(IIII)V

    .line 138
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/chartboost/sdk/impl/v;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v8, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 143
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 146
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 147
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 150
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/u;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v1}, Lcom/chartboost/sdk/impl/u;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v0, Lcom/chartboost/sdk/impl/r;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/r;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->f:Lcom/chartboost/sdk/impl/r;

    .line 154
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->f:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0, v10}, Lcom/chartboost/sdk/impl/r;->setVisibility(I)V

    .line 155
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    mul-float v1, v11, v2

    .line 156
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 158
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/u;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->f:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/u;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/an;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 162
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/an;->getId()I

    move-result v1

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 163
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/an;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 164
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/an;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/v;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->a()V

    .line 167
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 317
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v0

    .line 318
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v;->c(Z)V

    .line 319
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/u;->setBackgroundColor(I)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/u;->setBackgroundColor(I)V

    .line 333
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/an$a;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 391
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/an$a;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 392
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/an$a;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 393
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/an$a;->a(Landroid/net/Uri;)V

    .line 394
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/v;->a(ZZ)V

    .line 220
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(ZZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->l:Z

    if-eq p1, v0, :cond_0

    .line 232
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/v;->l:Z

    .line 234
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->l:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v0

    .line 235
    :goto_1
    if-eqz p2, :cond_5

    const-wide/16 v0, 0x64

    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 237
    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 238
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->m:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/u;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/u;->startAnimation(Landroid/view/animation/Animation;)V

    .line 241
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/ar;->setEnabled(Z)V

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->M:Z

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->f:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/r;->setVisibility(I)V

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/u;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/u;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->l:Z

    if-eqz v0, :cond_6

    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 234
    :cond_4
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v0

    goto :goto_1

    .line 235
    :cond_5
    const-wide/16 v0, 0xc8

    goto :goto_2

    .line 252
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->o:Ljava/lang/Runnable;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b()Lcom/chartboost/sdk/impl/an$a;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    if-eqz p1, :cond_3

    .line 259
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/u;->setVisibility(I)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->M:Z

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->f:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/r;->setVisibility(I)V

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/u;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->setEnabled(Z)V

    .line 278
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/v;->l:Z

    .line 279
    return-void

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->clearAnimation()V

    .line 269
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/u;->setVisibility(I)V

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->clearAnimation()V

    .line 272
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->M:Z

    if-eqz v0, :cond_5

    .line 273
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->f:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/r;->setVisibility(I)V

    .line 274
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/u;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public c()Lcom/chartboost/sdk/impl/r;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->f:Lcom/chartboost/sdk/impl/r;

    return-object v0
.end method

.method public c(Z)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 300
    if-eqz p1, :cond_2

    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v;->setBackgroundColor(I)V

    .line 301
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 302
    if-nez p1, :cond_0

    .line 303
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/an;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 304
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/an;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 305
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/an;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 306
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/an;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u;->setGravity(I)V

    .line 312
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->requestLayout()V

    .line 314
    :cond_1
    return-void

    .line 300
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u;->setVisibility(I)V

    .line 338
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->m:Z

    .line 339
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->setEnabled(Z)V

    .line 341
    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 344
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    return-void

    .line 344
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 398
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/v$5;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/v$5;-><init>(Lcom/chartboost/sdk/impl/v;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/an$a;->a()V

    .line 404
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/an$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/an$a;->d()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/p;->v:I

    .line 411
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/an$a;->b()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->q()Lcom/chartboost/sdk/impl/p$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p$a;->e:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->q()Lcom/chartboost/sdk/impl/p$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p$a;->e:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->postInvalidate()V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/an$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/an$a;->d()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/p;->v:I

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/an$a;->b()V

    .line 424
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/an;->setVisibility(I)V

    .line 431
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->invalidate()V

    .line 432
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/an$a;->c()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/p;->v:I

    .line 202
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->q()Lcom/chartboost/sdk/impl/p$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->q()Lcom/chartboost/sdk/impl/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p$a;->e()V

    .line 204
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 184
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->v()V

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/an$a;->c()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/p;->w:I

    .line 209
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->q()Lcom/chartboost/sdk/impl/p$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/p$a;->a(Z)V

    .line 210
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 190
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/an$a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v;->a(Z)V

    .line 196
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ar;->setEnabled(Z)V

    .line 175
    :cond_0
    if-eqz p1, :cond_1

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v;->b(Z)V

    .line 179
    :cond_1
    return-void
.end method
