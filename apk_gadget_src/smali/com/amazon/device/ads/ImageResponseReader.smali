.class public Lcom/amazon/device/ads/ImageResponseReader;
.super Lcom/amazon/device/ads/ResponseReader;
.source "ImageResponseReader.java"


# instance fields
.field final graphicsUtils:Lcom/amazon/device/ads/GraphicsUtils;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/ResponseReader;Lcom/amazon/device/ads/GraphicsUtils;)V
    .locals 1
    .param p1, "reader"    # Lcom/amazon/device/ads/ResponseReader;
    .param p2, "graphicsUtils"    # Lcom/amazon/device/ads/GraphicsUtils;

    .prologue
    .line 11
    invoke-virtual {p1}, Lcom/amazon/device/ads/ResponseReader;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/ResponseReader;-><init>(Ljava/io/InputStream;)V

    .line 12
    iput-object p2, p0, Lcom/amazon/device/ads/ImageResponseReader;->graphicsUtils:Lcom/amazon/device/ads/GraphicsUtils;

    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic enableLog(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 5
    invoke-super {p0, p1}, Lcom/amazon/device/ads/ResponseReader;->enableLog(Z)V

    return-void
.end method

.method public bridge synthetic getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lcom/amazon/device/ads/ResponseReader;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public readAsBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amazon/device/ads/ImageResponseReader;->graphicsUtils:Lcom/amazon/device/ads/GraphicsUtils;

    invoke-virtual {p0}, Lcom/amazon/device/ads/ImageResponseReader;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/GraphicsUtils;->createBitmapImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readAsJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lcom/amazon/device/ads/ResponseReader;->readAsJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lcom/amazon/device/ads/ResponseReader;->readAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setExternalLogTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 5
    invoke-super {p0, p1}, Lcom/amazon/device/ads/ResponseReader;->setExternalLogTag(Ljava/lang/String;)V

    return-void
.end method
