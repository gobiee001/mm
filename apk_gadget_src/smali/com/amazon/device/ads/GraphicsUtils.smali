.class Lcom/amazon/device/ads/GraphicsUtils;
.super Ljava/lang/Object;
.source "GraphicsUtils.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/amazon/device/ads/GraphicsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/GraphicsUtils;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/GraphicsUtils;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/GraphicsUtils;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public createBitmapImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const v4, 0x8000

    .line 25
    if-eqz p1, :cond_0

    .line 27
    const v1, 0x8000

    .line 28
    .local v1, "bufferSize":I
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 30
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    .line 32
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object p1, v3

    .line 43
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bufferSize":I
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    :goto_1
    return-object v0

    .line 37
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bufferSize":I
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 39
    .local v2, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/amazon/device/ads/GraphicsUtils;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "IOException while trying to close the input stream."

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bufferSize":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public insertImageInMediaStore(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
