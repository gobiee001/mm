.class public Lcom/applovin/impl/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/net/Uri;

.field private d:Lcom/applovin/impl/a/i;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/l;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/a/f;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/a/f;->f:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/ga;Lcom/applovin/impl/a/f;Lcom/applovin/impl/a/g;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/impl/a/f;
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No node specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_4

    move-object v1, p1

    :goto_0
    :try_start_0
    iget v0, v1, Lcom/applovin/impl/a/f;->a:I

    if-nez v0, :cond_2

    iget v0, v1, Lcom/applovin/impl/a/f;->b:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ga;->b()Ljava/util/Map;

    move-result-object v0

    const-string v2, "width"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/fy;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ga;->b()Ljava/util/Map;

    move-result-object v0

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/fy;->e(Ljava/lang/String;)I

    move-result v0

    if-lez v2, :cond_2

    if-lez v0, :cond_2

    iput v2, v1, Lcom/applovin/impl/a/f;->a:I

    iput v0, v1, Lcom/applovin/impl/a/f;->b:I

    :cond_2
    iget-object v0, v1, Lcom/applovin/impl/a/f;->d:Lcom/applovin/impl/a/i;

    invoke-static {p0, v0, p3}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/sdk/ga;Lcom/applovin/impl/a/i;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/impl/a/i;

    move-result-object v0

    iput-object v0, v1, Lcom/applovin/impl/a/f;->d:Lcom/applovin/impl/a/i;

    iget-object v0, v1, Lcom/applovin/impl/a/f;->c:Landroid/net/Uri;

    if-nez v0, :cond_3

    const-string v0, "CompanionClickThrough"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/ga;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/ga;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ga;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/applovin/impl/a/f;->c:Landroid/net/Uri;

    :cond_3
    const-string v0, "CompanionClickTracking"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/ga;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lcom/applovin/impl/a/f;->e:Ljava/util/Set;

    invoke-static {v0, v2, p2, p3}, Lcom/applovin/impl/a/n;->a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/a/g;Lcom/applovin/sdk/AppLovinSdk;)V

    iget-object v0, v1, Lcom/applovin/impl/a/f;->f:Ljava/util/Map;

    invoke-static {p0, v0, p2, p3}, Lcom/applovin/impl/a/n;->a(Lcom/applovin/impl/sdk/ga;Ljava/util/Map;Lcom/applovin/impl/a/g;Lcom/applovin/sdk/AppLovinSdk;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_4
    new-instance v1, Lcom/applovin/impl/a/f;

    invoke-direct {v1}, Lcom/applovin/impl/a/f;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p3}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "VastCompanionAd"

    const-string v3, "Error occurred while initializing"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/f;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public b()Lcom/applovin/impl/a/i;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/f;->d:Lcom/applovin/impl/a/i;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/f;->e:Ljava/util/Set;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/l;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/f;->f:Ljava/util/Map;

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
    instance-of v2, p1, Lcom/applovin/impl/a/f;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/applovin/impl/a/f;

    iget v2, p0, Lcom/applovin/impl/a/f;->a:I

    iget v3, p1, Lcom/applovin/impl/a/f;->a:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/applovin/impl/a/f;->b:I

    iget v3, p1, Lcom/applovin/impl/a/f;->b:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/a/f;->c:Landroid/net/Uri;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/applovin/impl/a/f;->c:Landroid/net/Uri;

    iget-object v3, p1, Lcom/applovin/impl/a/f;->c:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/applovin/impl/a/f;->d:Lcom/applovin/impl/a/i;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/applovin/impl/a/f;->d:Lcom/applovin/impl/a/i;

    iget-object v3, p1, Lcom/applovin/impl/a/f;->d:Lcom/applovin/impl/a/i;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/a/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/applovin/impl/a/f;->e:Ljava/util/Set;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/applovin/impl/a/f;->e:Ljava/util/Set;

    iget-object v3, p1, Lcom/applovin/impl/a/f;->e:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/applovin/impl/a/f;->f:Ljava/util/Map;

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/a/f;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/applovin/impl/a/f;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_5
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/applovin/impl/a/f;->c:Landroid/net/Uri;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/applovin/impl/a/f;->d:Lcom/applovin/impl/a/i;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/applovin/impl/a/f;->e:Ljava/util/Set;

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lcom/applovin/impl/a/f;->f:Ljava/util/Map;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/applovin/impl/a/f;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/a/f;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/f;->c:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/a/f;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/f;->d:Lcom/applovin/impl/a/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/a/f;->d:Lcom/applovin/impl/a/i;

    invoke-virtual {v0}, Lcom/applovin/impl/a/i;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/f;->e:Ljava/util/Set;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/a/f;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/a/f;->f:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/a/f;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

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

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastCompanionAd{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/a/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/a/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", destinationUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/f;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonVideoResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/f;->d:Lcom/applovin/impl/a/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/f;->e:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/f;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
