.class Lcom/applovin/impl/adview/bm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/az;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/az;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/bm;->a:Lcom/applovin/impl/adview/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/bm;->a:Lcom/applovin/impl/adview/az;

    iget-object v0, v0, Lcom/applovin/impl/adview/az;->currentAd:Lcom/applovin/impl/sdk/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/bm;->a:Lcom/applovin/impl/adview/az;

    iget-object v0, v0, Lcom/applovin/impl/adview/az;->currentAd:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/am;->ae()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/applovin/impl/sdk/fp;

    iget-object v1, p0, Lcom/applovin/impl/adview/bm;->a:Lcom/applovin/impl/adview/az;

    iget-object v1, v1, Lcom/applovin/impl/adview/az;->currentAd:Lcom/applovin/impl/sdk/am;

    iget-object v2, p0, Lcom/applovin/impl/adview/bm;->a:Lcom/applovin/impl/adview/az;

    iget-object v2, v2, Lcom/applovin/impl/adview/az;->sdk:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/fp;-><init>(Lcom/applovin/impl/sdk/am;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/bm;->a:Lcom/applovin/impl/adview/az;

    iget-object v1, v1, Lcom/applovin/impl/adview/az;->sdk:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/ez;->b:Lcom/applovin/impl/sdk/ez;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;)V

    :cond_0
    return-void
.end method
