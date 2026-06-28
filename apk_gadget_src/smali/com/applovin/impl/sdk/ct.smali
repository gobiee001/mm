.class Lcom/applovin/impl/sdk/ct;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/h;

.field final synthetic b:Lcom/applovin/impl/sdk/cj;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/applovin/impl/sdk/co;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/co;Lcom/applovin/impl/sdk/h;Lcom/applovin/impl/sdk/cj;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ct;->d:Lcom/applovin/impl/sdk/co;

    iput-object p2, p0, Lcom/applovin/impl/sdk/ct;->a:Lcom/applovin/impl/sdk/h;

    iput-object p3, p0, Lcom/applovin/impl/sdk/ct;->b:Lcom/applovin/impl/sdk/cj;

    iput-object p4, p0, Lcom/applovin/impl/sdk/ct;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/applovin/impl/sdk/cu;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/cu;-><init>(Lcom/applovin/impl/sdk/ct;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ct;->b:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cj;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/ct;->b:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cj;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ct;->d:Lcom/applovin/impl/sdk/co;

    invoke-static {v1}, Lcom/applovin/impl/sdk/co;->c(Lcom/applovin/impl/sdk/co;)Lcom/applovin/mediation/AppLovinMediationAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/ct;->b:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/cj;->d()Lcom/applovin/mediation/AppLovinMediatedAdInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/ct;->d:Lcom/applovin/impl/sdk/co;

    invoke-static {v3}, Lcom/applovin/impl/sdk/co;->a(Lcom/applovin/impl/sdk/co;)Lcom/applovin/impl/sdk/cl;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/ct;->c:Landroid/app/Activity;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/applovin/mediation/AppLovinMediationAdapter;->showInterstitialAd(Lcom/applovin/mediation/AppLovinMediatedAdInfo;Lcom/applovin/mediation/AppLovinMediationAdapterConfig;Landroid/app/Activity;Lcom/applovin/mediation/AppLovinMediationDisplayListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ct;->d:Lcom/applovin/impl/sdk/co;

    invoke-static {v0}, Lcom/applovin/impl/sdk/co;->d(Lcom/applovin/impl/sdk/co;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "MediationAdapterWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/ct;->b:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/ct;->b:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/cj;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a supported ad size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported ad size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/ct;->b:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cj;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/ct;->d:Lcom/applovin/impl/sdk/co;

    invoke-static {v1}, Lcom/applovin/impl/sdk/co;->c(Lcom/applovin/impl/sdk/co;)Lcom/applovin/mediation/AppLovinMediationAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/ct;->b:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/cj;->d()Lcom/applovin/mediation/AppLovinMediatedAdInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/ct;->d:Lcom/applovin/impl/sdk/co;

    invoke-static {v3}, Lcom/applovin/impl/sdk/co;->a(Lcom/applovin/impl/sdk/co;)Lcom/applovin/impl/sdk/cl;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/ct;->c:Landroid/app/Activity;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/applovin/mediation/AppLovinMediationAdapter;->showIncentivizedAd(Lcom/applovin/mediation/AppLovinMediatedAdInfo;Lcom/applovin/mediation/AppLovinMediationAdapterConfig;Landroid/app/Activity;Lcom/applovin/mediation/AppLovinMediationDisplayListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/ct;->d:Lcom/applovin/impl/sdk/co;

    invoke-static {v0}, Lcom/applovin/impl/sdk/co;->d(Lcom/applovin/impl/sdk/co;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "MediationAdapterWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/ct;->b:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/ct;->b:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/cj;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a supported ad type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
