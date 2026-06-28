.class Lcom/applovin/impl/adview/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/n;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/aa;->a:Lcom/applovin/impl/adview/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/aa;->a:Lcom/applovin/impl/adview/n;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/n;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
