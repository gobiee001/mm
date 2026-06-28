.class public final Lcom/inmobi/ads/ag;
.super Lcom/inmobi/ads/NativeAsset;
.source "NativeContainerAsset.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ag$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/inmobi/ads/NativeAsset;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/inmobi/ads/NativeAsset;",
        ">;"
    }
.end annotation


# instance fields
.field A:I

.field B:[Lcom/inmobi/ads/NativeAsset;

.field C:I

.field z:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;ILorg/json/JSONObject;I)V
    .locals 8

    .prologue
    .line 61
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/ads/ag;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/util/List;ILorg/json/JSONObject;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/util/List;ILorg/json/JSONObject;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/af;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeTracker;",
            ">;I",
            "Lorg/json/JSONObject;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 71
    sget-object v3, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeAsset$AssetType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/NativeAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;Ljava/util/List;)V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/ag;->z:J

    .line 72
    iput-object p6, p0, Lcom/inmobi/ads/ag;->f:Lorg/json/JSONObject;

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/inmobi/ads/NativeAsset;

    iput-object v0, p0, Lcom/inmobi/ads/ag;->B:[Lcom/inmobi/ads/NativeAsset;

    .line 74
    iput p5, p0, Lcom/inmobi/ads/ag;->i:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/ag;->C:I

    .line 76
    iput p7, p0, Lcom/inmobi/ads/ag;->A:I

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/ag;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/inmobi/ads/ag;->C:I

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/ag;)[Lcom/inmobi/ads/NativeAsset;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/inmobi/ads/ag;->B:[Lcom/inmobi/ads/NativeAsset;

    return-object v0
.end method


# virtual methods
.method public final i(I)Lcom/inmobi/ads/NativeAsset;
    .locals 1

    .prologue
    .line 89
    if-ltz p1, :cond_0

    .line 1099
    iget v0, p0, Lcom/inmobi/ads/ag;->C:I

    .line 89
    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ag;->B:[Lcom/inmobi/ads/NativeAsset;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/inmobi/ads/NativeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/inmobi/ads/ag$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ag$a;-><init>(Lcom/inmobi/ads/ag;)V

    return-object v0
.end method

.method public final x()Z
    .locals 2

    .prologue
    .line 103
    const-string v0, "root"

    iget-object v1, p0, Lcom/inmobi/ads/ag;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final y()Z
    .locals 2

    .prologue
    .line 107
    const-string v0, "card_scrollable"

    iget-object v1, p0, Lcom/inmobi/ads/ag;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
