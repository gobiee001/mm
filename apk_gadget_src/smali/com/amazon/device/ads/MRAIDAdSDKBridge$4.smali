.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->savePicture(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 907
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$400(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/GraphicsUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$300(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->val$bitmap:Landroid/graphics/Bitmap;

    const-string v4, "AdImage"

    const-string v5, "Image created by rich media ad."

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazon/device/ads/GraphicsUtils;->insertImageInMediaStore(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 908
    .local v0, "insertUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    const-string v2, "Picture could not be stored to device."

    const-string v3, "storePicture"

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :goto_0
    return-void

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$300(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2, v6, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0
.end method
