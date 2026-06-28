.class Lcom/applovin/impl/adview/cc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/applovin/impl/adview/cb;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/cb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/cc;->b:Lcom/applovin/impl/adview/cb;

    iput-object p2, p0, Lcom/applovin/impl/adview/cc;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/cc;->b:Lcom/applovin/impl/adview/cb;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/cb;->a(Lcom/applovin/impl/adview/cb;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/cc;->b:Lcom/applovin/impl/adview/cb;

    iget-object v1, p0, Lcom/applovin/impl/adview/cc;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/adview/cb;->showAndRender(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/cc;->b:Lcom/applovin/impl/adview/cb;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/cb;->a(Lcom/applovin/impl/adview/cb;I)V

    return-void
.end method
