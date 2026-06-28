.class public final Lcom/inmobi/ads/ah;
.super Lcom/inmobi/ads/au;
.source "NativeCtaAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ah$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 57
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/ads/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;Ljava/util/List;ILorg/json/JSONObject;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;Ljava/util/List;ILorg/json/JSONObject;)V
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
    .line 65
    sget-object v3, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_CTA:Lcom/inmobi/ads/NativeAsset$AssetType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/au;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p5}, Lcom/inmobi/ads/ah;->a(Ljava/util/List;)V

    .line 67
    if-eqz p7, :cond_0

    .line 68
    iput p6, p0, Lcom/inmobi/ads/ah;->i:I

    .line 69
    iput-object p7, p0, Lcom/inmobi/ads/ah;->f:Lorg/json/JSONObject;

    .line 71
    :cond_0
    return-void
.end method
