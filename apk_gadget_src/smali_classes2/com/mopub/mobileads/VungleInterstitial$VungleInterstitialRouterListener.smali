.class Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;
.super Ljava/lang/Object;
.source "VungleInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/VungleRouterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VungleInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VungleInterstitialRouterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VungleInterstitial;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/VungleInterstitial;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/VungleInterstitial;Lcom/mopub/mobileads/VungleInterstitial$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mopub/mobileads/VungleInterstitial;
    .param p2, "x1"    # Lcom/mopub/mobileads/VungleInterstitial$1;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;-><init>(Lcom/mopub/mobileads/VungleInterstitial;)V

    return-void
.end method


# virtual methods
.method public onAdAvailabilityUpdate(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "placementReferenceId"    # Ljava/lang/String;
    .param p2, "isAdAvailable"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$200(Lcom/mopub/mobileads/VungleInterstitial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$300(Lcom/mopub/mobileads/VungleInterstitial;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    if-eqz p2, :cond_1

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vungle Interstitial: interstitial ad successfully loaded - Placement ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$400(Lcom/mopub/mobileads/VungleInterstitial;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener$4;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener$4;-><init>(Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vungle Interstitial: interstitial ad is not loaded - Placement ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$400(Lcom/mopub/mobileads/VungleInterstitial;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener$5;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener$5;-><init>(Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onAdEnd(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "placementReferenceId"    # Ljava/lang/String;
    .param p2, "wasSuccessfulView"    # Z
    .param p3, "wasCallToActionClicked"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$200(Lcom/mopub/mobileads/VungleInterstitial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vungle Interstitial: onAdEnd - Placement ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wasSuccessfulView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wasCallToActionClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VungleInterstitial;->access$302(Lcom/mopub/mobileads/VungleInterstitial;Z)Z

    .line 166
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$400(Lcom/mopub/mobileads/VungleInterstitial;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener$1;

    invoke-direct {v1, p0, p3}, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener$1;-><init>(Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    invoke-static {}, Lcom/mopub/mobileads/VungleInterstitial;->access$500()Lcom/mopub/mobileads/VungleRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v1}, Lcom/mopub/mobileads/VungleInterstitial;->access$200(Lcom/mopub/mobileads/VungleInterstitial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VungleRouter;->removeRouterListener(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementReferenceId"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$200(Lcom/mopub/mobileads/VungleInterstitial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vungle Interstitial: onAdStart - Placement ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VungleInterstitial;->access$302(Lcom/mopub/mobileads/VungleInterstitial;Z)Z

    .line 186
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$400(Lcom/mopub/mobileads/VungleInterstitial;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener$2;-><init>(Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    :cond_0
    return-void
.end method

.method public onUnableToPlayAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "placementReferenceId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$200(Lcom/mopub/mobileads/VungleInterstitial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vungle Interstitial: onUnableToPlayAd - Placement ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VungleInterstitial;->access$302(Lcom/mopub/mobileads/VungleInterstitial;Z)Z

    .line 201
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$400(Lcom/mopub/mobileads/VungleInterstitial;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener$3;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener$3;-><init>(Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    :cond_0
    return-void
.end method
