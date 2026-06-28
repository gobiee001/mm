.class public Lcom/applovin/impl/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Lorg/json/JSONObject;

.field private c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/applovin/impl/a/k;

.field private h:Lcom/applovin/impl/a/o;

.field private i:Lcom/applovin/impl/a/f;

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Set;
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
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/a/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/a/c;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/c;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/a/c;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/c;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/a/c;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/c;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/a/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/a/c;)Lcom/applovin/impl/a/k;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/c;->g:Lcom/applovin/impl/a/k;

    return-object v0
.end method

.method static synthetic f(Lcom/applovin/impl/a/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/applovin/impl/a/c;)Lcom/applovin/impl/a/o;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/c;->h:Lcom/applovin/impl/a/o;

    return-object v0
.end method

.method static synthetic h(Lcom/applovin/impl/a/c;)Lcom/applovin/impl/a/f;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/c;->i:Lcom/applovin/impl/a/f;

    return-object v0
.end method

.method static synthetic i(Lcom/applovin/impl/a/c;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/c;->j:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic j(Lcom/applovin/impl/a/c;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/c;->k:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic k(Lcom/applovin/impl/a/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/a/c;->d:J

    return-wide v0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/a/a;
    .locals 2

    new-instance v0, Lcom/applovin/impl/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/a/a;-><init>(Lcom/applovin/impl/a/c;Lcom/applovin/impl/a/b;)V

    return-object v0
.end method

.method public a(J)Lcom/applovin/impl/a/c;
    .locals 1

    iput-wide p1, p0, Lcom/applovin/impl/a/c;->d:J

    return-object p0
.end method

.method public a(Lcom/applovin/impl/a/f;)Lcom/applovin/impl/a/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/a/c;->i:Lcom/applovin/impl/a/f;

    return-object p0
.end method

.method public a(Lcom/applovin/impl/a/k;)Lcom/applovin/impl/a/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/a/c;->g:Lcom/applovin/impl/a/k;

    return-object p0
.end method

.method public a(Lcom/applovin/impl/a/o;)Lcom/applovin/impl/a/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/a/c;->h:Lcom/applovin/impl/a/o;

    return-object p0
.end method

.method public a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Lcom/applovin/impl/a/c;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/a/c;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/applovin/impl/a/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/a/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Set;)Lcom/applovin/impl/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/l;",
            ">;)",
            "Lcom/applovin/impl/a/c;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/a/c;->j:Ljava/util/Set;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/applovin/impl/a/c;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad object specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/a/c;->a:Lorg/json/JSONObject;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/applovin/impl/a/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/a/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Set;)Lcom/applovin/impl/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/l;",
            ">;)",
            "Lcom/applovin/impl/a/c;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/a/c;->k:Ljava/util/Set;

    return-object p0
.end method

.method public b(Lorg/json/JSONObject;)Lcom/applovin/impl/a/c;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No full ad response specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/a/c;->b:Lorg/json/JSONObject;

    return-object p0
.end method
