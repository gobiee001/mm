.class public Lcom/chartboost/sdk/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field final synthetic e:Lcom/chartboost/sdk/h;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/h;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 348
    iput-object p1, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/h$a;->b:Ljava/lang/String;

    .line 345
    iput-boolean v1, p0, Lcom/chartboost/sdk/h$a;->c:Z

    .line 346
    iput-boolean v1, p0, Lcom/chartboost/sdk/h$a;->d:Z

    .line 349
    iput p2, p0, Lcom/chartboost/sdk/h$a;->a:I

    .line 350
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 355
    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/h$a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 357
    :pswitch_0
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    const-class v1, Lcom/chartboost/sdk/h$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/chartboost/sdk/h$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 361
    :pswitch_1
    :try_start_1
    iget-boolean v0, p0, Lcom/chartboost/sdk/h$a;->c:Z

    sput-boolean v0, Lcom/chartboost/sdk/i;->t:Z

    goto :goto_0

    .line 365
    :pswitch_2
    iget-boolean v0, p0, Lcom/chartboost/sdk/h$a;->d:Z

    sput-boolean v0, Lcom/chartboost/sdk/i;->v:Z

    .line 367
    iget-boolean v0, p0, Lcom/chartboost/sdk/h$a;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->a()V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->b()V

    goto :goto_0

    .line 376
    :pswitch_3
    new-instance v0, Lcom/chartboost/sdk/impl/ad;

    const-string v1, "api/install"

    iget-object v2, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v2, v2, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v3, v3, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ad;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/ad$a;)V

    .line 380
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/ad;->l:Z

    .line 381
    iget-object v1, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ab;->a(Lcom/chartboost/sdk/impl/x;)V

    .line 382
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v6, v0, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 383
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v6, v0, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 384
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v6, v0, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->k:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 385
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/chartboost/sdk/h$a;

    iget-object v2, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 387
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/h;->u:Z

    goto/16 :goto_0

    .line 391
    :pswitch_4
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->a()V

    goto/16 :goto_0

    .line 395
    :pswitch_5
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    iget-object v1, p0, Lcom/chartboost/sdk/h$a;->b:Ljava/lang/String;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/a;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
