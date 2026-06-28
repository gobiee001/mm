.class final Lcom/inmobi/rendering/a/c$a;
.super Landroid/os/Handler;
.source "ClickManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/a/c;


# direct methods
.method public constructor <init>(Lcom/inmobi/rendering/a/c;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$a;->a:Lcom/inmobi/rendering/a/c;

    .line 553
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 554
    return-void
.end method

.method private a(Lcom/inmobi/rendering/a/a;I)V
    .locals 2

    .prologue
    .line 733
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 734
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 735
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 736
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 738
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    .line 739
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/a/c$a;Lcom/inmobi/rendering/a/a;)V
    .locals 2

    .prologue
    .line 7742
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7743
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7744
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7745
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    .line 543
    return-void
.end method

.method static synthetic b(Lcom/inmobi/rendering/a/c$a;Lcom/inmobi/rendering/a/a;)V
    .locals 6

    .prologue
    .line 7749
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 7750
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 7751
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 7752
    :goto_0
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 7754
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 7755
    iget-boolean v1, v0, Lcom/inmobi/rendering/a/a;->h:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    :goto_1
    iput v1, v2, Landroid/os/Message;->what:I

    .line 7756
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v0, v0, Lcom/inmobi/rendering/a/a;->d:J

    sub-long v0, v4, v0

    invoke-static {}, Lcom/inmobi/rendering/a/c;->c()Lcom/inmobi/ads/b$c;

    move-result-object v3

    .line 8603
    iget v3, v3, Lcom/inmobi/ads/b$c;->b:I

    .line 7757
    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 7758
    invoke-static {}, Lcom/inmobi/rendering/a/c;->c()Lcom/inmobi/ads/b$c;

    move-result-object v0

    .line 9603
    iget v0, v0, Lcom/inmobi/ads/b$c;->b:I

    .line 7758
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/inmobi/rendering/a/c$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_2
    return-void

    .line 7751
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7755
    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    .line 7760
    :cond_3
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .prologue
    .line 559
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 562
    :pswitch_0
    new-instance v0, Lcom/inmobi/commons/core/configs/h;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/h;-><init>()V

    .line 563
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 1181
    iget-boolean v0, v0, Lcom/inmobi/commons/core/configs/h;->f:Z

    .line 564
    if-nez v0, :cond_0

    .line 568
    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Lcom/inmobi/rendering/a/b;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->c()Lcom/inmobi/ads/b$c;

    move-result-object v0

    .line 1615
    iget v1, v0, Lcom/inmobi/ads/b$c;->e:I

    .line 569
    invoke-static {}, Lcom/inmobi/rendering/a/c;->c()Lcom/inmobi/ads/b$c;

    move-result-object v0

    .line 2603
    iget v6, v0, Lcom/inmobi/ads/b$c;->b:I

    .line 3088
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3089
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 3090
    const-string v2, "click"

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 3094
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    const/4 v8, 0x0

    .line 3095
    :goto_1
    const-string v1, "click"

    sget-object v2, Lcom/inmobi/rendering/a/b;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "ts"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "ts < "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    int-to-long v12, v6

    sub-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ts ASC "

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3096
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 3097
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 3098
    invoke-static {v0}, Lcom/inmobi/rendering/a/b;->a(Landroid/content/ContentValues;)Lcom/inmobi/rendering/a/a;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 719
    :catch_0
    move-exception v0

    .line 720
    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in processing ping; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3094
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 568
    :cond_2
    invoke-static {v9}, Lcom/inmobi/rendering/a/c;->a(Ljava/util/List;)Ljava/util/List;

    .line 570
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 571
    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Lcom/inmobi/rendering/a/b;

    invoke-static {}, Lcom/inmobi/rendering/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 574
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 575
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 576
    invoke-static {}, Lcom/inmobi/rendering/a/c;->c()Lcom/inmobi/ads/b$c;

    move-result-object v1

    .line 3603
    iget v1, v1, Lcom/inmobi/ads/b$c;->b:I

    .line 576
    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/rendering/a/c$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 579
    :cond_4
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 580
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 581
    iget-boolean v1, v0, Lcom/inmobi/rendering/a/a;->h:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    :goto_3
    iput v1, v2, Landroid/os/Message;->what:I

    .line 582
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v0, v0, Lcom/inmobi/rendering/a/a;->d:J

    sub-long v0, v4, v0

    .line 584
    invoke-static {}, Lcom/inmobi/rendering/a/c;->c()Lcom/inmobi/ads/b$c;

    move-result-object v3

    .line 4603
    iget v3, v3, Lcom/inmobi/ads/b$c;->b:I

    .line 584
    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-gez v3, :cond_6

    .line 585
    invoke-static {}, Lcom/inmobi/rendering/a/c;->c()Lcom/inmobi/ads/b$c;

    move-result-object v3

    .line 5603
    iget v3, v3, Lcom/inmobi/ads/b$c;->b:I

    .line 585
    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    sub-long v0, v4, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/inmobi/rendering/a/c$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 581
    :cond_5
    const/4 v1, 0x2

    goto :goto_3

    .line 587
    :cond_6
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 593
    :pswitch_1
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 594
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 595
    invoke-static {}, Lcom/inmobi/rendering/a/c;->h()V

    goto/16 :goto_0

    .line 599
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 600
    iget v1, v0, Lcom/inmobi/rendering/a/a;->f:I

    if-nez v1, :cond_8

    .line 601
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/inmobi/rendering/a/c$a;->a(Lcom/inmobi/rendering/a/a;I)V

    goto/16 :goto_0

    .line 603
    :cond_8
    invoke-static {}, Lcom/inmobi/rendering/a/c;->c()Lcom/inmobi/ads/b$c;

    move-result-object v1

    .line 5619
    iget-wide v2, v1, Lcom/inmobi/ads/b$c;->f:J

    .line 603
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/rendering/a/a;->a(J)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 604
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/inmobi/rendering/a/c$a;->a(Lcom/inmobi/rendering/a/a;I)V

    goto/16 :goto_0

    .line 608
    :cond_9
    invoke-static {}, Lcom/inmobi/rendering/a/c;->c()Lcom/inmobi/ads/b$c;

    move-result-object v1

    .line 6599
    iget v1, v1, Lcom/inmobi/ads/b$c;->a:I

    .line 608
    iget v2, v0, Lcom/inmobi/rendering/a/a;->f:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 609
    if-nez v1, :cond_a

    .line 613
    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pinging click ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") over HTTP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :goto_4
    new-instance v1, Lcom/inmobi/rendering/a/c$c;

    new-instance v2, Lcom/inmobi/rendering/a/c$a$1;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/a/c$a$1;-><init>(Lcom/inmobi/rendering/a/c$a;)V

    invoke-direct {v1, v2}, Lcom/inmobi/rendering/a/c$c;-><init>(Lcom/inmobi/rendering/a/c$d;)V

    .line 629
    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/a/c$c;->a(Lcom/inmobi/rendering/a/a;)V

    goto/16 :goto_0

    .line 615
    :cond_a
    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retry attempt #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for click ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") over HTTP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 634
    :pswitch_2
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 635
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 636
    invoke-static {}, Lcom/inmobi/rendering/a/c;->h()V

    goto/16 :goto_0

    .line 641
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 642
    iget v1, v0, Lcom/inmobi/rendering/a/a;->f:I

    if-nez v1, :cond_c

    .line 643
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/inmobi/rendering/a/c$a;->a(Lcom/inmobi/rendering/a/a;I)V

    goto/16 :goto_0

    .line 645
    :cond_c
    invoke-static {}, Lcom/inmobi/rendering/a/c;->c()Lcom/inmobi/ads/b$c;

    move-result-object v1

    .line 6619
    iget-wide v2, v1, Lcom/inmobi/ads/b$c;->f:J

    .line 645
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/rendering/a/a;->a(J)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 646
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/inmobi/rendering/a/c$a;->a(Lcom/inmobi/rendering/a/a;I)V

    goto/16 :goto_0

    .line 650
    :cond_d
    invoke-static {}, Lcom/inmobi/rendering/a/c;->c()Lcom/inmobi/ads/b$c;

    move-result-object v1

    .line 7599
    iget v1, v1, Lcom/inmobi/ads/b$c;->a:I

    .line 650
    iget v2, v0, Lcom/inmobi/rendering/a/a;->f:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 651
    if-nez v1, :cond_e

    .line 655
    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pinging click ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in WebView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    :goto_5
    new-instance v1, Lcom/inmobi/rendering/a/c$b;

    new-instance v2, Lcom/inmobi/rendering/a/c$a$2;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/a/c$a$2;-><init>(Lcom/inmobi/rendering/a/c$a;)V

    invoke-direct {v1, v2}, Lcom/inmobi/rendering/a/c$b;-><init>(Lcom/inmobi/rendering/a/c$d;)V

    .line 671
    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/a/c$b;->a(Lcom/inmobi/rendering/a/a;)V

    goto/16 :goto_0

    .line 657
    :cond_e
    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retry attempt #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for click ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") using WebView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 676
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 677
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 678
    const-string v2, "pingUrl"

    iget-object v0, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget v0, p1, Landroid/os/Message;->arg1:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    packed-switch v0, :pswitch_data_1

    .line 692
    :goto_6
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v0, "ads"

    const-string v2, "PingDiscarded"

    invoke-static {v0, v2, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 699
    :goto_7
    :pswitch_4
    :try_start_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 700
    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing click ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") completed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Lcom/inmobi/rendering/a/b;

    invoke-static {v0}, Lcom/inmobi/rendering/a/b;->a(Lcom/inmobi/rendering/a/a;)V

    .line 702
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 704
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 705
    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Lcom/inmobi/rendering/a/b;

    invoke-static {}, Lcom/inmobi/rendering/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 706
    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    .line 707
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 682
    :pswitch_5
    const-string v0, "errorCode"

    const-string v2, "MaxRetryCountReached"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 685
    :pswitch_6
    const-string v0, "errorCode"

    const-string v2, "ExpiredClick"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 693
    :catch_1
    move-exception v0

    .line 694
    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in submitting telemetry event : ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 709
    :cond_f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 710
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 711
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 714
    :cond_10
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 7726
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 7727
    iget-boolean v1, v0, Lcom/inmobi/rendering/a/a;->h:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x3

    :goto_8
    iput v1, v2, Landroid/os/Message;->what:I

    .line 7728
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7729
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 7727
    :cond_11
    const/4 v1, 0x2

    goto :goto_8

    .line 559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 680
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
