.class Lcom/applovin/impl/adview/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/ak;

.field final synthetic b:Lcom/applovin/impl/adview/az;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/az;Lcom/applovin/impl/adview/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/bf;->b:Lcom/applovin/impl/adview/az;

    iput-object p2, p0, Lcom/applovin/impl/adview/bf;->a:Lcom/applovin/impl/adview/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/bf;->a:Lcom/applovin/impl/adview/ak;

    iget-object v1, p0, Lcom/applovin/impl/adview/bf;->b:Lcom/applovin/impl/adview/az;

    invoke-static {v1}, Lcom/applovin/impl/adview/az;->n(Lcom/applovin/impl/adview/az;)Lcom/applovin/impl/adview/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/bf;->b:Lcom/applovin/impl/adview/az;

    invoke-static {v0}, Lcom/applovin/impl/adview/az;->u(Lcom/applovin/impl/adview/az;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/bf;->a:Lcom/applovin/impl/adview/ak;

    iget-object v1, p0, Lcom/applovin/impl/adview/bf;->b:Lcom/applovin/impl/adview/az;

    invoke-static {v1}, Lcom/applovin/impl/adview/az;->o(Lcom/applovin/impl/adview/az;)Lcom/applovin/impl/adview/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/bf;->b:Lcom/applovin/impl/adview/az;

    invoke-static {v0}, Lcom/applovin/impl/adview/az;->v(Lcom/applovin/impl/adview/az;)V

    goto :goto_0
.end method
