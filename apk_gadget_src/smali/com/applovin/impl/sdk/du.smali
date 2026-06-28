.class abstract Lcom/applovin/impl/sdk/du;
.super Lcom/applovin/impl/sdk/dw;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/dw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ae;)V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Lcom/applovin/impl/sdk/dv;

    const-string v2, "POST"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Repeat"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/applovin/impl/sdk/du;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/du;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/sdk/dv;-><init>(Lcom/applovin/impl/sdk/du;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/impl/sdk/ae;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/du;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v7, v1}, Lcom/applovin/impl/sdk/af;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/fn;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/du;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v7, v1}, Lcom/applovin/impl/sdk/af;->c(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/fn;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/applovin/impl/sdk/fn;->a(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/du;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/dx;->g:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/fn;->c(I)V

    sget-object v1, Lcom/applovin/impl/sdk/dx;->j:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/fn;->a(Lcom/applovin/impl/sdk/dz;)V

    sget-object v1, Lcom/applovin/impl/sdk/dx;->n:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/fn;->b(Lcom/applovin/impl/sdk/dz;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fn;->run()V

    return-void
.end method
