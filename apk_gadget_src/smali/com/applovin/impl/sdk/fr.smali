.class Lcom/applovin/impl/sdk/fr;
.super Lcom/applovin/impl/sdk/dw;


# instance fields
.field private a:Lcom/applovin/impl/a/g;

.field private final b:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method constructor <init>(Lcom/applovin/impl/a/g;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    const-string v0, "TaskResolveVastWrapper"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/dw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/fr;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iput-object p1, p0, Lcom/applovin/impl/sdk/fr;->a:Lcom/applovin/impl/a/g;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/fr;)Lcom/applovin/impl/a/g;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/fr;->a:Lcom/applovin/impl/a/g;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/fr;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fr;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve VAST wrapper due to error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x67

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/fr;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fr;->a:Lcom/applovin/impl/a/g;

    invoke-virtual {v1}, Lcom/applovin/impl/a/g;->f()Lcom/applovin/impl/sdk/n;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/fr;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, p1, v2}, Lcom/applovin/impl/sdk/fy;->a(Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/n;ILcom/applovin/sdk/AppLovinSdk;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0x66

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/applovin/impl/a/h;->d:Lcom/applovin/impl/a/h;

    :goto_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/fr;->a:Lcom/applovin/impl/a/g;

    iget-object v2, p0, Lcom/applovin/impl/sdk/fr;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v3, p0, Lcom/applovin/impl/sdk/fr;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v0, p1, v3}, Lcom/applovin/impl/a/n;->a(Lcom/applovin/impl/a/g;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/a/h;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/impl/a/h;->c:Lcom/applovin/impl/a/h;

    goto :goto_1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/fr;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/fr;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/fr;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/fr;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/applovin/impl/sdk/fr;->a:Lcom/applovin/impl/a/g;

    invoke-static {v0}, Lcom/applovin/impl/a/n;->a(Lcom/applovin/impl/a/g;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/fr;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fr;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolving VAST ad with depth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/fr;->a:Lcom/applovin/impl/a/g;

    invoke-virtual {v3}, Lcom/applovin/impl/a/g;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/applovin/impl/sdk/fs;

    const-string v2, "GET"

    sget-object v3, Lcom/applovin/impl/sdk/ga;->a:Lcom/applovin/impl/sdk/ga;

    const-string v4, "RepeatResolveVastWrapper"

    iget-object v5, p0, Lcom/applovin/impl/sdk/fr;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/fs;-><init>(Lcom/applovin/impl/sdk/fr;Ljava/lang/String;Lcom/applovin/impl/sdk/ga;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    invoke-virtual {v0, v6}, Lcom/applovin/impl/sdk/fn;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/fr;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/dx;->df:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/fn;->b(I)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/fr;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/dx;->de:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/fn;->c(I)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/fr;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/fr;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/fr;->c:Ljava/lang/String;

    const-string v3, "Unable to resolve VAST wrapper"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v7}, Lcom/applovin/impl/sdk/fr;->a(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/fr;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fr;->c:Ljava/lang/String;

    const-string v2, "Resolving VAST failed. Could not find resolution URL"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/applovin/impl/sdk/fr;->a(I)V

    goto :goto_0
.end method
