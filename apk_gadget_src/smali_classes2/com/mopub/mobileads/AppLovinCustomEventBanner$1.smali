.class Lcom/mopub/mobileads/AppLovinCustomEventBanner$1;
.super Ljava/lang/Object;
.source "AppLovinCustomEventBanner.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AppLovinCustomEventBanner;->loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/AppLovinCustomEventBanner;

.field final synthetic val$adView:Lcom/applovin/adview/AppLovinAdView;

.field final synthetic val$customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AppLovinCustomEventBanner;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Lcom/applovin/adview/AppLovinAdView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/AppLovinCustomEventBanner;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mopub/mobileads/AppLovinCustomEventBanner$1;->this$0:Lcom/mopub/mobileads/AppLovinCustomEventBanner;

    iput-object p2, p0, Lcom/mopub/mobileads/AppLovinCustomEventBanner$1;->val$customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    iput-object p3, p0, Lcom/mopub/mobileads/AppLovinCustomEventBanner$1;->val$adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 79
    const/4 v0, 0x3

    const-string v1, "Successfully loaded banner ad"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->access$000(ILjava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinCustomEventBanner$1;->val$customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/mopub/mobileads/AppLovinCustomEventBanner$1;->val$adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 86
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load banner ad with code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->access$000(ILjava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinCustomEventBanner$1;->val$customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-static {p1}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->access$100(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 90
    return-void
.end method
