.class Lcom/mopub/mobileads/AdColonyInterstitial$2;
.super Lcom/adcolony/sdk/AdColonyInterstitialListener;
.source "AdColonyInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdColonyInterstitial;->getAdColonyInterstitialListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/AdColonyInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdColonyInterstitial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/AdColonyInterstitial;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/mopub/mobileads/AdColonyInterstitial$2;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 1
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial$2;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyInterstitial;->access$000(Lcom/mopub/mobileads/AdColonyInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 182
    return-void
.end method

.method public onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 153
    const-string v0, "AdColonyInterstitial"

    const-string v1, "AdColony interstitial ad has been dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial$2;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyInterstitial;->access$200(Lcom/mopub/mobileads/AdColonyInterstitial;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/AdColonyInterstitial$2$3;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdColonyInterstitial$2$3;-><init>(Lcom/mopub/mobileads/AdColonyInterstitial$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    return-void
.end method

.method public onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 175
    const-string v0, "AdColonyInterstitial"

    const-string v1, "AdColony interstitial ad is expiring; requesting new ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getZoneID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdColonyInterstitial$2;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-static {v1}, Lcom/mopub/mobileads/AdColonyInterstitial;->access$300(Lcom/mopub/mobileads/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;)Z

    .line 177
    return-void
.end method

.method public onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 3
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 164
    const-string v0, "AdColonyInterstitial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdColony interstitial ad shown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getZoneID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial$2;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyInterstitial;->access$200(Lcom/mopub/mobileads/AdColonyInterstitial;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/AdColonyInterstitial$2$4;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdColonyInterstitial$2$4;-><init>(Lcom/mopub/mobileads/AdColonyInterstitial$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method

.method public onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 2
    .param p1, "adColonyInterstitial"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial$2;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/AdColonyInterstitial;->access$102(Lcom/mopub/mobileads/AdColonyInterstitial;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 131
    const-string v0, "AdColonyInterstitial"

    const-string v1, "AdColony interstitial ad has been successfully loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial$2;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyInterstitial;->access$200(Lcom/mopub/mobileads/AdColonyInterstitial;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/AdColonyInterstitial$2$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdColonyInterstitial$2$1;-><init>(Lcom/mopub/mobileads/AdColonyInterstitial$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method

.method public onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .locals 2
    .param p1, "zone"    # Lcom/adcolony/sdk/AdColonyZone;

    .prologue
    .line 142
    const-string v0, "AdColonyInterstitial"

    const-string v1, "AdColony interstitial ad has no fill."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial$2;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyInterstitial;->access$200(Lcom/mopub/mobileads/AdColonyInterstitial;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/AdColonyInterstitial$2$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdColonyInterstitial$2$2;-><init>(Lcom/mopub/mobileads/AdColonyInterstitial$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method
