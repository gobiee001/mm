.class public final Lcom/inmobi/ads/am;
.super Lcom/inmobi/ads/NativeAsset;
.source "NativeImageAsset.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 23
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/ads/am;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;Ljava/util/List;ILorg/json/JSONObject;)V

    .line 25
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;Ljava/util/List;ILorg/json/JSONObject;)V
    .locals 6
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
    .line 32
    sget-object v3, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeAsset$AssetType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/NativeAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;Ljava/util/List;)V

    .line 33
    iput-object p4, p0, Lcom/inmobi/ads/am;->e:Ljava/lang/Object;

    .line 34
    if-eqz p7, :cond_0

    .line 35
    iput p6, p0, Lcom/inmobi/ads/am;->i:I

    .line 36
    iput-object p7, p0, Lcom/inmobi/ads/am;->f:Lorg/json/JSONObject;

    .line 38
    :cond_0
    return-void
.end method
