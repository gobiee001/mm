.class public Lcom/applovin/impl/sdk/l;
.super Lcom/applovin/impl/sdk/dr;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/dr;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method a(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/dw;
    .locals 2

    new-instance v0, Lcom/applovin/impl/sdk/es;

    iget-object v1, p0, Lcom/applovin/impl/sdk/l;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, p0, v1}, Lcom/applovin/impl/sdk/es;-><init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/es;->a(Z)V

    return-object v0
.end method

.method a(Lcom/applovin/impl/sdk/ci;)Lcom/applovin/impl/sdk/n;
    .locals 1

    check-cast p1, Lcom/applovin/impl/sdk/q;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/q;->t()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/l;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/n;->b(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->e()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/l;->i(Lcom/applovin/impl/sdk/n;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/n;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/l;->c(Lcom/applovin/impl/sdk/n;I)V

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ci;)V
    .locals 0

    check-cast p1, Lcom/applovin/sdk/AppLovinAdLoadListener;

    check-cast p2, Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {p1, p2}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/impl/sdk/n;I)V
    .locals 1

    instance-of v0, p1, Lcom/applovin/impl/sdk/as;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/as;

    invoke-interface {v0, p2, p3}, Lcom/applovin/impl/sdk/as;->a(Lcom/applovin/impl/sdk/n;I)V

    :cond_0
    instance-of v0, p1, Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {p1, p3}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :cond_1
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

    check-cast p1, Lcom/applovin/impl/sdk/ci;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/l;->c(Lcom/applovin/impl/sdk/ci;)V

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
    .locals 0

    return-void
.end method

.method public onNativeAdsLoaded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/nativeAds/AppLovinNativeAd;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
