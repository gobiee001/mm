.class public Lcom/applovin/impl/sdk/AppLovinSdkImpl;
.super Lcom/applovin/sdk/AppLovinSdk;


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/applovin/sdk/AppLovinSdkSettings;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Lcom/applovin/sdk/AppLovinLogger;

.field private g:Lcom/applovin/impl/sdk/ey;

.field private h:Lcom/applovin/impl/sdk/ea;

.field private i:Lcom/applovin/impl/sdk/ac;

.field private j:Lcom/applovin/impl/sdk/av;

.field private k:Lcom/applovin/impl/sdk/c;

.field private l:Lcom/applovin/impl/sdk/au;

.field private m:Lcom/applovin/impl/sdk/l;

.field private n:Lcom/applovin/impl/sdk/dc;

.field private o:Lcom/applovin/impl/sdk/ag;

.field private p:Lcom/applovin/impl/sdk/ed;

.field private q:Lcom/applovin/impl/sdk/p;

.field private r:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private s:Lcom/applovin/impl/sdk/de;

.field private t:Lcom/applovin/impl/sdk/PostbackServiceImpl;

.field private u:Lcom/applovin/impl/sdk/EventServiceImpl;

.field private v:Lcom/applovin/impl/sdk/MediationServiceImpl;

.field private w:Lcom/applovin/impl/sdk/dn;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/applovin/sdk/AppLovinSdk;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->x:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->y:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->z:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->A:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->B:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->C:Z

    return-void
.end method

