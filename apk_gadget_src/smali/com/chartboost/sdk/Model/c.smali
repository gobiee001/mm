.class public Lcom/chartboost/sdk/Model/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Ljava/lang/Boolean;

.field private C:Lcom/chartboost/sdk/e;

.field private D:Ljava/lang/Runnable;

.field public final a:Lcom/chartboost/sdk/impl/a;

.field public final b:Lcom/chartboost/sdk/Libraries/f;

.field public final c:Lcom/chartboost/sdk/impl/ab;

.field public final d:Lcom/chartboost/sdk/impl/aj;

.field public final e:Lcom/chartboost/sdk/Tracking/a;

.field public final f:Landroid/os/Handler;

.field public final g:Lcom/chartboost/sdk/c;

.field public final h:Lcom/chartboost/sdk/impl/ae;

.field public final i:Lcom/chartboost/sdk/d;

.field public final j:Lcom/chartboost/sdk/impl/af;

.field public final k:Lcom/chartboost/sdk/Model/d;

.field public l:I

.field public final m:Ljava/lang/String;

.field public n:I

.field public final o:Ljava/lang/String;

.field public final p:Lcom/chartboost/sdk/Model/a;

.field public final q:Landroid/content/SharedPreferences;

.field public r:Z

.field public s:Lcom/chartboost/sdk/impl/au;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Lcom/chartboost/sdk/impl/ad;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/d;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ab;Lcom/chartboost/sdk/impl/aj;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/ae;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chartboost/sdk/Model/c;->B:Ljava/lang/Boolean;

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->t:Z

    .line 133
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->u:Z

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->v:Z

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->y:Z

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->z:Z

    .line 161
    iput-object p1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    .line 162
    iput-object p13, p0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/a;

    .line 163
    iput-object p3, p0, Lcom/chartboost/sdk/Model/c;->b:Lcom/chartboost/sdk/Libraries/f;

    .line 164
    iput-object p4, p0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/ab;

    .line 165
    iput-object p5, p0, Lcom/chartboost/sdk/Model/c;->d:Lcom/chartboost/sdk/impl/aj;

    .line 166
    iput-object p7, p0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Tracking/a;

    .line 167
    iput-object p8, p0, Lcom/chartboost/sdk/Model/c;->f:Landroid/os/Handler;

    .line 168
    iput-object p9, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    .line 169
    iput-object p10, p0, Lcom/chartboost/sdk/Model/c;->h:Lcom/chartboost/sdk/impl/ae;

    .line 170
    iput-object p11, p0, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    .line 171
    iput-object p12, p0, Lcom/chartboost/sdk/Model/c;->j:Lcom/chartboost/sdk/impl/af;

    .line 172
    iput-object p2, p0, Lcom/chartboost/sdk/Model/c;->k:Lcom/chartboost/sdk/Model/d;

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lcom/chartboost/sdk/Model/c;->l:I

    .line 174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->r:Z

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->x:Z

    .line 176
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->z:Z

    .line 177
    const/4 v1, 0x3

    iput v1, p0, Lcom/chartboost/sdk/Model/c;->n:I

    .line 178
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    .line 179
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->o:Ljava/lang/String;

    .line 180
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    .line 181
    iput-object p6, p0, Lcom/chartboost/sdk/Model/c;->q:Landroid/content/SharedPreferences;

    .line 182
    return-void
.end method

