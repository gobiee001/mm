.class Lcom/applovin/impl/sdk/cq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/cj;

.field final synthetic b:Lcom/applovin/impl/sdk/cv;

.field final synthetic c:Lcom/applovin/impl/sdk/co;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/co;Lcom/applovin/impl/sdk/cj;Lcom/applovin/impl/sdk/cv;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    iput-object p2, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    iput-object p3, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/impl/sdk/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/co;->a(Lcom/applovin/impl/sdk/co;Lcom/applovin/impl/sdk/cj;)V

    new-instance v0, Lcom/applovin/impl/sdk/cr;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/cr;-><init>(Lcom/applovin/impl/sdk/cq;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cj;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cj;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    invoke-static {v1}, Lcom/applovin/impl/sdk/co;->c(Lcom/applovin/impl/sdk/co;)Lcom/applovin/mediation/AppLovinMediationAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    invoke-static {v2}, Lcom/applovin/impl/sdk/co;->a(Lcom/applovin/impl/sdk/co;)Lcom/applovin/impl/sdk/cl;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    invoke-static {v3}, Lcom/applovin/impl/sdk/co;->b(Lcom/applovin/impl/sdk/co;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/mediation/AppLovinMediationAdapter;->loadInterstitialAd(Lcom/applovin/mediation/AppLovinMediationAdapterConfig;Landroid/content/Context;Lcom/applovin/mediation/AppLovinMediationLoadListener;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/impl/sdk/cv;

    invoke-static {v0}, Lcom/applovin/impl/sdk/cv;->a(Lcom/applovin/impl/sdk/cv;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cj;->g()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    invoke-static {v0}, Lcom/applovin/impl/sdk/co;->d(Lcom/applovin/impl/sdk/co;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "MediationAdapterWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing ad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " since it has 0 timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    const/16 v1, -0x13ee

    iget-object v2, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/impl/sdk/cv;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/co;->a(Lcom/applovin/impl/sdk/co;ILcom/applovin/impl/sdk/cv;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    invoke-static {v0}, Lcom/applovin/impl/sdk/co;->d(Lcom/applovin/impl/sdk/co;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "MediationAdapterWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/cj;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is not a supported ad size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    sget-object v1, Lcom/applovin/mediation/AppLovinMediationErrorCode;->INTERNAL_AD_SIZE_NOT_SUPPORTED:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    invoke-virtual {v1}, Lcom/applovin/mediation/AppLovinMediationErrorCode;->getErrorCode()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/impl/sdk/cv;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/co;->a(Lcom/applovin/impl/sdk/co;ILcom/applovin/impl/sdk/cv;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cj;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    invoke-static {v1}, Lcom/applovin/impl/sdk/co;->c(Lcom/applovin/impl/sdk/co;)Lcom/applovin/mediation/AppLovinMediationAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    invoke-static {v2}, Lcom/applovin/impl/sdk/co;->a(Lcom/applovin/impl/sdk/co;)Lcom/applovin/impl/sdk/cl;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    invoke-static {v3}, Lcom/applovin/impl/sdk/co;->b(Lcom/applovin/impl/sdk/co;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/mediation/AppLovinMediationAdapter;->loadIncentivizedAd(Lcom/applovin/mediation/AppLovinMediationAdapterConfig;Landroid/content/Context;Lcom/applovin/mediation/AppLovinMediationLoadListener;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    invoke-static {v0}, Lcom/applovin/impl/sdk/co;->d(Lcom/applovin/impl/sdk/co;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "MediationAdapterWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

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

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    sget-object v1, Lcom/applovin/mediation/AppLovinMediationErrorCode;->INTERNAL_AD_TYPE_NOT_SUPPORTED:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    invoke-virtual {v1}, Lcom/applovin/mediation/AppLovinMediationErrorCode;->getErrorCode()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/impl/sdk/cv;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/co;->a(Lcom/applovin/impl/sdk/co;ILcom/applovin/impl/sdk/cv;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cj;->g()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    invoke-static {v0}, Lcom/applovin/impl/sdk/co;->d(Lcom/applovin/impl/sdk/co;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "MediationAdapterWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/cj;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec. for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cj;->g()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    invoke-static {v2}, Lcom/applovin/impl/sdk/co;->b(Lcom/applovin/impl/sdk/co;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v2

    new-instance v3, Lcom/applovin/impl/sdk/cw;

    iget-object v4, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    iget-object v5, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/impl/sdk/cv;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/applovin/impl/sdk/cw;-><init>(Lcom/applovin/impl/sdk/co;Lcom/applovin/impl/sdk/cv;Lcom/applovin/impl/sdk/cp;)V

    sget-object v4, Lcom/applovin/impl/sdk/ez;->a:Lcom/applovin/impl/sdk/ez;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;J)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/impl/sdk/co;

    invoke-static {v0}, Lcom/applovin/impl/sdk/co;->d(Lcom/applovin/impl/sdk/co;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "MediationAdapterWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative timeout set for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/cj;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not scheduling a timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
