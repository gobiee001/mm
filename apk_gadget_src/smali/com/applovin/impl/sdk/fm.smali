.class Lcom/applovin/impl/sdk/fm;
.super Lcom/applovin/impl/sdk/dw;


# instance fields
.field private a:Lcom/applovin/impl/a/g;

.field private final b:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method constructor <init>(Lcom/applovin/impl/a/g;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 2

    const-string v0, "TaskRenderVastAd"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/dw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/applovin/impl/sdk/fm;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iput-object p1, p0, Lcom/applovin/impl/sdk/fm;->a:Lcom/applovin/impl/a/g;

    return-void
.end method

.method private a(Lcom/applovin/impl/a/h;Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/fm;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fm;->c:Ljava/lang/String;

    const-string v2, "Failed to render valid VAST ad"

    invoke-interface {v0, v1, v2, p2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/fm;->a:Lcom/applovin/impl/a/g;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fm;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    const/4 v2, -0x6

    iget-object v3, p0, Lcom/applovin/impl/sdk/fm;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/applovin/impl/a/n;->a(Lcom/applovin/impl/a/g;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/a/h;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/fm;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/fm;->c:Ljava/lang/String;

    const-string v3, "Rendering VAST ad..."

    invoke-interface {v0, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, ""

    const-string v4, ""

    iget-object v0, p0, Lcom/applovin/impl/sdk/fm;->a:Lcom/applovin/impl/a/g;

    invoke-virtual {v0}, Lcom/applovin/impl/a/g;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/fm;->a:Lcom/applovin/impl/a/g;

    invoke-virtual {v0}, Lcom/applovin/impl/a/g;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v2, v1

    move-object v3, v1

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ga;

    invoke-static {v0}, Lcom/applovin/impl/a/n;->a(Lcom/applovin/impl/sdk/ga;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Wrapper"

    :goto_1
    invoke-virtual {v0, v6}, Lcom/applovin/impl/sdk/ga;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/ga;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string v0, "AdSystem"

    invoke-virtual {v6, v0}, Lcom/applovin/impl/sdk/ga;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/ga;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v10, p0, Lcom/applovin/impl/sdk/fm;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v3, v10}, Lcom/applovin/impl/a/k;->a(Lcom/applovin/impl/sdk/ga;Lcom/applovin/impl/a/k;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/impl/a/k;

    move-result-object v3

    :cond_0
    const-string v0, "AdTitle"

    invoke-static {v6, v0, v5}, Lcom/applovin/impl/a/n;->a(Lcom/applovin/impl/sdk/ga;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "Description"

    invoke-static {v6, v0, v4}, Lcom/applovin/impl/a/n;->a(Lcom/applovin/impl/sdk/ga;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "Impression"

    invoke-virtual {v6, v0}, Lcom/applovin/impl/sdk/ga;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v10, p0, Lcom/applovin/impl/sdk/fm;->a:Lcom/applovin/impl/a/g;

    iget-object v11, p0, Lcom/applovin/impl/sdk/fm;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v7, v10, v11}, Lcom/applovin/impl/a/n;->a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/a/g;Lcom/applovin/sdk/AppLovinSdk;)V

    const-string v0, "Error"

    invoke-virtual {v6, v0}, Lcom/applovin/impl/sdk/ga;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v10, p0, Lcom/applovin/impl/sdk/fm;->a:Lcom/applovin/impl/a/g;

    iget-object v11, p0, Lcom/applovin/impl/sdk/fm;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v8, v10, v11}, Lcom/applovin/impl/a/n;->a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/a/g;Lcom/applovin/sdk/AppLovinSdk;)V

    const-string v0, "Creatives"

    invoke-virtual {v6, v0}, Lcom/applovin/impl/sdk/ga;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/ga;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ga;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ga;

    const-string v10, "Linear"

    invoke-virtual {v0, v10}, Lcom/applovin/impl/sdk/ga;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/ga;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/fm;->a:Lcom/applovin/impl/a/g;

    iget-object v11, p0, Lcom/applovin/impl/sdk/fm;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v10, v2, v0, v11}, Lcom/applovin/impl/a/o;->a(Lcom/applovin/impl/sdk/ga;Lcom/applovin/impl/a/o;Lcom/applovin/impl/a/g;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/impl/a/o;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_2
    const-string v6, "InLine"

    goto :goto_1

    :cond_3
    const-string v10, "CompanionAds"

    invoke-virtual {v0, v10}, Lcom/applovin/impl/sdk/ga;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/ga;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v0, "Companion"

    invoke-virtual {v10, v0}, Lcom/applovin/impl/sdk/ga;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/ga;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v10, p0, Lcom/applovin/impl/sdk/fm;->a:Lcom/applovin/impl/a/g;

    iget-object v11, p0, Lcom/applovin/impl/sdk/fm;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v10, v11}, Lcom/applovin/impl/a/f;->a(Lcom/applovin/impl/sdk/ga;Lcom/applovin/impl/a/f;Lcom/applovin/impl/a/g;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/impl/a/f;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_4
    iget-object v10, p0, Lcom/applovin/impl/sdk/fm;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v11, p0, Lcom/applovin/impl/sdk/fm;->c:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received and will skip rendering for an unidentified creative: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v11, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    :goto_3
    move-object v5, v4

    move-object v4, v3

    move-object v3, v0

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/applovin/impl/sdk/fm;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v10, p0, Lcom/applovin/impl/sdk/fm;->c:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Did not find wrapper or inline response for node: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v10, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_3

    :cond_7
    :try_start_0
    invoke-static {}, Lcom/applovin/impl/a/a;->k()Lcom/applovin/impl/a/c;

    move-result-object v0

    iget-object v6, p0, Lcom/applovin/impl/sdk/fm;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0, v6}, Lcom/applovin/impl/a/c;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Lcom/applovin/impl/a/c;

    move-result-object v0

    iget-object v6, p0, Lcom/applovin/impl/sdk/fm;->a:Lcom/applovin/impl/a/g;

    invoke-virtual {v6}, Lcom/applovin/impl/a/g;->c()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/applovin/impl/a/c;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/a/c;

    move-result-object v0

    iget-object v6, p0, Lcom/applovin/impl/sdk/fm;->a:Lcom/applovin/impl/a/g;

    invoke-virtual {v6}, Lcom/applovin/impl/a/g;->d()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/applovin/impl/a/c;->b(Lorg/json/JSONObject;)Lcom/applovin/impl/a/c;

    move-result-object v0

    iget-object v6, p0, Lcom/applovin/impl/sdk/fm;->a:Lcom/applovin/impl/a/g;

    invoke-virtual {v6}, Lcom/applovin/impl/a/g;->e()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/applovin/impl/a/c;->a(J)Lcom/applovin/impl/a/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/applovin/impl/a/c;->a(Ljava/lang/String;)Lcom/applovin/impl/a/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/applovin/impl/a/c;->b(Ljava/lang/String;)Lcom/applovin/impl/a/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/applovin/impl/a/c;->a(Lcom/applovin/impl/a/k;)Lcom/applovin/impl/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/a/c;->a(Lcom/applovin/impl/a/o;)Lcom/applovin/impl/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/a/c;->a(Lcom/applovin/impl/a/f;)Lcom/applovin/impl/a/c;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/applovin/impl/a/c;->a(Ljava/util/Set;)Lcom/applovin/impl/a/c;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/applovin/impl/a/c;->b(Ljava/util/Set;)Lcom/applovin/impl/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/a/c;->a()Lcom/applovin/impl/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/a/n;->a(Lcom/applovin/impl/a/a;)Lcom/applovin/impl/a/h;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance v1, Lcom/applovin/impl/sdk/em;

    iget-object v2, p0, Lcom/applovin/impl/sdk/fm;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v3, p0, Lcom/applovin/impl/sdk/fm;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/sdk/em;-><init>(Lcom/applovin/impl/a/a;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/fm;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;)V

    :goto_4
    return-void

    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/sdk/fm;->a(Lcom/applovin/impl/a/h;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v1, Lcom/applovin/impl/a/h;->c:Lcom/applovin/impl/a/h;

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/sdk/fm;->a(Lcom/applovin/impl/a/h;Ljava/lang/Throwable;)V

    goto :goto_4
.end method
