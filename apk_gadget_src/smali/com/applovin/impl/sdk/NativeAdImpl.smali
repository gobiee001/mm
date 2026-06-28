.class public Lcom/applovin/impl/sdk/NativeAdImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/at;
.implements Lcom/applovin/impl/sdk/ci;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/impl/sdk/n;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:J

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:F

.field private v:Ljava/lang/String;

.field private w:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/n;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/applovin/impl/sdk/AppLovinSdkImpl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Lcom/applovin/impl/sdk/n;

    iput-object p2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    iput-object p9, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->j:Ljava/lang/String;

    iput-object p10, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->s:Ljava/lang/String;

    iput-object p11, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->t:Ljava/lang/String;

    move/from16 v0, p12

    iput v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->u:F

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->v:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->l:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->m:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->k:Ljava/lang/String;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->q:J

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/util/List;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/impl/sdk/da;)V
    .locals 0

    invoke-direct/range {p0 .. p23}, Lcom/applovin/impl/sdk/NativeAdImpl;-><init>(Lcom/applovin/impl/sdk/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/applovin/impl/sdk/NativeAdImpl;

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Lcom/applovin/impl/sdk/n;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Lcom/applovin/impl/sdk/n;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Lcom/applovin/impl/sdk/n;

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->j:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->j:Ljava/lang/String;

    if-nez v2, :cond_7

    :cond_9
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    if-nez v2, :cond_a

    :cond_c
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->m:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->m:Ljava/lang/String;

    if-nez v2, :cond_d

    :cond_f
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->k:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    goto :goto_0

    :cond_11
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->k:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_12
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    if-nez v2, :cond_13

    :cond_15
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->l:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->l:Ljava/lang/String;

    if-nez v2, :cond_16

    :cond_18
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_19
    move v0, v1

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    if-nez v2, :cond_19

    :cond_1b
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1c
    move v0, v1

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    if-nez v2, :cond_1c

    :cond_1e
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1f
    move v0, v1

    goto/16 :goto_0

    :cond_20
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    if-nez v2, :cond_1f

    :cond_21
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_22
    move v0, v1

    goto/16 :goto_0

    :cond_23
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    if-nez v2, :cond_22

    :cond_24
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_25
    move v0, v1

    goto/16 :goto_0

    :cond_26
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    if-nez v2, :cond_25

    :cond_27
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    :cond_28
    move v0, v1

    goto/16 :goto_0

    :cond_29
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    if-nez v2, :cond_28

    :cond_2a
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    :cond_2b
    move v0, v1

    goto/16 :goto_0

    :cond_2c
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    if-nez v2, :cond_2b

    :cond_2d
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/util/List;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/util/List;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_2e
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/util/List;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getAdId()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->q:J

    return-wide v0
.end method

.method public getAdZone()Lcom/applovin/impl/sdk/n;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Lcom/applovin/impl/sdk/n;

    return-object v0
.end method

.method public getResourcePrefixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/util/List;

    return-object v0
.end method

.method public getSourceIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->v:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->j:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->k:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->l:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->m:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Lcom/applovin/impl/sdk/n;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_2

    :cond_4
    move v0, v1

    goto/16 :goto_3

    :cond_5
    move v0, v1

    goto/16 :goto_4

    :cond_6
    move v0, v1

    goto/16 :goto_5

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    move v0, v1

    goto :goto_8

    :cond_a
    move v0, v1

    goto :goto_9

    :cond_b
    move v0, v1

    goto :goto_a

    :cond_c
    move v0, v1

    goto :goto_b

    :cond_d
    move v0, v1

    goto :goto_c

    :cond_e
    move v0, v1

    goto :goto_d
.end method

.method public isImagePrecached()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->t:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->t:Ljava/lang/String;

    iget-object v4, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public isVideoPrecached()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->s:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->t:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->v:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinNativeAd{clCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adZone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceIconUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceStarRatingImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceVideoUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descriptionText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captionText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ctaText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", starRating=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->u:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impressionTrackingUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoStartTrackingUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoEndTrackingUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resourcePrefixes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
