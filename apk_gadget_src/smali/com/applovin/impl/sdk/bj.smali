.class Lcom/applovin/impl/sdk/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/bg;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bj;->a:Lcom/applovin/impl/sdk/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bj;->a:Lcom/applovin/impl/sdk/bg;

    iget-object v0, v0, Lcom/applovin/impl/sdk/bg;->a:Lcom/applovin/impl/sdk/bf;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bf;->f(Lcom/applovin/impl/sdk/bf;)Lcom/applovin/impl/sdk/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bj;->a:Lcom/applovin/impl/sdk/bg;

    iget-object v1, v1, Lcom/applovin/impl/sdk/bg;->a:Lcom/applovin/impl/sdk/bf;

    invoke-static {v1}, Lcom/applovin/impl/sdk/bf;->e(Lcom/applovin/impl/sdk/bf;)Lcom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;)V

    return-void
.end method
