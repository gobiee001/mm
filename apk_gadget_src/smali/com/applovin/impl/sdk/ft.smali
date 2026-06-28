.class Lcom/applovin/impl/sdk/ft;
.super Lcom/applovin/impl/sdk/du;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/am;

.field private final b:Lcom/applovin/sdk/AppLovinAdRewardListener;

.field private final g:Ljava/lang/Object;

.field private volatile h:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/am;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    const-string v0, "TaskValidateReward"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/du;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/ft;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/ft;->h:Z

    iput-object p1, p0, Lcom/applovin/impl/sdk/ft;->a:Lcom/applovin/impl/sdk/am;

    iput-object p2, p0, Lcom/applovin/impl/sdk/ft;->b:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-void
.end method

.method private a(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ft;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "network_timeout"

    const/16 v1, 0x190

    if-lt p1, v1, :cond_1

    const/16 v1, 0x1f4

    if-gt p1, v1, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ft;->b:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ft;->a:Lcom/applovin/impl/sdk/am;

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    const-string v0, "rejected"

    :goto_1
    invoke-static {}, Lcom/applovin/impl/sdk/dm;->a()Lcom/applovin/impl/sdk/dm;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/ft;->a:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/dm;->a(Lcom/applovin/impl/sdk/am;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/ft;->b:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ft;->a:Lcom/applovin/impl/sdk/am;

    invoke-interface {v1, v2, p1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ft;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/ft;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ft;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/ft;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ft;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/dm;->a()Lcom/applovin/impl/sdk/dm;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ft;->a:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/dm;->a(Lcom/applovin/impl/sdk/am;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ft;->a:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v0, v1, p2}, Lcom/applovin/impl/sdk/dm;->a(Lcom/applovin/impl/sdk/am;Ljava/util/Map;)V

    const-string v0, "accepted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ft;->b:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ft;->a:Lcom/applovin/impl/sdk/am;

    invoke-interface {v0, v1, p2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string v0, "quota_exceeded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ft;->b:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ft;->a:Lcom/applovin/impl/sdk/am;

    invoke-interface {v0, v1, p2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string v0, "rejected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ft;->b:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ft;->a:Lcom/applovin/impl/sdk/am;

    invoke-interface {v0, v1, p2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/ft;->b:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ft;->a:Lcom/applovin/impl/sdk/am;

    const/16 v2, -0x190

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ft;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/af;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ft;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/af;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "params"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    :try_start_2
    const-string v0, "result"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_2
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/ft;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ft;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ft;->c:Ljava/lang/String;

    const-string v3, "Unable to parse API response"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v0, "network_timeout"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/ft;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/ft;->h:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c()Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/ft;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/ft;->h:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/ft;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getUserIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ft;->a:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/am;->n()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "zone_id"

    iget-object v4, p0, Lcom/applovin/impl/sdk/ft;->a:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/am;->t()Lcom/applovin/impl/sdk/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "clcode"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "user_id"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "vr"

    new-instance v2, Lcom/applovin/impl/sdk/fu;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/fu;-><init>(Lcom/applovin/impl/sdk/ft;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/applovin/impl/sdk/ft;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ae;)V

    return-void

    :cond_1
    const-string v1, "clcode"

    const-string v3, "NO_CLCODE"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
