.class public Lcom/inmobi/ads/bf;
.super Ljava/lang/Object;
.source "PrefetchAdStore.java"

# interfaces
.implements Lcom/inmobi/ads/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/bf$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field a:Z

.field final b:Lcom/inmobi/ads/bf$a;

.field final c:Lcom/inmobi/ads/c;

.field d:Lcom/inmobi/ads/i;

.field e:Z

.field private g:J

.field private final h:Lcom/inmobi/ads/cache/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/inmobi/ads/bf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/bf;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/bf$a;)V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/bf;->a:Z

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/bf;->g:J

    .line 67
    new-instance v0, Lcom/inmobi/ads/bf$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/bf$1;-><init>(Lcom/inmobi/ads/bf;)V

    iput-object v0, p0, Lcom/inmobi/ads/bf;->h:Lcom/inmobi/ads/cache/f;

    .line 143
    iput-object p1, p0, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    .line 144
    invoke-static {}, Lcom/inmobi/ads/c;->a()Lcom/inmobi/ads/c;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/bf;->c:Lcom/inmobi/ads/c;

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/bf;)Lcom/inmobi/ads/bf$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/inmobi/ads/bf;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/ads/bf;)Lcom/inmobi/ads/i;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/ads/bf;)Lcom/inmobi/ads/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inmobi/ads/bf;->c:Lcom/inmobi/ads/c;

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

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 27062
    iget-object v1, p1, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 345
    const-string v2, "requestId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 346
    const-string v2, "ads"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 348
    if-eqz v12, :cond_2

    .line 28058
    iget-object v1, p1, Lcom/inmobi/ads/f;->c:Lcom/inmobi/ads/e;

    .line 28149
    iget v1, v1, Lcom/inmobi/ads/e;->d:I

    .line 351
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 350
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 353
    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v13, :cond_1

    .line 354
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 29058
    iget-object v2, p1, Lcom/inmobi/ads/f;->c:Lcom/inmobi/ads/e;

    .line 29153
    iget-wide v2, v2, Lcom/inmobi/ads/e;->a:J

    .line 30058
    iget-object v4, p1, Lcom/inmobi/ads/f;->c:Lcom/inmobi/ads/e;

    .line 30125
    iget-object v4, v4, Lcom/inmobi/ads/e;->e:Ljava/lang/String;

    .line 31058
    iget-object v5, p1, Lcom/inmobi/ads/f;->c:Lcom/inmobi/ads/e;

    .line 31137
    iget-object v5, v5, Lcom/inmobi/ads/e;->c:Ljava/lang/String;

    .line 357
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

    .line 32058
    iget-object v7, p1, Lcom/inmobi/ads/f;->c:Lcom/inmobi/ads/e;

    .line 32173
    iget-object v7, v7, Lcom/inmobi/ads/e;->i:Ljava/lang/String;

    .line 358
    iget-object v8, p0, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 33132
    iget-object v8, v8, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 354
    invoke-static/range {v1 .. v8}, Lcom/inmobi/ads/a$a;->a(Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)Lcom/inmobi/ads/a;

    move-result-object v1

    .line 361
    if-eqz v1, :cond_0

    .line 362
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_0
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    .line 365
    :cond_1
    if-lez v13, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    :goto_1
    return-object v9

    .line 367
    :catch_0
    move-exception v0

    .line 370
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 371
    const-string v2, "errorCode"

    const-string v3, "ParsingError"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v2, "reason"

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v0, "latency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/bf;->g:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v0, "isPreloaded"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v0, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    const-string v2, "ads"

    const-string v3, "ServerError"

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/bf$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, v9

    :cond_2
    move-object v9, v0

    .line 380
    goto :goto_1
.end method


