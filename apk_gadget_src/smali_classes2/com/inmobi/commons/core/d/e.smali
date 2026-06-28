.class final Lcom/inmobi/commons/core/d/e;
.super Lcom/inmobi/commons/core/configs/a;
.source "TelemetryConfig.java"


# instance fields
.field a:Lcom/inmobi/commons/core/d/d;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/a;-><init>()V

    .line 26
    const-string v0, "https://sdkm.w.inmobi.com/metrics/e.asm?v=1&"

    iput-object v0, p0, Lcom/inmobi/commons/core/d/e;->b:Ljava/lang/String;

    .line 27
    const/16 v0, 0x12c

    iput v0, p0, Lcom/inmobi/commons/core/d/e;->c:I

    .line 28
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/commons/core/d/e;->d:I

    .line 29
    const/16 v0, 0x32

    iput v0, p0, Lcom/inmobi/commons/core/d/e;->e:I

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/commons/core/d/e;->f:I

    .line 31
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/inmobi/commons/core/d/e;->g:I

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/inmobi/commons/core/d/e;->h:I

    .line 33
    const-wide/32 v0, 0x3f480

    iput-wide v0, p0, Lcom/inmobi/commons/core/d/e;->i:J

    .line 36
    new-instance v0, Lcom/inmobi/commons/core/d/d;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/d;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "telemetry"

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/inmobi/commons/core/configs/a;->a(Lorg/json/JSONObject;)V

    .line 61
    const-string v0, "base"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    const-string v2, "enabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1107
    iput-boolean v2, v1, Lcom/inmobi/commons/core/d/d;->b:Z

    .line 63
    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    const-string v2, "samplingFactor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1111
    iput v2, v1, Lcom/inmobi/commons/core/d/d;->a:I

    .line 64
    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    const-string v2, "metricEnabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2103
    iput-boolean v0, v1, Lcom/inmobi/commons/core/d/d;->c:Z

    .line 66
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2110
    iput-object v0, p0, Lcom/inmobi/commons/core/d/e;->b:Ljava/lang/String;

    .line 67
    const-string v0, "processingInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2118
    iput v0, p0, Lcom/inmobi/commons/core/d/e;->c:I

    .line 68
    const-string v0, "retryInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2138
    iput v0, p0, Lcom/inmobi/commons/core/d/e;->d:I

    .line 69
    const-string v0, "maxBatchSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3126
    iput v0, p0, Lcom/inmobi/commons/core/d/e;->e:I

    .line 70
    const-string v0, "maxRetryCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 4122
    iput v0, p0, Lcom/inmobi/commons/core/d/e;->f:I

    .line 71
    const-string v0, "maxEventsToPersist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 4130
    iput v0, p0, Lcom/inmobi/commons/core/d/e;->g:I

    .line 72
    const-string v0, "memoryThreshold"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 4134
    iput v0, p0, Lcom/inmobi/commons/core/d/e;->h:I

    .line 73
    const-string v0, "eventTTL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 5102
    iput-wide v0, p0, Lcom/inmobi/commons/core/d/e;->i:J

    .line 74
    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0}, Lcom/inmobi/commons/core/configs/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 81
    const-string v2, "enabled"

    iget-object v3, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    .line 6070
    iget-boolean v3, v3, Lcom/inmobi/commons/core/d/d;->b:Z

    .line 81
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 82
    const-string v2, "samplingFactor"

    iget-object v3, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    .line 6095
    iget v3, v3, Lcom/inmobi/commons/core/d/d;->a:I

    .line 82
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string v2, "metricEnabled"

    iget-object v3, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    .line 6099
    iget-boolean v3, v3, Lcom/inmobi/commons/core/d/d;->c:Z

    .line 83
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 84
    const-string v2, "base"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v1, "url"

    .line 6114
    iget-object v2, p0, Lcom/inmobi/commons/core/d/e;->b:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v1, "processingInterval"

    .line 6158
    iget v2, p0, Lcom/inmobi/commons/core/d/e;->c:I

    .line 87
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string v1, "retryInterval"

    .line 7142
    iget v2, p0, Lcom/inmobi/commons/core/d/e;->d:I

    .line 88
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v1, "maxBatchSize"

    .line 7150
    iget v2, p0, Lcom/inmobi/commons/core/d/e;->e:I

    .line 89
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    const-string v1, "maxRetryCount"

    .line 7154
    iget v2, p0, Lcom/inmobi/commons/core/d/e;->f:I

    .line 90
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v1, "maxEventsToPersist"

    .line 7162
    iget v2, p0, Lcom/inmobi/commons/core/d/e;->g:I

    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    const-string v1, "memoryThreshold"

    .line 8146
    iget v2, p0, Lcom/inmobi/commons/core/d/e;->h:I

    .line 92
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v1, "eventTTL"

    .line 9098
    iget-wide v2, p0, Lcom/inmobi/commons/core/d/e;->i:J

    .line 93
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 94
    return-object v0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    .line 1095
    iget v1, v1, Lcom/inmobi/commons/core/d/d;->a:I

    .line 46
    if-gez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->b:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->b:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    :cond_2
    iget v1, p0, Lcom/inmobi/commons/core/d/e;->d:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/d/e;->c:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/d/e;->f:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/d/e;->h:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/d/e;->e:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/d/e;->g:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Lcom/inmobi/commons/core/configs/a;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/inmobi/commons/core/d/e;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/e;-><init>()V

    return-object v0
.end method
