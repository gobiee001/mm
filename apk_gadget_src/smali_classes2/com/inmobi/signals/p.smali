.class public final Lcom/inmobi/signals/p;
.super Lcom/inmobi/commons/core/configs/a;
.source "SignalsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/signals/p$a;,
        Lcom/inmobi/signals/p$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Lcom/inmobi/signals/p$b;

.field b:Lcom/inmobi/signals/p$a;

.field c:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/inmobi/commons/core/configs/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/p;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/a;-><init>()V

    .line 31
    new-instance v0, Lcom/inmobi/signals/p$b;

    invoke-direct {v0}, Lcom/inmobi/signals/p$b;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 32
    new-instance v0, Lcom/inmobi/signals/p$a;

    invoke-direct {v0}, Lcom/inmobi/signals/p$a;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 1023
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1024
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1025
    const-string v1, "samplingFactor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1026
    const-string v1, "metricEnabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 35
    iput-object v0, p0, Lcom/inmobi/signals/p;->c:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "signals"

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/inmobi/commons/core/configs/a;->a(Lorg/json/JSONObject;)V

    .line 50
    const-string v0, "ice"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v2, "sampleInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1174
    iput v2, v1, Lcom/inmobi/signals/p$b;->b:I

    .line 52
    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v2, "sampleHistorySize"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2174
    iput v2, v1, Lcom/inmobi/signals/p$b;->d:I

    .line 53
    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v2, "stopRequestTimeout"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3174
    iput v2, v1, Lcom/inmobi/signals/p$b;->c:I

    .line 54
    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v2, "enabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 4174
    iput-boolean v2, v1, Lcom/inmobi/signals/p$b;->a:Z

    .line 55
    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v2, "endPoint"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5174
    iput-object v2, v1, Lcom/inmobi/signals/p$b;->e:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v2, "maxRetries"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 6174
    iput v2, v1, Lcom/inmobi/signals/p$b;->f:I

    .line 57
    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v2, "retryInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 7174
    iput v2, v1, Lcom/inmobi/signals/p$b;->g:I

    .line 58
    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v2, "locationEnabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 8174
    iput-boolean v2, v1, Lcom/inmobi/signals/p$b;->h:Z

    .line 59
    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v2, "sessionEnabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 9174
    iput-boolean v2, v1, Lcom/inmobi/signals/p$b;->i:Z

    .line 61
    const-string v1, "w"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v3, "wf"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 10174
    iput v3, v2, Lcom/inmobi/signals/p$b;->j:I

    .line 63
    iget-object v2, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v3, "cwe"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 11174
    iput-boolean v3, v2, Lcom/inmobi/signals/p$b;->l:Z

    .line 64
    iget-object v2, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v3, "vwe"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 12174
    iput-boolean v1, v2, Lcom/inmobi/signals/p$b;->k:Z

    .line 66
    const-string v1, "c"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v3, "oe"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 13174
    iput-boolean v3, v2, Lcom/inmobi/signals/p$b;->n:Z

    .line 68
    iget-object v2, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v3, "cce"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 14174
    iput-boolean v3, v2, Lcom/inmobi/signals/p$b;->p:Z

    .line 69
    iget-object v2, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v3, "vce"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 15174
    iput-boolean v3, v2, Lcom/inmobi/signals/p$b;->o:Z

    .line 70
    iget-object v2, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v3, "cof"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 16174
    iput v1, v2, Lcom/inmobi/signals/p$b;->m:I

    .line 72
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v2, "e"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 17174
    iput-boolean v2, v1, Lcom/inmobi/signals/p$b;->q:Z

    .line 74
    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v2, "sampleInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 18174
    iput v2, v1, Lcom/inmobi/signals/p$b;->r:I

    .line 75
    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    const-string v2, "maxHistorySize"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 19174
    iput v0, v1, Lcom/inmobi/signals/p$b;->s:I

    .line 77
    const-string v0, "carb"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    const-string v2, "enabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 19272
    iput-boolean v2, v1, Lcom/inmobi/signals/p$a;->a:Z

    .line 79
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    const-string v2, "getEndPoint"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20272
    iput-object v2, v1, Lcom/inmobi/signals/p$a;->b:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    const-string v2, "postEndPoint"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21272
    iput-object v2, v1, Lcom/inmobi/signals/p$a;->c:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    const-string v2, "retrieveFrequency"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 22272
    iput v2, v1, Lcom/inmobi/signals/p$a;->d:I

    .line 82
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    const-string v2, "maxRetries"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 23272
    iput v2, v1, Lcom/inmobi/signals/p$a;->e:I

    .line 83
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    const-string v2, "retryInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 24272
    iput v2, v1, Lcom/inmobi/signals/p$a;->f:I

    .line 84
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    const-string v2, "timeoutInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 25272
    iput v2, v1, Lcom/inmobi/signals/p$a;->g:I

    .line 85
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    const-string v2, "maxGetResponseSize"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 26272
    iput-wide v2, v1, Lcom/inmobi/signals/p$a;->h:J

    .line 87
    const-string v0, "telemetry"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/signals/p;->c:Lorg/json/JSONObject;

    .line 88
    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-super {p0}, Lcom/inmobi/commons/core/configs/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 94
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 95
    const-string v2, "sampleInterval"

    iget-object v3, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 27174
    iget v3, v3, Lcom/inmobi/signals/p$b;->b:I

    .line 95
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string v2, "stopRequestTimeout"

    iget-object v3, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 28174
    iget v3, v3, Lcom/inmobi/signals/p$b;->c:I

    .line 96
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    const-string v2, "sampleHistorySize"

    iget-object v3, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 29174
    iget v3, v3, Lcom/inmobi/signals/p$b;->d:I

    .line 97
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    const-string v2, "enabled"

    iget-object v3, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 30174
    iget-boolean v3, v3, Lcom/inmobi/signals/p$b;->a:Z

    .line 98
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 99
    const-string v2, "endPoint"

    iget-object v3, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 31174
    iget-object v3, v3, Lcom/inmobi/signals/p$b;->e:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v2, "maxRetries"

    iget-object v3, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 32174
    iget v3, v3, Lcom/inmobi/signals/p$b;->f:I

    .line 100
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string v2, "retryInterval"

    iget-object v3, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 33174
    iget v3, v3, Lcom/inmobi/signals/p$b;->g:I

    .line 101
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string v2, "locationEnabled"

    iget-object v3, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 34174
    iget-boolean v3, v3, Lcom/inmobi/signals/p$b;->h:Z

    .line 102
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 103
    const-string v2, "sessionEnabled"

    iget-object v3, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 35174
    iget-boolean v3, v3, Lcom/inmobi/signals/p$b;->i:Z

    .line 103
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 105
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 106
    const-string v3, "wf"

    iget-object v4, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 36174
    iget v4, v4, Lcom/inmobi/signals/p$b;->j:I

    .line 106
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    const-string v3, "vwe"

    iget-object v4, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 37174
    iget-boolean v4, v4, Lcom/inmobi/signals/p$b;->k:Z

    .line 107
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 108
    const-string v3, "cwe"

    iget-object v4, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 38174
    iget-boolean v4, v4, Lcom/inmobi/signals/p$b;->l:Z

    .line 108
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 109
    const-string v3, "w"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 112
    const-string v3, "cof"

    iget-object v4, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 39174
    iget v4, v4, Lcom/inmobi/signals/p$b;->m:I

    .line 112
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v3, "vce"

    iget-object v4, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 40174
    iget-boolean v4, v4, Lcom/inmobi/signals/p$b;->o:Z

    .line 113
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 114
    const-string v3, "cce"

    iget-object v4, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 41174
    iget-boolean v4, v4, Lcom/inmobi/signals/p$b;->p:Z

    .line 114
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 115
    const-string v3, "oe"

    iget-object v4, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 42174
    iget-boolean v4, v4, Lcom/inmobi/signals/p$b;->n:Z

    .line 115
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 116
    const-string v3, "c"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 119
    const-string v3, "e"

    iget-object v4, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 43174
    iget-boolean v4, v4, Lcom/inmobi/signals/p$b;->q:Z

    .line 119
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 120
    const-string v3, "sampleInterval"

    iget-object v4, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 44174
    iget v4, v4, Lcom/inmobi/signals/p$b;->r:I

    .line 120
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    const-string v3, "maxHistorySize"

    iget-object v4, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 45174
    iget v4, v4, Lcom/inmobi/signals/p$b;->s:I

    .line 121
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string v3, "ar"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v2, "ice"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 127
    const-string v2, "enabled"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 45272
    iget-boolean v3, v3, Lcom/inmobi/signals/p$a;->a:Z

    .line 127
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 128
    const-string v2, "getEndPoint"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 46272
    iget-object v3, v3, Lcom/inmobi/signals/p$a;->b:Ljava/lang/String;

    .line 128
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v2, "postEndPoint"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 47272
    iget-object v3, v3, Lcom/inmobi/signals/p$a;->c:Ljava/lang/String;

    .line 129
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v2, "retrieveFrequency"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 48272
    iget v3, v3, Lcom/inmobi/signals/p$a;->d:I

    .line 130
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string v2, "maxRetries"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 49272
    iget v3, v3, Lcom/inmobi/signals/p$a;->e:I

    .line 131
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    const-string v2, "retryInterval"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 50272
    iget v3, v3, Lcom/inmobi/signals/p$a;->f:I

    .line 132
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    const-string v2, "timeoutInterval"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 50273
    iget v3, v3, Lcom/inmobi/signals/p$a;->g:I

    .line 133
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    const-string v2, "maxGetResponseSize"

    iget-object v3, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 50274
    iget-wide v4, v3, Lcom/inmobi/signals/p$a;->h:J

    .line 134
    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 136
    const-string v2, "carb"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v1, "telemetry"

    iget-object v2, p0, Lcom/inmobi/signals/p;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    return-object v0