.method private x()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->k:Lcom/chartboost/sdk/Model/d;

    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/Model/d;->a(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 296
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/chartboost/sdk/Model/c;->D:Ljava/lang/Runnable;

    .line 419
    return-void
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/high16 v11, 0x447a0000    # 1000.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 513
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->f:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v6, v3, v5}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->b()Z

    move-result v0

    .line 515
    if-eqz v0, :cond_0

    .line 516
    iget v0, p0, Lcom/chartboost/sdk/Model/c;->l:I

    if-ne v0, v4, :cond_0

    .line 517
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/c;)V

    .line 523
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v6

    .line 524
    :goto_0
    if-eqz v0, :cond_c

    .line 525
    new-instance v0, Lcom/chartboost/sdk/impl/ad;

    const-string v1, "/api/click"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->d:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Tracking/a;

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ad;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/ad$a;)V

    .line 532
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 533
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 535
    const-string v1, "to"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 537
    const-string v1, "cgn"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    :cond_3
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 539
    const-string v1, "creative"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    :cond_4
    iget v1, p0, Lcom/chartboost/sdk/Model/c;->n:I

    if-eq v1, v6, :cond_5

    iget v1, p0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v1, v4, :cond_6

    .line 542
    :cond_5
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->k()Lcom/chartboost/sdk/e$a;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 543
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->u()Lcom/chartboost/sdk/e;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/p;

    .line 547
    :goto_1
    if-eqz v1, :cond_6

    .line 548
    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->k()F

    move-result v2

    .line 549
    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->j()F

    move-result v1

    .line 550
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "TotalDuration: %f PlaybackTime: %f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v4, v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v8, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v3, "total_time"

    div-float v4, v1, v11

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 553
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_b

    .line 554
    const-string v2, "playback_time"

    div-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 560
    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    .line 561
    const-string v1, "click_coordinates"

    invoke-virtual {v0, v1, p2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    :cond_7
    const-string v1, "location"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 565
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/c;->x()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 566
    const-string v1, "retarget_reinstall"

    invoke-direct {p0}, Lcom/chartboost/sdk/Model/c;->y()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    :cond_8
    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->w:Lcom/chartboost/sdk/impl/ad;

    .line 570
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->h:Lcom/chartboost/sdk/impl/ae;

    invoke-virtual {v0, p0, p1, v5}, Lcom/chartboost/sdk/impl/ae;->a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/ad;)V

    .line 576
    :goto_3
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/a;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    return-void

    :cond_9
    move v0, v7

    .line 523
    goto/16 :goto_0

    .line 544
    :cond_a
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    if-ne v1, v6, :cond_d

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->k()Lcom/chartboost/sdk/e$a;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 545
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->u()Lcom/chartboost/sdk/e;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/ax;

    goto/16 :goto_1

    .line 556
    :cond_b
    const-string v1, "playback_time"

    div-float/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 572
    :cond_c
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->h:Lcom/chartboost/sdk/impl/ae;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v1, p0

    move v2, v7

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ae;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/ad;)V

    goto :goto_3

    :cond_d
    move-object v1, v5

    goto/16 :goto_1
.end method

.method public a()Z
    .locals 9

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 185
    iput v4, p0, Lcom/chartboost/sdk/Model/c;->l:I

    .line 187
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/e;->a(Lorg/json/JSONObject;)Z

    move-result v0

    return v0

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->p:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iput v2, p0, Lcom/chartboost/sdk/Model/c;->n:I

    .line 193
    new-instance v0, Lcom/chartboost/sdk/impl/p;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->b:Lcom/chartboost/sdk/Libraries/f;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/chartboost/sdk/impl/p;-><init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    .line 194
    iput-boolean v4, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    goto :goto_0

    .line 197
    :cond_0
    iput v4, p0, Lcom/chartboost/sdk/Model/c;->n:I

    .line 198
    new-instance v0, Lcom/chartboost/sdk/impl/o;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-direct {v0, p0, v1, v2}, Lcom/chartboost/sdk/impl/o;-><init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    goto :goto_0

    .line 202
    :pswitch_1
    iput v1, p0, Lcom/chartboost/sdk/Model/c;->n:I

    .line 203
    new-instance v0, Lcom/chartboost/sdk/impl/p;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->b:Lcom/chartboost/sdk/Libraries/f;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/chartboost/sdk/impl/p;-><init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    .line 204
    iput-boolean v4, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    packed-switch v0, :pswitch_data_1

    .line 235
    :goto_1
    new-instance v0, Lcom/chartboost/sdk/impl/ax;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->b:Lcom/chartboost/sdk/Libraries/f;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/ab;

    iget-object v4, p0, Lcom/chartboost/sdk/Model/c;->q:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Tracking/a;

    iget-object v6, p0, Lcom/chartboost/sdk/Model/c;->f:Landroid/os/Handler;

    iget-object v7, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    iget-object v8, p0, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/impl/ax;-><init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ab;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/d;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->p:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iput v2, p0, Lcom/chartboost/sdk/Model/c;->n:I

    .line 216
    iput-boolean v4, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    goto :goto_1

    .line 224
    :cond_2
    iput v4, p0, Lcom/chartboost/sdk/Model/c;->n:I

    goto :goto_1

    .line 228
    :pswitch_3
    iput v1, p0, Lcom/chartboost/sdk/Model/c;->n:I

    .line 229
    iput-boolean v4, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    goto :goto_1

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 211
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 256
    iget v0, p0, Lcom/chartboost/sdk/Model/c;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->t:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 279
    :goto_0
    return v0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v0, Lcom/chartboost/sdk/Model/a;->j:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->i:Ljava/lang/String;

    .line 261
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 263
    :try_start_0
    iget-object v4, p0, Lcom/chartboost/sdk/Model/c;->h:Lcom/chartboost/sdk/impl/ae;

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    :try_start_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/chartboost/sdk/Model/c;->B:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    :goto_1
    iget-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->x:Z

    if-eqz v1, :cond_4

    move v0, v2

    .line 275
    goto :goto_0

    .line 267
    :cond_2
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->B:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 270
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 271
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "onClick"

    invoke-static {v4, v5, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 276
    :cond_4
    iput-boolean v3, p0, Lcom/chartboost/sdk/Model/c;->x:Z

    .line 277
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/c;->z:Z

    .line 278
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/Model/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    move v0, v3

    .line 279
    goto :goto_0

    .line 270
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->z:Z

    .line 247
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Model/c;)V

    .line 248
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->k:Lcom/chartboost/sdk/Model/d;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/d;->b(Lcom/chartboost/sdk/Model/c;)V

    .line 249
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->k:Lcom/chartboost/sdk/Model/d;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/d;->a(Lcom/chartboost/sdk/Model/c;)V

    .line 253
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 299
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->u:Z

    .line 300
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    .line 301
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->k:I

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/a;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->w()V

    .line 305
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->v:Z

    .line 309
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->b()V

    .line 317
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 318
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    .line 320
    :cond_0
    const-string v0, "CBImpression"

    const-string v1, "reinitializing -- no view protocol exists!!"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_1
    const-string v0, "CBImpression"

    const-string v1, "reinitializing -- view not yet created"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->i()V

    .line 330
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->r:Z

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->d()V

    .line 335
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    .line 336
    const-string v0, "CBImpression"

    const-string v1, "Destroying the view and view data"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/au;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/au;->b()V

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/au;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/au;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/au;

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->f()V

    .line 355
    :cond_2
    const-string v0, "CBImpression"

    const-string v1, "Destroying the view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    const-string v1, "CBImpression"

    const-string v2, "Exception raised while cleaning up views"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "cleanUpViews"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public j()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .locals 3

    .prologue
    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "tryCreatingView"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 370
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_0
.end method

