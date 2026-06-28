.class public final Lcom/inmobi/ads/b;
.super Lcom/inmobi/commons/core/configs/a;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/b$a;,
        Lcom/inmobi/ads/b$g;,
        Lcom/inmobi/ads/b$e;,
        Lcom/inmobi/ads/b$h;,
        Lcom/inmobi/ads/b$d;,
        Lcom/inmobi/ads/b$f;,
        Lcom/inmobi/ads/b$c;,
        Lcom/inmobi/ads/b$b;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field private static final r:Ljava/lang/String;

.field private static final s:Ljava/lang/Object;


# instance fields
.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field i:I

.field public j:Lcom/inmobi/ads/b$c;

.field public k:Lcom/inmobi/ads/b$f;

.field public l:Lcom/inmobi/ads/b$d;

.field public m:Lcom/inmobi/ads/b$h;

.field n:Lorg/json/JSONObject;

.field public o:Lcom/inmobi/ads/b$g;

.field public p:Lcom/inmobi/ads/b$a;

.field private t:Lcom/inmobi/ads/b$b;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lorg/json/JSONObject;

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/b$e;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/inmobi/ads/b$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 25
    sput-boolean v1, Lcom/inmobi/ads/b;->a:Z

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/ads/b;->b:Z

    .line 27
    sput-boolean v1, Lcom/inmobi/ads/b;->c:Z

    .line 28
    sput-boolean v1, Lcom/inmobi/ads/b;->d:Z

    .line 30
    const-class v0, Lcom/inmobi/ads/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/b;->r:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/b;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0x3c

    .line 102
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/a;-><init>()V

    .line 84
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/ads/b;->e:Ljava/lang/String;

    .line 85
    const-string v0, "https://sdktm.w.inmobi.com/sdkpubreq"

    iput-object v0, p0, Lcom/inmobi/ads/b;->f:Ljava/lang/String;

    .line 86
    const/16 v0, 0x14

    iput v0, p0, Lcom/inmobi/ads/b;->g:I

    .line 87
    iput v1, p0, Lcom/inmobi/ads/b;->h:I

    .line 88
    iput v1, p0, Lcom/inmobi/ads/b;->i:I

    .line 103
    new-instance v0, Lcom/inmobi/ads/b$c;

    invoke-direct {v0}, Lcom/inmobi/ads/b$c;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    .line 104
    new-instance v0, Lcom/inmobi/ads/b$f;

    invoke-direct {v0}, Lcom/inmobi/ads/b$f;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 105
    new-instance v0, Lcom/inmobi/ads/b$d;

    invoke-direct {v0}, Lcom/inmobi/ads/b$d;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 106
    new-instance v0, Lcom/inmobi/ads/b$h;

    invoke-direct {v0}, Lcom/inmobi/ads/b$h;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 107
    new-instance v0, Lcom/inmobi/ads/b$g;

    invoke-direct {v0}, Lcom/inmobi/ads/b$g;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 108
    new-instance v0, Lcom/inmobi/ads/b$a;

    invoke-direct {v0}, Lcom/inmobi/ads/b$a;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    .line 109
    new-instance v0, Lcom/inmobi/ads/b$e;

    invoke-direct {v0}, Lcom/inmobi/ads/b$e;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->x:Lcom/inmobi/ads/b$e;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->w:Ljava/util/Map;

    .line 1039
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1041
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1042
    const-string v2, "maxCacheSize"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1043
    const-string v2, "fetchLimit"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1044
    const-string v2, "minThreshold"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1045
    const-string v2, "timeToLive"

    const/16 v3, 0xce4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1046
    const-string v2, "base"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1048
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1049
    const-string v2, "maxCacheSize"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1050
    const-string v2, "fetchLimit"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1051
    const-string v2, "minThreshold"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1052
    const-string v2, "timeToLive"

    const/16 v3, 0xce4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1053
    const-string v2, "int"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1055
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1056
    const-string v2, "maxCacheSize"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1057
    const-string v2, "fetchLimit"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1058
    const-string v2, "minThreshold"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1059
    const-string v2, "timeToLive"

    const/16 v3, 0xce4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1060
    const-string v2, "native"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    invoke-direct {p0, v0}, Lcom/inmobi/ads/b;->b(Lorg/json/JSONObject;)V

    .line 1066
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1068
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1069
    const-string v1, "samplingFactor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1070
    const-string v1, "metricEnabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 114
    iput-object v0, p0, Lcom/inmobi/ads/b;->n:Lorg/json/JSONObject;

    .line 1075
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1077
    const-string v1, "base"

    sget-boolean v2, Lcom/inmobi/ads/b;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1078
    const-string v1, "banner"

    sget-boolean v2, Lcom/inmobi/ads/b;->b:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1079
    const-string v1, "int"

    sget-boolean v2, Lcom/inmobi/ads/b;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1080
    const-string v1, "native"

    sget-boolean v2, Lcom/inmobi/ads/b;->d:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 115
    iput-object v0, p0, Lcom/inmobi/ads/b;->v:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 240
    const-string v0, "base"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 241
    new-instance v1, Lcom/inmobi/ads/b$b;

    invoke-direct {v1}, Lcom/inmobi/ads/b$b;-><init>()V

    iput-object v1, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    .line 242
    iget-object v1, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    const-string v2, "maxCacheSize"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 45563
    iput v2, v1, Lcom/inmobi/ads/b$b;->a:I

    .line 243
    iget-object v1, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    const-string v2, "fetchLimit"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 46563
    iput v2, v1, Lcom/inmobi/ads/b$b;->b:I

    .line 244
    iget-object v1, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    const-string v2, "minThreshold"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 47563
    iput v2, v1, Lcom/inmobi/ads/b$b;->c:I

    .line 245
    iget-object v1, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    const-string v2, "timeToLive"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 48563
    iput-wide v2, v1, Lcom/inmobi/ads/b$b;->d:J

    .line 247
    const-string v0, "base"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->u:Ljava/util/Map;

    .line 250
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 251
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 254
    new-instance v5, Lcom/inmobi/ads/b$b;

    invoke-direct {v5}, Lcom/inmobi/ads/b$b;-><init>()V

    .line 256
    const-string v1, "maxCacheSize"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "maxCacheSize"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 50563
    :goto_1
    iput v1, v5, Lcom/inmobi/ads/b$b;->a:I

    .line 257
    const-string v1, "fetchLimit"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "fetchLimit"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 50565
    :goto_2
    iput v1, v5, Lcom/inmobi/ads/b$b;->b:I

    .line 258
    const-string v1, "minThreshold"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "minThreshold"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 50567
    :goto_3
    iput v1, v5, Lcom/inmobi/ads/b$b;->c:I

    .line 259
    const-string v1, "timeToLive"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "timeToLive"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 50569
    :goto_4
    iput-wide v2, v5, Lcom/inmobi/ads/b$b;->d:J

    .line 260
    iget-object v1, p0, Lcom/inmobi/ads/b;->u:Ljava/util/Map;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    .line 49563
    iget v1, v1, Lcom/inmobi/ads/b$b;->a:I

    goto :goto_1

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    .line 50564
    iget v1, v1, Lcom/inmobi/ads/b$b;->b:I

    goto :goto_2

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    .line 50566
    iget v1, v1, Lcom/inmobi/ads/b$b;->c:I

    goto :goto_3

    .line 259
    :cond_3
    iget-object v1, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    .line 50568
    iget-wide v2, v1, Lcom/inmobi/ads/b$b;->d:J

    goto :goto_4

    .line 262
    :cond_4
    return-void
