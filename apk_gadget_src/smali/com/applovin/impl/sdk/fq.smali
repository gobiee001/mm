.class Lcom/applovin/impl/sdk/fq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/applovin/impl/sdk/ae",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/fp;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/fp;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/fq;->a:Lcom/applovin/impl/sdk/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/fq;->a:Lcom/applovin/impl/sdk/fp;

    iget-object v0, v0, Lcom/applovin/impl/sdk/fp;->e:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "TaskReportReward"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report reward for ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/fq;->a:Lcom/applovin/impl/sdk/fp;

    invoke-static {v3}, Lcom/applovin/impl/sdk/fp;->a(Lcom/applovin/impl/sdk/fp;)Lcom/applovin/impl/sdk/am;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/am;->getAdIdNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/fq;->a(Lorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/fq;->a:Lcom/applovin/impl/sdk/fp;

    iget-object v0, v0, Lcom/applovin/impl/sdk/fp;->e:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "TaskReportReward"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reported reward successfully for ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/fq;->a:Lcom/applovin/impl/sdk/fp;

    invoke-static {v3}, Lcom/applovin/impl/sdk/fp;->a(Lcom/applovin/impl/sdk/fp;)Lcom/applovin/impl/sdk/am;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/am;->getAdIdNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
