.class public Lcom/chartboost/sdk/impl/ad;
.super Lcom/chartboost/sdk/impl/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ad$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/x",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final k:Lcom/chartboost/sdk/impl/ad$a;

.field public l:Z

.field protected final m:Lcom/chartboost/sdk/impl/aj;

.field private final n:Ljava/lang/String;

.field private final p:Lcom/chartboost/sdk/Tracking/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/ad$a;)V
    .locals 3

    .prologue
    .line 53
    const-string v0, "POST"

    invoke-static {p1}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p4, v2}, Lcom/chartboost/sdk/impl/x;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ad;->l:Z

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ad;->a:Lorg/json/JSONObject;

    .line 55
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ad;->n:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    .line 57
    iput-object p3, p0, Lcom/chartboost/sdk/impl/ad;->p:Lcom/chartboost/sdk/Tracking/a;

    .line 58
    iput-object p5, p0, Lcom/chartboost/sdk/impl/ad;->k:Lcom/chartboost/sdk/impl/ad$a;

    .line 59
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    const-string v0, "https://live.chartboost.com"

    .line 69
    const-string v1, "%s%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    const-string v0, "/"

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x2

    if-eqz p0, :cond_1

    :goto_1
    aput-object p0, v2, v0

    .line 69
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    const-string v0, "/"

    goto :goto_0

    :cond_1
    const-string p0, ""

    goto :goto_1
.end method

