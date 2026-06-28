.class public Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;
.super Ljava/lang/Object;
.source "RewardedVideoConfigurations.java"


# instance fields
.field private mDefaultRVPlacement:Lcom/supersonic/mediationsdk/model/Placement;

.field private mRVAdaptersAlgorithm:Ljava/lang/String;

.field private mRVAdaptersSmartLoadAmount:I

.field private mRVAdaptersTimeOutInSeconds:I

.field private mRVEvents:Lcom/supersonic/mediationsdk/model/ApplicationEvents;

.field private mRVPlacements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/model/Placement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mRVPlacements:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mRVEvents:Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    .line 23
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lcom/supersonic/mediationsdk/model/ApplicationEvents;)V
    .locals 1
    .param p1, "adaptersSmartLoadAmount"    # I
    .param p2, "adaptersSmartLoadTimeout"    # I
    .param p3, "adaptersAlgorithm"    # Ljava/lang/String;
    .param p4, "events"    # Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mRVPlacements:Ljava/util/ArrayList;

    .line 27
    iput p1, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mRVAdaptersSmartLoadAmount:I

    .line 28
    iput p2, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mRVAdaptersTimeOutInSeconds:I

    .line 29
    iput-object p3, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mRVAdaptersAlgorithm:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mRVEvents:Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    .line 31
    return-void
.end method


# virtual methods
.method public addRewardedVideoPlacement(Lcom/supersonic/mediationsdk/model/Placement;)V
    .locals 1
    .param p1, "placement"    # Lcom/supersonic/mediationsdk/model/Placement;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mRVPlacements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementId()I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iput-object p1, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mDefaultRVPlacement:Lcom/supersonic/mediationsdk/model/Placement;

    .line 44
    :cond_0
    return-void
.end method

.method public getDefaultRewardedVideoPlacement()Lcom/supersonic/mediationsdk/model/Placement;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mDefaultRVPlacement:Lcom/supersonic/mediationsdk/model/Placement;

    return-object v0
.end method

.method public getRewardedVideoAdapterAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mRVAdaptersAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoAdaptersSmartLoadAmount()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mRVAdaptersSmartLoadAmount:I

    return v0
.end method

.method public getRewardedVideoAdaptersSmartLoadTimeout()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mRVAdaptersTimeOutInSeconds:I

    return v0
.end method

.method public getRewardedVideoEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mRVEvents:Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    return-object v0
.end method

.method public getRewardedVideoPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;
    .locals 3
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v2, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->mRVPlacements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/model/Placement;

    .line 48
    .local v1, "placement":Lcom/supersonic/mediationsdk/model/Placement;
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    .end local v1    # "placement":Lcom/supersonic/mediationsdk/model/Placement;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
