.class Lcom/applovin/impl/sdk/cw;
.super Lcom/applovin/impl/sdk/dw;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/co;

.field private final b:Lcom/applovin/impl/sdk/cv;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/co;Lcom/applovin/impl/sdk/cv;)V
    .locals 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/cw;->a:Lcom/applovin/impl/sdk/co;

    const-string v0, "TaskTimeoutMediatedAd"

    invoke-static {p1}, Lcom/applovin/impl/sdk/co;->b(Lcom/applovin/impl/sdk/co;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/dw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No loadState specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/applovin/impl/sdk/cw;->b:Lcom/applovin/impl/sdk/cv;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/co;Lcom/applovin/impl/sdk/cv;Lcom/applovin/impl/sdk/cp;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/cw;-><init>(Lcom/applovin/impl/sdk/co;Lcom/applovin/impl/sdk/cv;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/cw;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/cw;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timing out "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cw;->b:Lcom/applovin/impl/sdk/cv;

    invoke-static {v3}, Lcom/applovin/impl/sdk/cv;->c(Lcom/applovin/impl/sdk/cv;)Lcom/applovin/impl/sdk/cj;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cw;->a:Lcom/applovin/impl/sdk/co;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/co;->d()Lcom/applovin/mediation/AppLovinMediationAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cw;->b:Lcom/applovin/impl/sdk/cv;

    invoke-static {v1}, Lcom/applovin/impl/sdk/cv;->c(Lcom/applovin/impl/sdk/cv;)Lcom/applovin/impl/sdk/cj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cj;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v1, v2}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/applovin/mediation/AppLovinMediationAdapter;->processIncentivizedAdLoadTimeout()V

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/cw;->a:Lcom/applovin/impl/sdk/co;

    const/16 v1, -0x13ed

    iget-object v2, p0, Lcom/applovin/impl/sdk/cw;->b:Lcom/applovin/impl/sdk/cv;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/co;->a(Lcom/applovin/impl/sdk/co;ILcom/applovin/impl/sdk/cv;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/applovin/mediation/AppLovinMediationAdapter;->processInterstitialAdLoadTimeout()V

    goto :goto_0
.end method
