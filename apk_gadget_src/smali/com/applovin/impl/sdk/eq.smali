.class Lcom/applovin/impl/sdk/eq;
.super Lcom/applovin/impl/sdk/fn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/impl/sdk/fn",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ep;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ep;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/eq;->a:Lcom/applovin/impl/sdk/ep;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/applovin/impl/sdk/fn;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/eq;->a:Lcom/applovin/impl/sdk/ep;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ep;->b(Lcom/applovin/impl/sdk/ep;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/eq;->a:Lcom/applovin/impl/sdk/ep;

    invoke-static {v1}, Lcom/applovin/impl/sdk/ep;->a(Lcom/applovin/impl/sdk/ep;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/eq;->a(Lorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/eq;->a:Lcom/applovin/impl/sdk/ep;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ep;->b(Lcom/applovin/impl/sdk/ep;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/eq;->a:Lcom/applovin/impl/sdk/ep;

    invoke-static {v1}, Lcom/applovin/impl/sdk/ep;->a(Lcom/applovin/impl/sdk/ep;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackSuccess(Ljava/lang/String;)V

    return-void
.end method
