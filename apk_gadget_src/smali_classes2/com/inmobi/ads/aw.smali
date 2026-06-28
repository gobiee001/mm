.class public final Lcom/inmobi/ads/aw;
.super Lcom/inmobi/ads/NativeAsset;
.source "NativeTimerAsset.java"


# instance fields
.field A:Lcom/inmobi/ads/av;

.field z:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Lcom/inmobi/ads/av;)V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_TIMER:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/inmobi/ads/NativeAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;)V

    .line 17
    iput-object p4, p0, Lcom/inmobi/ads/aw;->A:Lcom/inmobi/ads/av;

    .line 18
    return-void
.end method
