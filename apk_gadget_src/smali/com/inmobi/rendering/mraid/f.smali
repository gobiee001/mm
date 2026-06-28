.class public final Lcom/inmobi/rendering/mraid/f;
.super Ljava/lang/Object;
.source "MraidResizeProcessor.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Lcom/inmobi/rendering/RenderView;

.field public b:Landroid/view/ViewGroup;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/inmobi/rendering/mraid/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/f;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/f;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 15

    .prologue
    const/4 v6, -0x1

    const/high16 v14, 0x42480000    # 50.0f

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 30
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/f;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/f;->b:Landroid/view/ViewGroup;

    .line 32
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/f;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/mraid/f;->c:I

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getResizeProperties()Lcom/inmobi/rendering/mraid/h;

    move-result-object v2

    .line 1041
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1042
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v3}, Lcom/inmobi/rendering/RenderView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v4}, Lcom/inmobi/rendering/RenderView;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1045
    const v3, 0xffff

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1046
    iget-object v3, p0, Lcom/inmobi/rendering/mraid/f;->b:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/inmobi/rendering/mraid/f;->c:I

    invoke-virtual {v3, v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/f;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1052
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->a()Lcom/inmobi/commons/core/utilities/b/d;

    move-result-object v0

    .line 2023
    iget v0, v0, Lcom/inmobi/commons/core/utilities/b/d;->c:F

    .line 1053
    iget v1, v2, Lcom/inmobi/rendering/mraid/h;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v13

    float-to-int v1, v1

    .line 1054
    iget v3, v2, Lcom/inmobi/rendering/mraid/h;->c:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v13

    float-to-int v3, v0

    .line 1056
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/f;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    const v4, 0x1020002

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1057
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v5}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1058
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1059
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v7}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1060
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1061
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1063
    const v1, 0xfffe

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1064
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1065
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1067
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v6, v1, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1069
    iget-object v1, v2, Lcom/inmobi/rendering/mraid/h;->a:Ljava/lang/String;

    .line 2079
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->a()Lcom/inmobi/commons/core/utilities/b/d;

    move-result-object v3

    .line 3023
    iget v3, v3, Lcom/inmobi/commons/core/utilities/b/d;->c:F

    .line 2080
    new-instance v8, Lcom/inmobi/rendering/CustomView;

    iget-object v9, p0, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v9}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v3, v12}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FI)V

    .line 2082
    const v9, 0xfffb

    invoke-virtual {v8, v9}, Lcom/inmobi/rendering/CustomView;->setId(I)V

    .line 2083
    new-instance v9, Lcom/inmobi/rendering/mraid/f$1;

    invoke-direct {v9, p0}, Lcom/inmobi/rendering/mraid/f$1;-><init>(Lcom/inmobi/rendering/mraid/f;)V

    invoke-virtual {v8, v9}, Lcom/inmobi/rendering/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3119
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_f

    .line 3120
    :cond_2
    const-string v1, "top-right"

    .line 3096
    :cond_3
    :goto_0
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v10, v14, v3

    float-to-int v10, v10

    mul-float/2addr v3, v14

    float-to-int v3, v3

    invoke-direct {v9, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3099
    const-string v3, "top-right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "bottom-right"

    .line 3100
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3101
    :cond_4
    const/16 v3, 0xb

    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3102
    :cond_5
    const-string v3, "bottom-right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "bottom-left"

    .line 3103
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "bottom-center"

    .line 3104
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3105
    :cond_6
    const/16 v3, 0xc

    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3106
    const/4 v3, 0x4

    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3108
    :cond_7
    const-string v3, "bottom-center"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "top-center"

    .line 3109
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "center"

    .line 3110
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3111
    :cond_8
    const/16 v3, 0xd

    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3113
    :cond_9
    const-string v3, "top-center"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3114
    const/16 v1, 0xa

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2091
    :cond_a
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1071
    invoke-virtual {v4, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1072
    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3135
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->a()Lcom/inmobi/commons/core/utilities/b/d;

    move-result-object v1

    .line 4023
    iget v1, v1, Lcom/inmobi/commons/core/utilities/b/d;->c:F

    .line 3136
    iget v3, v2, Lcom/inmobi/rendering/mraid/h;->b:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v13

    float-to-int v3, v3

    .line 3137
    iget v5, v2, Lcom/inmobi/rendering/mraid/h;->c:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v5, v13

    float-to-int v5, v5

    .line 3138
    iget v6, v2, Lcom/inmobi/rendering/mraid/h;->d:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    add-float/2addr v6, v13

    float-to-int v6, v6

    .line 3139
    iget v7, v2, Lcom/inmobi/rendering/mraid/h;->e:I

    int-to-float v7, v7

    mul-float/2addr v1, v7

    add-float/2addr v1, v13

    float-to-int v1, v1

    .line 3141
    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 3142
    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 3144
    iget-object v9, p0, Lcom/inmobi/rendering/mraid/f;->b:Landroid/view/ViewGroup;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 3145
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 3147
    aget v9, v7, v12

    aget v10, v8, v12

    sub-int/2addr v9, v10

    aput v9, v7, v12

    .line 3148
    aget v9, v7, v11

    aget v8, v8, v11

    sub-int v8, v9, v8

    aput v8, v7, v11

    .line 3150
    aget v8, v7, v11

    add-int/2addr v6, v8

    aput v6, v7, v11

    .line 3151
    aget v6, v7, v12

    add-int/2addr v1, v6

    aput v1, v7, v12

    .line 3153
    iget-boolean v1, v2, Lcom/inmobi/rendering/mraid/h;->f:Z

    if-nez v1, :cond_e

    .line 3154
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    aget v2, v7, v11

    sub-int/2addr v1, v2

    if-le v3, v1, :cond_b

    .line 3155
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    aput v1, v7, v11

    .line 3157
    :cond_b
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    aget v2, v7, v12

    sub-int/2addr v1, v2

    if-le v5, v1, :cond_c

    .line 3158
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, v5

    aput v0, v7, v12

    .line 3160
    :cond_c
    aget v0, v7, v11

    if-gez v0, :cond_d

    .line 3161
    aput v11, v7, v11

    .line 3163
    :cond_d
    aget v0, v7, v12

    if-gez v0, :cond_e

    .line 3164
    aput v11, v7, v12

    .line 3168
    :cond_e
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3169
    aget v1, v7, v11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 3170
    aget v1, v7, v12

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3171
    const v1, 0x800003

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3172
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1074
    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 38
    return-void

    .line 3123
    :cond_f
    const-string v9, "top-left"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "top-right"

    .line 3124
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "bottom-left"

    .line 3125
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "bottom-right"

    .line 3126
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "top-center"

    .line 3127
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "bottom-center"

    .line 3128
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "center"

    .line 3129
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3130
    const-string v1, "top-right"

    goto/16 :goto_0
.end method
