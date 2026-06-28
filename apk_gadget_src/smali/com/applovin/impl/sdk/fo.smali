.class Lcom/applovin/impl/sdk/fo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/applovin/impl/sdk/ae",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field final synthetic c:Lcom/applovin/impl/sdk/fn;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/fn;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    iput-object p2, p0, Lcom/applovin/impl/sdk/fo;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/impl/sdk/fo;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-lt p1, v2, :cond_0

    const/16 v2, 0x1f4

    if-lt p1, v2, :cond_2

    :cond_0
    move v2, v0

    :goto_0
    const/16 v3, -0x67

    if-eq p1, v3, :cond_3

    :goto_1
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/fn;->a(Lcom/applovin/impl/sdk/fn;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    iget-object v0, v0, Lcom/applovin/impl/sdk/fn;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fo;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to send request due to server failure (code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v3}, Lcom/applovin/impl/sdk/fn;->a(Lcom/applovin/impl/sdk/fn;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attempts left, retrying in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v3}, Lcom/applovin/impl/sdk/fn;->b(Lcom/applovin/impl/sdk/fn;)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v1}, Lcom/applovin/impl/sdk/fn;->a(Lcom/applovin/impl/sdk/fn;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/fn;->a(Lcom/applovin/impl/sdk/fn;I)I

    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/fn;->a(Lcom/applovin/impl/sdk/fn;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v1}, Lcom/applovin/impl/sdk/fn;->c(Lcom/applovin/impl/sdk/fn;)Lcom/applovin/impl/sdk/dz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/fn;->a(Lcom/applovin/impl/sdk/fn;Lcom/applovin/impl/sdk/dz;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/fn;->d(Lcom/applovin/impl/sdk/fn;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/fn;->d(Lcom/applovin/impl/sdk/fn;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v1}, Lcom/applovin/impl/sdk/fn;->d(Lcom/applovin/impl/sdk/fn;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/fn;->a(Lcom/applovin/impl/sdk/fn;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    iget-object v0, v0, Lcom/applovin/impl/sdk/fn;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/fn;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching to backup endpoint "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v3}, Lcom/applovin/impl/sdk/fn;->d(Lcom/applovin/impl/sdk/fn;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    sget-object v2, Lcom/applovin/impl/sdk/ez;->b:Lcom/applovin/impl/sdk/ez;

    iget-object v3, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v3}, Lcom/applovin/impl/sdk/fn;->b(Lcom/applovin/impl/sdk/fn;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;J)V

    :goto_2
    return-void

    :cond_2
    move v2, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/fn;->d(Lcom/applovin/impl/sdk/fn;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/fn;->d(Lcom/applovin/impl/sdk/fn;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v1}, Lcom/applovin/impl/sdk/fn;->e(Lcom/applovin/impl/sdk/fn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v1}, Lcom/applovin/impl/sdk/fn;->f(Lcom/applovin/impl/sdk/fn;)Lcom/applovin/impl/sdk/dz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/fn;->a(Lcom/applovin/impl/sdk/fn;Lcom/applovin/impl/sdk/dz;)V

    :goto_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/fn;->a(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-static {v1}, Lcom/applovin/impl/sdk/fn;->c(Lcom/applovin/impl/sdk/fn;)Lcom/applovin/impl/sdk/dz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/fn;->a(Lcom/applovin/impl/sdk/fn;Lcom/applovin/impl/sdk/dz;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/fn;->a(I)V

    goto :goto_2
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/fn;->a(Lcom/applovin/impl/sdk/fn;I)I

    iget-object v0, p0, Lcom/applovin/impl/sdk/fo;->c:Lcom/applovin/impl/sdk/fn;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/fn;->a(Ljava/lang/Object;I)V

    return-void
.end method