.method public k()Lcom/chartboost/sdk/e$a;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/e$a;->setVisibility(I)V

    .line 387
    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->t:Z

    .line 423
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->D:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->D:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->D:Ljava/lang/Runnable;

    .line 430
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->t:Z

    .line 431
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public p()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->k:Lcom/chartboost/sdk/Model/d;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/d;->c(Lcom/chartboost/sdk/Model/c;)V

    .line 443
    return-void
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->l()Z

    move-result v0

    .line 449
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 453
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->x:Z

    .line 454
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->y:Z

    if-eqz v0, :cond_0

    .line 455
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->y:Z

    .line 456
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->m()V

    .line 458
    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->x:Z

    .line 462
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->y:Z

    if-nez v0, :cond_0

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->y:Z

    .line 467
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->n()V

    .line 469
    :cond_0
    return-void
.end method

.method public u()Lcom/chartboost/sdk/e;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    return-object v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->z:Z

    return v0
.end method

.method public w()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v8, 0x0

    const/high16 v9, 0x447a0000    # 1000.0f

    .line 480
    new-instance v0, Lcom/chartboost/sdk/impl/ad;

    const-string v1, "/api/video-complete"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->d:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Tracking/a;

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ad;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/ad$a;)V

    .line 485
    const-string v1, "location"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    const-string v1, "reward"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    const-string v1, "currency-name"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    const-string v1, "ad_id"

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    const-string v1, "force_close"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->k()Lcom/chartboost/sdk/e$a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->u()Lcom/chartboost/sdk/e;

    move-result-object v5

    .line 492
    :cond_0
    if-eqz v5, :cond_1

    .line 493
    invoke-virtual {v5}, Lcom/chartboost/sdk/e;->k()F

    move-result v1

    .line 494
    invoke-virtual {v5}, Lcom/chartboost/sdk/e;->j()F

    move-result v2

    .line 495
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "TotalDuration: %f PlaybackTime: %f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v8

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v3, "total_time"

    div-float v4, v2, v9

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_2

    .line 499
    const-string v1, "playback_time"

    div-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ab;->a(Lcom/chartboost/sdk/impl/x;)V

    .line 504
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/a;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    return-void

    .line 501
    :cond_2
    const-string v2, "playback_time"

    div-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
