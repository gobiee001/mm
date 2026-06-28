.class Lcom/applovin/impl/sdk/et;
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
.field final synthetic a:Lcom/applovin/impl/sdk/es;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/es;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/et;->a:Lcom/applovin/impl/sdk/es;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/applovin/impl/sdk/fn;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/et;->a:Lcom/applovin/impl/sdk/es;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/es;->a(Lcom/applovin/impl/sdk/es;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/et;->a(Lorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 4

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    const-string v0, "fetch_ad_latency_millis"

    iget-object v1, p0, Lcom/applovin/impl/sdk/et;->g:Lcom/applovin/impl/sdk/ad;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/applovin/impl/sdk/et;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0, v2, v3, v1}, Lcom/applovin/impl/sdk/bt;->b(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/sdk/AppLovinSdk;)V

    const-string v0, "fetch_ad_response_size"

    iget-object v1, p0, Lcom/applovin/impl/sdk/et;->g:Lcom/applovin/impl/sdk/ad;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad;->b()J

    move-result-wide v2

    iget-object v1, p0, Lcom/applovin/impl/sdk/et;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0, v2, v3, v1}, Lcom/applovin/impl/sdk/bt;->b(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/sdk/AppLovinSdk;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/et;->a:Lcom/applovin/impl/sdk/es;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/es;->a(Lcom/applovin/impl/sdk/es;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/et;->a:Lcom/applovin/impl/sdk/es;

    invoke-static {v0, p2}, Lcom/applovin/impl/sdk/es;->a(Lcom/applovin/impl/sdk/es;I)V

    goto :goto_0
.end method