.method private a(Lcom/chartboost/sdk/impl/aa;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 147
    const/4 v0, 0x5

    new-array v1, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const-string v0, "endpoint"

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ad;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    aput-object v0, v1, v5

    const/4 v2, 0x1

    const-string v3, "statuscode"

    if-nez p1, :cond_0

    const-string v0, "None"

    .line 148
    :goto_0
    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v2, 0x2

    const-string v3, "error"

    if-nez p2, :cond_1

    const-string v0, "None"

    .line 149
    :goto_1
    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v2, 0x3

    const-string v3, "errorDescription"

    if-nez p2, :cond_2

    const-string v0, "None"

    .line 150
    :goto_2
    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string v2, "retryCount"

    .line 151
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v1, v0

    .line 147
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v7

    .line 154
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->p:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "request_manager"

    const-string v2, "request"

    if-nez p2, :cond_3

    const-string v3, "success"

    :goto_3
    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 161
    return-void

    .line 147
    :cond_0
    iget v0, p1, Lcom/chartboost/sdk/impl/aa;->a:I

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError;->a()Lcom/chartboost/sdk/Model/CBError$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/CBError$a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 154
    :cond_3
    const-string v3, "failure"

    goto :goto_3
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/y;
    .locals 8

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ad;->c()V

    .line 177
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->a:Lorg/json/JSONObject;

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    sget-object v1, Lcom/chartboost/sdk/i;->k:Ljava/lang/String;

    .line 180
    sget-object v2, Lcom/chartboost/sdk/i;->l:Ljava/lang/String;

    .line 181
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s %s\n%s\n%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/chartboost/sdk/impl/ad;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 182
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ad;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    aput-object v0, v5, v2

    .line 181
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/c;->a([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/c;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 185
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 186
    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v4, "X-Chartboost-Client"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v4, "X-Chartboost-API"

    const-string v5, "7.0.1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v4, "X-Chartboost-App"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "X-Chartboost-Signature"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v1, Lcom/chartboost/sdk/impl/y;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v2, "application/json"

    invoke-direct {v1, v3, v0, v2}, Lcom/chartboost/sdk/impl/y;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v1

    .line 177
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/impl/aa;)Lcom/chartboost/sdk/impl/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/aa;",
            ")",
            "Lcom/chartboost/sdk/impl/z",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    :try_start_0
    iget-object v1, p1, Lcom/chartboost/sdk/impl/aa;->b:[B

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$a;->c:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v3, "Response is not a valid json object"

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/impl/z;

    move-result-object v1

    .line 229
    :goto_0
    return-object v1

    .line 208
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/aa;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 210
    const-string v3, "CBRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ad;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " succeeded. Response code: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Lcom/chartboost/sdk/impl/aa;->a:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", body: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    .line 211
    instance-of v1, v2, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/ad;->l:Z

    if-eqz v1, :cond_4

    .line 215
    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 216
    const/16 v3, 0x194

    if-ne v1, v3, :cond_2

    .line 217
    new-instance v1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$a;->g:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v3, "404 error from server"

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/impl/z;

    move-result-object v1

    goto :goto_0

    .line 211
    :cond_1
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    invoke-static {v1, v5}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 219
    :cond_2
    const/16 v3, 0xc8

    if-lt v1, v3, :cond_3

    const/16 v3, 0x12b

    if-le v1, v3, :cond_4

    .line 220
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request failed due to status code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    const-string v2, "CBRequest"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v2, Lcom/chartboost/sdk/Model/CBError;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$a;->d:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-direct {v2, v3, v1}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/impl/z;

    move-result-object v1

    goto/16 :goto_0

    .line 226
    :cond_4
    invoke-static {v2}, Lcom/chartboost/sdk/impl/z;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/z;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "parseServerResponse"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 229
    new-instance v2, Lcom/chartboost/sdk/Model/CBError;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$a;->a:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/impl/z;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/impl/aa;)V
    .locals 1

    .prologue
    .line 247
    if-nez p1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->k:Lcom/chartboost/sdk/impl/ad$a;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->k:Lcom/chartboost/sdk/impl/ad$a;

    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/impl/ad$a;->a(Lcom/chartboost/sdk/impl/ad;Lcom/chartboost/sdk/Model/CBError;)V

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->p:Lcom/chartboost/sdk/Tracking/a;

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0, p2, p1}, Lcom/chartboost/sdk/impl/ad;->a(Lcom/chartboost/sdk/impl/aa;Lcom/chartboost/sdk/Model/CBError;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/aa;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/ad;->a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/aa;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/aa;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->k:Lcom/chartboost/sdk/impl/ad$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->k:Lcom/chartboost/sdk/impl/ad$a;

    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/impl/ad$a;->a(Lcom/chartboost/sdk/impl/ad;Lorg/json/JSONObject;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->p:Lcom/chartboost/sdk/Tracking/a;

    if-eqz v0, :cond_1

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/chartboost/sdk/impl/ad;->a(Lcom/chartboost/sdk/impl/aa;Lcom/chartboost/sdk/Model/CBError;)V

    .line 242
    :cond_1
    return-void
.end method

.method protected c()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    const-string v2, "app"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->s:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v2, "model"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->f:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v2, "device_type"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->t:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string v2, "os"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->g:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string v2, "country"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->h:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v2, "language"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->i:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v2, "sdk"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->l:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string v2, "user_agent"

    sget-object v3, Lcom/chartboost/sdk/i;->w:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/i;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 93
    const-string v3, "timestamp"

    invoke-virtual {p0, v3, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/aj;->d:Landroid/content/SharedPreferences;

    const-string v3, "cbPrefSessionCount"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 95
    const-string v3, "session"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v2, "reachability"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->b:Lcom/chartboost/sdk/impl/ac;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/ac;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const-string v2, "scale"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->r:Ljava/lang/Float;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    const-string v2, "is_portrait"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v2, "bundle"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->j:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    const-string v2, "bundle_id"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->k:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v2, "carrier"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->u:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v2, "custom_id"

    sget-object v3, Lcom/chartboost/sdk/i;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v2, "mediation"

    sget-object v3, Lcom/chartboost/sdk/i;->h:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    sget-object v2, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "framework_version"

    sget-object v3, Lcom/chartboost/sdk/i;->f:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string v2, "wrapper_version"

    sget-object v3, Lcom/chartboost/sdk/i;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    :cond_0
    const-string v2, "rooted_device"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-boolean v3, v3, Lcom/chartboost/sdk/impl/aj;->v:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-string v2, "timezone"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->w:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v2, "mobile_network"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->x:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string v2, "dw"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->o:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v2, "dh"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->p:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string v2, "dpi"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->q:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v2, "w"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->m:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v2, "h"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->n:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string v2, "commit_hash"

    const-string v3, "de6fceeaf2944ea777e269b7af7af9890f388b58"

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/aj;->a:Lcom/chartboost/sdk/Libraries/d;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/d;->b()Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v2

    .line 119
    const-string v3, "identity"

    iget-object v4, v2, Lcom/chartboost/sdk/Libraries/d$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    iget v3, v2, Lcom/chartboost/sdk/Libraries/d$a;->a:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 121
    iget v2, v2, Lcom/chartboost/sdk/Libraries/d$a;->a:I

    if-ne v2, v0, :cond_3

    .line 122
    :goto_0
    const-string v1, "limit_ad_tracking"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/aj;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/e;->a:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    const-string v1, "config_variant"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 121
    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ad;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "/"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->n:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ad;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "/"

    goto :goto_1
.end method
