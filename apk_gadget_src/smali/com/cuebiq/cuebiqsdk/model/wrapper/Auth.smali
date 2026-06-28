.class public Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;
.super Ljava/lang/Object;
.source "Auth.java"


# instance fields
.field private anonymousID:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private appPackageName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private customPublisherID:Ljava/lang/String;

.field private googleAdvertiserID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;-><init>()V

    .line 82
    .local v0, "auth":Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->setAppPackageName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->setAppVersion(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->retrieveAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->setAppKey(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->getCustomPublisherID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->setCustomPublisherID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAnonymousID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->anonymousID:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomPublisherID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->customPublisherID:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAdvertiserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->googleAdvertiserID:Ljava/lang/String;

    return-object v0
.end method

.method public setAnonymousID(Ljava/lang/String;)V
    .locals 0
    .param p1, "anonymousID"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->anonymousID:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->appKey:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appPackageName"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->appPackageName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->appVersion:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setCustomPublisherID(Ljava/lang/String;)V
    .locals 0
    .param p1, "customPublisherID"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->customPublisherID:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setGoogleAdvertiserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "googleAdvertiserID"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->googleAdvertiserID:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
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
