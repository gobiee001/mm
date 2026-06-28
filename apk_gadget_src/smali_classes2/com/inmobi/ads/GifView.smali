.class public Lcom/inmobi/ads/GifView;
.super Landroid/view/View;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/GifView$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;

.field b:Ljava/lang/Runnable;

.field c:Lcom/inmobi/ads/GifView$a;

.field private d:Landroid/graphics/Movie;

.field private e:J

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private volatile l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/inmobi/ads/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v0, p0, Lcom/inmobi/ads/GifView;->f:I

    .line 45
    iput-boolean v0, p0, Lcom/inmobi/ads/GifView;->l:Z

    .line 46
    iput-boolean v1, p0, Lcom/inmobi/ads/GifView;->m:Z

    .line 1088
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/GifView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 59
    invoke-direct {p0}, Lcom/inmobi/ads/GifView;->a()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v0, p0, Lcom/inmobi/ads/GifView;->f:I

    .line 45
    iput-boolean v0, p0, Lcom/inmobi/ads/GifView;->l:Z

    .line 46
    iput-boolean v1, p0, Lcom/inmobi/ads/GifView;->m:Z

    .line 2088
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/GifView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 66
    invoke-direct {p0}, Lcom/inmobi/ads/GifView;->a()V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/GifView;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/inmobi/ads/GifView;->f:I

    return v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/GifView;->a:Ljava/util/concurrent/ExecutorService;

    .line 71
    new-instance v0, Lcom/inmobi/ads/GifView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/GifView$1;-><init>(Lcom/inmobi/ads/GifView;)V

    iput-object v0, p0, Lcom/inmobi/ads/GifView;->b:Ljava/lang/Runnable;

    .line 79
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/inmobi/ads/GifView;->d:Landroid/graphics/Movie;

    iget v1, p0, Lcom/inmobi/ads/GifView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 225
    iget v0, p0, Lcom/inmobi/ads/GifView;->i:F

    iget v1, p0, Lcom/inmobi/ads/GifView;->i:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 226
    iget-object v0, p0, Lcom/inmobi/ads/GifView;->d:Landroid/graphics/Movie;

    iget v1, p0, Lcom/inmobi/ads/GifView;->g:F

    iget v2, p0, Lcom/inmobi/ads/GifView;->i:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/ads/GifView;->h:F

    iget v3, p0, Lcom/inmobi/ads/GifView;->i:F

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 228
    iget-object v0, p0, Lcom/inmobi/ads/GifView;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/inmobi/ads/GifView;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method static synthetic b(Lcom/inmobi/ads/GifView;)Landroid/graphics/Movie;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/inmobi/ads/GifView;->d:Landroid/graphics/Movie;

    return-object v0
.end method

.method private b()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/inmobi/ads/GifView;->m:Z

    if-eqz v0, :cond_0

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/inmobi/ads/GifView;->postInvalidateOnAnimation()V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/GifView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 172
    iget-object v0, p0, Lcom/inmobi/ads/GifView;->d:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    .line 173
    iget-boolean v0, p0, Lcom/inmobi/ads/GifView;->l:Z

    if-nez v0, :cond_3

    .line 2203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2205
    iget-wide v0, p0, Lcom/inmobi/ads/GifView;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 2206
    iput-wide v2, p0, Lcom/inmobi/ads/GifView;->e:J

    .line 2209
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/GifView;->d:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    .line 2211
    if-nez v0, :cond_1

    .line 2212
    const/16 v0, 0x3e8

    .line 2215
    :cond_1
    iget-wide v4, p0, Lcom/inmobi/ads/GifView;->e:J

    sub-long/2addr v2, v4

    int-to-long v0, v0

    rem-long v0, v2, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/inmobi/ads/GifView;->f:I

    .line 175
    invoke-direct {p0, p1}, Lcom/inmobi/ads/GifView;->a(Landroid/graphics/Canvas;)V

    .line 176
    invoke-direct {p0}, Lcom/inmobi/ads/GifView;->b()V

    .line 181
    :cond_2
    :goto_0
    return-void

    .line 178
    :cond_3
    invoke-direct {p0, p1}, Lcom/inmobi/ads/GifView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 161
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 164
    invoke-virtual {p0}, Lcom/inmobi/ads/GifView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/inmobi/ads/GifView;->j:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/inmobi/ads/GifView;->g:F

    .line 165
    invoke-virtual {p0}, Lcom/inmobi/ads/GifView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/inmobi/ads/GifView;->k:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/inmobi/ads/GifView;->h:F

    .line 167
    invoke-virtual {p0}, Lcom/inmobi/ads/GifView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/inmobi/ads/GifView;->m:Z

    .line 168
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 119
    iget-object v0, p0, Lcom/inmobi/ads/GifView;->d:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/inmobi/ads/GifView;->d:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v3

    .line 121
    iget-object v0, p0, Lcom/inmobi/ads/GifView;->d:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v4

    .line 125
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 127
    if-eqz v0, :cond_2

    .line 128
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 129
    if-le v3, v0, :cond_2

    .line 130
    int-to-float v2, v3

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 136
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 138
    if-eqz v2, :cond_1

    .line 139
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 140
    if-le v4, v2, :cond_1

    .line 141
    int-to-float v5, v4

    int-to-float v2, v2

    div-float v2, v5, v2

    .line 146
    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/inmobi/ads/GifView;->i:F

    .line 148
    int-to-float v0, v3

    iget v1, p0, Lcom/inmobi/ads/GifView;->i:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/inmobi/ads/GifView;->j:I

    .line 149
    int-to-float v0, v4

    iget v1, p0, Lcom/inmobi/ads/GifView;->i:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/inmobi/ads/GifView;->k:I

    .line 151
    iget v0, p0, Lcom/inmobi/ads/GifView;->j:I

    iget v1, p0, Lcom/inmobi/ads/GifView;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/GifView;->setMeasuredDimension(II)V

    .line 157
    :goto_2
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/GifView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/inmobi/ads/GifView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/GifView;->setMeasuredDimension(II)V

    goto :goto_2

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 234
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 235
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/inmobi/ads/GifView;->m:Z

    .line 236
    invoke-direct {p0}, Lcom/inmobi/ads/GifView;->b()V

    .line 237
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 242
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 243
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/inmobi/ads/GifView;->m:Z

    .line 244
    invoke-direct {p0}, Lcom/inmobi/ads/GifView;->b()V

    .line 245
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 250
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/inmobi/ads/GifView;->m:Z

    .line 251
    invoke-direct {p0}, Lcom/inmobi/ads/GifView;->b()V

    .line 252
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGifCallbacks(Lcom/inmobi/ads/GifView$a;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/inmobi/ads/GifView;->c:Lcom/inmobi/ads/GifView$a;

    .line 83
    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/inmobi/ads/GifView;->d:Landroid/graphics/Movie;

    .line 93
    invoke-virtual {p0}, Lcom/inmobi/ads/GifView;->requestLayout()V

    .line 94
    return-void
.end method

.method public setMovieTime(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/inmobi/ads/GifView;->f:I

    .line 98
    invoke-virtual {p0}, Lcom/inmobi/ads/GifView;->invalidate()V

    .line 99
    return-void
.end method

.method public setPaused(Z)V
    .locals 4

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/inmobi/ads/GifView;->l:Z

    .line 105
    if-nez p1, :cond_0

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/inmobi/ads/GifView;->f:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inmobi/ads/GifView;->e:J

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/GifView;->invalidate()V

    .line 110
    return-void
.end method
