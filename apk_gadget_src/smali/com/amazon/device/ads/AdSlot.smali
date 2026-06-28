.class Lcom/amazon/device/ads/AdSlot;
.super Ljava/lang/Object;
.source "AdSlot.java"


# instance fields
.field private final adController:Lcom/amazon/device/ads/AdController;

.field private adError:Lcom/amazon/device/ads/AdError;

.field private final adOptions:Lcom/amazon/device/ads/AdTargetingOptions;

.field private deferredLoad:Z

.field private slotNumber:I


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdTargetingOptions;)V
    .locals 1
    .param p1, "adController"    # Lcom/amazon/device/ads/AdController;
    .param p2, "adOptions"    # Lcom/amazon/device/ads/AdTargetingOptions;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdSlot;->deferredLoad:Z

    .line 27
    iput-object p1, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    .line 28
    if-nez p2, :cond_0

    .line 30
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iput-object p2, p0, Lcom/amazon/device/ads/AdSlot;->adOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    goto :goto_0
.end method


# virtual methods
.method adFailed(Lcom/amazon/device/ads/AdError;)V
    .locals 1
    .param p1, "adError"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->adFailed(Lcom/amazon/device/ads/AdError;)V

    .line 105
    return-void
.end method

.method canBeUsed()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v0

    return v0
.end method

.method getAdError()Lcom/amazon/device/ads/AdError;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adError:Lcom/amazon/device/ads/AdError;

    return-object v0
.end method

.method public getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    return-object v0
.end method

.method getMaxSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMaxSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedAdSize()Lcom/amazon/device/ads/AdSize;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method getSlotNumber()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/amazon/device/ads/AdSlot;->slotNumber:I

    return v0
.end method

.method initializeAd()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->initialize()V

    .line 110
    return-void
.end method

.method isFetched()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdData;->getIsFetched()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->isValid()Z

    move-result v0

    return v0
.end method

.method prepareForAdLoad(J)Z
    .locals 3
    .param p1, "loadAdStartTime"    # J

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    iget-boolean v1, p0, Lcom/amazon/device/ads/AdSlot;->deferredLoad:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/device/ads/AdController;->prepareForAdLoad(JZ)Z

    move-result v0

    return v0
.end method

.method setAdData(Lcom/amazon/device/ads/AdData;)V
    .locals 1
    .param p1, "adData"    # Lcom/amazon/device/ads/AdData;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->setAdData(Lcom/amazon/device/ads/AdData;)V

    .line 95
    return-void
.end method

.method setAdError(Lcom/amazon/device/ads/AdError;)V
    .locals 0
    .param p1, "adError"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/amazon/device/ads/AdSlot;->adError:Lcom/amazon/device/ads/AdError;

    .line 75
    return-void
.end method

.method setConnectionInfo(Lcom/amazon/device/ads/ConnectionInfo;)V
    .locals 1
    .param p1, "connectionInfo"    # Lcom/amazon/device/ads/ConnectionInfo;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->setConnectionInfo(Lcom/amazon/device/ads/ConnectionInfo;)V

    .line 125
    return-void
.end method

.method public setDeferredLoad(Z)Lcom/amazon/device/ads/AdSlot;
    .locals 0
    .param p1, "deferredLoad"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdSlot;->deferredLoad:Z

    .line 46
    return-object p0
.end method

.method setSlotNumber(I)V
    .locals 0
    .param p1, "slotNumber"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/amazon/device/ads/AdSlot;->slotNumber:I

    .line 65
    return-void
.end method
