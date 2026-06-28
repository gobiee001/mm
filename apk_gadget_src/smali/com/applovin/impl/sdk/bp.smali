.class Lcom/applovin/impl/sdk/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/bn;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bn;

    iget-object v0, v0, Lcom/applovin/impl/sdk/bn;->a:Lcom/applovin/impl/sdk/bl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bl;->b(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/impl/adview/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/az;->skipVideo()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bn;

    iget-object v0, v0, Lcom/applovin/impl/sdk/bn;->a:Lcom/applovin/impl/sdk/bl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bl;->b(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/impl/adview/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/az;->resumeReportRewardTask()V

    return-void
.end method
