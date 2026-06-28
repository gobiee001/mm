.class Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsomniacs/da2/DA2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RewardedVideoNetworkWaterfallNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;",
        ">;"
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public waterfallOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2155
    const/4 v0, 0x0

    iput v0, p0, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;->waterfallOrder:I

    .line 2156
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;)I
    .locals 2
    .param p1, "another"    # Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;

    .prologue
    .line 2160
    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;->waterfallOrder:I

    iget v1, p1, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;->waterfallOrder:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2164
    :goto_0
    return v0

    .line 2161
    :cond_0
    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;->waterfallOrder:I

    iget v1, p1, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;->waterfallOrder:I

    if-ge v0, v1, :cond_1

    .line 2162
    const/4 v0, -0x1

    goto :goto_0

    .line 2164
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 2150
    check-cast p1, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;

    invoke-virtual {p0, p1}, Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;->compareTo(Lcom/appsomniacs/da2/DA2Activity$RewardedVideoNetworkWaterfallNode;)I

    move-result v0

    return v0
.end method