# virtual methods
.method final a(Lcom/inmobi/ads/i;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 220
    .line 1258
    if-eqz p1, :cond_1

    .line 2109
    iget-object v0, p1, Lcom/inmobi/ads/i;->k:Ljava/util/Map;

    .line 1260
    if-nez v0, :cond_0

    .line 1261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1266
    :cond_0
    const-string v1, "preload-request"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1267
    const-string v1, "preload-request"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    iput-object v0, p1, Lcom/inmobi/ads/i;->k:Ljava/util/Map;

    .line 222
    :cond_1
    new-instance v0, Lcom/inmobi/ads/e;

    .line 3029
    iget-object v1, p1, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    .line 3053
    iget-wide v2, p1, Lcom/inmobi/ads/i;->d:J

    .line 3085
    iget-object v4, p1, Lcom/inmobi/ads/i;->l:Lcom/inmobi/commons/core/utilities/uid/d;

    .line 224
    invoke-static {}, Lcom/inmobi/ads/cache/d;->a()Lcom/inmobi/ads/cache/d;

    invoke-static {}, Lcom/inmobi/ads/cache/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/e;-><init>(Ljava/lang/String;JLcom/inmobi/commons/core/utilities/uid/d;Ljava/lang/String;)V

    .line 4061
    iget-object v1, p1, Lcom/inmobi/ads/i;->e:Ljava/lang/String;

    .line 4157
    iput-object v1, v0, Lcom/inmobi/ads/e;->f:Ljava/lang/String;

    .line 5069
    iget-object v1, p1, Lcom/inmobi/ads/i;->g:Ljava/util/Map;

    .line 5161
    iput-object v1, v0, Lcom/inmobi/ads/e;->g:Ljava/util/Map;

    .line 6093
    iget-object v1, p1, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 6121
    iput-object v1, v0, Lcom/inmobi/ads/e;->e:Ljava/lang/String;

    .line 7101
    iget-object v1, p1, Lcom/inmobi/ads/i;->i:Ljava/lang/String;

    .line 7129
    iput-object v1, v0, Lcom/inmobi/ads/e;->b:Ljava/lang/String;

    .line 8077
    iget-object v1, p1, Lcom/inmobi/ads/i;->j:Lcom/inmobi/ads/b$b;

    .line 8578
    iget v1, v1, Lcom/inmobi/ads/b$b;->b:I

    .line 9145
    iput v1, v0, Lcom/inmobi/ads/e;->d:I

    .line 10109
    iget-object v1, p1, Lcom/inmobi/ads/i;->k:Ljava/util/Map;

    .line 10165
    iput-object v1, v0, Lcom/inmobi/ads/e;->h:Ljava/util/Map;

    .line 11101
    iget-object v1, p1, Lcom/inmobi/ads/i;->i:Ljava/lang/String;

    .line 11129
    iput-object v1, v0, Lcom/inmobi/ads/e;->b:Ljava/lang/String;

    .line 12117
    iget-object v1, p1, Lcom/inmobi/ads/i;->f:Ljava/lang/String;

    .line 12141
    iput-object v1, v0, Lcom/inmobi/ads/e;->c:Ljava/lang/String;

    .line 13045
    iget v1, p1, Lcom/inmobi/ads/i;->c:I

    .line 233
    mul-int/lit16 v1, v1, 0x3e8

    .line 13174
    iput v1, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->p:I

    .line 14045
    iget v1, p1, Lcom/inmobi/ads/i;->c:I

    .line 234
    mul-int/lit16 v1, v1, 0x3e8

    .line 14178
    iput v1, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->q:I

    .line 15132
    iget-object v1, p1, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 15169
    iput-object v1, v0, Lcom/inmobi/ads/e;->j:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/ads/bf;->g:J

    .line 238
    new-instance v1, Lcom/inmobi/ads/d;

    invoke-direct {v1, v0, p0}, Lcom/inmobi/ads/d;-><init>(Lcom/inmobi/ads/e;Lcom/inmobi/ads/d$a;)V

    .line 239
    invoke-virtual {v1}, Lcom/inmobi/ads/d;->a()V

    .line 241
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 242
    const-string v2, "isPreloaded"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v2, "clientRequestId"

    .line 15173
    iget-object v3, v0, Lcom/inmobi/ads/e;->i:Ljava/lang/String;

    .line 243
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v2, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v2, p0, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    const-string v3, "ads"

    const-string v4, "ServerCallInitiated"

    invoke-interface {v2, v3, v4, v1}, Lcom/inmobi/ads/bf$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 16173
    iget-object v0, v0, Lcom/inmobi/ads/e;->i:Ljava/lang/String;

    .line 246
    return-object v0
.end method

.method public final a(Lcom/inmobi/ads/f;)V
    .locals 8

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/inmobi/ads/bf;->c(Lcom/inmobi/ads/f;)Ljava/util/List;

    move-result-object v1

    .line 281
    if-nez v1, :cond_1

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse ad response:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17062
    iget-object v1, p1, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-boolean v0, p0, Lcom/inmobi/ads/bf;->a:Z

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    iget-object v1, p0, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 18053
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 285
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/bf$a;->b(JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad response received but no ad available:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18062
    iget-object v1, p1, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 294
    const-string v1, "latency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/bf;->g:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v1, "isPreloaded"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v1, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v1, p0, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    const-string v2, "ads"

    const-string v3, "ServerNoFill"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/ads/bf$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 299
    iget-boolean v0, p0, Lcom/inmobi/ads/bf;->a:Z

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    iget-object v1, p0, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 19053
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 300
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/bf$a;->b(JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 306
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 307
    const-string v2, "numberOfAdsReturned"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v2, "latency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/inmobi/ads/bf;->g:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v2, "isPreloaded"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v2, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v2, p0, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    const-string v3, "ads"

    const-string v4, "ServerFill"

    invoke-interface {v2, v3, v4, v0}, Lcom/inmobi/ads/bf$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 314
    iget-object v0, p0, Lcom/inmobi/ads/bf;->c:Lcom/inmobi/ads/c;

    iget-object v2, p0, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 20053
    iget-wide v2, v2, Lcom/inmobi/ads/i;->d:J

    .line 314
    iget-object v4, p0, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 20077
    iget-object v4, v4, Lcom/inmobi/ads/i;->j:Lcom/inmobi/ads/b$b;

    .line 20574
    iget v4, v4, Lcom/inmobi/ads/b$b;->a:I

    .line 315
    iget-object v5, p0, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 21093
    iget-object v5, v5, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 315
    iget-object v6, p0, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 21132
    iget-object v6, v6, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 316
    iget-object v7, p0, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 22069
    iget-object v7, v7, Lcom/inmobi/ads/i;->g:Ljava/util/Map;

    .line 317
    invoke-static {v7}, Lcom/inmobi/ads/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 314
    invoke-virtual/range {v0 .. v7}, Lcom/inmobi/ads/c;->a(Ljava/util/List;JILjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/bf;->a(Ljava/util/List;)V

    .line 319
    iget-boolean v0, p0, Lcom/inmobi/ads/bf;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/ads/bf;->e:Z

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    iget-object v1, p0, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 23053
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 320
    invoke-interface {v0, v2, v3}, Lcom/inmobi/ads/bf$a;->a(J)V

    goto/16 :goto_0
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
    const/4 v1, 0x0

    .line 384
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 385
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    .line 386
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/ads/a;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inmobiJson"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    invoke-virtual {v0}, Lcom/inmobi/ads/a;->c()Ljava/util/Set;

    move-result-object v2

    .line 388
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 389
    iget-object v0, p0, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    iget-object v1, p0, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 34053
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 389
    invoke-interface {v0, v2, v3}, Lcom/inmobi/ads/bf$a;->a(J)V

    .line 411
    :cond_0
    return-void

    .line 392
    :cond_1
    new-instance v3, Lcom/inmobi/ads/cache/b;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 34457
    iget-object v5, v0, Lcom/inmobi/ads/a;->f:Ljava/lang/String;

    .line 392
    iget-boolean v0, p0, Lcom/inmobi/ads/bf;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/ads/bf;->h:Lcom/inmobi/ads/cache/f;

    :goto_0
    invoke-direct {v3, v4, v5, v2, v0}, Lcom/inmobi/ads/cache/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/ads/cache/f;)V

    .line 394
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->a()Lcom/inmobi/ads/cache/AssetStore;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/b;)V

    .line 399
    :cond_2
    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 400
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    .line 401
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/inmobi/ads/a;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "inmobiJson"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 402
    invoke-virtual {v0}, Lcom/inmobi/ads/a;->c()Ljava/util/Set;

    move-result-object v3

    .line 403
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 404
    new-instance v4, Lcom/inmobi/ads/cache/b;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 35457
    iget-object v0, v0, Lcom/inmobi/ads/a;->f:Ljava/lang/String;

    .line 404
    invoke-direct {v4, v5, v0, v3, v1}, Lcom/inmobi/ads/cache/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/ads/cache/f;)V

    .line 406
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->a()Lcom/inmobi/ads/cache/AssetStore;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/b;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 392
    goto :goto_0
.end method

.method final a(I)Z
    .locals 4

    .prologue
    .line 274
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inmobi/ads/bf;->g:J

    sub-long/2addr v0, v2

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/inmobi/ads/f;)V
    .locals 6

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/inmobi/ads/bf;->a:Z

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 329
    const-string v1, "errorCode"

    .line 23066
    iget-object v2, p1, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    .line 23078
    iget-object v2, v2, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 24067
    iget-object v2, v2, Lcom/inmobi/commons/core/network/NetworkError;->a:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    .line 329
    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v1, "reason"

    .line 25066
    iget-object v2, p1, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    .line 25078
    iget-object v2, v2, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 26075
    iget-object v2, v2, Lcom/inmobi/commons/core/network/NetworkError;->b:Ljava/lang/String;

    .line 330
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v1, "latency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/bf;->g:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v1, "isPreloaded"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v1, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    const-string v2, "ads"

    const-string v3, "ServerError"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/ads/bf$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 335
    iget-object v0, p0, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    iget-object v1, p0, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 27053
    iget-wide v2, v1, Lcom/inmobi/ads/i;->d:J

    .line 27054
    iget-object v1, p1, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 335
    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/bf$a;->b(JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 337
    :cond_0
    return-void
.end method
