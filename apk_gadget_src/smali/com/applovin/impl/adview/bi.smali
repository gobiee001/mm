.class Lcom/applovin/impl/adview/bi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/cm;

.field final synthetic b:Lcom/applovin/impl/adview/az;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/az;Lcom/applovin/impl/adview/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/bi;->b:Lcom/applovin/impl/adview/az;

    iput-object p2, p0, Lcom/applovin/impl/adview/bi;->a:Lcom/applovin/impl/adview/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/adview/bi;->a:Lcom/applovin/impl/adview/cm;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/cm;->g()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/adview/bi;->b:Lcom/applovin/impl/adview/az;

    iget-object v3, p0, Lcom/applovin/impl/adview/bi;->b:Lcom/applovin/impl/adview/az;

    invoke-static {v3}, Lcom/applovin/impl/adview/az;->z(Lcom/applovin/impl/adview/az;)Lcom/applovin/impl/adview/cn;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v0, v1}, Lcom/applovin/impl/adview/az;->a(Lcom/applovin/impl/adview/az;Landroid/view/View;ZJ)V

    return-void
.end method
