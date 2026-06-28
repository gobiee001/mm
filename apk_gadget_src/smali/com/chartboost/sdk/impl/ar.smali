.class public abstract Lcom/chartboost/sdk/impl/ar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ar$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field final c:Lcom/chartboost/sdk/impl/ar$a;

.field protected d:Landroid/widget/Button;

.field e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/ar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ar;->a:Landroid/graphics/Rect;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ar;->d:Landroid/widget/Button;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ar;->e:Z

    .line 39
    new-instance v0, Lcom/chartboost/sdk/impl/ar$a;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/ar$a;-><init>(Lcom/chartboost/sdk/impl/ar;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ar;->c:Lcom/chartboost/sdk/impl/ar$a;

    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->c:Lcom/chartboost/sdk/impl/ar$a;

    new-instance v1, Lcom/chartboost/sdk/impl/ar$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ar$1;-><init>(Lcom/chartboost/sdk/impl/ar;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar$a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->c:Lcom/chartboost/sdk/impl/ar$a;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/ar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->d:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ar;->d:Landroid/widget/Button;

    .line 143
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->d:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->postInvalidate()V

    .line 146
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->d:Landroid/widget/Button;

    return-object v0
.end method

.method protected abstract a(Landroid/view/MotionEvent;)V
.end method

.method public a(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->c:Lcom/chartboost/sdk/impl/ar$a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ar$a;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 165
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Libraries/h;)V
    .locals 1

    .prologue
    .line 150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->c:Lcom/chartboost/sdk/impl/ar$a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ar$a;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ar;->a(Ljava/lang/String;)V

    .line 154
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 121
    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar;->a()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/ar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->c:Lcom/chartboost/sdk/impl/ar$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar$a;->setVisibility(I)V

    .line 125
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/ar;->a(Z)V

    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->d:Landroid/widget/Button;

    new-instance v1, Lcom/chartboost/sdk/impl/ar$2;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ar$2;-><init>(Lcom/chartboost/sdk/impl/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ar;->removeView(Landroid/view/View;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ar;->d:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->c:Lcom/chartboost/sdk/impl/ar$a;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/ar$a;->setVisibility(I)V

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ar;->a(Z)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ar;->e:Z

    .line 174
    return-void
.end method

.method a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 75
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 76
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method
