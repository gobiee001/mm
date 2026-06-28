.class final Lcom/inmobi/ads/ac$b;
.super Ljava/lang/Object;
.source "NativeAdContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method static a(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/ai;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/ads/b;)Lcom/inmobi/ads/ac;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/inmobi/ads/AdContainer$RenderingProperties;",
            "Lcom/inmobi/ads/ai;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/inmobi/ads/bj;",
            ">;",
            "Lcom/inmobi/ads/b;",
            ")",
            "Lcom/inmobi/ads/ac;"
        }
    .end annotation

    .prologue
    .line 99
    .line 2306
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/inmobi/ads/ai;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 99
    sget-object v1, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/inmobi/ads/ay;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/ads/ay;-><init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/ai;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/ads/b;)V

    .line 103
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/inmobi/ads/ac;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/ads/ac;-><init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/ai;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/ads/b;)V

    goto :goto_0
.end method
