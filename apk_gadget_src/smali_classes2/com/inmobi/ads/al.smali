.class public final Lcom/inmobi/ads/al;
.super Lcom/inmobi/ads/NativeAsset;
.source "NativeIconAsset.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_ICON:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/inmobi/ads/NativeAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;)V

    .line 17
    iput-object p4, p0, Lcom/inmobi/ads/al;->e:Ljava/lang/Object;

    .line 18
    return-void
.end method
