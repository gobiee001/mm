.class Lcom/mopub/mobileads/AppLovinCustomEventBanner$3;
.super Ljava/lang/Object;
.source "AppLovinCustomEventBanner.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


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

.field final synthetic val$customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AppLovinCustomEventBanner;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/AppLovinCustomEventBanner;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mopub/mobileads/AppLovinCustomEventBanner$3;->this$0:Lcom/mopub/mobileads/AppLovinCustomEventBanner;

    iput-object p2, p0, Lcom/mopub/mobileads/AppLovinCustomEventBanner$3;->val$customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 111
    const/4 v0, 0x3

    const-string v1, "Banner clicked"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->access$000(ILjava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinCustomEventBanner$3;->val$customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 114
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinCustomEventBanner$3;->val$customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onLeaveApplication()V

    .line 115
    return-void
.end method
