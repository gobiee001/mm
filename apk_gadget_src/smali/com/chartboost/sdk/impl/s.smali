.class public Lcom/chartboost/sdk/impl/s;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/impl/p;

.field final b:Lcom/chartboost/sdk/impl/ar;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/chartboost/sdk/impl/aq;

.field private e:Landroid/widget/TextView;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/p;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v4, 0x11

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/chartboost/sdk/impl/s;->f:I

    .line 44
    iput-object p2, p0, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/p;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 47
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 49
    invoke-virtual {p0, v8}, Lcom/chartboost/sdk/impl/s;->setOrientation(I)V

    .line 51
    invoke-virtual {p0, v4}, Lcom/chartboost/sdk/impl/s;->setGravity(I)V

    .line 53
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/widget/LinearLayout;

    .line 54
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 55
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 58
    new-instance v0, Lcom/chartboost/sdk/impl/aq;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/aq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->d:Lcom/chartboost/sdk/impl/aq;

    .line 59
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->d:Lcom/chartboost/sdk/impl/aq;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/aq;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->d:Lcom/chartboost/sdk/impl/aq;

    invoke-virtual {v0, v6, v6, v1, v6}, Lcom/chartboost/sdk/impl/aq;->setPadding(IIII)V

    .line 61
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    iget-object v0, p2, Lcom/chartboost/sdk/impl/p;->H:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {p2, v2, v0, v7}, Lcom/chartboost/sdk/impl/p;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 64
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/s;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->e:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->e:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->e:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 67
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 68
    iget-object v3, p0, Lcom/chartboost/sdk/impl/s;->e:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-static {p1}, Lcom/chartboost/sdk/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41d00000    # 26.0f

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/s;->d:Lcom/chartboost/sdk/impl/aq;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/s;->e:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v0, Lcom/chartboost/sdk/impl/s$1;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/s;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/chartboost/sdk/impl/s$1;-><init>(Lcom/chartboost/sdk/impl/s;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->b:Lcom/chartboost/sdk/impl/ar;

    .line 80
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->b:Lcom/chartboost/sdk/impl/ar;

    const-string v2, "CBWatch"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->b:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v6, v6, v6, v1}, Lcom/chartboost/sdk/impl/ar;->setPadding(IIII)V

    .line 82
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->b:Lcom/chartboost/sdk/impl/ar;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ar;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->b:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/chartboost/sdk/impl/ar;->setPadding(IIII)V

    .line 84
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    iget-object v1, p2, Lcom/chartboost/sdk/impl/p;->G:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {p2, v0, v1, v7}, Lcom/chartboost/sdk/impl/p;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 87
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->d:Lcom/chartboost/sdk/impl/aq;

    iget-object v2, p2, Lcom/chartboost/sdk/impl/p;->H:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/aq;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 88
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->b:Lcom/chartboost/sdk/impl/ar;

    iget-object v2, p2, Lcom/chartboost/sdk/impl/p;->G:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/ar;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 90
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->c:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/chartboost/sdk/impl/s;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->b:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/s;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/s;->a()V

    .line 93
    return-void

    .line 68
    :cond_0
    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->s()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/s;->a(Z)V

    .line 107
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iput p2, p0, Lcom/chartboost/sdk/impl/s;->f:I

    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->s()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/s;->a(Z)V

    .line 103
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 96
    if-eqz p1, :cond_0

    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/s;->setBackgroundColor(I)V

    .line 97
    return-void

    .line 96
    :cond_0
    iget v0, p0, Lcom/chartboost/sdk/impl/s;->f:I

    goto :goto_0
.end method
