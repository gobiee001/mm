.class Lcom/amazon/device/ads/ImageButtonFactory;
.super Ljava/lang/Object;
.source "ImageViewFactory.java"

# interfaces
.implements Lcom/amazon/device/ads/ImageViewFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p1, p2}, Lcom/amazon/device/ads/AndroidTargetUtils;->getNewBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public createImageView(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageButton;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "imageButton":Landroid/widget/ImageButton;
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    return-object v0
.end method

.method public bridge synthetic createImageView(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/ImageButtonFactory;->createImageView(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0
.end method
