.class final Lcom/inmobi/commons/core/d/c$a;
.super Landroid/os/Handler;
.source "TelemetryComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/core/d/c;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/inmobi/commons/core/d/f;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/d/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/d/c;Landroid/os/Looper;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 399
    iput-object p1, p0, Lcom/inmobi/commons/core/d/c$a;->a:Lcom/inmobi/commons/core/d/c;

    .line 400
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 393
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 394
    iput v1, p0, Lcom/inmobi/commons/core/d/c$a;->i:I

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->l:Ljava/util/List;

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    .line 402
    invoke-direct {p0}, Lcom/inmobi/commons/core/d/c$a;->a()V

    .line 403
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/d/g;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 565
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 567
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_1

    .line 568
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 569
    const-string v6, "eventId"

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/core/d/g;

    .line 7037
    iget-object v2, v2, Lcom/inmobi/commons/core/d/g;->a:Ljava/lang/String;

    .line 569
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    const-string v6, "eventType"

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/core/d/g;

    .line 7045
    iget-object v2, v2, Lcom/inmobi/commons/core/d/g;->b:Ljava/lang/String;

    .line 570
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/core/d/g;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/d/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 572
    const-string v6, "payload"

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/core/d/g;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/d/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    :cond_0
    const-string v6, "component"

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/core/d/g;

    .line 8041
    iget-object v2, v2, Lcom/inmobi/commons/core/d/g;->c:Ljava/lang/String;

    .line 574
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    const-string v6, "ts"

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/core/d/g;

    .line 8053
    iget-wide v8, v2, Lcom/inmobi/commons/core/d/g;->d:J

    .line 575
    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 576
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 567
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 578
    :cond_1
    instance-of v2, v3, Lorg/json/JSONArray;

    if-nez v2, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 580
    :goto_1
    return-object v2

    .line 578
    :cond_2
    move-object v0, v3

    check-cast v0, Lorg/json/JSONArray;

    move-object v2, v0

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 580
    :catch_0
    move-exception v2

    const-string v2, ""

    goto :goto_1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 406
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->f()Lcom/inmobi/commons/core/d/e;

    move-result-object v0

    .line 1150
    iget v0, v0, Lcom/inmobi/commons/core/d/e;->e:I

    .line 406
    iput v0, p0, Lcom/inmobi/commons/core/d/c$a;->e:I

    .line 407
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->f()Lcom/inmobi/commons/core/d/e;

    move-result-object v0

    .line 2114
    iget-object v0, v0, Lcom/inmobi/commons/core/d/e;->b:Ljava/lang/String;

    .line 407
    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->b:Ljava/lang/String;

    .line 408
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->f()Lcom/inmobi/commons/core/d/e;

    move-result-object v0

    .line 2158
    iget v0, v0, Lcom/inmobi/commons/core/d/e;->c:I

    .line 408
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/inmobi/commons/core/d/c$a;->f:I

    .line 409
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->f()Lcom/inmobi/commons/core/d/e;

    move-result-object v0

    .line 3142
    iget v0, v0, Lcom/inmobi/commons/core/d/e;->d:I

    .line 409
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/inmobi/commons/core/d/c$a;->g:I

    .line 410
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->f()Lcom/inmobi/commons/core/d/e;

    move-result-object v0

    .line 3154
    iget v0, v0, Lcom/inmobi/commons/core/d/e;->f:I

    .line 410
    iput v0, p0, Lcom/inmobi/commons/core/d/c$a;->j:I

    .line 411
    return-void
.end method

