.class Lcom/amazon/device/ads/NativeCloseButton;
.super Ljava/lang/Object;
.source "NativeCloseButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/NativeCloseButton$6;
    }
.end annotation


# static fields
.field private static final CLOSE_BUTTON_SIZE_DP:I = 0x3c

.field private static final CLOSE_BUTTON_TAP_TARGET_SIZE_DP:I = 0x50

.field private static final CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON:Ljava/lang/String; = "nativeCloseButton"

.field private static final CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON_CONTAINER:Ljava/lang/String; = "nativeCloseButtonContainer"

.field private static final CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON_IMAGE:Ljava/lang/String; = "nativeCloseButtonImage"


# instance fields
.field private final adCloser:Lcom/amazon/device/ads/AdCloser;

.field private closeButton:Landroid/view/ViewGroup;

.field private closeButtonContainer:Landroid/view/ViewGroup;

.field private closeButtonImage:Landroid/widget/ImageView;

.field private hasNativeCloseButton:Z

.field private final imageViewFactory:Lcom/amazon/device/ads/ImageViewFactory;

.field private final layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/amazon/device/ads/AdCloser;)V
    .locals 6
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "adCloser"    # Lcom/amazon/device/ads/AdCloser;

    .prologue
    .line 48
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v3

    new-instance v4, Lcom/amazon/device/ads/LayoutFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/LayoutFactory;-><init>()V

    new-instance v5, Lcom/amazon/device/ads/ImageButtonFactory;

    invoke-direct {v5}, Lcom/amazon/device/ads/ImageButtonFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/NativeCloseButton;-><init>(Landroid/view/ViewGroup;Lcom/amazon/device/ads/AdCloser;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/LayoutFactory;Lcom/amazon/device/ads/ImageViewFactory;)V

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Lcom/amazon/device/ads/AdCloser;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/LayoutFactory;Lcom/amazon/device/ads/ImageViewFactory;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "adCloser"    # Lcom/amazon/device/ads/AdCloser;
    .param p3, "threadRunner"    # Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .param p4, "layoutFactory"    # Lcom/amazon/device/ads/LayoutFactory;
    .param p5, "imageViewFactory"    # Lcom/amazon/device/ads/ImageViewFactory;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->hasNativeCloseButton:Z

    .line 56
    iput-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton;->viewGroup:Landroid/view/ViewGroup;

    .line 57
    iput-object p2, p0, Lcom/amazon/device/ads/NativeCloseButton;->adCloser:Lcom/amazon/device/ads/AdCloser;

    .line 58
    iput-object p3, p0, Lcom/amazon/device/ads/NativeCloseButton;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 59
    iput-object p4, p0, Lcom/amazon/device/ads/NativeCloseButton;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    .line 60
    iput-object p5, p0, Lcom/amazon/device/ads/NativeCloseButton;->imageViewFactory:Lcom/amazon/device/ads/ImageViewFactory;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/NativeCloseButton;I)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/NativeCloseButton;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/NativeCloseButton;->createButtonIfNeeded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/NativeCloseButton;ZLcom/amazon/device/ads/RelativePosition;II)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/NativeCloseButton;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/amazon/device/ads/RelativePosition;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/device/ads/NativeCloseButton;->addCloseButtonToTapTargetIfNeeded(ZLcom/amazon/device/ads/RelativePosition;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/NativeCloseButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/NativeCloseButton;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->closeAd()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/NativeCloseButton;Landroid/view/MotionEvent;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/NativeCloseButton;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p3, "x3"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/NativeCloseButton;->animateCloseButton(Landroid/view/MotionEvent;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/NativeCloseButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/NativeCloseButton;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->removeNativeCloseButtonOnMainThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/device/ads/NativeCloseButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/NativeCloseButton;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->hideImageOnMainThread()V

    return-void
.end method

.method private addCloseButtonToTapTargetIfNeeded(ZLcom/amazon/device/ads/RelativePosition;II)V
    .locals 10
    .param p1, "showImage"    # Z
    .param p2, "position"    # Lcom/amazon/device/ads/RelativePosition;
    .param p3, "buttonSize"    # I
    .param p4, "tapTargetSize"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/16 v9, 0x9

    const/4 v8, -0x1

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/16 v5, 0xa

    .line 187
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 189
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 190
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 191
    iget-object v2, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/amazon/device/ads/NativeCloseButton;->viewGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/amazon/device/ads/NativeCloseButton;->viewGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonContainer:Landroid/view/ViewGroup;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p4, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 204
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v0, p2

    .line 205
    .local v0, "p":Lcom/amazon/device/ads/RelativePosition;
    if-nez p2, :cond_2

    .line 207
    sget-object v0, Lcom/amazon/device/ads/RelativePosition;->TOP_RIGHT:Lcom/amazon/device/ads/RelativePosition;

    .line 209
    :cond_2
    sget-object v2, Lcom/amazon/device/ads/NativeCloseButton$6;->$SwitchMap$com$amazon$device$ads$RelativePosition:[I

    invoke-virtual {v0}, Lcom/amazon/device/ads/RelativePosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 239
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 240
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    :goto_1
    iget-object v2, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v2, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    .line 245
    return-void

    .line 193
    .end local v0    # "p":Lcom/amazon/device/ads/RelativePosition;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 212
    .restart local v0    # "p":Lcom/amazon/device/ads/RelativePosition;
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 213
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 216
    :pswitch_1
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 217
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 220
    :pswitch_2
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 221
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 224
    :pswitch_3
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 227
    :pswitch_4
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 228
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 231
    :pswitch_5
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 232
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 235
    :pswitch_6
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 236
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private animateCloseButton(Landroid/view/MotionEvent;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "closeNormal"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p3, "closePressed"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private closeAd()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->adCloser:Lcom/amazon/device/ads/AdCloser;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdCloser;->closeAd()Z

    .line 168
    return-void
.end method

.method private createButtonIfNeeded(I)V
    .locals 10
    .param p1, "tapTargetSize"    # I

    .prologue
    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, "createButton":Z
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    if-nez v6, :cond_0

    .line 122
    iget-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/amazon/device/ads/LayoutFactory$LayoutType;->RELATIVE_LAYOUT:Lcom/amazon/device/ads/LayoutFactory$LayoutType;

    const-string v9, "nativeCloseButton"

    invoke-virtual {v6, v7, v8, v9}, Lcom/amazon/device/ads/LayoutFactory;->createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v6

    iput-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    .line 123
    iget-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->imageViewFactory:Lcom/amazon/device/ads/ImageViewFactory;

    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "nativeCloseButtonImage"

    invoke-interface {v6, v7, v8}, Lcom/amazon/device/ads/ImageViewFactory;->createImageView(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v6

    iput-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    .line 124
    const/4 v2, 0x1

    .line 126
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-eqz v2, :cond_1

    .line 129
    iget-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->imageViewFactory:Lcom/amazon/device/ads/ImageViewFactory;

    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcom/amazon/device/ads/Assets;->getInstance()Lcom/amazon/device/ads/Assets;

    move-result-object v8

    const-string v9, "amazon_ads_close_normal.png"

    invoke-virtual {v8, v9}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazon/device/ads/ImageViewFactory;->createBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 130
    .local v0, "closeNormal":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->imageViewFactory:Lcom/amazon/device/ads/ImageViewFactory;

    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcom/amazon/device/ads/Assets;->getInstance()Lcom/amazon/device/ads/Assets;

    move-result-object v8

    const-string v9, "amazon_ads_close_pressed.png"

    invoke-virtual {v8, v9}, Lcom/amazon/device/ads/Assets;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazon/device/ads/ImageViewFactory;->createBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 131
    .local v1, "closePressed":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 133
    iget-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    new-instance v4, Lcom/amazon/device/ads/NativeCloseButton$2;

    invoke-direct {v4, p0}, Lcom/amazon/device/ads/NativeCloseButton$2;-><init>(Lcom/amazon/device/ads/NativeCloseButton;)V

    .line 141
    .local v4, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v5, Lcom/amazon/device/ads/NativeCloseButton$3;

    invoke-direct {v5, p0, v0, v1}, Lcom/amazon/device/ads/NativeCloseButton$3;-><init>(Lcom/amazon/device/ads/NativeCloseButton;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 154
    .local v5, "onTouchListener":Landroid/view/View$OnTouchListener;
    iget-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    iget-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    iget-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/amazon/device/ads/LayoutFactory$LayoutType;->RELATIVE_LAYOUT:Lcom/amazon/device/ads/LayoutFactory$LayoutType;

    const-string v9, "nativeCloseButtonContainer"

    invoke-virtual {v6, v7, v8, v9}, Lcom/amazon/device/ads/LayoutFactory;->createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v6

    iput-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonContainer:Landroid/view/ViewGroup;

    .line 161
    iget-object v6, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .end local v0    # "closeNormal":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "closePressed":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v5    # "onTouchListener":Landroid/view/View$OnTouchListener;
    :cond_1
    return-void

    .line 126
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private hideImage()V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/NativeCloseButton$5;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/NativeCloseButton$5;-><init>(Lcom/amazon/device/ads/NativeCloseButton;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 298
    return-void
.end method

.method private hideImageOnMainThread()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 302
    return-void
.end method

.method private removeNativeCloseButtonOnMainThread()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->viewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 265
    return-void
.end method


# virtual methods
.method public enable(ZLcom/amazon/device/ads/RelativePosition;)V
    .locals 8
    .param p1, "showImage"    # Z
    .param p2, "position"    # Lcom/amazon/device/ads/RelativePosition;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->hasNativeCloseButton:Z

    .line 75
    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->viewGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    .line 81
    :cond_0
    if-nez p1, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->hideImage()V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 89
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 90
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 91
    const/high16 v1, 0x42700000    # 60.0f

    iget v3, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    float-to-int v5, v1

    .line 92
    .local v5, "buttonSize":I
    const/high16 v1, 0x42a00000    # 80.0f

    iget v3, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    float-to-int v2, v1

    .line 94
    .local v2, "tapTargetSize":I
    new-instance v0, Lcom/amazon/device/ads/NativeCloseButton$1;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/NativeCloseButton$1;-><init>(Lcom/amazon/device/ads/NativeCloseButton;IZLcom/amazon/device/ads/RelativePosition;I)V

    .line 110
    .local v0, "closeButtonTask":Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;, "Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->hasNativeCloseButton:Z

    .line 253
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/NativeCloseButton$4;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/NativeCloseButton$4;-><init>(Lcom/amazon/device/ads/NativeCloseButton;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 261
    return-void
.end method

.method public showImage(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->hasNativeCloseButton:Z

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton;->closeButton:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 277
    if-eqz p1, :cond_1

    .line 279
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/NativeCloseButton;->enable(ZLcom/amazon/device/ads/RelativePosition;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/NativeCloseButton;->hideImage()V

    goto :goto_0
.end method
