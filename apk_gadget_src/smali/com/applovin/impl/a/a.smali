.class public Lcom/applovin/impl/a/a;
.super Lcom/applovin/impl/sdk/am;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/applovin/impl/a/k;

.field private final h:J

.field private final i:Lcom/applovin/impl/a/o;

.field private final j:Lcom/applovin/impl/a/f;

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/applovin/impl/a/c;)V
    .locals 3

    invoke-static {p1}, Lcom/applovin/impl/a/c;->a(Lcom/applovin/impl/a/c;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/a/c;->b(Lcom/applovin/impl/a/c;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1}, Lcom/applovin/impl/a/c;->c(Lcom/applovin/impl/a/c;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/am;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    invoke-static {p1}, Lcom/applovin/impl/a/c;->d(Lcom/applovin/impl/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/a/c;->e(Lcom/applovin/impl/a/c;)Lcom/applovin/impl/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->g:Lcom/applovin/impl/a/k;

    invoke-static {p1}, Lcom/applovin/impl/a/c;->f(Lcom/applovin/impl/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/a/c;->g(Lcom/applovin/impl/a/c;)Lcom/applovin/impl/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    invoke-static {p1}, Lcom/applovin/impl/a/c;->h(Lcom/applovin/impl/a/c;)Lcom/applovin/impl/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->j:Lcom/applovin/impl/a/f;

    invoke-static {p1}, Lcom/applovin/impl/a/c;->i(Lcom/applovin/impl/a/c;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->k:Ljava/util/Set;

    invoke-static {p1}, Lcom/applovin/impl/a/c;->j(Lcom/applovin/impl/a/c;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->l:Ljava/util/Set;

    invoke-static {p1}, Lcom/applovin/impl/a/c;->k(Lcom/applovin/impl/a/c;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/a/a;->h:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/a/c;Lcom/applovin/impl/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/a/a;-><init>(Lcom/applovin/impl/a/c;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/a/d;[Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/a/d;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/l;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_3

    array-length v0, p2

    if-lez v0, :cond_3

    const/4 v0, 0x0

    sget-object v1, Lcom/applovin/impl/a/d;->a:Lcom/applovin/impl/a/d;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    invoke-virtual {v0}, Lcom/applovin/impl/a/o;->e()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    array-length v4, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, p2, v2

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/applovin/impl/a/d;->b:Lcom/applovin/impl/a/d;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/applovin/impl/a/a;->j:Lcom/applovin/impl/a/f;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/a/a;->j:Lcom/applovin/impl/a/f;

    invoke-virtual {v0}, Lcom/applovin/impl/a/f;->d()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method private an()Lcom/applovin/impl/a/q;
    .locals 3

    invoke-static {}, Lcom/applovin/impl/a/q;->a()[Lcom/applovin/impl/a/q;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/eb;

    iget-object v2, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/eb;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/eb;->Y()I

    move-result v1

    if-ltz v1, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/a/q;->a:Lcom/applovin/impl/a/q;

    goto :goto_0
.end method

.method private ao()Ljava/util/Set;
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

    iget-object v0, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    invoke-virtual {v0}, Lcom/applovin/impl/a/o;->d()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private ap()Ljava/util/Set;
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

    iget-object v0, p0, Lcom/applovin/impl/a/a;->j:Lcom/applovin/impl/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/a/a;->j:Lcom/applovin/impl/a/f;

    invoke-virtual {v0}, Lcom/applovin/impl/a/f;->c()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static k()Lcom/applovin/impl/a/c;
    .locals 2

    new-instance v0, Lcom/applovin/impl/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/impl/a/c;-><init>(Lcom/applovin/impl/a/b;)V

    return-object v0
.end method


# virtual methods
.method public E()Z
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->g()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Lcom/applovin/impl/a/o;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/a/a;->a:Lorg/json/JSONObject;

    const-string v1, "vimp_url"

    const-string v2, ""

    iget-object v3, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/fy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{CLCODE}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/applovin/impl/sdk/fy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{PLACEMENT}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v1, "{PLACEMENT}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "VastAd"

    const-string v3, "Unable to create VAST impression URL"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public a(Lcom/applovin/impl/a/e;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/a/e;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/l;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/a/a;->a(Lcom/applovin/impl/a/e;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/applovin/impl/a/e;[Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/a/e;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "VastAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieving trackers of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and events \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/a/e;->a:Lcom/applovin/impl/a/e;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/a/a;->k:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/a/e;->b:Lcom/applovin/impl/a/e;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/applovin/impl/a/a;->ao()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/impl/a/e;->c:Lcom/applovin/impl/a/e;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/applovin/impl/a/a;->ap()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/applovin/impl/a/e;->d:Lcom/applovin/impl/a/e;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/applovin/impl/a/d;->a:Lcom/applovin/impl/a/d;

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/a/a;->a(Lcom/applovin/impl/a/d;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/applovin/impl/a/e;->e:Lcom/applovin/impl/a/e;

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/applovin/impl/a/d;->b:Lcom/applovin/impl/a/d;

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/a/a;->a(Lcom/applovin/impl/a/d;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/applovin/impl/a/e;->f:Lcom/applovin/impl/a/e;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/a/a;->l:Ljava/util/Set;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "VastAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve trackers of invalid type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and events \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/applovin/sdk/AppLovinSdk;)Z
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/a/a;->a:Lorg/json/JSONObject;

    const-string v1, "cache_companion_ad"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->c()Lcom/applovin/impl/a/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/a/r;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/applovin/sdk/AppLovinSdk;)Z
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/a/a;->a:Lorg/json/JSONObject;

    const-string v1, "cache_video"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c()Lcom/applovin/impl/a/r;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    invoke-direct {p0}, Lcom/applovin/impl/a/a;->an()Lcom/applovin/impl/a/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/a/o;->a(Lcom/applovin/impl/a/q;)Lcom/applovin/impl/a/r;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/a/a;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/a/a;->a:Lorg/json/JSONObject;

    const-string v2, "html_template"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->c()Lcom/applovin/impl/a/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/a/r;->b()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/applovin/impl/a/f;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/a;->j:Lcom/applovin/impl/a/f;

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
    instance-of v2, p1, Lcom/applovin/impl/a/a;

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/am;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p1, Lcom/applovin/impl/a/a;

    iget-object v2, p0, Lcom/applovin/impl/a/a;->e:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/applovin/impl/a/a;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/applovin/impl/a/a;->f:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/applovin/impl/a/a;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/a/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/applovin/impl/a/a;->g:Lcom/applovin/impl/a/k;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/applovin/impl/a/a;->g:Lcom/applovin/impl/a/k;

    iget-object v3, p1, Lcom/applovin/impl/a/a;->g:Lcom/applovin/impl/a/k;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/a/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    iget-object v3, p1, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/a/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/applovin/impl/a/a;->j:Lcom/applovin/impl/a/f;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/applovin/impl/a/a;->j:Lcom/applovin/impl/a/f;

    iget-object v3, p1, Lcom/applovin/impl/a/a;->j:Lcom/applovin/impl/a/f;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/a/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/applovin/impl/a/a;->k:Ljava/util/Set;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/applovin/impl/a/a;->k:Ljava/util/Set;

    iget-object v3, p1, Lcom/applovin/impl/a/a;->k:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/applovin/impl/a/a;->l:Ljava/util/Set;

    if-eqz v2, :cond_f

    iget-object v0, p0, Lcom/applovin/impl/a/a;->l:Ljava/util/Set;

    iget-object v1, p1, Lcom/applovin/impl/a/a;->l:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_8
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lcom/applovin/impl/a/a;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lcom/applovin/impl/a/a;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/applovin/impl/a/a;->g:Lcom/applovin/impl/a/k;

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    if-eqz v2, :cond_5

    goto/16 :goto_0

    :cond_d
    iget-object v2, p1, Lcom/applovin/impl/a/a;->j:Lcom/applovin/impl/a/f;

    if-eqz v2, :cond_6

    goto/16 :goto_0

    :cond_e
    iget-object v2, p1, Lcom/applovin/impl/a/a;->k:Ljava/util/Set;

    if-eqz v2, :cond_7

    goto/16 :goto_0

    :cond_f
    iget-object v2, p1, Lcom/applovin/impl/a/a;->l:Ljava/util/Set;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_1
.end method

.method public f()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    invoke-virtual {v1}, Lcom/applovin/impl/a/o;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public g()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    invoke-virtual {v0}, Lcom/applovin/impl/a/o;->c()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/a;->a:Lorg/json/JSONObject;

    const-string v1, "vast_resource_cache_prefix"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/aa;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/applovin/impl/sdk/am;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/a;->g:Lcom/applovin/impl/a/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/a/a;->g:Lcom/applovin/impl/a/k;

    invoke-virtual {v0}, Lcom/applovin/impl/a/k;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    invoke-virtual {v0}, Lcom/applovin/impl/a/o;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/a;->j:Lcom/applovin/impl/a/f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/a/a;->j:Lcom/applovin/impl/a/f;

    invoke-virtual {v0}, Lcom/applovin/impl/a/f;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/a;->k:Ljava/util/Set;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/a/a;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/a/a;->l:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->l:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

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

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5
.end method

.method public i()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/a/a;->a:Lorg/json/JSONObject;

    const-string v1, "html_template"

    const-string v2, ""

    iget-object v3, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->a:Lorg/json/JSONObject;

    const-string v2, "html_template_url"

    iget-object v3, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/a/a;->h:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastAd{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adDescription=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systemInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->g:Lcom/applovin/impl/a/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoCreative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->i:Lcom/applovin/impl/a/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", companionAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->j:Lcom/applovin/impl/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impressionTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->k:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->l:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
