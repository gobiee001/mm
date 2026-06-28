.class public Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;
.super Ljava/lang/Object;
.source "GeoLocationStats.java"


# instance fields
.field private afterCoverage:Z

.field private appKey:Ljava/lang/String;

.field private googleAid:Ljava/lang/String;

.field private isGAIDOptout:Z

.field private locationON:Z

.field private mcc:Ljava/lang/String;

.field private mnc:Ljava/lang/String;

.field private wifiAlwaysScanning:Z

.field private wifiEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;Z)Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isAfterCoverage"    # Z

    .prologue
    .line 103
    new-instance v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;

    invoke-direct {v1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;-><init>()V

    .line 104
    .local v1, "stats":Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;
    invoke-virtual {v1, p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->setAfterCoverage(Z)V

    .line 105
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->retrieveAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->setAppKey(Ljava/lang/String;)V

    .line 106
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->setLocationON(Z)V

    .line 107
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->setWifiEnabled(Z)V

    .line 108
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isWifiAlwaysScanning(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->setWifiAlwaysScanning(Z)V

    .line 110
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->getMCCandMNC(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "MCCandMNC":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 113
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->setMcc(Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->setMnc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->googleAid:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public isAfterCoverage()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->afterCoverage:Z

    return v0
.end method

.method public isGAIDOptout()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->isGAIDOptout:Z

    return v0
.end method

.method public isLocationON()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->locationON:Z

    return v0
.end method

.method public isWifiAlwaysScanning()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->wifiAlwaysScanning:Z

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->wifiEnabled:Z

    return v0
.end method

.method public setAfterCoverage(Z)V
    .locals 0
    .param p1, "afterCoverage"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->afterCoverage:Z

    .line 79
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->appKey:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setGoogleAid(Ljava/lang/String;)V
    .locals 0
    .param p1, "googleAid"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->googleAid:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setIsGAIDOptout(Z)V
    .locals 0
    .param p1, "isGAIDOptout"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->isGAIDOptout:Z

    .line 71
    return-void
.end method

.method public setLocationON(Z)V
    .locals 0
    .param p1, "locationON"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->locationON:Z

    .line 95
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->mcc:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mnc"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->mnc:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setWifiAlwaysScanning(Z)V
    .locals 0
    .param p1, "wifiAlwaysScanning"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->wifiAlwaysScanning:Z

    .line 55
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 0
    .param p1, "wifiEnabled"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->wifiEnabled:Z

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
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
