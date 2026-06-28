.class public Lcom/applovin/impl/a/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/applovin/impl/a/j;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/applovin/impl/sdk/ga;Lcom/applovin/impl/a/i;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/impl/a/i;
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No node specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_3

    move-object v0, p1

    :goto_0
    :try_start_0
    iget-object v1, v0, Lcom/applovin/impl/a/i;->b:Landroid/net/Uri;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/applovin/impl/a/i;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "StaticResource"

    invoke-static {p0, v1}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/sdk/ga;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/a/i;->b:Landroid/net/Uri;

    sget-object v1, Lcom/applovin/impl/a/j;->b:Lcom/applovin/impl/a/j;

    iput-object v1, v0, Lcom/applovin/impl/a/i;->a:Lcom/applovin/impl/a/j;

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    new-instance v0, Lcom/applovin/impl/a/i;

    invoke-direct {v0}, Lcom/applovin/impl/a/i;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "VastNonVideoResource"

    const-string v3, "Error occurred while initializing"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :try_start_1
    const-string v1, "IFrameResource"

    invoke-static {p0, v1}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/sdk/ga;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/applovin/impl/a/j;->c:Lcom/applovin/impl/a/j;

    iput-object v2, v0, Lcom/applovin/impl/a/i;->a:Lcom/applovin/impl/a/j;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/a/i;->b:Landroid/net/Uri;

    goto :goto_1

    :cond_5
    iput-object v1, v0, Lcom/applovin/impl/a/i;->c:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v1, "HTMLResource"

    invoke-static {p0, v1}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/sdk/ga;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/applovin/impl/a/j;->d:Lcom/applovin/impl/a/j;

    iput-object v2, v0, Lcom/applovin/impl/a/i;->a:Lcom/applovin/impl/a/j;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/a/i;->b:Landroid/net/Uri;

    goto :goto_1

    :cond_7
    iput-object v1, v0, Lcom/applovin/impl/a/i;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static a(Lcom/applovin/impl/sdk/ga;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/ga;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/ga;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ga;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/a/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/i;->a:Lcom/applovin/impl/a/j;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/a/i;->b:Landroid/net/Uri;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/a/i;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/i;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Lcom/applovin/impl/a/i;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/applovin/impl/a/i;

    iget-object v2, p0, Lcom/applovin/impl/a/i;->a:Lcom/applovin/impl/a/j;

    iget-object v3, p1, Lcom/applovin/impl/a/i;->a:Lcom/applovin/impl/a/j;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/a/i;->b:Landroid/net/Uri;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/applovin/impl/a/i;->b:Landroid/net/Uri;

    iget-object v3, p1, Lcom/applovin/impl/a/i;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/applovin/impl/a/i;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/a/i;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/applovin/impl/a/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_3
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/applovin/impl/a/i;->b:Landroid/net/Uri;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/applovin/impl/a/i;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/a/i;->a:Lcom/applovin/impl/a/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/a/i;->a:Lcom/applovin/impl/a/j;

    invoke-virtual {v0}, Lcom/applovin/impl/a/j;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/i;->b:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/a/i;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/a/i;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/a/i;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastNonVideoResource{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/i;->a:Lcom/applovin/impl/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resourceUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/i;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resourceContents=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