.end method

.method private e()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 353
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 354
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 356
    const-string v1, "enabled"

    iget-object v3, p0, Lcom/inmobi/ads/b;->x:Lcom/inmobi/ads/b$e;

    .line 50636
    iget-boolean v3, v3, Lcom/inmobi/ads/b$e;->a:Z

    .line 356
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 357
    const-string v1, "placementExpiry"

    iget-object v3, p0, Lcom/inmobi/ads/b;->x:Lcom/inmobi/ads/b$e;

    .line 50637
    iget-wide v4, v3, Lcom/inmobi/ads/b$e;->b:J

    .line 357
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 358
    const-string v1, "maxPreloadedAds"

    iget-object v3, p0, Lcom/inmobi/ads/b;->x:Lcom/inmobi/ads/b$e;

    .line 50638
    iget v3, v3, Lcom/inmobi/ads/b$e;->c:I

    .line 358
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    const-string v1, "base"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    iget-object v0, p0, Lcom/inmobi/ads/b;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 362
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 363
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/b$e;

    .line 365
    const-string v5, "enabled"

    .line 50639
    iget-boolean v6, v1, Lcom/inmobi/ads/b$e;->a:Z

    .line 365
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 366
    const-string v5, "placementExpiry"

    .line 50640
    iget-wide v6, v1, Lcom/inmobi/ads/b$e;->b:J

    .line 366
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 367
    const-string v5, "maxPreloadedAds"

    .line 50641
    iget v1, v1, Lcom/inmobi/ads/b$e;->c:I

    .line 367
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 368
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 370
    :cond_0
    return-object v2
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/inmobi/ads/b$b;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/inmobi/ads/b;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/b$b;

    .line 512
    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    .line 515
    :cond_0
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "ads"

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 128
    invoke-super {p0, p1}, Lcom/inmobi/commons/core/configs/a;->a(Lorg/json/JSONObject;)V

    .line 130
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/b;->e:Ljava/lang/String;

    .line 133
    :cond_0
    const-string v0, "requestUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const-string v0, "requestUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/b;->f:Ljava/lang/String;

    .line 137
    :cond_1
    const-string v0, "minimumRefreshInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/b;->g:I

    .line 138
    const-string v0, "defaultRefreshInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/b;->h:I

    .line 139
    const-string v0, "fetchTimeout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/b;->i:I

    .line 141
    const-string v0, "cache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 142
    invoke-direct {p0, v0}, Lcom/inmobi/ads/b;->b(Lorg/json/JSONObject;)V

    .line 144
    const-string v0, "preload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1219
    const-string v0, "base"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1220
    new-instance v1, Lcom/inmobi/ads/b$e;

    invoke-direct {v1}, Lcom/inmobi/ads/b$e;-><init>()V

    iput-object v1, p0, Lcom/inmobi/ads/b;->x:Lcom/inmobi/ads/b$e;

    .line 1221
    iget-object v1, p0, Lcom/inmobi/ads/b;->x:Lcom/inmobi/ads/b$e;

    const-string v2, "enabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1761
    iput-boolean v2, v1, Lcom/inmobi/ads/b$e;->a:Z

    .line 1222
    iget-object v1, p0, Lcom/inmobi/ads/b;->x:Lcom/inmobi/ads/b$e;

    const-string v2, "placementExpiry"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2761
    iput-wide v2, v1, Lcom/inmobi/ads/b$e;->b:J

    .line 1223
    iget-object v1, p0, Lcom/inmobi/ads/b;->x:Lcom/inmobi/ads/b$e;

    const-string v2, "maxPreloadedAds"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3761
    iput v0, v1, Lcom/inmobi/ads/b$e;->c:I

    .line 1225
    const-string v0, "base"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1226
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 1227
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1228
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1229
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1230
    new-instance v8, Lcom/inmobi/ads/b$e;

    invoke-direct {v8}, Lcom/inmobi/ads/b$e;-><init>()V

    .line 1232
    const-string v1, "enabled"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "enabled"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 5761
    :goto_1
    iput-boolean v1, v8, Lcom/inmobi/ads/b$e;->a:Z

    .line 1233
    const-string v1, "placementExpiry"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "placementExpiry"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 7761
    :goto_2
    iput-wide v2, v8, Lcom/inmobi/ads/b$e;->b:J

    .line 1234
    const-string v1, "maxPreloadedAds"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "maxPreloadedAds"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 9761
    :goto_3
    iput v1, v8, Lcom/inmobi/ads/b$e;->c:I

    .line 1235
    iget-object v1, p0, Lcom/inmobi/ads/b;->w:Ljava/util/Map;

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1232
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/b;->x:Lcom/inmobi/ads/b$e;

    .line 4761
    iget-boolean v1, v1, Lcom/inmobi/ads/b$e;->a:Z

    goto :goto_1

    .line 1233
    :cond_3
    iget-object v1, p0, Lcom/inmobi/ads/b;->x:Lcom/inmobi/ads/b$e;

    .line 6761
    iget-wide v2, v1, Lcom/inmobi/ads/b$e;->b:J

    goto :goto_2

    .line 1234
    :cond_4
    iget-object v1, p0, Lcom/inmobi/ads/b;->x:Lcom/inmobi/ads/b$e;

    .line 8761
    iget v1, v1, Lcom/inmobi/ads/b$e;->c:I

    goto :goto_3

    .line 147
    :cond_5
    const-string v0, "imai"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    const-string v2, "maxRetries"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 10590
    iput v2, v1, Lcom/inmobi/ads/b$c;->a:I

    .line 149
    iget-object v1, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    const-string v2, "pingInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 11590
    iput v2, v1, Lcom/inmobi/ads/b$c;->b:I

    .line 150
    iget-object v1, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    const-string v2, "pingTimeout"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 12590
    iput v2, v1, Lcom/inmobi/ads/b$c;->c:I

    .line 151
    iget-object v1, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    const-string v2, "maxDbEvents"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 13590
    iput v2, v1, Lcom/inmobi/ads/b$c;->d:I

    .line 152
    iget-object v1, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    const-string v2, "maxEventBatch"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 14590
    iput v2, v1, Lcom/inmobi/ads/b$c;->e:I

    .line 153
    iget-object v1, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    const-string v2, "pingCacheExpiry"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 15590
    iput-wide v2, v1, Lcom/inmobi/ads/b$c;->f:J

    .line 155
    const-string v0, "rendering"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    const-string v2, "renderTimeout"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 15623
    iput v2, v1, Lcom/inmobi/ads/b$f;->a:I

    .line 157
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    const-string v2, "picHeight"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 16623
    iput v2, v1, Lcom/inmobi/ads/b$f;->c:I

    .line 158
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    const-string v2, "picWidth"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 17623
    iput v2, v1, Lcom/inmobi/ads/b$f;->b:I

    .line 159
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    const-string v2, "picQuality"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 18623
    iput v2, v1, Lcom/inmobi/ads/b$f;->d:I

    .line 160
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    const-string v2, "webviewBackground"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19623
    iput-object v2, v1, Lcom/inmobi/ads/b$f;->e:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    const-string v2, "maxVibrationDuration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 20623
    iput v2, v1, Lcom/inmobi/ads/b$f;->g:I

    .line 162
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    const-string v2, "maxVibrationPatternLength"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 21623
    iput v2, v1, Lcom/inmobi/ads/b$f;->h:I

    .line 163
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    const-string v2, "savecontent"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "maxSaveSize"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 22623
    iput-wide v2, v1, Lcom/inmobi/ads/b$f;->i:J

    .line 164
    sget-object v1, Lcom/inmobi/ads/b;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 23623
    iget-object v2, v2, Lcom/inmobi/ads/b$f;->j:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 166
    const-string v2, "savecontent"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "allowedContentType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v4

    .line 167
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 168
    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 24623
    iget-object v3, v3, Lcom/inmobi/ads/b$f;->j:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 170
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    const-string v0, "mraid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    const-string v2, "expiry"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 24674
    iput-wide v2, v1, Lcom/inmobi/ads/b$d;->a:J

    .line 174
    iget-object v1, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    const-string v2, "maxRetries"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 25674
    iput v2, v1, Lcom/inmobi/ads/b$d;->b:I

    .line 175
    iget-object v1, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    const-string v2, "retryInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 26674
    iput v2, v1, Lcom/inmobi/ads/b$d;->c:I

    .line 176
    iget-object v1, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27674
    iput-object v0, v1, Lcom/inmobi/ads/b$d;->d:Ljava/lang/String;

    .line 177
    const-string v0, "telemetry"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    const-string v0, "telemetry"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/b;->n:Lorg/json/JSONObject;

    .line 181
    :cond_7
    const-string v0, "trcFlagDict"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 182
    const-string v0, "trcFlagDict"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/b;->v:Lorg/json/JSONObject;

    .line 185
    :cond_8
    const-string v0, "viewability"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    const-string v2, "impressionMinPercentageViewed"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 27697
    iput v2, v1, Lcom/inmobi/ads/b$h;->a:I

    .line 187
    iget-object v1, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    const-string v2, "impressionMinTimeViewed"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 28697
    iput v2, v1, Lcom/inmobi/ads/b$h;->b:I

    .line 188
    iget-object v1, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    const-string v2, "displayMinPercentageAnimate"

    const/16 v3, 0x43

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 29697
    iput v2, v1, Lcom/inmobi/ads/b$h;->e:I

    .line 189
    iget-object v1, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    const-string v2, "visibilityThrottleMillis"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 30697
    iput v2, v1, Lcom/inmobi/ads/b$h;->c:I

    .line 190
    iget-object v1, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    const-string v2, "impressionPollIntervalMillis"

    const/16 v3, 0xfa

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 31697
    iput v2, v1, Lcom/inmobi/ads/b$h;->d:I

    .line 191
    iget-object v1, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    const-string v2, "moatEnabled"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 32697
    iput-boolean v2, v1, Lcom/inmobi/ads/b$h;->i:Z

    .line 192
    iget-object v1, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    const-string v2, "iasEnabled"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 33697
    iput-boolean v2, v1, Lcom/inmobi/ads/b$h;->j:Z

    .line 193
    const-string v1, "video"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    const-string v2, "impressionMinPercentageViewed"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 34697
    iput v2, v1, Lcom/inmobi/ads/b$h;->f:I

    .line 195
    iget-object v1, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    const-string v2, "impressionMinTimeViewed"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 35697
    iput v2, v1, Lcom/inmobi/ads/b$h;->g:I

    .line 196
    iget-object v1, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    const-string v2, "videoMinPercentagePlay"

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 36697
    iput v0, v1, Lcom/inmobi/ads/b$h;->h:I

    .line 198
    const-string v0, "vastVideo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    const-string v2, "maxWrapperLimit"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 36787
    iput v2, v1, Lcom/inmobi/ads/b$g;->a:I

    .line 200
    iget-object v1, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    const-string v2, "optimalVastVideoSize"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 37787
    iput-wide v2, v1, Lcom/inmobi/ads/b$g;->b:J

    .line 201
    iget-object v1, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    const-string v2, "vastMaxAssetSize"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 38787
    iput-wide v2, v1, Lcom/inmobi/ads/b$g;->c:J

    .line 202
    sget-object v1, Lcom/inmobi/ads/b;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_1
    iget-object v2, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 39787
    iget-object v2, v2, Lcom/inmobi/ads/b$g;->d:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 204
    const-string v2, "allowedContentType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v4

    .line 205
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 206
    iget-object v3, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 40787
    iget-object v3, v3, Lcom/inmobi/ads/b$g;->d:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 170
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 208
    :cond_9
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 210
    const-string v0, "assetCache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    const-string v2, "retryInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 40811
    iput v2, v1, Lcom/inmobi/ads/b$a;->b:I

    .line 212
    iget-object v1, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    const-string v2, "maxRetries"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 41811
    iput v2, v1, Lcom/inmobi/ads/b$a;->a:I

    .line 213
    iget-object v1, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    const-string v2, "maxCachedAssets"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 42811
    iput v2, v1, Lcom/inmobi/ads/b$a;->c:I

    .line 214
    iget-object v1, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    const-string v2, "maxCacheSize"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 43811
    iput-wide v2, v1, Lcom/inmobi/ads/b$a;->d:J

    .line 215
    iget-object v1, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    const-string v2, "timeToLive"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 44811
    iput-wide v2, v1, Lcom/inmobi/ads/b$a;->e:J

    .line 216
    return-void

    .line 208
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-super {p0}, Lcom/inmobi/commons/core/configs/a;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 268
    const-string v0, "url"

    iget-object v1, p0, Lcom/inmobi/ads/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v0, "requestUrl"

    iget-object v1, p0, Lcom/inmobi/ads/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v0, "minimumRefreshInterval"

    iget v1, p0, Lcom/inmobi/ads/b;->g:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 272
    const-string v0, "defaultRefreshInterval"

    iget v1, p0, Lcom/inmobi/ads/b;->h:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 273
    const-string v0, "fetchTimeout"

    iget v1, p0, Lcom/inmobi/ads/b;->i:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50570
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 50571
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50573
    const-string v1, "maxCacheSize"

    iget-object v4, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    .line 50590
    iget v4, v4, Lcom/inmobi/ads/b$b;->a:I

    .line 50573
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50574
    const-string v1, "fetchLimit"

    iget-object v4, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    .line 50591
    iget v4, v4, Lcom/inmobi/ads/b$b;->b:I

    .line 50574
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50575
    const-string v1, "minThreshold"

    iget-object v4, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    .line 50592
    iget v4, v4, Lcom/inmobi/ads/b$b;->c:I

    .line 50575
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50576
    const-string v1, "timeToLive"

    iget-object v4, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    .line 50593
    iget-wide v4, v4, Lcom/inmobi/ads/b$b;->d:J

    .line 50576
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50577
    const-string v1, "base"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50579
    iget-object v0, p0, Lcom/inmobi/ads/b;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 50580
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 50581
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/b$b;

    .line 50583
    const-string v6, "maxCacheSize"

    .line 50594
    iget v7, v0, Lcom/inmobi/ads/b$b;->a:I

    .line 50583
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50584
    const-string v6, "fetchLimit"

    .line 50595
    iget v7, v0, Lcom/inmobi/ads/b$b;->b:I

    .line 50584
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50585
    const-string v6, "minThreshold"

    .line 50596
    iget v7, v0, Lcom/inmobi/ads/b$b;->c:I

    .line 50585
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50586
    const-string v6, "timeToLive"

    .line 50597
    iget-wide v8, v0, Lcom/inmobi/ads/b$b;->d:J

    .line 50586
    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50587
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 276
    :cond_0
    const-string v0, "cache"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 279
    const-string v1, "maxRetries"

    iget-object v3, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    .line 50598
    iget v3, v3, Lcom/inmobi/ads/b$c;->a:I

    .line 279
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 280
    const-string v1, "pingInterval"

    iget-object v3, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    .line 50599
    iget v3, v3, Lcom/inmobi/ads/b$c;->b:I

    .line 280
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 281
    const-string v1, "pingTimeout"

    iget-object v3, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    .line 50600
    iget v3, v3, Lcom/inmobi/ads/b$c;->c:I

    .line 281
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 282
    const-string v1, "maxDbEvents"

    iget-object v3, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    .line 50601
    iget v3, v3, Lcom/inmobi/ads/b$c;->d:I

    .line 282
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 283
    const-string v1, "maxEventBatch"

    iget-object v3, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    .line 50602
    iget v3, v3, Lcom/inmobi/ads/b$c;->e:I

    .line 283
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 284
    const-string v1, "pingCacheExpiry"

    iget-object v3, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    .line 50603
    iget-wide v4, v3, Lcom/inmobi/ads/b$c;->f:J

    .line 284
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 285
    const-string v1, "imai"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 288
    const-string v1, "renderTimeout"

    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50604
    iget v3, v3, Lcom/inmobi/ads/b$f;->a:I

    .line 288
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 289
    const-string v1, "picWidth"

    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50605
    iget v3, v3, Lcom/inmobi/ads/b$f;->b:I

    .line 289
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 290
    const-string v1, "picHeight"

    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50606
    iget v3, v3, Lcom/inmobi/ads/b$f;->c:I

    .line 290
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 291
    const-string v1, "picQuality"

    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50607
    iget v3, v3, Lcom/inmobi/ads/b$f;->d:I

    .line 291
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 292
    const-string v1, "webviewBackground"

    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50608
    iget-object v3, v3, Lcom/inmobi/ads/b$f;->e:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v1, "maxVibrationDuration"

    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50609
    iget v3, v3, Lcom/inmobi/ads/b$f;->g:I

    .line 293
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 294
    const-string v1, "maxVibrationPatternLength"

    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50610
    iget v3, v3, Lcom/inmobi/ads/b$f;->h:I

    .line 294
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 295
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 296
    const-string v3, "maxSaveSize"

    iget-object v4, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50611
    iget-wide v4, v4, Lcom/inmobi/ads/b$f;->i:J

    .line 296
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 297
    const-string v3, "allowedContentType"

    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50612
    iget-object v5, v5, Lcom/inmobi/ads/b$f;->j:Ljava/util/ArrayList;

    .line 297
    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v3, "savecontent"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v1, "rendering"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 302
    const-string v1, "expiry"

    iget-object v3, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 50613
    iget-wide v4, v3, Lcom/inmobi/ads/b$d;->a:J

    .line 302
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 303
    const-string v1, "maxRetries"

    iget-object v3, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 50614
    iget v3, v3, Lcom/inmobi/ads/b$d;->b:I

    .line 303
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 304
    const-string v1, "retryInterval"

    iget-object v3, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 50615
    iget v3, v3, Lcom/inmobi/ads/b$d;->c:I

    .line 304
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 305
    const-string v1, "url"

    iget-object v3, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 50616
    iget-object v3, v3, Lcom/inmobi/ads/b$d;->d:Ljava/lang/String;

    .line 305
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v1, "mraid"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 309
    const-string v1, "impressionMinPercentageViewed"

    iget-object v3, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50617
    iget v3, v3, Lcom/inmobi/ads/b$h;->a:I

    .line 309
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 310
    const-string v1, "impressionMinTimeViewed"

    iget-object v3, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50618
    iget v3, v3, Lcom/inmobi/ads/b$h;->b:I

    .line 310
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    const-string v1, "displayMinPercentageAnimate"

    iget-object v3, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50619
    iget v3, v3, Lcom/inmobi/ads/b$h;->e:I

    .line 311
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    const-string v1, "visibilityThrottleMillis"

    iget-object v3, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50620
    iget v3, v3, Lcom/inmobi/ads/b$h;->c:I

    .line 312
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 313
    const-string v1, "impressionPollIntervalMillis"

    iget-object v3, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50621
    iget v3, v3, Lcom/inmobi/ads/b$h;->d:I

    .line 313
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    const-string v1, "moatEnabled"

    iget-object v3, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50622
    iget-boolean v3, v3, Lcom/inmobi/ads/b$h;->i:Z

    .line 314
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 315
    const-string v1, "iasEnabled"

    iget-object v3, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50623
    iget-boolean v3, v3, Lcom/inmobi/ads/b$h;->j:Z

    .line 315
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 316
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 317
    const-string v3, "impressionMinPercentageViewed"

    iget-object v4, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50624
    iget v4, v4, Lcom/inmobi/ads/b$h;->f:I

    .line 317
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 318
    const-string v3, "impressionMinTimeViewed"

    iget-object v4, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50625
    iget v4, v4, Lcom/inmobi/ads/b$h;->g:I

    .line 318
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    const-string v3, "videoMinPercentagePlay"

    iget-object v4, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50626
    iget v4, v4, Lcom/inmobi/ads/b$h;->h:I

    .line 319
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 320
    const-string v3, "video"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v1, "viewability"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    invoke-direct {p0}, Lcom/inmobi/ads/b;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 324
    const-string v1, "preload"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 327
    const-string v1, "maxWrapperLimit"

    iget-object v3, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 50627
    iget v3, v3, Lcom/inmobi/ads/b$g;->a:I

    .line 327
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    const-string v1, "optimalVastVideoSize"

    iget-object v3, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 50628
    iget-wide v4, v3, Lcom/inmobi/ads/b$g;->b:J

    .line 328
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 329
    const-string v1, "vastMaxAssetSize"

    iget-object v3, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 50629
    iget-wide v4, v3, Lcom/inmobi/ads/b$g;->c:J

    .line 329
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 330
    const-string v1, "allowedContentType"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 50630
    iget-object v4, v4, Lcom/inmobi/ads/b$g;->d:Ljava/util/ArrayList;

    .line 330
    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v1, "vastVideo"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 334
    const-string v1, "retryInterval"

    iget-object v3, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    .line 50631
    iget v3, v3, Lcom/inmobi/ads/b$a;->b:I

    .line 334
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 335
    const-string v1, "maxRetries"

    iget-object v3, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    .line 50632
    iget v3, v3, Lcom/inmobi/ads/b$a;->a:I

    .line 335
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 336
    const-string v1, "maxCachedAssets"

    iget-object v3, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    .line 50633
    iget v3, v3, Lcom/inmobi/ads/b$a;->c:I

    .line 336
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 337
    const-string v1, "maxCacheSize"

    iget-object v3, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    .line 50634
    iget-wide v4, v3, Lcom/inmobi/ads/b$a;->d:J

    .line 337
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 338
    const-string v1, "timeToLive"

    iget-object v3, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    .line 50635
    iget-wide v4, v3, Lcom/inmobi/ads/b$a;->e:J

    .line 338
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 339
    const-string v1, "assetCache"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    iget-object v0, p0, Lcom/inmobi/ads/b;->n:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 342
    const-string v0, "telemetry"

    iget-object v1, p0, Lcom/inmobi/ads/b;->n:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/b;->v:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 346
    const-string v0, "trcFlagDict"

    iget-object v1, p0, Lcom/inmobi/ads/b;->v:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    :cond_2
    return-object v2
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/b;->v:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/b;->v:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 543
    :goto_0
    return v0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/b;->v:Lorg/json/JSONObject;

    const-string v1, "base"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 543
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcom/inmobi/ads/b$e;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/inmobi/ads/b;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/b$e;

    .line 549
    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/inmobi/ads/b;->x:Lcom/inmobi/ads/b$e;

    .line 552
    :cond_0
    return-object v0
