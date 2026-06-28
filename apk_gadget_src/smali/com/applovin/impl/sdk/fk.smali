.class Lcom/applovin/impl/sdk/fk;
.super Lcom/applovin/impl/sdk/dw;


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Lorg/json/JSONObject;

.field private final g:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    const-string v0, "TaskRenderAppLovinAd"

    invoke-direct {p0, v0, p4}, Lcom/applovin/impl/sdk/dw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/fk;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/applovin/impl/sdk/fk;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/applovin/impl/sdk/fk;->g:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/applovin/impl/sdk/ez;
    .locals 1

    const-string v0, "main"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/ez;->a:Lcom/applovin/impl/sdk/ez;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/ez;->b:Lcom/applovin/impl/sdk/ez;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/fk;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fk;->c:Ljava/lang/String;

    const-string v2, "Rendering ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/sdk/m;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fk;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/fk;->b:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/sdk/fk;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/m;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/fk;->a:Lorg/json/JSONObject;

    const-string v2, "vs_cache_immediately"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/fk;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/fk;->a:Lorg/json/JSONObject;

    const-string v3, "vs_load_immediately"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/fk;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v2, v3, v4, v5}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/fk;->a:Lorg/json/JSONObject;

    const-string v4, "vs_ad_cache_priority"

    const-string v5, "background"

    iget-object v6, p0, Lcom/applovin/impl/sdk/fk;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v3, v4, v5, v6}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/fk;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v5, p0, Lcom/applovin/impl/sdk/fk;->c:Ljava/lang/String;

    const-string v6, "Creating cache task..."

    invoke-interface {v4, v5, v6}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/applovin/impl/sdk/ei;

    iget-object v5, p0, Lcom/applovin/impl/sdk/fk;->g:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v6, p0, Lcom/applovin/impl/sdk/fk;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v4, v0, v5, v6}, Lcom/applovin/impl/sdk/ei;-><init>(Lcom/applovin/impl/sdk/m;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    invoke-virtual {v4, v2}, Lcom/applovin/impl/sdk/ei;->a(Z)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    invoke-direct {p0, v3}, Lcom/applovin/impl/sdk/fk;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/ez;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/fk;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/fk;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;)V

    goto :goto_0
.end method
