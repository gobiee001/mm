.class Lcom/applovin/impl/adview/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/ap;

.field final synthetic b:I

.field final synthetic c:Lcom/applovin/impl/adview/am;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/am;Lcom/applovin/impl/adview/ap;I)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/an;->c:Lcom/applovin/impl/adview/am;

    iput-object p2, p0, Lcom/applovin/impl/adview/an;->a:Lcom/applovin/impl/adview/ap;

    iput p3, p0, Lcom/applovin/impl/adview/an;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/adview/an;->a:Lcom/applovin/impl/adview/ap;

    invoke-static {v0}, Lcom/applovin/impl/adview/ap;->b(Lcom/applovin/impl/adview/ap;)Lcom/applovin/impl/adview/ao;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/impl/adview/ao;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/an;->c:Lcom/applovin/impl/adview/am;

    invoke-static {v1}, Lcom/applovin/impl/adview/am;->a(Lcom/applovin/impl/adview/am;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/applovin/impl/adview/an;->b:I

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/applovin/impl/adview/ao;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/adview/an;->c:Lcom/applovin/impl/adview/am;

    iget-object v1, p0, Lcom/applovin/impl/adview/an;->a:Lcom/applovin/impl/adview/ap;

    iget v2, p0, Lcom/applovin/impl/adview/an;->b:I

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/adview/am;->a(Lcom/applovin/impl/adview/am;Lcom/applovin/impl/adview/ap;I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/an;->c:Lcom/applovin/impl/adview/am;

    invoke-static {v1}, Lcom/applovin/impl/adview/am;->b(Lcom/applovin/impl/adview/am;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "CountdownManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered error on countdown step for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/adview/an;->a:Lcom/applovin/impl/adview/ap;

    invoke-static {v4}, Lcom/applovin/impl/adview/ap;->a(Lcom/applovin/impl/adview/ap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/an;->c:Lcom/applovin/impl/adview/am;

    invoke-static {v0}, Lcom/applovin/impl/adview/am;->b(Lcom/applovin/impl/adview/am;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "CountdownManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Killing duplicate countdown from previous generation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/adview/an;->a:Lcom/applovin/impl/adview/ap;

    invoke-static {v3}, Lcom/applovin/impl/adview/ap;->a(Lcom/applovin/impl/adview/ap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/an;->c:Lcom/applovin/impl/adview/am;

    invoke-static {v0}, Lcom/applovin/impl/adview/am;->b(Lcom/applovin/impl/adview/am;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "CountdownManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ending countdown for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/adview/an;->a:Lcom/applovin/impl/adview/ap;

    invoke-static {v3}, Lcom/applovin/impl/adview/ap;->a(Lcom/applovin/impl/adview/ap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
