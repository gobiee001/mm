.class Lcom/applovin/impl/sdk/cs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/cj;

.field final synthetic b:Lcom/applovin/impl/sdk/co;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/co;Lcom/applovin/impl/sdk/cj;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/cs;->b:Lcom/applovin/impl/sdk/co;

    iput-object p2, p0, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/cs;->b:Lcom/applovin/impl/sdk/co;

    iget-object v1, p0, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/co;->a(Lcom/applovin/impl/sdk/co;Lcom/applovin/impl/sdk/cj;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cj;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cj;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cs;->b:Lcom/applovin/impl/sdk/co;

    invoke-static {v0}, Lcom/applovin/impl/sdk/co;->c(Lcom/applovin/impl/sdk/co;)Lcom/applovin/mediation/AppLovinMediationAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cs;->b:Lcom/applovin/impl/sdk/co;

    invoke-static {v1}, Lcom/applovin/impl/sdk/co;->a(Lcom/applovin/impl/sdk/co;)Lcom/applovin/impl/sdk/cl;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/cs;->b:Lcom/applovin/impl/sdk/co;

    invoke-static {v2}, Lcom/applovin/impl/sdk/co;->b(Lcom/applovin/impl/sdk/co;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/mediation/AppLovinMediationAdapter;->prepareInterstitialAd(Lcom/applovin/mediation/AppLovinMediationAdapterConfig;Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cj;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cs;->b:Lcom/applovin/impl/sdk/co;

    invoke-static {v0}, Lcom/applovin/impl/sdk/co;->c(Lcom/applovin/impl/sdk/co;)Lcom/applovin/mediation/AppLovinMediationAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cs;->b:Lcom/applovin/impl/sdk/co;

    invoke-static {v1}, Lcom/applovin/impl/sdk/co;->a(Lcom/applovin/impl/sdk/co;)Lcom/applovin/impl/sdk/cl;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/cs;->b:Lcom/applovin/impl/sdk/co;

    invoke-static {v2}, Lcom/applovin/impl/sdk/co;->b(Lcom/applovin/impl/sdk/co;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/mediation/AppLovinMediationAdapter;->prepareIncentivizedAd(Lcom/applovin/mediation/AppLovinMediationAdapterConfig;Landroid/content/Context;)V

    goto :goto_0
.end method
