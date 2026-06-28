.class abstract Lcom/applovin/impl/sdk/fn;
.super Lcom/applovin/impl/sdk/dw;

# interfaces
.implements Lcom/applovin/impl/sdk/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/impl/sdk/dw;",
        "Lcom/applovin/impl/sdk/ae",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected g:Lcom/applovin/impl/sdk/ad;

.field private final h:Lcom/applovin/impl/sdk/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/ae",
            "<TT;>;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lorg/json/JSONObject;

.field private l:I

.field private m:Z

.field private n:I

.field private o:J

.field private p:Lcom/applovin/impl/sdk/dz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/dz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/applovin/impl/sdk/dz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/dz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/AppLovinSdkImpl;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p3, p4}, Lcom/applovin/impl/sdk/dw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/fn;->m:Z

    iput v0, p0, Lcom/applovin/impl/sdk/fn;->n:I

    iput-object v1, p0, Lcom/applovin/impl/sdk/fn;->p:Lcom/applovin/impl/sdk/dz;

    iput-object v1, p0, Lcom/applovin/impl/sdk/fn;->q:Lcom/applovin/impl/sdk/dz;

    iput-object p1, p0, Lcom/applovin/impl/sdk/fn;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/fn;->b:Ljava/lang/Object;

    sget-object v0, Lcom/applovin/impl/sdk/dx;->t:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {p4, v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/sdk/fn;->l:I

    sget-object v0, Lcom/applovin/impl/sdk/dx;->q:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {p4, v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/fn;->o:J

    new-instance v0, Lcom/applovin/impl/sdk/ad;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/ad;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/fn;->g:Lcom/applovin/impl/sdk/ad;

    new-instance v0, Lcom/applovin/impl/sdk/fo;

    invoke-direct {v0, p0, p3, p4}, Lcom/applovin/impl/sdk/fo;-><init>(Lcom/applovin/impl/sdk/fn;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/fn;->h:Lcom/applovin/impl/sdk/ae;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/fn;)I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/fn;->n:I

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/fn;I)I
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/fn;->n:I

    return p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/fn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/fn;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/fn;Lcom/applovin/impl/sdk/dz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/fn;->c(Lcom/applovin/impl/sdk/dz;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/fn;)J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/fn;->o:J

    return-wide v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/fn;)Lcom/applovin/impl/sdk/dz;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/fn;->p:Lcom/applovin/impl/sdk/dz;

    return-object v0
.end method

.method private c(Lcom/applovin/impl/sdk/dz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/dz",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/fn;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/ea;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/dz;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/ea;->a(Lcom/applovin/impl/sdk/dz;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ea;->a()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/fn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/fn;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/fn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/fn;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/fn;)Lcom/applovin/impl/sdk/dz;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/fn;->q:Lcom/applovin/impl/sdk/dz;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/applovin/impl/sdk/fn;->o:J

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/dz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/dz",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/fn;->p:Lcom/applovin/impl/sdk/dz;

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/fn;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/fn;->k:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/fn;->m:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/fn;->l:I

    return-void
.end method

.method public b(Lcom/applovin/impl/sdk/dz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/dz",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/fn;->q:Lcom/applovin/impl/sdk/dz;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/fn;->j:Ljava/lang/String;

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/fn;->n:I

    return-void
.end method

.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/applovin/impl/sdk/fn;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getConnectionManager()Lcom/applovin/impl/sdk/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/fn;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/fn;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/fn;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/fn;->k:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    const-string v1, "GET"

    :goto_0
    move-object v2, v1

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/fn;->i:Ljava/lang/String;

    iget v3, p0, Lcom/applovin/impl/sdk/fn;->l:I

    iget-object v4, p0, Lcom/applovin/impl/sdk/fn;->k:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/applovin/impl/sdk/fn;->b:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/applovin/impl/sdk/fn;->m:Z

    iget-object v7, p0, Lcom/applovin/impl/sdk/fn;->g:Lcom/applovin/impl/sdk/ad;

    iget-object v8, p0, Lcom/applovin/impl/sdk/fn;->h:Lcom/applovin/impl/sdk/ae;

    invoke-virtual/range {v0 .. v8}, Lcom/applovin/impl/sdk/ac;->a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/Object;ZLcom/applovin/impl/sdk/ad;Lcom/applovin/impl/sdk/ae;)V

    :goto_1
    return-void

    :cond_1
    const-string v1, "POST"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/fn;->e:Lcom/applovin/sdk/AppLovinLogger;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/fn;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Task has an invalid or null request endpoint."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x384

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/fn;->a(I)V

    goto :goto_1
.end method
