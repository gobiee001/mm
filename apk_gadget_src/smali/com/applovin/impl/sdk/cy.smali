.class Lcom/applovin/impl/sdk/cy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/cj;

.field final synthetic b:Lcom/applovin/impl/sdk/MediationServiceImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/MediationServiceImpl;Lcom/applovin/impl/sdk/cj;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/cy;->b:Lcom/applovin/impl/sdk/MediationServiceImpl;

    iput-object p2, p0, Lcom/applovin/impl/sdk/cy;->a:Lcom/applovin/impl/sdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cy;->b:Lcom/applovin/impl/sdk/MediationServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/sdk/cy;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/MediationServiceImpl;->a(Lcom/applovin/impl/sdk/MediationServiceImpl;Lcom/applovin/impl/sdk/cj;)V

    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    return-void
.end method
