.class Lcom/inmobi/ads/bi;
.super Lcom/inmobi/ads/NativeScrollableContainer;
.source "ScrollableDeckPagesContainer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/inmobi/ads/NativeScrollableContainer$a;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Landroid/graphics/Point;

.field private e:Landroid/graphics/Point;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/inmobi/ads/bi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/bi;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, v1}, Lcom/inmobi/ads/NativeScrollableContainer;-><init>(Landroid/content/Context;I)V

    .line 47
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bi;->d:Landroid/graphics/Point;

    .line 48
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bi;->e:Landroid/graphics/Point;

    .line 51
    iput-boolean v1, p0, Lcom/inmobi/ads/bi;->g:Z

    .line 63
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/bi;->setClipChildren(Z)V

    .line 67
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/bi;->setLayerType(ILandroid/graphics/Paint;)V

    .line 70
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/inmobi/ads/bi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    .line 71
    iget-object v0, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 72
    iget-object v0, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bi;->addView(Landroid/view/View;)V

    .line 73
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/ads/ag;Lcom/inmobi/ads/as;IILcom/inmobi/ads/NativeScrollableContainer$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x14

    .line 89
    .line 90
    invoke-virtual {p1, v4}, Lcom/inmobi/ads/ag;->i(I)Lcom/inmobi/ads/NativeAsset;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/inmobi/ads/NativeViewFactory;->a(Lcom/inmobi/ads/NativeAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 92
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 97
    :goto_0
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 98
    iget-object v1, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    check-cast p2, Lcom/inmobi/ads/aj;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 103
    iget-object v0, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 104
    iget-object v0, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 105
    iput-object p5, p0, Lcom/inmobi/ads/bi;->a:Lcom/inmobi/ads/NativeScrollableContainer$a;

    .line 106
    return-void

    .line 95
    :cond_0
    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 169
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/inmobi/ads/bi;->f:Z

    .line 170
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/inmobi/ads/bi;->f:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/inmobi/ads/bi;->invalidate()V

    .line 154
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    .line 160
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 161
    iget-object v1, p0, Lcom/inmobi/ads/bi;->a:Lcom/inmobi/ads/NativeScrollableContainer$a;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/inmobi/ads/bi;->a:Lcom/inmobi/ads/NativeScrollableContainer$a;

    invoke-interface {v1, p1}, Lcom/inmobi/ads/NativeScrollableContainer$a;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 163
    iget-object v0, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 165
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/inmobi/ads/bi;->d:Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 120
    iget-object v0, p0, Lcom/inmobi/ads/bi;->d:Landroid/graphics/Point;

    div-int/lit8 v1, p2, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 121
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/bi;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/inmobi/ads/bi;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/inmobi/ads/bi;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/inmobi/ads/bi;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 144
    :goto_1
    iget-object v0, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 129
    :pswitch_0
    iget-object v1, p0, Lcom/inmobi/ads/bi;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1173
    iget-object v3, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    .line 1174
    iget-object v4, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    .line 1175
    iget-object v5, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 1176
    invoke-virtual {p0}, Lcom/inmobi/ads/bi;->getWidth()I

    move-result v6

    .line 1182
    if-eqz v3, :cond_0

    add-int/lit8 v4, v4, -0x1

    if-ne v4, v3, :cond_4

    .line 1183
    :cond_0
    sub-int v4, v6, v5

    .line 1185
    if-nez v3, :cond_3

    .line 1186
    int-to-float v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    int-to-float v1, v4

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    .line 1187
    int-to-float v0, v4

    sub-float v0, v2, v0

    int-to-float v1, v5

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 130
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 131
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 132
    iget-object v1, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/inmobi/ads/bi;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/bi;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/inmobi/ads/bi;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/inmobi/ads/bi;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/inmobi/ads/bi;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 1191
    :cond_3
    int-to-float v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    int-to-float v1, v4

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    .line 1192
    int-to-float v0, v4

    sub-float/2addr v0, v2

    int-to-float v1, v5

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    neg-int v0, v0

    goto :goto_2

    .line 1197
    :cond_4
    sub-int v3, v6, v5

    div-int/lit8 v3, v3, 0x2

    .line 1199
    int-to-float v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_5

    int-to-float v4, v3

    cmpg-float v4, v2, v4

    if-gez v4, :cond_5

    .line 1200
    int-to-float v0, v3

    sub-float/2addr v0, v2

    int-to-float v1, v5

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    neg-int v0, v0

    goto :goto_2

    .line 1202
    :cond_5
    add-int v3, v6, v5

    div-int/lit8 v3, v3, 0x2

    .line 1203
    int-to-float v4, v3

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    int-to-float v1, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    .line 1204
    int-to-float v0, v3

    sub-float v0, v2, v0

    int-to-float v1, v5

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_2

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/ads/bi;->e:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 138
    iget-object v0, p0, Lcom/inmobi/ads/bi;->e:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
