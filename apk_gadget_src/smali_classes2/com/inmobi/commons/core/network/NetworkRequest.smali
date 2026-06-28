.class public Lcom/inmobi/commons/core/network/NetworkRequest;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/commons/core/utilities/uid/d;

.field private c:[B

.field private d:[B

.field protected k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field n:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I

.field public r:Z

.field s:Z

.field public t:Z

.field public u:J

.field v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/network/NetworkRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V
    .locals 6

    .prologue
    .line 51
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;Z)V
    .locals 3

    .prologue
    const v2, 0xea60

    const/4 v1, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->k:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->l:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->m:Ljava/util/Map;

    .line 34
    iput v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->p:I

    .line 35
    iput v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->q:I

    .line 36
    iput-boolean v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->r:Z

    .line 42
    iput-boolean v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->t:Z

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->u:J

    .line 56
    iput-object p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->n:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    .line 57
    iput-object p2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:Ljava/lang/String;

    .line 58
    iput-boolean p3, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->s:Z

    .line 59
    iput-object p4, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Lcom/inmobi/commons/core/utilities/uid/d;

    .line 61
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->k:Ljava/util/Map;

    const-string v1, "User-Agent"

    invoke-static {}, Lcom/inmobi/commons/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iput-boolean p5, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->v:Z

    .line 63
    return-void
.end method

.method private c(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/a;->a()Lcom/inmobi/commons/core/utilities/b/a;

    move-result-object v0

    .line 3088
    iget-object v0, v0, Lcom/inmobi/commons/core/utilities/b/a;->b:Ljava/util/Map;

    .line 194
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 195
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 196
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/e;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 198
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Lcom/inmobi/commons/core/utilities/uid/d;

    if-eqz v0, :cond_0

    .line 3186
    iget-boolean v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->s:Z

    .line 199
    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Lcom/inmobi/commons/core/utilities/uid/d;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/d;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Lcom/inmobi/commons/core/utilities/uid/d;

    .line 4032
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 4033
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 4034
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/uid/d;->a(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    .line 4036
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 4037
    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4038
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4039
    const-string v3, "u-id-map"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4040
    const-string v0, "u-id-key"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4041
    const-string v0, "u-key-ver"

    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->a()Lcom/inmobi/commons/core/utilities/uid/c;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-interface {p1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 4037
    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->l:Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;)V

    .line 138
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->l:Ljava/util/Map;

    const-string v1, "&"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->t:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->n:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->l:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->c(Ljava/util/Map;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->n:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->m:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->c(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected final a([B)[B
    .locals 3

    .prologue
    .line 225
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->d:[B

    iget-object v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:[B

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/a/b;->a([B[B[B)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Msg : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->k:Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;)V

    .line 105
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->k:Ljava/util/Map;

    return-object v0
.end method

.method public final b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 95
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->f()Ljava/lang/String;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_2
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 8

    .prologue
    .line 145
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->m:Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;)V

    .line 146
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->m:Ljava/util/Map;

    const-string v1, "&"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Post body url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1082
    iget-object v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:Ljava/lang/String;

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    iget-boolean v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->s:Z

    .line 150
    if-eqz v1, :cond_0

    .line 1208
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/a/b;->a(I)[B

    move-result-object v3

    .line 1209
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/a/b;->a(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:[B

    .line 1210
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a/b;->a()[B

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->d:[B

    .line 1211
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1213
    new-instance v7, Lcom/inmobi/commons/core/configs/g;

    invoke-direct {v7}, Lcom/inmobi/commons/core/configs/g;-><init>()V

    .line 1214
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 1216
    iget-object v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->d:[B

    iget-object v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:[B

    .line 2065
    iget-object v4, v7, Lcom/inmobi/commons/core/configs/g;->b:Ljava/lang/String;

    .line 3061
    iget-object v5, v7, Lcom/inmobi/commons/core/configs/g;->a:Ljava/lang/String;

    .line 1216
    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/core/utilities/a/b;->a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1217
    const-string v1, "sm"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    const-string v0, "sn"

    .line 3073
    iget-object v1, v7, Lcom/inmobi/commons/core/configs/g;->c:Ljava/lang/String;

    .line 1218
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    const-string v0, "&"

    invoke-static {v6, v0}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_0
    return-object v0
.end method

.method public final e()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 234
    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 238
    invoke-direct {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 243
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
