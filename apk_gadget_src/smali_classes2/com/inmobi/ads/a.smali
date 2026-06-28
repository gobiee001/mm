.class Lcom/inmobi/ads/a;
.super Ljava/lang/Object;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/a$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:J

.field d:J

.field final e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Z

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/inmobi/ads/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/a;->i:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/a;->a:I

    .line 411
    const-string v0, "ad_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->j:Ljava/lang/String;

    .line 412
    const-string v0, "ad_size"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->k:Ljava/lang/String;

    .line 413
    const-string v0, "asset_urls"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->m:Ljava/lang/String;

    .line 414
    const-string v0, "ad_content"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->b:Ljava/lang/String;

    .line 415
    const-string v0, "placement_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/a;->c:J

    .line 416
    const-string v0, "insertion_ts"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/a;->d:J

    .line 417
    const-string v0, "expiry_duration"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/a;->l:J

    .line 418
    const-string v0, "imp_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->e:Ljava/lang/String;

    .line 419
    const-string v0, "client_request_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->f:Ljava/lang/String;

    .line 420
    const-string v0, "m10_context"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->a(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->n:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 421
    iget-object v0, p0, Lcom/inmobi/ads/a;->n:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    if-nez v0, :cond_0

    .line 426
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    iput-object v0, p0, Lcom/inmobi/ads/a;->n:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 429
    :cond_0
    const-string v0, "web_vast"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->g:Ljava/lang/String;

    .line 430
    const-string v0, "preload_webView"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/inmobi/ads/a;->h:Z

    .line 431
    return-void

    .line 430
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;J)V
    .locals 14

    .prologue
    .line 382
    const/4 v3, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-wide/from16 v12, p9

    invoke-direct/range {v1 .. v13}, Lcom/inmobi/ads/a;-><init>(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;ZJ)V

    .line 387
    return-void
.end method

.method synthetic constructor <init>(Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;JB)V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p10}, Lcom/inmobi/ads/a;-><init>(Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;J)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;ZJ)V
    .locals 3

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/a;->a:I

    .line 395
    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/inmobi/ads/a;->b:Ljava/lang/String;

    .line 396
    iput-object p2, p0, Lcom/inmobi/ads/a;->m:Ljava/lang/String;

    .line 397
    iput-wide p3, p0, Lcom/inmobi/ads/a;->c:J

    .line 398
    iput-object p5, p0, Lcom/inmobi/ads/a;->j:Ljava/lang/String;

    .line 399
    iput-object p6, p0, Lcom/inmobi/ads/a;->k:Ljava/lang/String;

    .line 400
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/a;->d:J

    .line 401
    iput-object p7, p0, Lcom/inmobi/ads/a;->e:Ljava/lang/String;

    .line 402
    iput-object p8, p0, Lcom/inmobi/ads/a;->f:Ljava/lang/String;

    .line 403
    iput-object p9, p0, Lcom/inmobi/ads/a;->n:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 404
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/ads/a;->g:Ljava/lang/String;

    .line 405
    iput-boolean p10, p0, Lcom/inmobi/ads/a;->h:Z

    .line 406
    iput-wide p11, p0, Lcom/inmobi/ads/a;->l:J

    .line 407
    return-void

    .line 395
    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/inmobi/ads/a;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 434
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 435
    const-string v0, "ad_type"

    iget-object v2, p0, Lcom/inmobi/ads/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "ad_size"

    iget-object v2, p0, Lcom/inmobi/ads/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "asset_urls"

    iget-object v2, p0, Lcom/inmobi/ads/a;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v0, "ad_content"

    iget-object v2, p0, Lcom/inmobi/ads/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "placement_id"

    iget-wide v2, p0, Lcom/inmobi/ads/a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    const-string v0, "insertion_ts"

    iget-wide v2, p0, Lcom/inmobi/ads/a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    const-string v0, "expiry_duration"

    iget-wide v2, p0, Lcom/inmobi/ads/a;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 442
    const-string v0, "imp_id"

    iget-object v2, p0, Lcom/inmobi/ads/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v0, "client_request_id"

    iget-object v2, p0, Lcom/inmobi/ads/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v0, "m10_context"

    iget-object v2, p0, Lcom/inmobi/ads/a;->n:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 1028
    iget-object v2, v2, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->a:Ljava/lang/String;

    .line 444
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/inmobi/ads/a;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 446
    const-string v0, "web_vast"

    iget-object v2, p0, Lcom/inmobi/ads/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_0
    const-string v2, "preload_webView"

    iget-boolean v0, p0, Lcom/inmobi/ads/a;->h:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    return-object v1

    .line 448
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 505
    iget-wide v2, p0, Lcom/inmobi/ads/a;->l:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 508
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/inmobi/ads/a;->d:J

    iget-wide v2, p0, Lcom/inmobi/ads/a;->l:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final c()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 514
    iget-object v1, p0, Lcom/inmobi/ads/a;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/a;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-object v0

    .line 516
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/inmobi/ads/a;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 517
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 520
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 523
    :catch_0
    move-exception v1

    .line 525
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 533
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 1469
    iget-object v0, p0, Lcom/inmobi/ads/a;->b:Ljava/lang/String;

    .line 533
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 534
    const-string v1, "markupType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 538
    :goto_0
    return-object v0

    .line 535
    :cond_0
    const-string v1, "markupType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 538
    const-string v0, ""

    goto :goto_0
.end method