.end method

.method public final c()Z
    .locals 10

    .prologue
    const-wide/32 v8, 0x1e00000

    const/16 v7, 0x32

    const/16 v6, 0x64

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 398
    iget-object v0, p0, Lcom/inmobi/ads/b;->e:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/b;->e:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/b;->f:Ljava/lang/String;

    const-string v2, "http://"

    .line 399
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/b;->f:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/inmobi/ads/b;->g:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/inmobi/ads/b;->h:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/inmobi/ads/b;->i:I

    if-gtz v0, :cond_3

    :cond_2
    move v0, v1

    .line 481
    :goto_0
    return v0

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/ads/b;->t:Lcom/inmobi/ads/b$b;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$b;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v1

    .line 405
    goto :goto_0

    .line 408
    :cond_5
    iget-object v0, p0, Lcom/inmobi/ads/b;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 409
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/b$b;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$b;->a()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 410
    goto :goto_0

    .line 414
    :cond_7
    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    .line 50642
    iget v0, v0, Lcom/inmobi/ads/b$c;->d:I

    .line 414
    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    .line 50643
    iget v0, v0, Lcom/inmobi/ads/b$c;->e:I

    .line 414
    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    .line 50644
    iget v0, v0, Lcom/inmobi/ads/b$c;->a:I

    .line 414
    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    .line 50645
    iget v0, v0, Lcom/inmobi/ads/b$c;->b:I

    .line 415
    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    .line 50646
    iget v0, v0, Lcom/inmobi/ads/b$c;->c:I

    .line 415
    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$c;

    .line 50647
    iget-wide v2, v0, Lcom/inmobi/ads/b$c;->f:J

    .line 415
    cmp-long v0, v2, v4

    if-gtz v0, :cond_9

    :cond_8
    move v0, v1

    .line 416
    goto :goto_0

    .line 419
    :cond_9
    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 50648
    iget-wide v2, v0, Lcom/inmobi/ads/b$d;->a:J

    .line 419
    cmp-long v0, v2, v4

    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 50649
    iget v0, v0, Lcom/inmobi/ads/b$d;->c:I

    .line 419
    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 50650
    iget v0, v0, Lcom/inmobi/ads/b$d;->b:I

    .line 419
    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 50651
    iget-object v0, v0, Lcom/inmobi/ads/b$d;->d:Ljava/lang/String;

    .line 420
    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 50652
    iget-object v0, v0, Lcom/inmobi/ads/b$d;->d:Ljava/lang/String;

    .line 420
    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    move v0, v1

    .line 421
    goto/16 :goto_0

    .line 424
    :cond_b
    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50653
    iget v0, v0, Lcom/inmobi/ads/b$f;->a:I

    .line 424
    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50654
    iget v0, v0, Lcom/inmobi/ads/b$f;->c:I

    .line 424
    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50655
    iget v0, v0, Lcom/inmobi/ads/b$f;->b:I

    .line 424
    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50656
    iget v0, v0, Lcom/inmobi/ads/b$f;->d:I

    .line 424
    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50657
    iget v0, v0, Lcom/inmobi/ads/b$f;->g:I

    .line 425
    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50658
    iget v0, v0, Lcom/inmobi/ads/b$f;->h:I

    .line 425
    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50659
    iget-wide v2, v0, Lcom/inmobi/ads/b$f;->i:J

    .line 425
    cmp-long v0, v2, v4

    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50660
    iget-object v0, v0, Lcom/inmobi/ads/b$f;->e:Ljava/lang/String;

    .line 426
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50661
    iget-object v0, v0, Lcom/inmobi/ads/b$f;->e:Ljava/lang/String;

    .line 426
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    move v0, v1

    .line 427
    goto/16 :goto_0

    .line 431
    :cond_d
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    iget-object v2, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50662
    iget-object v2, v2, Lcom/inmobi/ads/b$f;->e:Ljava/lang/String;

    .line 431
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 50663
    iput v2, v0, Lcom/inmobi/ads/b$f;->f:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 50664
    iget v0, v0, Lcom/inmobi/ads/b$d;->b:I

    .line 437
    if-ltz v0, :cond_e

    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 50665
    iget v0, v0, Lcom/inmobi/ads/b$d;->c:I

    .line 437
    if-ltz v0, :cond_e

    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 50666
    iget-object v0, v0, Lcom/inmobi/ads/b$d;->d:Ljava/lang/String;

    .line 437
    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 50667
    iget-object v0, v0, Lcom/inmobi/ads/b$d;->d:Ljava/lang/String;

    .line 437
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    move v0, v1

    .line 438
    goto/16 :goto_0

    .line 434
    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    .line 441
    :cond_f
    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50668
    iget v0, v0, Lcom/inmobi/ads/b$h;->a:I

    .line 441
    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50669
    iget v0, v0, Lcom/inmobi/ads/b$h;->a:I

    .line 442
    if-gt v0, v6, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50670
    iget v0, v0, Lcom/inmobi/ads/b$h;->b:I

    .line 443
    if-ltz v0, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50671
    iget v0, v0, Lcom/inmobi/ads/b$h;->e:I

    .line 444
    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50672
    iget v0, v0, Lcom/inmobi/ads/b$h;->e:I

    .line 445
    if-gt v0, v6, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50673
    iget v0, v0, Lcom/inmobi/ads/b$h;->f:I

    .line 446
    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50674
    iget v0, v0, Lcom/inmobi/ads/b$h;->f:I

    .line 447
    if-gt v0, v6, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50675
    iget v0, v0, Lcom/inmobi/ads/b$h;->g:I

    .line 448
    if-ltz v0, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50676
    iget v0, v0, Lcom/inmobi/ads/b$h;->h:I

    .line 449
    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50677
    iget v0, v0, Lcom/inmobi/ads/b$h;->h:I

    .line 450
    if-gt v0, v6, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50678
    iget v0, v0, Lcom/inmobi/ads/b$h;->c:I

    .line 451
    if-lt v0, v7, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50679
    iget v0, v0, Lcom/inmobi/ads/b$h;->c:I

    .line 452
    mul-int/lit8 v0, v0, 0x5

    iget-object v2, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50680
    iget v2, v2, Lcom/inmobi/ads/b$h;->b:I

    .line 452
    if-gt v0, v2, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50681
    iget v0, v0, Lcom/inmobi/ads/b$h;->d:I

    .line 453
    if-lt v0, v7, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50682
    iget v0, v0, Lcom/inmobi/ads/b$h;->d:I

    .line 454
    mul-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50683
    iget v2, v2, Lcom/inmobi/ads/b$h;->b:I

    .line 454
    if-le v0, v2, :cond_11

    :cond_10
    move v0, v1

    .line 455
    goto/16 :goto_0

    .line 458
    :cond_11
    iget-object v0, p0, Lcom/inmobi/ads/b;->x:Lcom/inmobi/ads/b$e;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/inmobi/ads/b;->x:Lcom/inmobi/ads/b$e;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$e;->a()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    move v0, v1

    .line 459
    goto/16 :goto_0

    .line 462
    :cond_13
    iget-object v0, p0, Lcom/inmobi/ads/b;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 463
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/b$e;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$e;->a()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    .line 464
    goto/16 :goto_0

    .line 468
    :cond_15
    iget-object v0, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 50684
    iget-wide v2, v0, Lcom/inmobi/ads/b$g;->b:J

    .line 468
    cmp-long v0, v2, v8

    if-gtz v0, :cond_16

    iget-object v0, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 50685
    iget-wide v2, v0, Lcom/inmobi/ads/b$g;->b:J

    .line 469
    cmp-long v0, v2, v4

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 50686
    iget v0, v0, Lcom/inmobi/ads/b$g;->a:I

    .line 470
    if-ltz v0, :cond_16

    iget-object v0, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 50687
    iget-wide v2, v0, Lcom/inmobi/ads/b$g;->c:J

    .line 471
    cmp-long v0, v2, v4

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 50688
    iget-wide v2, v0, Lcom/inmobi/ads/b$g;->c:J

    .line 472
    cmp-long v0, v2, v8

    if-lez v0, :cond_17

    :cond_16
    move v0, v1

    .line 473
    goto/16 :goto_0

    .line 476
    :cond_17
    iget-object v0, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    .line 50689
    iget v0, v0, Lcom/inmobi/ads/b$a;->b:I

    .line 476
    if-ltz v0, :cond_18

    iget-object v0, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    .line 50690
    iget v0, v0, Lcom/inmobi/ads/b$a;->c:I

    .line 477
    const/16 v2, 0x14

    if-gt v0, v2, :cond_18

    iget-object v0, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    .line 50691
    iget v0, v0, Lcom/inmobi/ads/b$a;->c:I

    .line 478
    if-ltz v0, :cond_18

    iget-object v0, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    .line 50692
    iget-wide v2, v0, Lcom/inmobi/ads/b$a;->e:J

    .line 479
    cmp-long v0, v2, v4

    if-ltz v0, :cond_18

    iget-object v0, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    .line 50693
    iget-wide v2, v0, Lcom/inmobi/ads/b$a;->d:J

    .line 480
    cmp-long v0, v2, v4

    if-ltz v0, :cond_18

    iget-object v0, p0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    .line 50694
    iget v0, v0, Lcom/inmobi/ads/b$a;->a:I

    .line 481
    if-ltz v0, :cond_18

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_18
    move v0, v1

    .line 476
    goto/16 :goto_0
.end method

.method public final d()Lcom/inmobi/commons/core/configs/a;
    .locals 1

    .prologue
    .line 486
    new-instance v0, Lcom/inmobi/ads/b;

    invoke-direct {v0}, Lcom/inmobi/ads/b;-><init>()V

    return-object v0
.end method
