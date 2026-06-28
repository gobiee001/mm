.class Lcom/applovin/impl/adview/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/applovin/impl/adview/bs;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/bs;II)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/bt;->c:Lcom/applovin/impl/adview/bs;

    iput p2, p0, Lcom/applovin/impl/adview/bt;->a:I

    iput p3, p0, Lcom/applovin/impl/adview/bt;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/bt;->c:Lcom/applovin/impl/adview/bs;

    iget-object v0, v0, Lcom/applovin/impl/adview/bs;->a:Lcom/applovin/impl/adview/br;

    iget-object v0, v0, Lcom/applovin/impl/adview/br;->a:Lcom/applovin/impl/adview/az;

    iget-object v0, v0, Lcom/applovin/impl/adview/az;->logger:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "InterActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media player error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/applovin/impl/adview/bt;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/applovin/impl/adview/bt;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/bt;->c:Lcom/applovin/impl/adview/bs;

    iget-object v0, v0, Lcom/applovin/impl/adview/bs;->a:Lcom/applovin/impl/adview/br;

    iget-object v0, v0, Lcom/applovin/impl/adview/br;->a:Lcom/applovin/impl/adview/az;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/az;->handleMediaError()V

    return-void
.end method
