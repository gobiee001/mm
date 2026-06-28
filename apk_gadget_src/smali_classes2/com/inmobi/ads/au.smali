.class public Lcom/inmobi/ads/au;
.super Lcom/inmobi/ads/NativeAsset;
.source "NativeTextAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/au$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/ads/NativeAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;)V

    .line 155
    iput-object p5, p0, Lcom/inmobi/ads/au;->e:Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_TEXT:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/inmobi/ads/NativeAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;)V

    .line 150
    iput-object p4, p0, Lcom/inmobi/ads/au;->e:Ljava/lang/Object;

    .line 151
    return-void
.end method
