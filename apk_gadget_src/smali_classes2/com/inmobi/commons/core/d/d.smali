.class public final Lcom/inmobi/commons/core/d/d;
.super Ljava/lang/Object;
.source "TelemetryComponentConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/d/d$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/d/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/commons/core/d/d;->a:I

    .line 22
    const-string v0, "telemetry"

    iput-object v0, p0, Lcom/inmobi/commons/core/d/d;->e:Ljava/lang/String;

    .line 23
    iput-boolean v1, p0, Lcom/inmobi/commons/core/d/d;->b:Z

    .line 24
    iput-boolean v1, p0, Lcom/inmobi/commons/core/d/d;->c:Z

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/d;->d:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/commons/core/d/d;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/inmobi/commons/core/d/d;->a:I

    .line 22
    const-string v2, "telemetry"

    iput-object v2, p0, Lcom/inmobi/commons/core/d/d;->e:Ljava/lang/String;

    .line 23
    iput-boolean v1, p0, Lcom/inmobi/commons/core/d/d;->b:Z

    .line 24
    iput-boolean v1, p0, Lcom/inmobi/commons/core/d/d;->c:Z

    .line 26
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/inmobi/commons/core/d/d;->d:Ljava/util/Map;

    .line 33
    if-nez p2, :cond_1

    .line 34
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/d/d;->a(Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 1066
    :cond_2
    iget-object v2, p3, Lcom/inmobi/commons/core/d/d;->e:Ljava/lang/String;

    .line 39
    :goto_1
    iput-object v2, p0, Lcom/inmobi/commons/core/d/d;->e:Ljava/lang/String;

    .line 40
    const-string v2, "enabled"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "enabled"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/inmobi/commons/core/d/d;->b:Z

    .line 42
    const-string v1, "samplingFactor"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "samplingFactor"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1111
    :goto_3
    iput v1, p0, Lcom/inmobi/commons/core/d/d;->a:I

    .line 43
    const-string v1, "metricEnabled"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "metricEnabled"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 2103
    :goto_4
    iput-boolean v1, p0, Lcom/inmobi/commons/core/d/d;->c:Z

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/inmobi/commons/core/d/d;->d:Ljava/util/Map;

    .line 46
    const-string v1, "events"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "events"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v0

    .line 48
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 49
    new-instance v3, Lcom/inmobi/commons/core/d/d$a;

    invoke-direct {v3}, Lcom/inmobi/commons/core/d/d$a;-><init>()V

    .line 51
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 52
    const-string v0, "type"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2147
    iput-object v0, v3, Lcom/inmobi/commons/core/d/d$a;->a:Ljava/lang/String;

    .line 53
    const-string v0, "samplingFactor"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "samplingFactor"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3151
    :goto_6
    iput v0, v3, Lcom/inmobi/commons/core/d/d$a;->b:I

    .line 54
    const-string v0, "metricEnabled"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "metricEnabled"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 4155
    :goto_7
    iput-boolean v0, v3, Lcom/inmobi/commons/core/d/d$a;->c:Z

    .line 56
    iget-object v0, p0, Lcom/inmobi/commons/core/d/d;->d:Ljava/util/Map;

    .line 5139
    iget-object v4, v3, Lcom/inmobi/commons/core/d/d$a;->a:Ljava/lang/String;

    .line 56
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_4
    move-object v2, p1

    .line 39
    goto/16 :goto_1

    :cond_5
    move v1, v0

    .line 40
    goto :goto_2

    .line 1095
    :cond_6
    iget v1, p3, Lcom/inmobi/commons/core/d/d;->a:I

    goto :goto_3

    .line 2099
    :cond_7
    iget-boolean v1, p3, Lcom/inmobi/commons/core/d/d;->c:Z

    goto :goto_4

    .line 3095
    :cond_8
    iget v0, p0, Lcom/inmobi/commons/core/d/d;->a:I

    goto :goto_6

    .line 4099
    :cond_9
    iget-boolean v0, p0, Lcom/inmobi/commons/core/d/d;->c:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 61
    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/d/d;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    .line 6107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/core/d/d;->b:Z

    .line 6115
    iput-object p1, p0, Lcom/inmobi/commons/core/d/d;->e:Ljava/lang/String;

    .line 92
    return-void
.end method