.method private static b(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 585
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 587
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 588
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 589
    const-string v5, "componentType"

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v6, "componentType"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 590
    const-string v5, "eventType"

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v6, "eventType"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 591
    const-string v5, "payload"

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v6, "payload"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 587
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 594
    :cond_0
    instance-of v1, v2, Lorg/json/JSONArray;

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 596
    :goto_1
    return-object v1

    .line 594
    :cond_1
    move-object v0, v2

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 596
    :catch_0
    move-exception v1

    const-string v1, ""

    goto :goto_1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    .line 415
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 5557
    :cond_0
    :goto_0
    return-void

    .line 418
    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/commons/core/d/g;

    .line 419
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c$a;->a:Lcom/inmobi/commons/core/d/c;

    invoke-static {v1, v0}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/c;Lcom/inmobi/commons/core/d/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    goto :goto_0

    .line 427
    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/d/c$a;->removeMessages(I)V

    .line 428
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-static {}, Lcom/inmobi/commons/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 432
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 439
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    goto :goto_0

    .line 436
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/inmobi/commons/core/d/c$a;->a()V

    .line 3474
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    .line 3475
    new-instance v0, Lcom/inmobi/commons/core/d/f;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/f;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->d:Lcom/inmobi/commons/core/d/f;

    .line 3478
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->f()Lcom/inmobi/commons/core/d/e;

    move-result-object v0

    .line 4098
    iget-wide v0, v0, Lcom/inmobi/commons/core/d/e;->i:J

    .line 3479
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    .line 3480
    invoke-static {v0, v1}, Lcom/inmobi/commons/core/d/f;->a(J)I

    .line 5071
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 5072
    const-string v1, "metric"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 5073
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 5074
    invoke-static {}, Lcom/inmobi/commons/core/d/f;->a()V

    .line 3483
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/core/d/c$a;->k:Z

    .line 3485
    invoke-static {v1}, Lcom/inmobi/commons/core/d/c$a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    .line 3503
    :cond_3
    :goto_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3486
    :cond_4
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 3488
    :cond_5
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3491
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/core/d/c$a;->k:Z

    .line 3492
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3493
    iget v0, p0, Lcom/inmobi/commons/core/d/c$a;->e:I

    invoke-static {v0}, Lcom/inmobi/commons/core/d/f;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->l:Ljava/util/List;

    .line 3495
    :cond_7
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3496
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    .line 3497
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3500
    :cond_8
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->l:Ljava/util/List;

    invoke-static {v0}, Lcom/inmobi/commons/core/d/c$a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 5507
    :pswitch_2
    :try_start_3
    new-instance v0, Lcom/inmobi/commons/core/utilities/uid/d;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->f()Lcom/inmobi/commons/core/d/e;

    move-result-object v1

    .line 6052
    iget-object v1, v1, Lcom/inmobi/commons/core/configs/a;->q:Lcom/inmobi/commons/core/configs/a$a;

    .line 6096
    iget-object v1, v1, Lcom/inmobi/commons/core/configs/a$a;->a:Ljava/util/HashMap;

    .line 5507
    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/utilities/uid/d;-><init>(Ljava/util/Map;)V

    .line 5508
    new-instance v1, Lcom/inmobi/commons/core/network/NetworkRequest;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    iget-object v3, p0, Lcom/inmobi/commons/core/d/c$a;->b:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 5509
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5510
    iget-boolean v2, p0, Lcom/inmobi/commons/core/d/c$a;->k:Z

    if-eqz v2, :cond_9

    .line 5511
    const-string v2, "metric"

    iget-object v3, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5515
    :goto_2
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Telemetry Payload: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6099
    iget-object v2, v1, Lcom/inmobi/commons/core/network/NetworkRequest;->m:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5518
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 5519
    new-instance v0, Lcom/inmobi/commons/core/network/d;

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v0

    .line 5521
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5522
    iget v1, p0, Lcom/inmobi/commons/core/d/c$a;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inmobi/commons/core/d/c$a;->i:I

    .line 5524
    iget v1, p0, Lcom/inmobi/commons/core/d/c$a;->i:I

    iget v2, p0, Lcom/inmobi/commons/core/d/c$a;->j:I

    if-le v1, v2, :cond_a

    .line 5526
    const/4 v1, 0x0

    iput v1, p0, Lcom/inmobi/commons/core/d/c$a;->i:I

    .line 5527
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to send telemetry events to server: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " . And retry count exhausted. Will Discard Events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5528
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    .line 5530
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 447
    :catch_2
    move-exception v0

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    goto/16 :goto_0

    .line 5513
    :cond_9
    :try_start_4
    const-string v2, "telemetry"

    iget-object v3, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 5534
    :cond_a
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to send telemetry events to server: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Will retry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5535
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5536
    const/4 v0, 0x1

    iget v1, p0, Lcom/inmobi/commons/core/d/c$a;->g:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 5540
    :cond_b
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Successfully sent events to server: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5541
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    .line 5542
    iget-object v4, p0, Lcom/inmobi/commons/core/d/c$a;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 5544
    :try_start_5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5545
    const-string v5, "url"

    iget-object v6, p0, Lcom/inmobi/commons/core/d/c$a;->b:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5546
    const-string v5, "latency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5547
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->e()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->c()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 5548
    const-string v2, "payloadSize"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5549
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v0, "root"

    const-string v1, "TelemetryLatency"

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 5555
    :goto_3
    :try_start_6
    invoke-static {}, Lcom/inmobi/commons/core/d/f;->b()I

    move-result v0

    iget v1, p0, Lcom/inmobi/commons/core/d/c$a;->e:I

    if-le v0, v1, :cond_c

    .line 5556
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5557
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 5550
    :catch_3
    move-exception v0

    .line 5551
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in submitting telemetry event : ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 5559
    :cond_c
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 454
    :pswitch_3
    :try_start_7
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 455
    const/4 v0, 0x1

    iget v1, p0, Lcom/inmobi/commons/core/d/c$a;->f:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 459
    :catch_4
    move-exception v0

    goto/16 :goto_0

    .line 463
    :pswitch_4
    :try_start_8
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/d/c;->b(Lcom/inmobi/commons/core/d/c;)V

    .line 464
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/d/c;->c(Lcom/inmobi/commons/core/d/c;)V

    .line 465
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/d/c;->d(Lcom/inmobi/commons/core/d/c;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 467
    :catch_5
    move-exception v0

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    goto/16 :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