.end method

.method public final c()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 50275
    iget v1, v1, Lcom/inmobi/signals/p$b;->b:I

    .line 143
    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 50276
    iget v1, v1, Lcom/inmobi/signals/p$b;->d:I

    .line 143
    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 50277
    iget v1, v1, Lcom/inmobi/signals/p$b;->c:I

    .line 144
    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 50278
    iget-object v1, v1, Lcom/inmobi/signals/p$b;->e:Ljava/lang/String;

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 50279
    iget v1, v1, Lcom/inmobi/signals/p$b;->f:I

    .line 145
    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 50280
    iget v1, v1, Lcom/inmobi/signals/p$b;->g:I

    .line 145
    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 50281
    iget v1, v1, Lcom/inmobi/signals/p$b;->j:I

    .line 145
    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 50282
    iget v1, v1, Lcom/inmobi/signals/p$b;->m:I

    .line 145
    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 50283
    iget v1, v1, Lcom/inmobi/signals/p$b;->s:I

    .line 146
    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 50284
    iget v1, v1, Lcom/inmobi/signals/p$b;->r:I

    .line 146
    if-gez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 50285
    iget-object v1, v1, Lcom/inmobi/signals/p$a;->b:Ljava/lang/String;

    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 50286
    iget-object v1, v1, Lcom/inmobi/signals/p$a;->c:Ljava/lang/String;

    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 50287
    iget-object v1, v1, Lcom/inmobi/signals/p$a;->b:Ljava/lang/String;

    .line 151
    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 50288
    iget-object v1, v1, Lcom/inmobi/signals/p$a;->b:Ljava/lang/String;

    .line 151
    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 50289
    iget-object v1, v1, Lcom/inmobi/signals/p$a;->c:Ljava/lang/String;

    .line 152
    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 50290
    iget-object v1, v1, Lcom/inmobi/signals/p$a;->c:Ljava/lang/String;

    .line 152
    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 50291
    iget v1, v1, Lcom/inmobi/signals/p$a;->d:I

    .line 153
    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 50292
    iget v1, v1, Lcom/inmobi/signals/p$a;->e:I

    .line 153
    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 50293
    iget v1, v1, Lcom/inmobi/signals/p$a;->f:I

    .line 153
    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 50294
    iget v1, v1, Lcom/inmobi/signals/p$a;->g:I

    .line 154
    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/signals/p;->b:Lcom/inmobi/signals/p$a;

    .line 50295
    iget-wide v2, v1, Lcom/inmobi/signals/p$a;->h:J

    .line 154
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Lcom/inmobi/commons/core/configs/a;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/inmobi/signals/p;

    invoke-direct {v0}, Lcom/inmobi/signals/p;-><init>()V

    return-object v0
.end method
