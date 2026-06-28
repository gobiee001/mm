.class Lcom/inmobi/ads/h;
.super Ljava/lang/Object;
.source "AdStore.java"

# interfaces
.implements Lcom/inmobi/ads/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/h$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field final a:Lcom/inmobi/ads/h$a;

.field final b:Lcom/inmobi/ads/c;

.field c:Lcom/inmobi/ads/i;

.field d:Z

.field e:J

.field private final g:Lcom/inmobi/ads/cache/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/inmobi/ads/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/h;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/h$a;)V
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/h;->d:Z

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/h;->e:J

    .line 89
    new-instance v0, Lcom/inmobi/ads/h$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/h$1;-><init>(Lcom/inmobi/ads/h;)V

    iput-object v0, p0, Lcom/inmobi/ads/h;->g:Lcom/inmobi/ads/cache/f;

    .line 167
    iput-object p1, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    .line 168
    invoke-static {}, Lcom/inmobi/ads/c;->a()Lcom/inmobi/ads/c;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/c;

    .line 169
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/h$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/i;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/c;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/inmobi/ads/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/inmobi/ads/f;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/f;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 557
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 46062
    iget-object v1, p1, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 558
    const-string v2, "requestId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 559
    const-string v2, "ads"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 561
    if-eqz v12, :cond_2

    .line 47058
    iget-object v1, p1, Lcom/inmobi/ads/f;->c:Lcom/inmobi/ads/e;

    .line 47149
    iget v1, v1, Lcom/inmobi/ads/e;->d:I

    .line 564
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 563
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 566
    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v13, :cond_1

    .line 567
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 48058
    iget-object v2, p1, Lcom/inmobi/ads/f;->c:Lcom/inmobi/ads/e;

    .line 48153
    iget-wide v2, v2, Lcom/inmobi/ads/e;->a:J

    .line 49058
    iget-object v4, p1, Lcom/inmobi/ads/f;->c:Lcom/inmobi/ads/e;

    .line 49125
    iget-object v4, v4, Lcom/inmobi/ads/e;->e:Ljava/lang/String;

    .line 50058
    iget-object v5, p1, Lcom/inmobi/ads/f;->c:Lcom/inmobi/ads/e;

    .line 50059
    iget-object v5, v5, Lcom/inmobi/ads/e;->c:Ljava/lang/String;

    .line 570
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 50060
    iget-object v7, p1, Lcom/inmobi/ads/f;->c:Lcom/inmobi/ads/e;

    .line 50061
    iget-object v7, v7, Lcom/inmobi/ads/e;->i:Ljava/lang/String;

    .line 571
    iget-object v8, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 50062
    iget-object v8, v8, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 567
    invoke-static/range {v1 .. v8}, Lcom/inmobi/ads/a$a;->a(Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)Lcom/inmobi/ads/a;

    move-result-object v1

    .line 574
    if-eqz v1, :cond_0

    .line 575
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_0
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    .line 578
    :cond_1
    if-lez v13, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 592
    :goto_1
    return-object v9

    .line 580
    :catch_0
    move-exception v0

    .line 583
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 584
    const-string v2, "errorCode"

    const-string v3, "ParsingError"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v2, "reason"

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v0, "latency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/h;->e:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v0, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    iget-object v0, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    const-string v2, "ads"

    const-string v3, "ServerError"

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, v9

    :cond_2
    move-object v9, v0

    .line 592
    goto :goto_1
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 338
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    if-nez v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/h;->b()V

    .line 341
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 9053
    iget-wide v0, v0, Lcom/inmobi/ads/i;->d:J

    .line 341
    iget-object v2, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 9117
    iget-object v2, v2, Lcom/inmobi/ads/i;->f:Ljava/lang/String;

    .line 342
    iget-object v3, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 9132
    iget-object v3, v3, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 342
    iget-object v4, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 10069
    iget-object v4, v4, Lcom/inmobi/ads/i;->g:Ljava/util/Map;

    .line 343
    invoke-static {v4}, Lcom/inmobi/ads/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 341
    invoke-static {v0, v1, v2, v3, v4}, Lcom/inmobi/ads/c;->a(JLjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)I

    move-result v0

    .line 344
    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 10077
    iget-object v1, v1, Lcom/inmobi/ads/i;->j:Lcom/inmobi/ads/b$b;

    .line 10582
    iget v1, v1, Lcom/inmobi/ads/b$b;->c:I

    .line 344
    if-ge v0, v1, :cond_0

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cached ad count below threshold, firing ad request for Placement : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 11053
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 346
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 347
    const-string v0, "int"

    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 11093
    iget-object v1, v1, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iput-boolean v5, p0, Lcom/inmobi/ads/h;->d:Z

    .line 349
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    invoke-virtual {p0, v0, v5}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/i;Z)Ljava/lang/String;

    goto :goto_0

    .line 351
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/ads/h;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 357
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    if-nez v0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 12093
    iget-object v0, v0, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 359
    invoke-static {v0}, Lcom/inmobi/ads/g;->a(Ljava/lang/String;)Lcom/inmobi/ads/g;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 13053
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 361
    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 13069
    iget-object v1, v1, Lcom/inmobi/ads/i;->g:Ljava/util/Map;

    .line 362
    iget-object v4, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 13093
    iget-object v4, v4, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 362
    iget-object v5, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 14061
    iget-object v5, v5, Lcom/inmobi/ads/i;->e:Ljava/lang/String;

    .line 361
    invoke-static {v2, v3, v1, v4, v5}, Lcom/inmobi/ads/bc;->a(JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/bc;

    move-result-object v1

    .line 364
    iget-object v2, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 14132
    iget-object v2, v2, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 15073
    iput-object v2, v1, Lcom/inmobi/ads/bc;->f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 365
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/g;->b(Lcom/inmobi/ads/bc;)V

    goto :goto_0
.end method


# virtual methods
.method final a(JLjava/lang/String;ILcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)Lcom/inmobi/ads/a;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 291
    invoke-virtual {p0}, Lcom/inmobi/ads/h;->b()V

    .line 293
    invoke-static {p1, p2, p3, p5, p6}, Lcom/inmobi/ads/c;->a(JLjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)I

    move-result v1

    .line 294
    if-nez v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-object v0

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/c;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/ads/c;->b(JLjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)Lcom/inmobi/ads/a;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_0

    .line 304
    iput-boolean v7, p0, Lcom/inmobi/ads/h;->d:Z

    .line 305
    invoke-static {p1, p2, p3, p5, p6}, Lcom/inmobi/ads/c;->a(JLjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)I

    move-result v0

    .line 307
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 308
    const-string v3, "clientRequestId"

    .line 5457
    iget-object v4, v1, Lcom/inmobi/ads/a;->f:Ljava/lang/String;

    .line 308
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v3, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v3, "isPreloaded"

    iget-object v4, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    invoke-virtual {v4}, Lcom/inmobi/ads/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v3, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    const-string v4, "ads"

    const-string v5, "AdCacheHit"

    invoke-interface {v3, v4, v5, v2}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 312
    if-ge v0, p4, :cond_2

    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    if-eqz v0, :cond_2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cached ad count below threshold, firing ad request for Placement : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 6053
    iget-wide v2, v2, Lcom/inmobi/ads/i;->d:J

    .line 314
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 315
    const-string v0, "native"

    iget-object v2, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 6093
    iget-object v2, v2, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    invoke-direct {p0}, Lcom/inmobi/ads/h;->e()V

    :cond_2
    :goto_1
    move-object v0, v1

    .line 321
    goto :goto_0

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    invoke-virtual {p0, v0, v7}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/i;Z)Ljava/lang/String;

    goto :goto_1
