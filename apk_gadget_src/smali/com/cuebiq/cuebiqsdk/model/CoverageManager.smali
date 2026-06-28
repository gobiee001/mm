.class public Lcom/cuebiq/cuebiqsdk/model/CoverageManager;
.super Ljava/lang/Object;
.source "CoverageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;,
        Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;
    }
.end annotation


# static fields
.field private static instance:Lcom/cuebiq/cuebiqsdk/model/CoverageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/cuebiq/cuebiqsdk/model/CoverageManager;Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/cuebiq/cuebiqsdk/model/CoverageManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;
    .param p3, "x3"    # Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->coverage(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V

    return-void
.end method

.method private coverage(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;
    .param p3, "listener"    # Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    .prologue
    .line 89
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->retrieveAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "appKey":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "packageName":Ljava/lang/String;
    new-instance v1, Lcom/cuebiq/cuebiqsdk/api/CoverageRequest;

    invoke-virtual {p0, p2}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->extractQueryParams(Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Lcom/cuebiq/cuebiqsdk/api/CoverageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    .local v1, "coverageRequest":Lcom/cuebiq/cuebiqsdk/api/CoverageRequest;
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/injection/Injection;->provideNetworkLayer()Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;

    move-result-object v2

    .line 94
    .local v2, "networkLayer":Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;
    new-instance v4, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;

    invoke-direct {v4, p1, p3}, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;-><init>(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V

    invoke-virtual {v2, v1, v4}, Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;->callAsync(Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;Lokhttp3/Callback;)V

    .line 95
    return-void
.end method

.method public static get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->instance:Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;-><init>()V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->instance:Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    .line 144
    :cond_0
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->instance:Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    return-object v0
.end method

.method private getGAIDAndCallCoverage(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    .prologue
    .line 72
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$1;-><init>(Lcom/cuebiq/cuebiqsdk/model/CoverageManager;Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V

    invoke-direct {v1, v2, v3}, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;-><init>(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 86
    return-void
.end method


# virtual methods
.method public checkCoverage(Landroid/content/Context;ZLcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceCoverage"    # Z
    .param p3, "listener"    # Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->getCoverageStatus(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    move-result-object v7

    .line 47
    .local v7, "coverageStatus":Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CuebiqSDK -> Coverage Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 49
    if-eqz p2, :cond_1

    .line 50
    invoke-direct {p0, p1, p3}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->getGAIDAndCallCoverage(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$2;->$SwitchMap$com$cuebiq$cuebiqsdk$model$CoverageManager$CoverageStatus:[I

    invoke-virtual {v7}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 56
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->getGAIDAndCallCoverage(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V

    goto :goto_0

    .line 59
    :pswitch_1
    const-string v1, "be1"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->collectCustomEvents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->activateLocationTracking(Landroid/content/Context;)V

    goto :goto_0

    .line 63
    :pswitch_2
    const/16 v0, 0x3e7

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x8000000

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    .line 64
    .local v6, "alarmUp":Z
    :goto_1
    if-nez v6, :cond_0

    .line 65
    const-wide/32 v0, 0x2932e00

    invoke-virtual {p0, p1, v0, v1}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->scheduleCheckCoverage(Landroid/content/Context;J)V

    goto :goto_0

    .line 63
    .end local v6    # "alarmUp":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public extractQueryParams(Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;)Ljava/util/Map;
    .locals 6
    .param p1, "stats"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "queryParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 100
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "queryParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 102
    .restart local v1    # "queryParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->isAfterCoverage()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->isGAIDOptout()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->isLocationON()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->isWifiAlwaysScanning()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "flags":Ljava/lang/String;
    const-string v2, "f"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->getGoogleAid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v2, "os"

    const-string v3, "a"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v2, "mcc"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->getMcc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v2, "mnc"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->getMnc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v0    # "flags":Ljava/lang/String;
    :cond_0
    return-object v1

    :cond_1
    move v2, v4

    .line 102
    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_3

    :cond_5
    move v3, v4

    goto :goto_4
.end method

.method public getCoverageStatus(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->getCoverageStatus(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    move-result-object v0

    return-object v0
.end method

.method public isCoverageOpened(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->getCoverageStatus(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    move-result-object v0

    sget-object v1, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->CHECKED:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleCheckCoverage(Landroid/content/Context;J)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeInterval"    # J

    .prologue
    const/4 v8, 0x0

    .line 115
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->disableTracking(Landroid/content/Context;)V

    .line 117
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v2, "intent":Landroid/content/Intent;
    const/16 v4, 0x3e7

    const/high16 v5, 0x8000000

    invoke-static {p1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 120
    .local v3, "pi":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 121
    .local v0, "alarm":Landroid/app/AlarmManager;
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p2

    invoke-virtual {v0, v4, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "alarm":Landroid/app/AlarmManager;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pi":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    new-instance v4, Lcom/cuebiq/cuebiqsdk/task/LogTask;

    const-string v5, "Error during Coverage Schedule"

    invoke-direct {v4, p1, v5, v1}, Lcom/cuebiq/cuebiqsdk/task/LogTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v5, v8, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setCoverageStatus(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    .prologue
    .line 133
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->setCoverageStatus(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;)V

    .line 134
    return-void
.end method
