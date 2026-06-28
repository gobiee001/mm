.class Lcom/mopub/mobileads/AppLovinCustomEventBanner$2;
.super Ljava/lang/Object;
.source "AppLovinCustomEventBanner.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


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


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AppLovinCustomEventBanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/AppLovinCustomEventBanner;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mopub/mobileads/AppLovinCustomEventBanner$2;->this$0:Lcom/mopub/mobileads/AppLovinCustomEventBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 97
    const/4 v0, 0x3

    const-string v1, "Banner displayed"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->access$000(ILjava/lang/String;)V

    .line 98
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 103
    const/4 v0, 0x3

    const-string v1, "Banner dismissed"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->access$000(ILjava/lang/String;)V

    .line 104
    return-void
.end method
