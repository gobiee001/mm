.class public Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;
.super Ljava/lang/Object;
.source "InterstitialConfigurations.java"


# instance fields
.field private mDefaultISPlacement:Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

.field private mISAdaptersSmartLoadAmount:I

.field private mISAdaptersTimeOutInSeconds:I

.field private mISEvents:Lcom/supersonic/mediationsdk/model/ApplicationEvents;

.field private mISPlacements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/model/InterstitialPlacement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->mISPlacements:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->mISEvents:Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    .line 22
    return-void
.end method

.method public constructor <init>(IILcom/supersonic/mediationsdk/model/ApplicationEvents;)V
    .locals 1
    .param p1, "adaptersSmartLoadAmount"    # I
    .param p2, "adaptersSmartLoadTimeout"    # I
    .param p3, "events"    # Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->mISPlacements:Ljava/util/ArrayList;

    .line 26
    iput p1, p0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->mISAdaptersSmartLoadAmount:I

    .line 27
    iput p2, p0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->mISAdaptersTimeOutInSeconds:I

    .line 28
    iput-object p3, p0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->mISEvents:Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    .line 29
    return-void
.end method


# virtual methods
.method public addInterstitialPlacement(Lcom/supersonic/mediationsdk/model/InterstitialPlacement;)V
    .locals 1
    .param p1, "placement"    # Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->mISPlacements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/InterstitialPlacement;->getPlacementId()I

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iput-object p1, p0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->mDefaultISPlacement:Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    .line 39
    :cond_0
    return-void
.end method

.method public getDefaultInterstitialPlacement()Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->mDefaultISPlacement:Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    return-object v0
.end method

.method public getInterstitialAdaptersSmartLoadAmount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->mISAdaptersSmartLoadAmount:I

    return v0
.end method

.method public getInterstitialAdaptersSmartLoadTimeout()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->mISAdaptersTimeOutInSeconds:I

    return v0
.end method

.method public getInterstitialEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->mISEvents:Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    return-object v0
.end method

.method public getInterstitialPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    .locals 3
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v2, p0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->mISPlacements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    .line 43
    .local v1, "placement":Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    .end local v1    # "placement":Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
