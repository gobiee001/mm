.class Lcom/applovin/impl/adview/bn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/az;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/az;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/bn;->a:Lcom/applovin/impl/adview/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/bn;->a:Lcom/applovin/impl/adview/az;

    invoke-static {v0}, Lcom/applovin/impl/adview/az;->A(Lcom/applovin/impl/adview/az;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/bn;->a:Lcom/applovin/impl/adview/az;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/az;->b(Lcom/applovin/impl/adview/az;Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/bn;->a:Lcom/applovin/impl/adview/az;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/az;->a(Lcom/applovin/impl/adview/az;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method
