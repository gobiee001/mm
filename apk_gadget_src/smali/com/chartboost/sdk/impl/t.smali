.class public abstract Lcom/chartboost/sdk/impl/t;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Lcom/chartboost/sdk/impl/p;

.field private b:Lcom/chartboost/sdk/impl/u;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/p;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/chartboost/sdk/impl/t;->a:Lcom/chartboost/sdk/impl/p;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/t;->c:I

    .line 54
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/t;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 92
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/t;->setGravity(I)V

    .line 96
    new-instance v1, Lcom/chartboost/sdk/impl/u;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/u;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/u;

    .line 97
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/u;->a(I)V

    .line 98
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/u;

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u;->setBackgroundColor(I)V

    .line 99
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/u;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    return-void
.end method

.method private a(ZJ)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->a:Lcom/chartboost/sdk/impl/p;

    iput-boolean p1, v0, Lcom/chartboost/sdk/impl/p;->C:Z

    .line 113
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    new-instance v5, Lcom/chartboost/sdk/impl/t$1;

    invoke-direct {v5, p0, p1}, Lcom/chartboost/sdk/impl/t$1;-><init>(Lcom/chartboost/sdk/impl/t;Z)V

    .line 127
    if-eqz p1, :cond_3

    .line 128
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/t;->setVisibility(I)V

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(FLandroid/content/Context;)F

    move-result v0

    .line 131
    const/4 v2, 0x0

    .line 132
    iget v4, p0, Lcom/chartboost/sdk/impl/t;->c:I

    packed-switch v4, :pswitch_data_0

    move-object v0, v2

    .line 148
    :goto_1
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 150
    if-nez p1, :cond_c

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/t;->startAnimation(Landroid/view/animation/Animation;)V

    .line 152
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->a:Lcom/chartboost/sdk/impl/p;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/p;->g:Ljava/util/Map;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->a:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->g:Ljava/util/Map;

    invoke-interface {v0, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->a:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 134
    :pswitch_0
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_4

    neg-float v4, v0

    :goto_3
    if-eqz p1, :cond_5

    move v0, v1

    :goto_4
    invoke-direct {v2, v1, v1, v4, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v0, v2

    .line 135
    goto :goto_1

    :cond_4
    move v4, v1

    .line 134
    goto :goto_3

    :cond_5
    neg-float v0, v0

    goto :goto_4

    .line 137
    :pswitch_1
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_7

    move v4, v0

    :goto_5
    if-eqz p1, :cond_6

    move v0, v1

    :cond_6
    invoke-direct {v2, v1, v1, v4, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v0, v2

    .line 138
    goto :goto_1

    :cond_7
    move v4, v1

    .line 137
    goto :goto_5

    .line 140
    :pswitch_2
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_8

    neg-float v4, v0

    :goto_6
    if-eqz p1, :cond_9

    move v0, v1

    :goto_7
    invoke-direct {v2, v4, v0, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v0, v2

    .line 141
    goto :goto_1

    :cond_8
    move v4, v1

    .line 140
    goto :goto_6

    :cond_9
    neg-float v0, v0

    goto :goto_7

    .line 143
    :pswitch_3
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_b

    move v4, v0

    :goto_8
    if-eqz p1, :cond_a

    move v0, v1

    :cond_a
    invoke-direct {v2, v4, v0, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v0, v2

    goto :goto_1

    :cond_b
    move v4, v1

    goto :goto_8

    :cond_c
    move v1, v3

    .line 150
    goto :goto_2

    .line 154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected abstract a()Landroid/view/View;
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 58
    iput p1, p0, Lcom/chartboost/sdk/impl/t;->c:I

    .line 59
    const/4 v0, 0x0

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/t;->setClickable(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->b()I

    move-result v1

    .line 65
    iget v2, p0, Lcom/chartboost/sdk/impl/t;->c:I

    packed-switch v2, :pswitch_data_0

    .line 88
    :goto_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/t;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void

    .line 67
    :pswitch_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    iget-object v1, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/u;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/u;->b(I)V

    goto :goto_0

    .line 72
    :pswitch_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    iget-object v1, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/u;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/u;->b(I)V

    goto :goto_0

    .line 77
    :pswitch_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79
    iget-object v1, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/u;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/u;->b(I)V

    goto :goto_0

    .line 82
    :pswitch_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    iget-object v1, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/u;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/u;->b(I)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 108
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Lcom/chartboost/sdk/impl/t;->a(ZJ)V

    .line 109
    return-void
.end method

.method protected abstract b()I
.end method
