.class public Lcom/cuebiq/cuebiqsdk/model/config/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static final ACCURACY:Ljava/lang/String; = "network"

.field private static final ANALYTICS_APP_OPEN_COUNTER:I = 0x1e

.field private static final ANALYTICS_COVERAGE_CHECKER_COUNTER:I = 0x5a0

.field private static final BATTERY_LEVEL_THRESHOLD:I = 0xa

.field private static final DEFAULT_FLUSH_AFTER_TIME_ELAPSED:J = 0x3cL

.field private static final DEFAULT_MAX_ACQUISITION_RATE:J = 0x1eL

.field private static final DEFAULT_MAX_BATCH_SIZE:I = 0x64

.field private static final DEFAULT_MIN_ACQUISITION_RATE:J = 0x1L

.field private static final DEFAULT_MIN_ANDROID_VERSION:I = 0x9

.field private static final DEFAULT_MIN_BATCH_SIZE:I = 0x1

.field private static final DEFAULT_MIN_VERSION_TO_LOG:I = 0x278a

.field private static final INSTALLED_APPS_THRESHOLD:I = 0xa

.field private static final IP_ADDRESS_API_DIFF:J = 0xaL

.field private static final IP_ADDRESS_API_ENABLE:I = 0x1

.field private static final THRESHOLD_METERS:I = 0x1e

.field private static final TRACK_ALL_STATISTICS_ENABLE:I = 0x1

.field private static final TRACK_LOCATION_ON_OFF_ENABLE:I = 0x1

.field private static final TRACK_WHEN_LOCATION_OFF_AND_WIFI_ON_ENABLE:I = 0x1

.field private static final VERSION:I = 0x1


# instance fields
.field private acc:Ljava/lang/String;

.field private alve:I

.field private amvs:I

.field private anao:I

.field private ancc:I

.field private btlt:I

.field private ciaa:I

.field private iatr:I

.field private ipad:J

.field private maxa:J

.field private maxb:I

.field private maxst:J

.field private mina:J

.field private minb:I

.field private tase:I

.field private tloo:I

.field private tlowo:I

.field private tr:I

.field private v:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x1e

    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->mina:J

    .line 51
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->maxa:J

    .line 54
    iput v2, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->minb:I

    .line 57
    const/16 v0, 0x64

    iput v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->maxb:I

    .line 60
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->maxst:J

    .line 63
    iput v4, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->tr:I

    .line 66
    iput v3, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->btlt:I

    .line 69
    iput v3, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->iatr:I

    .line 72
    iput v2, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->ciaa:I

    .line 75
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->ipad:J

    .line 78
    iput v2, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->tloo:I

    .line 81
    iput v2, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->tlowo:I

    .line 84
    const/16 v0, 0x5a0

    iput v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->ancc:I

    .line 87
    iput v4, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->anao:I

    .line 90
    const/16 v0, 0x278a

    iput v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->alve:I

    .line 93
    const/16 v0, 0x9

    iput v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->amvs:I

    .line 96
    iput v2, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->tase:I

    .line 99
    const-string v0, "network"

    iput-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->acc:Ljava/lang/String;

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->v:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->acc:Ljava/lang/String;

    return-object v0
.end method

.method public getAlve()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->alve:I

    return v0
.end method

.method public getAmvs()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->amvs:I

    return v0
.end method

.method public getAnao()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->anao:I

    return v0
.end method

.method public getAncc()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->ancc:I

    return v0
.end method

.method public getBtlt()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->btlt:I

    return v0
.end method

.method public getCiaa()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->ciaa:I

    return v0
.end method

.method public getIatr()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->iatr:I

    return v0
.end method

.method public getIpad()J
    .locals 4

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->ipad:J

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getMaxa()J
    .locals 4

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->maxa:J

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getMaxb()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->maxb:I

    return v0
.end method

.method public getMaxst()J
    .locals 4

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->maxst:J

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getMina()J
    .locals 4

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->mina:J

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getMinb()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->minb:I

    return v0
.end method

.method public getTase()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->tase:I

    return v0
.end method

.method public getTloo()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->tloo:I

    return v0
.end method

.method public getTlowo()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->tlowo:I

    return v0
.end method

.method public getTr()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->tr:I

    return v0
.end method

.method public getV()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->v:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAcc(Ljava/lang/String;)V
    .locals 0
    .param p1, "acc"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->acc:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setAlve(I)V
    .locals 0
    .param p1, "alve"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->alve:I

    .line 126
    return-void
.end method

.method public setAmvs(I)V
    .locals 0
    .param p1, "amvs"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->amvs:I

    .line 118
    return-void
.end method

.method public setAnao(I)V
    .locals 0
    .param p1, "anao"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->anao:I

    .line 134
    return-void
.end method

.method public setAncc(I)V
    .locals 0
    .param p1, "ancc"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->ancc:I

    .line 142
    return-void
.end method

.method public setBtlt(I)V
    .locals 0
    .param p1, "btlt"    # I

    .prologue
    .line 253
    iput p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->btlt:I

    .line 254
    return-void
.end method

.method public setCiaa(I)V
    .locals 0
    .param p1, "ciaa"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->ciaa:I

    .line 166
    return-void
.end method

.method public setIatr(I)V
    .locals 0
    .param p1, "iatr"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->iatr:I

    .line 182
    return-void
.end method

.method public setIpad(J)V
    .locals 1
    .param p1, "ipad"    # J

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->ipad:J

    .line 174
    return-void
.end method

.method public setMaxa(J)V
    .locals 1
    .param p1, "maxa"    # J

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->maxa:J

    .line 206
    return-void
.end method

.method public setMaxb(I)V
    .locals 0
    .param p1, "maxb"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->maxb:I

    .line 222
    return-void
.end method

.method public setMaxst(J)V
    .locals 1
    .param p1, "maxst"    # J

    .prologue
    .line 229
    iput-wide p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->maxst:J

    .line 230
    return-void
.end method

.method public setMina(J)V
    .locals 1
    .param p1, "mina"    # J

    .prologue
    .line 197
    iput-wide p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->mina:J

    .line 198
    return-void
.end method

.method public setMinb(I)V
    .locals 0
    .param p1, "minb"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->minb:I

    .line 214
    return-void
.end method

.method public setTase(I)V
    .locals 0
    .param p1, "tase"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->tase:I

    .line 110
    return-void
.end method

.method public setTloo(I)V
    .locals 0
    .param p1, "tloo"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->tloo:I

    .line 158
    return-void
.end method

.method public setTlowo(I)V
    .locals 0
    .param p1, "tlowo"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->tlowo:I

    .line 150
    return-void
.end method

.method public setTr(I)V
    .locals 0
    .param p1, "tr"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->tr:I

    .line 190
    return-void
.end method

.method public setV(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Integer;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->v:Ljava/lang/Integer;

    .line 246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    sget-object v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->GSON:Lcom/google/gson/Gson;

    instance-of v1, v0, Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
