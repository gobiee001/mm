.class public Lcom/chartboost/sdk/impl/o$a;
.super Lcom/chartboost/sdk/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field protected c:Lcom/chartboost/sdk/impl/aq;

.field protected d:Lcom/chartboost/sdk/impl/ar;

.field protected e:Lcom/chartboost/sdk/impl/ar;

.field protected f:Landroid/widget/ImageView;

.field final synthetic g:Lcom/chartboost/sdk/impl/o;

.field private h:Z


# direct methods
.method protected constructor <init>(Lcom/chartboost/sdk/impl/o;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 57
    iput-object p1, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/e$a;-><init>(Lcom/chartboost/sdk/e;Landroid/content/Context;)V

    .line 60
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/o$a;->h:Z

    .line 62
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/o$a;->setBackgroundColor(I)V

    .line 63
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/o$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v1

    .line 67
    new-instance v0, Lcom/chartboost/sdk/impl/aq;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/impl/aq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/aq;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->c:Lcom/chartboost/sdk/impl/aq;

    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->c:Lcom/chartboost/sdk/impl/aq;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/o$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v0, Lcom/chartboost/sdk/impl/o$a$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/chartboost/sdk/impl/o$a$1;-><init>(Lcom/chartboost/sdk/impl/o$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/o;)V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ar;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->e:Lcom/chartboost/sdk/impl/ar;

    .line 79
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->e:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/o$a;->a(Landroid/view/View;)V

    .line 80
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->e:Lcom/chartboost/sdk/impl/ar;

    const-string v2, "CBAd"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->f:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->f:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 87
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/o$a;->addView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->e:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/o$a;->addView(Landroid/view/View;)V

    .line 90
    return-void
.end method


# virtual methods
.method protected a(FFFF)V
    .locals 4

    .prologue
    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v1, 0x0

    const-string v2, "x"

    .line 106
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "y"

    .line 107
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "w"

    .line 108
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "h"

    .line 109
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 105
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/o;->b(Lorg/json/JSONObject;)Z

    .line 112
    return-void
.end method

.method protected a(II)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, -0x2

    const/high16 v9, 0x40000000    # 2.0f

    .line 117
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/o$a;->h:Z

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/o$a;->c()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/o$a;->h:Z

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o;->a()I

    move-result v0

    .line 124
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v4

    .line 126
    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/o;->j:Lcom/chartboost/sdk/Libraries/h;

    .line 127
    :goto_0
    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 129
    :goto_1
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/o;->j:Lcom/chartboost/sdk/Libraries/h;

    if-ne v1, v2, :cond_6

    .line 131
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/Libraries/h;

    .line 136
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v2

    if-nez v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/o;->l:Lcom/chartboost/sdk/Libraries/h;

    if-ne v0, v2, :cond_7

    .line 138
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o;->m:Lcom/chartboost/sdk/Libraries/h;

    .line 143
    :cond_2
    :goto_3
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 145
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    iget-object v2, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {v2, v5, v1, v11}, Lcom/chartboost/sdk/impl/o;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 150
    int-to-float v2, p1

    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 152
    iget-object v3, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v3, Lcom/chartboost/sdk/impl/o;->p:F

    .line 153
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget v3, v3, Lcom/chartboost/sdk/impl/o;->p:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 154
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget v3, v3, Lcom/chartboost/sdk/impl/o;->p:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 156
    iget-object v3, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    if-eqz v4, :cond_8

    const-string v2, "frame-portrait"

    :goto_4
    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/o;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v2

    .line 157
    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v8

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget v8, v8, Lcom/chartboost/sdk/impl/o;->p:F

    mul-float/2addr v7, v8

    add-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 158
    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v7

    div-float/2addr v2, v7

    iget-object v7, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget v7, v7, Lcom/chartboost/sdk/impl/o;->p:F

    mul-float/2addr v2, v7

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 161
    iget-object v2, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {v2, v6, v0, v11}, Lcom/chartboost/sdk/impl/o;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 162
    iget-object v3, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    if-eqz v4, :cond_9

    const-string v2, "close-portrait"

    :goto_5
    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/o;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v2

    .line 164
    iget v3, v2, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_a

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-nez v3, :cond_a

    .line 166
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v2, v3

    iget v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v2

    .line 167
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v2, v7

    .line 172
    :goto_6
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v7, p1, v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 173
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v3, p2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 176
    iget-object v2, p0, Lcom/chartboost/sdk/impl/o$a;->c:Lcom/chartboost/sdk/impl/aq;

    invoke-virtual {v2, v5}, Lcom/chartboost/sdk/impl/aq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v2, p0, Lcom/chartboost/sdk/impl/o$a;->d:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v2, v6}, Lcom/chartboost/sdk/impl/ar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v2, p0, Lcom/chartboost/sdk/impl/o$a;->c:Lcom/chartboost/sdk/impl/aq;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/aq;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 181
    iget-object v2, p0, Lcom/chartboost/sdk/impl/o$a;->c:Lcom/chartboost/sdk/impl/aq;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/aq;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 182
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a;->d:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ar;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 185
    if-eqz v4, :cond_b

    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o;->n:Lcom/chartboost/sdk/Libraries/h;

    .line 187
    :goto_7
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/o;->n:Lcom/chartboost/sdk/Libraries/h;

    if-ne v0, v1, :cond_c

    .line 189
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o;->o:Lcom/chartboost/sdk/Libraries/h;

    .line 194
    :cond_3
    :goto_8
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 196
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget v3, v3, Lcom/chartboost/sdk/impl/o;->p:F

    invoke-virtual {v1, v2, v0, v3}, Lcom/chartboost/sdk/impl/o;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 197
    iget-object v3, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    if-eqz v4, :cond_d

    const-string v1, "ad-portrait"

    :goto_9
    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/impl/o;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 198
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget v5, v5, Lcom/chartboost/sdk/impl/o;->p:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 199
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v4

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget v4, v4, Lcom/chartboost/sdk/impl/o;->p:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 201
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a;->e:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/ar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a;->e:Lcom/chartboost/sdk/impl/ar;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/ar;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 204
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a;->e:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ar;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 205
    return-void

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/Libraries/h;

    goto/16 :goto_0

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o;->m:Lcom/chartboost/sdk/Libraries/h;

    goto/16 :goto_1

    .line 133
    :cond_6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/o;->j:Lcom/chartboost/sdk/Libraries/h;

    goto/16 :goto_2

    .line 140
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o;->l:Lcom/chartboost/sdk/Libraries/h;

    goto/16 :goto_3

    .line 156
    :cond_8
    const-string v2, "frame-landscape"

    goto/16 :goto_4

    .line 162
    :cond_9
    const-string v2, "close-landscape"

    goto/16 :goto_5

    .line 169
    :cond_a
    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v3, v3

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    add-float/2addr v3, v7

    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    add-float/2addr v3, v7

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 170
    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v7, v7

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto/16 :goto_6

    .line 185
    :cond_b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o;->o:Lcom/chartboost/sdk/Libraries/h;

    goto/16 :goto_7

    .line 191
    :cond_c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o;->n:Lcom/chartboost/sdk/Libraries/h;

    goto/16 :goto_8

    .line 197
    :cond_d
    const-string v1, "ad-landscape"

    goto/16 :goto_9
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 213
    invoke-super {p0}, Lcom/chartboost/sdk/e$a;->b()V

    .line 214
    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->c:Lcom/chartboost/sdk/impl/aq;

    .line 215
    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->d:Lcom/chartboost/sdk/impl/ar;

    .line 217
    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->e:Lcom/chartboost/sdk/impl/ar;

    .line 218
    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->f:Landroid/widget/ImageView;

    .line 219
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/chartboost/sdk/impl/o$a$2;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/o$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/o$a$2;-><init>(Lcom/chartboost/sdk/impl/o$a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->d:Lcom/chartboost/sdk/impl/ar;

    .line 100
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->d:Lcom/chartboost/sdk/impl/ar;

    const-string v1, "CBClose"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->d:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/o$a;->addView(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->g:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o;->h()V

    .line 209
    return-void
.end method
