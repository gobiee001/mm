.class Lcom/applovin/impl/adview/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/am;

.field final synthetic b:Lcom/applovin/impl/adview/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/n;Lcom/applovin/impl/sdk/am;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ab;->b:Lcom/applovin/impl/adview/n;

    iput-object p2, p0, Lcom/applovin/impl/adview/ab;->a:Lcom/applovin/impl/sdk/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->a:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/am;->ag()Z

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/adview/ab;->b:Lcom/applovin/impl/adview/n;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/n;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    return-void
.end method
