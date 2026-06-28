.class public Lcom/applovin/impl/sdk/dc;
.super Lcom/applovin/impl/sdk/dr;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/dr;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method a(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/dw;
    .locals 4

    new-instance v0, Lcom/applovin/impl/sdk/eu;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/applovin/impl/sdk/dc;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/applovin/impl/sdk/eu;-><init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    return-object v0
.end method

.method a(Lcom/applovin/impl/sdk/ci;)Lcom/applovin/impl/sdk/n;
    .locals 1

    check-cast p1, Lcom/applovin/impl/sdk/NativeAdImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/NativeAdImpl;->getAdZone()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/dc;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/n;->j(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Lcom/applovin/impl/sdk/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/dc;->i(Lcom/applovin/impl/sdk/n;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/n;I)V
    .locals 0

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ci;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/nativeAds/AppLovinNativeAd;

    const/4 v1, 0x0

    check-cast p2, Lcom/applovin/nativeAds/AppLovinNativeAd;

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {p1, v0}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/impl/sdk/n;I)V
    .locals 0

    check-cast p1, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {p1, p3}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/util/LinkedHashSet;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/dr;->a(Ljava/util/LinkedHashSet;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/applovin/impl/sdk/n;Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/applovin/impl/sdk/dr;->a(Lcom/applovin/impl/sdk/n;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic b(Lcom/applovin/impl/sdk/n;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/applovin/impl/sdk/dr;->b(Lcom/applovin/impl/sdk/n;I)V

    return-void
.end method

.method public bridge synthetic b(Lcom/applovin/impl/sdk/n;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/applovin/impl/sdk/dr;->b(Lcom/applovin/impl/sdk/n;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/applovin/impl/sdk/n;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/dr;->b(Lcom/applovin/impl/sdk/n;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ci;
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/dr;->c(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ci;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ci;
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/dr;->d(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ci;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ci;
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/dr;->e(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ci;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f(Lcom/applovin/impl/sdk/n;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/dr;->f(Lcom/applovin/impl/sdk/n;)Z

    move-result v0

    return v0
.end method

.method public failedToReceiveAd(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic g(Lcom/applovin/impl/sdk/n;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/dr;->g(Lcom/applovin/impl/sdk/n;)V

    return-void
.end method

.method public bridge synthetic h(Lcom/applovin/impl/sdk/n;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/dr;->h(Lcom/applovin/impl/sdk/n;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic i(Lcom/applovin/impl/sdk/n;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/dr;->i(Lcom/applovin/impl/sdk/n;)V

    return-void
.end method

.method public bridge synthetic j(Lcom/applovin/impl/sdk/n;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/dr;->j(Lcom/applovin/impl/sdk/n;)V

    return-void
.end method

.method public onNativeAdsFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/dc;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/n;->j(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Lcom/applovin/impl/sdk/n;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/dc;->c(Lcom/applovin/impl/sdk/n;I)V

    return-void
.end method

.method public onNativeAdsLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/nativeAds/AppLovinNativeAd;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/nativeAds/AppLovinNativeAd;

    iget-object v1, p0, Lcom/applovin/impl/sdk/dc;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/dx;->ca:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/dc;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getNativeAdService()Lcom/applovin/impl/sdk/de;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/dd;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/dd;-><init>(Lcom/applovin/impl/sdk/dc;)V

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/de;->precacheResources(Lcom/applovin/nativeAds/AppLovinNativeAd;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lcom/applovin/impl/sdk/ci;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/dc;->c(Lcom/applovin/impl/sdk/ci;)V

    goto :goto_0
.end method
