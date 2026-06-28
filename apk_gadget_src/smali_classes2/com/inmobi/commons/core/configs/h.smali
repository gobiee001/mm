.class public final Lcom/inmobi/commons/core/configs/h;
.super Lcom/inmobi/commons/core/configs/a;
.source "RootConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/h$b;,
        Lcom/inmobi/commons/core/configs/h$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Lcom/inmobi/commons/core/configs/h$b;

.field e:Lorg/json/JSONObject;

.field public f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/configs/h$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/configs/h;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 34
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/a;-><init>()V

    .line 24
    iput v1, p0, Lcom/inmobi/commons/core/configs/h;->a:I

    .line 25
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/commons/core/configs/h;->b:I

    .line 26
    iput v1, p0, Lcom/inmobi/commons/core/configs/h;->c:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/core/configs/h;->f:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/inmobi/commons/core/configs/h$b;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/h$b;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/h;->d:Lcom/inmobi/commons/core/configs/h$b;

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/h;->e:Lorg/json/JSONObject;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 156
    sget-object v2, Lcom/inmobi/commons/core/configs/h;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 157
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/h$a;

    .line 18201
    iget-object v3, v0, Lcom/inmobi/commons/core/configs/h$a;->a:Ljava/lang/String;

    .line 159
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19201
    iget-wide v0, v0, Lcom/inmobi/commons/core/configs/h$a;->b:J

    .line 160
    monitor-exit v2

    .line 164
    :goto_1
    return-wide v0

    .line 157
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 164
    :cond_1
    const-wide/32 v0, 0x15180

    monitor-exit v2

    goto :goto_1

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "root"

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/inmobi/commons/core/configs/a;->a(Lorg/json/JSONObject;)V

    .line 81
    const-string v0, "maxRetries"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/core/configs/h;->a:I

    .line 82
    const-string v0, "retryInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/core/configs/h;->b:I

    .line 83
    const-string v0, "waitTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/core/configs/h;->c:I

    .line 85
    const-string v0, "latestSdkInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/h;->d:Lcom/inmobi/commons/core/configs/h$b;

    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6225
    iput-object v2, v1, Lcom/inmobi/commons/core/configs/h$b;->a:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/h;->d:Lcom/inmobi/commons/core/configs/h$b;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7225
    iput-object v0, v1, Lcom/inmobi/commons/core/configs/h$b;->b:Ljava/lang/String;

    .line 89
    const-string v0, "components"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 91
    sget-object v2, Lcom/inmobi/commons/core/configs/h;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 94
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 95
    new-instance v4, Lcom/inmobi/commons/core/configs/h$a;

    invoke-direct {v4}, Lcom/inmobi/commons/core/configs/h$a;-><init>()V

    .line 97
    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8201
    iput-object v5, v4, Lcom/inmobi/commons/core/configs/h$a;->a:Ljava/lang/String;

    .line 98
    const-string v5, "expiry"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 9201
    iput-wide v6, v4, Lcom/inmobi/commons/core/configs/h$a;->b:J

    .line 99
    const-string v5, "protocol"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10201
    iput-object v5, v4, Lcom/inmobi/commons/core/configs/h$a;->c:Ljava/lang/String;

    .line 100
    const-string v5, "url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11201
    iput-object v3, v4, Lcom/inmobi/commons/core/configs/h$a;->d:Ljava/lang/String;

    .line 102
    iget-object v3, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const-string v0, "monetizationDisabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/core/configs/h;->f:Z

    .line 107
    return-void

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    sget-object v2, Lcom/inmobi/commons/core/configs/h;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 186
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/h$a;

    .line 20201
    iget-object v3, v0, Lcom/inmobi/commons/core/configs/h$a;->a:Ljava/lang/String;

    .line 188
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21201
    iget-object v0, v0, Lcom/inmobi/commons/core/configs/h$a;->d:Ljava/lang/String;

    .line 189
    monitor-exit v2

    .line 193
    :goto_1
    return-object v0

    .line 186
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_1
    const-string v0, ""

    monitor-exit v2

    goto :goto_1

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .line 48
    invoke-super {p0}, Lcom/inmobi/commons/core/configs/a;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 49
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 51
    const-string v0, "maxRetries"

    iget v1, p0, Lcom/inmobi/commons/core/configs/h;->a:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    const-string v0, "retryInterval"

    iget v1, p0, Lcom/inmobi/commons/core/configs/h;->b:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string v0, "waitTime"

    iget v1, p0, Lcom/inmobi/commons/core/configs/h;->c:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 56
    const-string v1, "version"

    iget-object v4, p0, Lcom/inmobi/commons/core/configs/h;->d:Lcom/inmobi/commons/core/configs/h$b;

    .line 1225
    iget-object v4, v4, Lcom/inmobi/commons/core/configs/h$b;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v1, "url"

    iget-object v4, p0, Lcom/inmobi/commons/core/configs/h;->d:Lcom/inmobi/commons/core/configs/h$b;

    .line 2225
    iget-object v4, v4, Lcom/inmobi/commons/core/configs/h$b;->b:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v1, "latestSdkInfo"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    sget-object v4, Lcom/inmobi/commons/core/configs/h;->h:Ljava/lang/Object;

    monitor-enter v4

    .line 61
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 62
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 63
    const-string v6, "type"

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/h$a;

    .line 3201
    iget-object v0, v0, Lcom/inmobi/commons/core/configs/h$a;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v6, "expiry"

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/h$a;

    .line 4201
    iget-wide v8, v0, Lcom/inmobi/commons/core/configs/h$a;->b:J

    .line 64
    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65
    const-string v6, "protocol"

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/h$a;

    .line 5201
    iget-object v0, v0, Lcom/inmobi/commons/core/configs/h$a;->c:Ljava/lang/String;

    .line 65
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v6, "url"

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/h$a;

    .line 6201
    iget-object v0, v0, Lcom/inmobi/commons/core/configs/h$a;->d:Ljava/lang/String;

    .line 66
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const-string v0, "components"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v0, "monetizationDisabled"

    iget-boolean v1, p0, Lcom/inmobi/commons/core/configs/h;->f:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 74
    return-object v2

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 147
    :goto_0
    return v0

    .line 115
    :cond_0
    iget v0, p0, Lcom/inmobi/commons/core/configs/h;->a:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/inmobi/commons/core/configs/h;->b:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/inmobi/commons/core/configs/h;->c:I

    if-gez v0, :cond_2

    :cond_1
    move v0, v1

    .line 116
    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->d:Lcom/inmobi/commons/core/configs/h$b;

    .line 11230
    iget-object v0, v0, Lcom/inmobi/commons/core/configs/h$b;->a:Ljava/lang/String;

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->d:Lcom/inmobi/commons/core/configs/h$b;

    .line 11234
    iget-object v0, v0, Lcom/inmobi/commons/core/configs/h$b;->b:Ljava/lang/String;

    .line 120
    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->d:Lcom/inmobi/commons/core/configs/h$b;

    .line 12234
    iget-object v0, v0, Lcom/inmobi/commons/core/configs/h$b;->b:Ljava/lang/String;

    .line 120
    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    .line 121
    goto :goto_0

    .line 124
    :cond_4
    sget-object v3, Lcom/inmobi/commons/core/configs/h;->h:Ljava/lang/Object;

    monitor-enter v3

    move v2, v1

    .line 125
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 126
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/h;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/h$a;

    .line 13209
    iget-object v4, v0, Lcom/inmobi/commons/core/configs/h$a;->a:Ljava/lang/String;

    .line 128
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 129
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 13213
    :cond_5
    iget-wide v4, v0, Lcom/inmobi/commons/core/configs/h$a;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 132
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    .line 14213
    iget-wide v4, v0, Lcom/inmobi/commons/core/configs/h$a;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 132
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xd2f00

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    .line 133
    :cond_6
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 14217
    :cond_7
    iget-object v4, v0, Lcom/inmobi/commons/core/configs/h$a;->c:Ljava/lang/String;

    .line 136
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 137
    monitor-exit v3

    move v0, v1

    goto/16 :goto_0

    .line 14221
    :cond_8
    iget-object v4, v0, Lcom/inmobi/commons/core/configs/h$a;->d:Ljava/lang/String;

    .line 140
    if-eqz v4, :cond_9

    .line 15221
    iget-object v4, v0, Lcom/inmobi/commons/core/configs/h$a;->d:Ljava/lang/String;

    .line 140
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 16221
    iget-object v4, v0, Lcom/inmobi/commons/core/configs/h$a;->d:Ljava/lang/String;

    .line 140
    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 17221
    iget-object v0, v0, Lcom/inmobi/commons/core/configs/h$a;->d:Ljava/lang/String;

    .line 140
    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 141
    :cond_9
    monitor-exit v3

    move v0, v1

    goto/16 :goto_0

    .line 125
    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 145
    :cond_b
    monitor-exit v3

    .line 147
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Lcom/inmobi/commons/core/configs/a;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/inmobi/commons/core/configs/h;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/h;-><init>()V

    return-object v0
.end method
