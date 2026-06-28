.class Lcom/inmobi/ads/ak;
.super Lcom/inmobi/ads/NativeAsset;
.source "NativeGifAsset.java"


# static fields
.field private static final A:Ljava/lang/String;


# instance fields
.field z:Landroid/graphics/Movie;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/inmobi/ads/ak;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ak;->A:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 35
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/ads/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;Ljava/util/List;ILorg/json/JSONObject;)V

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;Ljava/util/List;ILorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/af;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeTracker;",
            ">;I",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 44
    sget-object v3, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_GIF:Lcom/inmobi/ads/NativeAsset$AssetType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/NativeAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;Ljava/util/List;)V

    .line 46
    invoke-static {}, Lcom/inmobi/ads/cache/d;->a()Lcom/inmobi/ads/cache/d;

    invoke-static {p4}, Lcom/inmobi/ads/cache/d;->b(Ljava/lang/String;)Lcom/inmobi/ads/cache/a;

    move-result-object v1

    .line 47
    if-nez v1, :cond_2

    move-object v0, v6

    :goto_0
    iput-object v0, p0, Lcom/inmobi/ads/ak;->e:Ljava/lang/Object;

    .line 49
    if-eqz v1, :cond_0

    .line 51
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2228
    iget-object v1, v1, Lcom/inmobi/ads/cache/a;->e:Ljava/lang/String;

    .line 51
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v1, v1, [B

    .line 53
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 54
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 55
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 56
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/ak;->z:Landroid/graphics/Movie;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_1
    if-eqz p7, :cond_1

    .line 65
    iput p6, p0, Lcom/inmobi/ads/ak;->i:I

    .line 66
    iput-object p7, p0, Lcom/inmobi/ads/ak;->f:Lorg/json/JSONObject;

    .line 68
    :cond_1
    return-void

    .line 1228
    :cond_2
    iget-object v0, v1, Lcom/inmobi/ads/cache/a;->e:Ljava/lang/String;

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in decoding GIF : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iput-object v6, p0, Lcom/inmobi/ads/ak;->z:Landroid/graphics/Movie;

    .line 60
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1
.end method
