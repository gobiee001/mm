.class Lcom/mopub/mobileads/AdColonyInterstitial$1;
.super Ljava/lang/Object;
.source "AdColonyInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdColonyInterstitial;->showInterstitial()V
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
    .line 98
    iput-object p1, p0, Lcom/mopub/mobileads/AdColonyInterstitial$1;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial$1;->this$0:Lcom/mopub/mobileads/AdColonyInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AdColonyInterstitial;->access$000(Lcom/mopub/mobileads/AdColonyInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 102
    return-void
.end method
