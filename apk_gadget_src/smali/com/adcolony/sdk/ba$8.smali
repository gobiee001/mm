.class Lcom/adcolony/sdk/ba$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ba;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ba;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ba;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 491
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0, v8, v9}, Lcom/adcolony/sdk/ba;->a(Lcom/adcolony/sdk/ba;J)J

    .line 492
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->d(Lcom/adcolony/sdk/ba;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->e(Lcom/adcolony/sdk/ba;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 493
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->d(Lcom/adcolony/sdk/ba;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->f(Lcom/adcolony/sdk/ba;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    :cond_0
    :goto_1
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->g(Lcom/adcolony/sdk/ba;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 498
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->h(Lcom/adcolony/sdk/ba;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/adcolony/sdk/a;->b:Z

    if-eqz v0, :cond_2

    .line 499
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/ba;->a(Lcom/adcolony/sdk/ba;J)J

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0, v6}, Lcom/adcolony/sdk/ba;->a(Lcom/adcolony/sdk/ba;Z)Z

    .line 502
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    iget-object v1, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v1}, Lcom/adcolony/sdk/ba;->g(Lcom/adcolony/sdk/ba;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/ba;->a(Lcom/adcolony/sdk/ba;D)D

    .line 503
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    iget-object v1, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v1}, Lcom/adcolony/sdk/ba;->g(Lcom/adcolony/sdk/ba;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/ba;->b(Lcom/adcolony/sdk/ba;D)D

    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v2}, Lcom/adcolony/sdk/ba;->h(Lcom/adcolony/sdk/ba;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->i(Lcom/adcolony/sdk/ba;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/adcolony/sdk/a;->b:Z

    if-eqz v0, :cond_3

    .line 505
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->j(Lcom/adcolony/sdk/ba;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_7

    .line 507
    sget-object v0, Lcom/adcolony/sdk/aa;->h:Lcom/adcolony/sdk/aa;

    const-string v1, "getCurrentPosition() not working, firing AdSession.on_error"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 508
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->k(Lcom/adcolony/sdk/ba;)V

    .line 515
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->l(Lcom/adcolony/sdk/ba;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 516
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ba;->c()V

    .line 519
    :cond_4
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->m(Lcom/adcolony/sdk/ba;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->d(Lcom/adcolony/sdk/ba;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->e(Lcom/adcolony/sdk/ba;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 521
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->n(Lcom/adcolony/sdk/ba;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v2}, Lcom/adcolony/sdk/ba;->b(Lcom/adcolony/sdk/ba;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 522
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->n(Lcom/adcolony/sdk/ba;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "container_id"

    iget-object v2, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v2}, Lcom/adcolony/sdk/ba;->o(Lcom/adcolony/sdk/ba;)Lcom/adcolony/sdk/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->d()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 523
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->n(Lcom/adcolony/sdk/ba;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad_session_id"

    iget-object v2, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v2}, Lcom/adcolony/sdk/ba;->c(Lcom/adcolony/sdk/ba;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 524
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->n(Lcom/adcolony/sdk/ba;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "elapsed"

    iget-object v2, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v2}, Lcom/adcolony/sdk/ba;->j(Lcom/adcolony/sdk/ba;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 525
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->n(Lcom/adcolony/sdk/ba;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "duration"

    iget-object v2, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v2}, Lcom/adcolony/sdk/ba;->p(Lcom/adcolony/sdk/ba;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 527
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v1, "VideoView.on_progress"

    iget-object v2, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v2}, Lcom/adcolony/sdk/ba;->o(Lcom/adcolony/sdk/ba;)Lcom/adcolony/sdk/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->c()I

    move-result v2

    iget-object v3, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v3}, Lcom/adcolony/sdk/ba;->n(Lcom/adcolony/sdk/ba;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    .line 531
    :cond_5
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->q(Lcom/adcolony/sdk/ba;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 532
    :cond_6
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adcolony/sdk/ba;->c(Lcom/adcolony/sdk/ba;Z)Z

    .line 533
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ba;->d()V

    goto/16 :goto_1

    .line 510
    :cond_7
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0, v6}, Lcom/adcolony/sdk/ba;->b(Lcom/adcolony/sdk/ba;Z)Z

    goto/16 :goto_2

    .line 537
    :cond_8
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->k(Lcom/adcolony/sdk/ba;)V

    .line 541
    sget-object v0, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v1, "InterruptedException in ADCVideoView\'s update thread."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    goto/16 :goto_0

    .line 546
    :cond_9
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0}, Lcom/adcolony/sdk/ba;->q(Lcom/adcolony/sdk/ba;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/adcolony/sdk/ba$8;->a:Lcom/adcolony/sdk/ba;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ba;->d()V

    goto/16 :goto_1
.end method
