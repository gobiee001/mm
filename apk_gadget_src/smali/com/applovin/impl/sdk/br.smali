.class Lcom/applovin/impl/sdk/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/bq;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/bq;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bq;

    iget-object v0, v0, Lcom/applovin/impl/sdk/bq;->a:Lcom/applovin/impl/sdk/bl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bl;->b(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/impl/adview/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/az;->dismiss()V

    return-void
.end method
