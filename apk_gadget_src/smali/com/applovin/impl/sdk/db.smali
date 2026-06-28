.class public Lcom/applovin/impl/sdk/db;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/applovin/impl/sdk/n;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:F

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:J

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/applovin/impl/sdk/AppLovinSdkImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/NativeAdImpl;
    .locals 27

    new-instance v2, Lcom/applovin/impl/sdk/NativeAdImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/applovin/impl/sdk/db;->a:Lcom/applovin/impl/sdk/n;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/applovin/impl/sdk/db;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/applovin/impl/sdk/db;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/applovin/impl/sdk/db;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/applovin/impl/sdk/db;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/applovin/impl/sdk/db;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/applovin/impl/sdk/db;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/applovin/impl/sdk/db;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/applovin/impl/sdk/db;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/applovin/impl/sdk/db;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/applovin/impl/sdk/db;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/applovin/impl/sdk/db;->l:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/applovin/impl/sdk/db;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/impl/sdk/db;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/impl/sdk/db;->o:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/impl/sdk/db;->p:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/impl/sdk/db;->q:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/impl/sdk/db;->r:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/impl/sdk/db;->s:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/applovin/impl/sdk/db;->t:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/impl/sdk/db;->u:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/impl/sdk/db;->v:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-direct/range {v2 .. v26}, Lcom/applovin/impl/sdk/NativeAdImpl;-><init>(Lcom/applovin/impl/sdk/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/impl/sdk/da;)V

    return-object v2
.end method

.method public a(F)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/db;->l:F

    return-object p0
.end method

.method public a(J)Lcom/applovin/impl/sdk/db;
    .locals 1

    iput-wide p1, p0, Lcom/applovin/impl/sdk/db;->t:J

    return-object p0
.end method

.method public a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->v:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object p0
.end method

.method public a(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->a:Lcom/applovin/impl/sdk/n;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/applovin/impl/sdk/db;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/applovin/impl/sdk/db;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->u:Ljava/util/List;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->b:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->g:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->h:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->i:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->j:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->k:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->m:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->n:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->o:Ljava/lang/String;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->p:Ljava/lang/String;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->q:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->r:Ljava/lang/String;

    return-object p0
.end method

.method public q(Ljava/lang/String;)Lcom/applovin/impl/sdk/db;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/db;->s:Ljava/lang/String;

    return-object p0
.end method