.end method

.method final a()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 243
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 1053
    iget-wide v2, v0, Lcom/inmobi/ads/i;->d:J

    .line 243
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 1117
    iget-object v4, v0, Lcom/inmobi/ads/i;->f:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 2077
    iget-object v0, v0, Lcom/inmobi/ads/i;->j:Lcom/inmobi/ads/b$b;

    .line 2582
    iget v5, v0, Lcom/inmobi/ads/b$b;->c:I

    .line 244
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 3132
    iget-object v6, v0, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 245
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 4069
    iget-object v0, v0, Lcom/inmobi/ads/i;->g:Ljava/util/Map;

    .line 246
    invoke-static {v0}, Lcom/inmobi/ads/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    .line 243
    invoke-virtual/range {v1 .. v7}, Lcom/inmobi/ads/h;->a(JLjava/lang/String;ILcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)Lcom/inmobi/ads/a;

    move-result-object v1

    .line 247
    if-nez v1, :cond_2

    .line 248
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    invoke-virtual {p0, v0, v9}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/i;Z)Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_0
    :goto_0
    return-object v0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    invoke-virtual {p0, v0, v8}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/i;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4457
    :cond_2
    iget-object v0, v1, Lcom/inmobi/ads/a;->f:Ljava/lang/String;

    .line 255
    iget-object v2, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    iget-object v3, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 5053
    iget-wide v4, v3, Lcom/inmobi/ads/i;->d:J

    .line 255
    invoke-interface {v2, v4, v5, v1}, Lcom/inmobi/ads/h$a;->a(JLcom/inmobi/ads/a;)V

    .line 256
    const-string v2, "INMOBIJSON"

    invoke-virtual {v1}, Lcom/inmobi/ads/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v9, [Lcom/inmobi/ads/a;

    aput-object v1, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v2}, Lcom/inmobi/ads/h;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method final a(Lcom/inmobi/ads/i;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 401
    .line 15272
    if-eqz p1, :cond_1

    .line 16109
    iget-object v0, p1, Lcom/inmobi/ads/i;->k:Ljava/util/Map;

    .line 15274
    if-nez v0, :cond_0

    .line 15275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15278
    :cond_0
    const-string v2, "preload-request"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16113
    iput-object v0, p1, Lcom/inmobi/ads/i;->k:Ljava/util/Map;

    .line 403
    :cond_1
    new-instance v0, Lcom/inmobi/ads/e;

    .line 17029
    iget-object v1, p1, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    .line 17053
    iget-wide v2, p1, Lcom/inmobi/ads/i;->d:J

    .line 17085
    iget-object v4, p1, Lcom/inmobi/ads/i;->l:Lcom/inmobi/commons/core/utilities/uid/d;

    .line 405
    invoke-static {}, Lcom/inmobi/ads/cache/d;->a()Lcom/inmobi/ads/cache/d;

    invoke-static {}, Lcom/inmobi/ads/cache/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/e;-><init>(Ljava/lang/String;JLcom/inmobi/commons/core/utilities/uid/d;Ljava/lang/String;)V

    .line 18061
    iget-object v1, p1, Lcom/inmobi/ads/i;->e:Ljava/lang/String;

    .line 18157
    iput-object v1, v0, Lcom/inmobi/ads/e;->f:Ljava/lang/String;

    .line 19069
    iget-object v1, p1, Lcom/inmobi/ads/i;->g:Ljava/util/Map;

    .line 19161
    iput-object v1, v0, Lcom/inmobi/ads/e;->g:Ljava/util/Map;

    .line 20093
    iget-object v1, p1, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 20121
    iput-object v1, v0, Lcom/inmobi/ads/e;->e:Ljava/lang/String;

    .line 21101
    iget-object v1, p1, Lcom/inmobi/ads/i;->i:Ljava/lang/String;

    .line 21129
    iput-object v1, v0, Lcom/inmobi/ads/e;->b:Ljava/lang/String;

    .line 22077
    iget-object v1, p1, Lcom/inmobi/ads/i;->j:Lcom/inmobi/ads/b$b;

    .line 22578
    iget v1, v1, Lcom/inmobi/ads/b$b;->b:I

    .line 23145
    iput v1, v0, Lcom/inmobi/ads/e;->d:I

    .line 24109
    iget-object v1, p1, Lcom/inmobi/ads/i;->k:Ljava/util/Map;

    .line 24165
    iput-object v1, v0, Lcom/inmobi/ads/e;->h:Ljava/util/Map;

    .line 25101
    iget-object v1, p1, Lcom/inmobi/ads/i;->i:Ljava/lang/String;

    .line 25129
    iput-object v1, v0, Lcom/inmobi/ads/e;->b:Ljava/lang/String;

    .line 26117
    iget-object v1, p1, Lcom/inmobi/ads/i;->f:Ljava/lang/String;

    .line 26141
    iput-object v1, v0, Lcom/inmobi/ads/e;->c:Ljava/lang/String;

    .line 27045
    iget v1, p1, Lcom/inmobi/ads/i;->c:I

    .line 414
    mul-int/lit16 v1, v1, 0x3e8

    .line 27174
    iput v1, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->p:I

    .line 28045
    iget v1, p1, Lcom/inmobi/ads/i;->c:I

    .line 415
    mul-int/lit16 v1, v1, 0x3e8

    .line 28178
    iput v1, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->q:I

    .line 29132
    iget-object v1, p1, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 29169
    iput-object v1, v0, Lcom/inmobi/ads/e;->j:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 418
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/ads/h;->e:J

    .line 419
    new-instance v1, Lcom/inmobi/ads/d;

    invoke-direct {v1, v0, p0}, Lcom/inmobi/ads/d;-><init>(Lcom/inmobi/ads/e;Lcom/inmobi/ads/d$a;)V

    .line 420
    invoke-virtual {v1}, Lcom/inmobi/ads/d;->a()V

    .line 422
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 423
    const-string v2, "isPreloaded"

    invoke-virtual {p1}, Lcom/inmobi/ads/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v2, "clientRequestId"

    .line 29173
    iget-object v3, v0, Lcom/inmobi/ads/e;->i:Ljava/lang/String;

    .line 424
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v2, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v2, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    const-string v3, "ads"

    const-string v4, "ServerCallInitiated"

    invoke-interface {v2, v3, v4, v1}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 30173
    iget-object v0, v0, Lcom/inmobi/ads/e;->i:Ljava/lang/String;

    .line 427
    return-object v0

    .line 15278
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method final a(Lcom/inmobi/ads/a;)V
    .locals 1

    .prologue
    .line 382
    new-instance v0, Lcom/inmobi/ads/h$2;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/ads/h$2;-><init>(Lcom/inmobi/ads/h;Lcom/inmobi/ads/a;)V

    .line 387
    invoke-virtual {v0}, Lcom/inmobi/ads/h$2;->start()V

    .line 388
    return-void
.end method

.method public final a(Lcom/inmobi/ads/f;)V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 432
    invoke-direct {p0, p1}, Lcom/inmobi/ads/h;->c(Lcom/inmobi/ads/f;)Ljava/util/List;

    move-result-object v10

    .line 433
    if-nez v10, :cond_1

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse ad response:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31062
    iget-object v1, p1, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->d:Z

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 32053
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 436
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/h$a;->a(JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad response received but no ad available:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32062
    iget-object v1, p1, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 444
    const-string v1, "latency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/h;->e:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v1, "isPreloaded"

    iget-object v2, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    invoke-virtual {v2}, Lcom/inmobi/ads/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v1, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v1, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    const-string v2, "ads"

    const-string v3, "ServerNoFill"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 449
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->d:Z

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 33053
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 450
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/h$a;->a(JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 456
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 457
    const-string v2, "numberOfAdsReturned"

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v2, "latency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/inmobi/ads/h;->e:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v2, "isPreloaded"

    iget-object v3, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    invoke-virtual {v3}, Lcom/inmobi/ads/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v2, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v2, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    const-string v3, "ads"

    const-string v4, "ServerFill"

    invoke-interface {v2, v3, v4, v0}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 463
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    invoke-virtual {v0}, Lcom/inmobi/ads/a;->d()Ljava/lang/String;

    move-result-object v2

    .line 464
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 33069
    iget-object v0, v0, Lcom/inmobi/ads/i;->g:Ljava/util/Map;

    .line 464
    invoke-static {v0}, Lcom/inmobi/ads/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 466
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/inmobi/ads/a;

    .line 468
    if-eqz v2, :cond_0

    .line 469
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 471
    :pswitch_0
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->d:Z

    if-eqz v0, :cond_4

    move v1, v9

    .line 472
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/c;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v10, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 34053
    iget-wide v2, v2, Lcom/inmobi/ads/i;->d:J

    .line 473
    iget-object v4, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 34077
    iget-object v4, v4, Lcom/inmobi/ads/i;->j:Lcom/inmobi/ads/b$b;

    .line 34574
    iget v4, v4, Lcom/inmobi/ads/b$b;->a:I

    .line 474
    iget-object v5, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 35093
    iget-object v5, v5, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 475
    iget-object v6, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 35132
    iget-object v6, v6, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 472
    invoke-virtual/range {v0 .. v7}, Lcom/inmobi/ads/c;->a(Ljava/util/List;JILjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)V

    .line 477
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->d:Z

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 36053
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 478
    invoke-interface {v0, v2, v3, v8}, Lcom/inmobi/ads/h$a;->a(JLcom/inmobi/ads/a;)V

    .line 479
    invoke-direct {p0}, Lcom/inmobi/ads/h;->d()V

    goto/16 :goto_0

    .line 469
    :sswitch_0
    const-string v3, "HTML"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v9

    goto :goto_1

    :sswitch_1
    const-string v3, "INMOBIJSON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1

    .line 483
    :pswitch_1
    const-string v0, "int"

    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 36093
    iget-object v1, v1, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 484
    iget-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/c;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v10, v9, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 37053
    iget-wide v2, v2, Lcom/inmobi/ads/i;->d:J

    .line 485
    iget-object v4, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 37077
    iget-object v4, v4, Lcom/inmobi/ads/i;->j:Lcom/inmobi/ads/b$b;

    .line 37574
    iget v4, v4, Lcom/inmobi/ads/b$b;->a:I

    .line 486
    iget-object v5, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 38093
    iget-object v5, v5, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 487
    iget-object v6, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 38132
    iget-object v6, v6, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 484
    invoke-virtual/range {v0 .. v7}, Lcom/inmobi/ads/c;->a(Ljava/util/List;JILjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)V

    .line 489
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->d:Z

    if-nez v0, :cond_5

    .line 490
    iget-object v0, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 39053
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 490
    invoke-interface {v0, v2, v3, v8}, Lcom/inmobi/ads/h$a;->b(JLcom/inmobi/ads/a;)V

    .line 512
    :cond_5
    :goto_2
    invoke-virtual {p0, v10}, Lcom/inmobi/ads/h;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 493
    :cond_6
    const-string v0, "native"

    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 39093
    iget-object v1, v1, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 494
    iget-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/c;

    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 40053
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 495
    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 40077
    iget-object v1, v1, Lcom/inmobi/ads/i;->j:Lcom/inmobi/ads/b$b;

    .line 40574
    iget v4, v1, Lcom/inmobi/ads/b$b;->a:I

    .line 496
    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 41093
    iget-object v5, v1, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 497
    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 41132
    iget-object v6, v1, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    move-object v1, v10

    .line 494
    invoke-virtual/range {v0 .. v7}, Lcom/inmobi/ads/c;->a(Ljava/util/List;JILjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)V

    .line 499
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->d:Z

    if-nez v0, :cond_5

    .line 500
    iget-object v2, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/c;

    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 42053
    iget-wide v3, v0, Lcom/inmobi/ads/i;->d:J

    .line 500
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 42117
    iget-object v5, v0, Lcom/inmobi/ads/i;->f:Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 42132
    iget-object v6, v0, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 500
    invoke-virtual/range {v2 .. v7}, Lcom/inmobi/ads/c;->b(JLjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)Lcom/inmobi/ads/a;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_7

    .line 506
    invoke-interface {v10, v9, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v8, v0

    .line 508
    :cond_7
    iget-object v0, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 43053
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 508
    invoke-interface {v0, v2, v3, v8}, Lcom/inmobi/ads/h$a;->a(JLcom/inmobi/ads/a;)V

    .line 509
    invoke-direct {p0}, Lcom/inmobi/ads/h;->d()V

    goto :goto_2

    .line 469
    nop

    :sswitch_data_0
    .sparse-switch
        -0x23a6b20a -> :sswitch_1
        0x21ffab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 391
    new-instance v0, Lcom/inmobi/ads/h$3;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/ads/h$3;-><init>(Lcom/inmobi/ads/h;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Lcom/inmobi/ads/h$3;->start()V

    .line 397
    return-void
.end method

.method final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 523
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 524
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    .line 525
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/ads/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "inmobiJson"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 526
    invoke-virtual {v0}, Lcom/inmobi/ads/a;->c()Ljava/util/Set;

    move-result-object v1

    .line 527
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 528
    iget-object v0, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 44053
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 528
    invoke-interface {v0, v2, v3, v5}, Lcom/inmobi/ads/h$a;->a(JZ)V

    .line 550
    :cond_0
    return-void

    .line 531
    :cond_1
    new-instance v2, Lcom/inmobi/ads/cache/b;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44457
    iget-object v0, v0, Lcom/inmobi/ads/a;->f:Ljava/lang/String;

    .line 531
    iget-object v4, p0, Lcom/inmobi/ads/h;->g:Lcom/inmobi/ads/cache/f;

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/inmobi/ads/cache/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/ads/cache/f;)V

    .line 533
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->a()Lcom/inmobi/ads/cache/AssetStore;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/b;)V

    .line 538
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 539
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    .line 540
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/inmobi/ads/a;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inmobiJson"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 541
    invoke-virtual {v0}, Lcom/inmobi/ads/a;->c()Ljava/util/Set;

    move-result-object v2

    .line 542
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 543
    new-instance v3, Lcom/inmobi/ads/cache/b;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45457
    iget-object v0, v0, Lcom/inmobi/ads/a;->f:Ljava/lang/String;

    .line 543
    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v2, v5}, Lcom/inmobi/ads/cache/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/ads/cache/f;)V

    .line 545
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->a()Lcom/inmobi/ads/cache/AssetStore;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/b;)V

    goto :goto_0
