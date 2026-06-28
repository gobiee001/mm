.class Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/amazon/device/ads/AdControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultAdControlCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdController;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 0

    .prologue
    .line 1820
    iput-object p1, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClosing()I
    .locals 2

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {v0}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "DefaultAdControlCallback adClosing called"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1863
    const/4 v0, 0x1

    return v0
.end method

.method public isAdReady(Z)Z
    .locals 2
    .param p1, "deferredLoad"    # Z

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {v0}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "DefaultAdControlCallback isAdReady called"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1826
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/amazon/device/ads/AdEvent;

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {v0}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "DefaultAdControlCallback onAdEvent called"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1857
    return-void
.end method

.method public onAdExpired()V
    .locals 2

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {v0}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "DefaultAdControlCallback onAdExpired called"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1870
    return-void
.end method

.method public onAdFailed(Lcom/amazon/device/ads/AdError;)V
    .locals 2
    .param p1, "adError"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {v0}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "DefaultAdControlCallback onAdFailed called"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1851
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/AdProperties;)V
    .locals 2
    .param p1, "adProperties"    # Lcom/amazon/device/ads/AdProperties;

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {v0}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "DefaultAdControlCallback onAdLoaded called"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1833
    return-void
.end method

.method public onAdRendered()V
    .locals 2

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {v0}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "DefaultAdControlCallback onAdRendered called"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1839
    return-void
.end method

.method public postAdRendered()V
    .locals 2

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {v0}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "DefaultAdControlCallback postAdRendered called"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1845
    return-void
.end method
