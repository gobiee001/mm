.class Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener$3;
.super Ljava/lang/Object;
.source "VungleInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->onUnableToPlayAd(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener$3;->this$1:Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener$3;->this$1:Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;

    iget-object v0, v0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;->this$0:Lcom/mopub/mobileads/VungleInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleInterstitial;->access$000(Lcom/mopub/mobileads/VungleInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 205
    return-void
.end method
