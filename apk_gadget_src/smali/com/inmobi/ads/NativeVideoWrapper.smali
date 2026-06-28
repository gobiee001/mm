.class public Lcom/inmobi/ads/NativeVideoWrapper;
.super Landroid/widget/RelativeLayout;
.source "NativeVideoWrapper.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/inmobi/ads/NativeVideoView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Lcom/inmobi/ads/NativeVideoController;

.field private f:Lcom/inmobi/ads/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/inmobi/ads/NativeVideoWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeVideoWrapper;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, -0x2

    const/16 v4, 0xd

    const/4 v3, -0x1

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1037
    new-instance v0, Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/ads/NativeVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoWrapper;->a:Lcom/inmobi/ads/NativeVideoView;

    .line 1038
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1041
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1042
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoWrapper;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/NativeVideoWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1044
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/inmobi/ads/NativeVideoWrapper;->c:Landroid/widget/ImageView;

    .line 1045
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoWrapper;->c:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1046
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoWrapper;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1047
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoWrapper;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/NativeVideoWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1049
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoWrapper;->d:Landroid/widget/ProgressBar;

    .line 1050
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoWrapper;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1051
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1052
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1053
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoWrapper;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/NativeVideoWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1055
    new-instance v0, Lcom/inmobi/ads/NativeVideoController;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/ads/NativeVideoController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoWrapper;->e:Lcom/inmobi/ads/NativeVideoController;

    .line 1056
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1059
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1060
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoWrapper;->a:Lcom/inmobi/ads/NativeVideoView;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoWrapper;->e:Lcom/inmobi/ads/NativeVideoController;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/NativeVideoView;->setMediaController(Lcom/inmobi/ads/NativeVideoController;)V

    .line 1061
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoWrapper;->e:Lcom/inmobi/ads/NativeVideoController;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/NativeVideoWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getPoster()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoWrapper;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoWrapper;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getVideoController()Lcom/inmobi/ads/NativeVideoController;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoWrapper;->e:Lcom/inmobi/ads/NativeVideoController;

    return-object v0
.end method

.method public getVideoView()Lcom/inmobi/ads/NativeVideoView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoWrapper;->a:Lcom/inmobi/ads/NativeVideoView;

    return-object v0
.end method

.method public setPosterImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoWrapper;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    return-void
.end method

.method public setVideoEventListener(Lcom/inmobi/ads/bb;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/inmobi/ads/NativeVideoWrapper;->f:Lcom/inmobi/ads/bb;

    .line 129
    return-void
.end method
