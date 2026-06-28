.class public Lcom/adcolony/sdk/AdColonyZone;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lcom/adcolony/sdk/AdColonyZone;->l:I

    .line 55
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyZone;->h:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyZone;->c()V

    move-object p1, p2

    .line 85
    :cond_1
    return-object p1
.end method

.method private c(I)I
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyZone;->c()V

    .line 61
    const/4 p1, 0x0

    .line 63
    :cond_1
    return p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v1, "The AdColonyZone API is not available while AdColony is disabled."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 226
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    .prologue
    .line 213
    iput p1, p0, Lcom/adcolony/sdk/AdColonyZone;->r:I

    .line 214
    return-void
.end method

.method a(Lcom/adcolony/sdk/af;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 196
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v1

    .line 197
    const-string v2, "reward"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 198
    const-string v3, "reward_name"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adcolony/sdk/AdColonyZone;->i:Ljava/lang/String;

    .line 199
    const-string v3, "reward_amount"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/adcolony/sdk/AdColonyZone;->q:I

    .line 200
    const-string v3, "views_per_reward"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/adcolony/sdk/AdColonyZone;->o:I

    .line 201
    const-string v3, "views_until_reward"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/adcolony/sdk/AdColonyZone;->n:I

    .line 202
    const-string v3, "reward_name_plural"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adcolony/sdk/AdColonyZone;->j:Ljava/lang/String;

    .line 203
    const-string v3, "reward_prompt"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adcolony/sdk/AdColonyZone;->k:Ljava/lang/String;

    .line 204
    const-string v2, "rewarded"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/adcolony/sdk/AdColonyZone;->t:Z

    .line 205
    const-string v2, "status"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/adcolony/sdk/AdColonyZone;->l:I

    .line 206
    const-string v2, "type"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/adcolony/sdk/AdColonyZone;->m:I

    .line 207
    const-string v2, "play_interval"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/adcolony/sdk/AdColonyZone;->p:I

    .line 208
    const-string v2, "zone_id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/AdColonyZone;->h:Ljava/lang/String;

    .line 209
    iget v1, p0, Lcom/adcolony/sdk/AdColonyZone;->l:I

    if-eq v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/adcolony/sdk/AdColonyZone;->s:Z

    .line 210
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->r:I

    return v0
.end method

.method b(I)V
    .locals 0

    .prologue
    .line 221
    iput p1, p0, Lcom/adcolony/sdk/AdColonyZone;->l:I

    .line 222
    return-void
.end method

.method public getPlayFrequency()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->p:I

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->c(I)I

    move-result v0

    return v0
.end method

.method public getZoneID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyZone;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoneType()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->m:I

    return v0
.end method

.method public isRewarded()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyZone;->t:Z

    return v0
.end method