.method public static getStaticApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static i()Z
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 5

    const/16 v4, 0x30e

    :try_start_0
    sget-object v0, Lcom/applovin/impl/sdk/ec;->c:Lcom/applovin/impl/sdk/ec;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/ec;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v4, :cond_0

    const-string v0, "AppLovinSdk"

    const-string v1, "SDK has been updated since last run. Continuing..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/ea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ea;->c()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/ea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ea;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sget-object v0, Lcom/applovin/impl/sdk/ec;->c:Lcom/applovin/impl/sdk/ec;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->put(Lcom/applovin/impl/sdk/ec;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string v0, "AppLovinSdk"

    const-string v1, "SDK has not been updated since last run. Continuing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "AppLovinSdkImpl"

    const-string v3, "Unable to check for SDK update"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/applovin/impl/sdk/ec;->c:Lcom/applovin/impl/sdk/ec;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->put(Lcom/applovin/impl/sdk/ec;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/applovin/impl/sdk/ec;->c:Lcom/applovin/impl/sdk/ec;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->put(Lcom/applovin/impl/sdk/ec;Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method a()Lcom/applovin/impl/sdk/av;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->j:Lcom/applovin/impl/sdk/av;

    return-object v0
.end method

.method a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->x:Z

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->y:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->z:Z

    return-void
.end method

.method b()Lcom/applovin/impl/sdk/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->k:Lcom/applovin/impl/sdk/c;

    return-object v0
.end method

.method c()Lcom/applovin/impl/sdk/l;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->m:Lcom/applovin/impl/sdk/l;

    return-object v0
.end method

.method public checkCorrectInitialization(Landroid/content/Context;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v3, "AppLovinSdk"

    const-string v4, "Checking if SDK is initialized in main activity or application context..."

    invoke-interface {v0, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v4

    const-string v5, "AppLovinSdk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " main activities for this application"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v3, "AppLovinSdk"

    const-string v4, "SDK initialized in application context"

    invoke-interface {v0, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "AppLovinSdk"

    const-string v4, "AppLovin SDK was initialized too late in session; SDK should always be initialized within main activity, application context, and/or any relevant entry points"

    invoke-interface {v0, v1, v4}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "AppLovinSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialization instead happened from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v3, "AppLovinSdk"

    const-string v4, "Error checking if SDK is initialized in main activity or application context..."

    invoke-interface {v1, v3, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public clear(Landroid/content/SharedPreferences;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Lcom/applovin/impl/sdk/ed;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ed;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method d()Lcom/applovin/impl/sdk/dc;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->n:Lcom/applovin/impl/sdk/dc;

    return-object v0
.end method

.method e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->x:Z

    return v0
.end method

.method f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->z:Z

    return v0
.end method

.method g()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->x:Z

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/ey;

    new-instance v1, Lcom/applovin/impl/sdk/ew;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/ew;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/ew;J)V

    return-void
.end method

.method public get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/dz",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/ea;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ea;->a(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/applovin/impl/sdk/ec;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/ec",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/ec;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/applovin/impl/sdk/ec;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/ec",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Lcom/applovin/impl/sdk/ed;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/ed;->b(Lcom/applovin/impl/sdk/ec;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/applovin/impl/sdk/ec;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/ec",
            "<TT;>;TT;",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Lcom/applovin/impl/sdk/ed;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/ed;->b(Lcom/applovin/impl/sdk/ec;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class;",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Lcom/applovin/impl/sdk/ed;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/ed;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAdService()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->r:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    return-object v0
.end method

.method public bridge synthetic getAdService()Lcom/applovin/sdk/AppLovinAdService;
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getAdService()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getAsList(Lcom/applovin/impl/sdk/dz;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/dz;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/ea;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ea;->b(Lcom/applovin/impl/sdk/dz;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionManager()Lcom/applovin/impl/sdk/ac;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->i:Lcom/applovin/impl/sdk/ac;

    return-object v0
.end method

.method public getDataCollector()Lcom/applovin/impl/sdk/ag;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->o:Lcom/applovin/impl/sdk/ag;

    return-object v0
.end method

.method public getEventService()Lcom/applovin/sdk/AppLovinEventService;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->u:Lcom/applovin/impl/sdk/EventServiceImpl;

    return-object v0
.end method

.method public getFileManager()Lcom/applovin/impl/sdk/au;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->l:Lcom/applovin/impl/sdk/au;

    return-object v0
.end method

.method public getInitializationActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInitializedTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e:J

    return-wide v0
.end method

.method public getLogger()Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method

.method public getMediationProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationService()Lcom/applovin/impl/sdk/MediationServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->v:Lcom/applovin/impl/sdk/MediationServiceImpl;

    return-object v0
.end method

.method public getNativeAdService()Lcom/applovin/impl/sdk/de;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->s:Lcom/applovin/impl/sdk/de;

    return-object v0
.end method

.method public getPersistentPostbackManager()Lcom/applovin/impl/sdk/dn;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->w:Lcom/applovin/impl/sdk/dn;

    return-object v0
.end method

.method public getPostbackService()Lcom/applovin/impl/sdk/PostbackServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->t:Lcom/applovin/impl/sdk/PostbackServiceImpl;

    return-object v0
.end method

.method public getSdkKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c:Lcom/applovin/sdk/AppLovinSdkSettings;

    return-object v0
.end method

.method public getSettingsManager()Lcom/applovin/impl/sdk/ea;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/ea;

    return-object v0
.end method

.method public getTaskManager()Lcom/applovin/impl/sdk/ey;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/ey;

    return-object v0
.end method

.method public getUserIdentifier()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/applovin/impl/sdk/fx;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoneManager()Lcom/applovin/impl/sdk/p;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->q:Lcom/applovin/impl/sdk/p;

    return-object v0
.end method

.method h()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/ea;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ea;->c()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/ea;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ea;->a()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->j:Lcom/applovin/impl/sdk/av;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/av;->a()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->k:Lcom/applovin/impl/sdk/c;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c;->b()V

    return-void
.end method

.method public hasCriticalErrors()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->A:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->B:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x1

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c:Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e:J

    instance-of v2, p3, Landroid/app/Activity;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v2, p3

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d:Ljava/lang/ref/WeakReference;

    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a:Landroid/content/Context;

    :try_start_0
    new-instance v3, Lcom/applovin/impl/sdk/x;

    invoke-direct {v3, p0}, Lcom/applovin/impl/sdk/x;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v3, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/sdk/AppLovinLogger;

    new-instance v2, Lcom/applovin/impl/sdk/ed;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/ed;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Lcom/applovin/impl/sdk/ed;

    new-instance v2, Lcom/applovin/impl/sdk/ea;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/ea;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/ea;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/ea;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ea;->b()V

    new-instance v2, Lcom/applovin/impl/sdk/ey;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/ey;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/ey;

    new-instance v2, Lcom/applovin/impl/sdk/ac;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/ac;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->i:Lcom/applovin/impl/sdk/ac;

    new-instance v2, Lcom/applovin/impl/sdk/av;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/av;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->j:Lcom/applovin/impl/sdk/av;

    new-instance v2, Lcom/applovin/impl/sdk/c;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->k:Lcom/applovin/impl/sdk/c;

    new-instance v2, Lcom/applovin/impl/sdk/au;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/au;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->l:Lcom/applovin/impl/sdk/au;

    new-instance v2, Lcom/applovin/impl/sdk/ag;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/ag;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->o:Lcom/applovin/impl/sdk/ag;

    new-instance v2, Lcom/applovin/impl/sdk/p;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/p;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->q:Lcom/applovin/impl/sdk/p;

    new-instance v2, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->r:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    new-instance v2, Lcom/applovin/impl/sdk/de;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/de;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->s:Lcom/applovin/impl/sdk/de;

    new-instance v2, Lcom/applovin/impl/sdk/PostbackServiceImpl;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/PostbackServiceImpl;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->t:Lcom/applovin/impl/sdk/PostbackServiceImpl;

    new-instance v2, Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/EventServiceImpl;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->u:Lcom/applovin/impl/sdk/EventServiceImpl;

    new-instance v2, Lcom/applovin/impl/sdk/MediationServiceImpl;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/MediationServiceImpl;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->v:Lcom/applovin/impl/sdk/MediationServiceImpl;

    new-instance v2, Lcom/applovin/impl/sdk/dn;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/dn;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->w:Lcom/applovin/impl/sdk/dn;

    new-instance v2, Lcom/applovin/impl/sdk/l;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/l;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->m:Lcom/applovin/impl/sdk/l;

    new-instance v2, Lcom/applovin/impl/sdk/dc;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/dc;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->n:Lcom/applovin/impl/sdk/dc;

    invoke-static {}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->i()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->A:Z

    const-string v2, "AppLovinSdk"

    const-string v4, "Unable to initialize AppLovin SDK: Android SDK version has to be at least level 8"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_3

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->B:Z

    const-string v2, "AppLovinSdk"

    const-string v4, "Unable to find AppLovin SDK key. Please add     meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AppLovinSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Called with an invalid SDK key from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->hasCriticalErrors()Z

    move-result v2

    if-nez v2, :cond_6

    instance-of v2, p2, Lcom/applovin/impl/sdk/bs;

    if-eqz v2, :cond_4

    move-object v0, p2

    check-cast v0, Lcom/applovin/impl/sdk/bs;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/bs;->a()Lcom/applovin/impl/sdk/y;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/applovin/impl/sdk/x;->a(Lcom/applovin/impl/sdk/y;)V

    :cond_4
    invoke-direct {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->j()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/ea;

    sget-object v3, Lcom/applovin/impl/sdk/dx;->b:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/ea;->a(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/ea;

    invoke-virtual {v2, p2}, Lcom/applovin/impl/sdk/ea;->a(Lcom/applovin/sdk/AppLovinSdkSettings;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/ea;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ea;->a()V

    :cond_5
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g()V

    :goto_0
    return-void

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AppLovinSdk"

    const-string v4, "Failed to load AppLovin SDK, ad serving will be disabled"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v7}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Z)V

    goto :goto_0
.end method

.method public initializeSdk()V
    .locals 0

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->y:Z

    return v0
.end method

.method public isFireOS()Z
    .locals 3

    sget-object v0, Lcom/applovin/impl/sdk/dx;->cc:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aa;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitializedInMainActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->C:Z

    return v0
.end method

.method public put(Lcom/applovin/impl/sdk/ec;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/ec",
            "<TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Lcom/applovin/impl/sdk/ed;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/ed;->a(Lcom/applovin/impl/sdk/ec;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Lcom/applovin/impl/sdk/ec;Ljava/lang/Object;Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/ec",
            "<TT;>;TT;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Lcom/applovin/impl/sdk/ed;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/ed;->a(Lcom/applovin/impl/sdk/ec;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Lcom/applovin/impl/sdk/ed;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/ed;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public remove(Lcom/applovin/impl/sdk/ec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/ec",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Lcom/applovin/impl/sdk/ed;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ed;->a(Lcom/applovin/impl/sdk/ec;)V

    return-void
.end method

.method public retrieveSetting(Ljava/lang/String;Lcom/applovin/impl/sdk/dz;)Lcom/applovin/impl/sdk/dz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/dz",
            "<TT;>;)",
            "Lcom/applovin/impl/sdk/dz;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/ea;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/ea;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/dz;)Lcom/applovin/impl/sdk/dz;

    move-result-object v0

    return-object v0
.end method

.method public setInitializedInMainActivity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->C:Z

    return-void
.end method

.method public setPluginVersion(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/ea;

    sget-object v1, Lcom/applovin/impl/sdk/dx;->F:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/ea;->a(Lcom/applovin/impl/sdk/dz;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/ea;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ea;->a()V

    return-void
.end method