.end method

.method final b()V
    .locals 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 7093
    iget-object v0, v0, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 8077
    iget-object v1, v1, Lcom/inmobi/ads/i;->j:Lcom/inmobi/ads/b$b;

    .line 8586
    iget-wide v2, v1, Lcom/inmobi/ads/b$b;->d:J

    .line 328
    invoke-static {v0, v2, v3}, Lcom/inmobi/ads/c;->a(Ljava/lang/String;J)I

    move-result v0

    .line 329
    if-lez v0, :cond_0

    .line 330
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 331
    const-string v2, "count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v0, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    const-string v2, "ads"

    const-string v3, "AdCacheAdExpired"

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final b(Lcom/inmobi/ads/f;)V
    .locals 6

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->d:Z

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 600
    const-string v1, "errorCode"

    .line 50063
    iget-object v2, p1, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    .line 50064
    iget-object v2, v2, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 50065
    iget-object v2, v2, Lcom/inmobi/commons/core/network/NetworkError;->a:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    .line 600
    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v1, "reason"

    .line 50066
    iget-object v2, p1, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    .line 50067
    iget-object v2, v2, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 50068
    iget-object v2, v2, Lcom/inmobi/commons/core/network/NetworkError;->b:Ljava/lang/String;

    .line 601
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v1, "latency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/h;->e:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v1, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-object v1, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    const-string v2, "ads"

    const-string v3, "ServerError"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 606
    iget-object v0, p0, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 50069
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 50070
    iget-object v1, p1, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 606
    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/h$a;->a(JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 608
    :cond_0
    return-void
.end method
