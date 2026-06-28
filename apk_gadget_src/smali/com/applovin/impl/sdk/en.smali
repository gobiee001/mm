.class public Lcom/applovin/impl/sdk/en;
.super Lcom/applovin/impl/sdk/dw;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/eo;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/impl/sdk/eo;)V
    .locals 1

    const-string v0, "TaskCollectAdvertisingId"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/dw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/en;->a:Lcom/applovin/impl/sdk/eo;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/en;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getDataCollector()Lcom/applovin/impl/sdk/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ag;->e()Lcom/applovin/impl/sdk/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/en;->a:Lcom/applovin/impl/sdk/eo;

    invoke-interface {v1, v0}, Lcom/applovin/impl/sdk/eo;->a(Lcom/applovin/impl/sdk/ai;)V

    return-void
.end method
