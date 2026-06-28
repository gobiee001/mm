.class final Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;
.super Ljava/lang/Object;
.source "PersistenceManagerImpl.java"

# interfaces
.implements Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;


# static fields
.field private static final BEA_ANALYTICS_APP_OPEN_COUNTER:Ljava/lang/String; = "bea_analytics_app_open_counter"

.field private static final BEA_ANALYTICS_COVERAGE_CHECKER_COUNTER:Ljava/lang/String; = "bea_analytics_coverage_checker_counter"

.field private static final BEA_APP_KEY:Ljava/lang/String; = "beaudience_appkey"

.field private static final BEA_CONFIGURATION:Ljava/lang/String; = "beaudience_configuration"

.field private static final BEA_COVERAGE_STATUS:Ljava/lang/String; = "bea_coverage_status"

.field private static final BEA_CURRENT_ACQUISITION_RATE:Ljava/lang/String; = "bea_current_acquisition_rate"

.field private static final BEA_CUSTOM_PUBLISHER_ID:Ljava/lang/String; = "bea_custom_publisher_id"

.field private static final BEA_IS_GAID_DISABLED:Ljava/lang/String; = "beaudience_is_gai_disabled"

.field private static final BEA_LOCATION_ON:Ljava/lang/String; = "bea_location_on"

.field private static final CUEBIQ_PREFERENCE:Ljava/lang/String; = "cuebiq_preference"

.field private static final Q_NEXT_FLUSH_COUNTER:Ljava/lang/String; = "q_next_flush_counter"

.field private static final REQUESTS_KEY:Ljava/lang/String; = "beaudience_requests"

.field private static final REQUEST_CACHED:Ljava/lang/String; = "beaudience_cache"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-string v0, "cuebiq_preference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppOpenCounter(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bea_analytics_app_open_counter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCoverageCounter(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bea_analytics_coverage_checker_counter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCoverageStatus(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bea_coverage_status"

    sget-object v2, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->UNCHECKED:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->valueOf(Ljava/lang/String;)Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAcquisitionMills(Landroid/content/Context;)J
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bea_current_acquisition_rate"

    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMina()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCustomPublisherID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 87
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "bea_custom_publisher_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLocationON(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bea_location_on"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getNextFlushCounter(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "q_next_flush_counter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public increaseAppOpenCounter(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getAppOpenCounter(Landroid/content/Context;)I

    move-result v0

    .line 172
    .local v0, "appOpenCounter":I
    add-int/lit8 v0, v0, 0x1

    .line 173
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bea_analytics_app_open_counter"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    return-void
.end method

.method public increaseCoverageCounter(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCoverageCounter(Landroid/content/Context;)I

    move-result v0

    .line 150
    .local v0, "coverageCounter":I
    add-int/lit8 v0, v0, 0x1

    .line 151
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bea_analytics_coverage_checker_counter"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    return-void
.end method

.method public isGAIDDisabled(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "beaudience_is_gai_disabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public persistRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    .prologue
    const/4 v5, 0x0

    .line 43
    new-instance v1, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;

    const-string v2, "beaudience_cache"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;-><init>(Landroid/content/SharedPreferences;)V

    .line 44
    .local v1, "preferences":Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;
    if-nez p2, :cond_0

    .line 45
    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->edit()Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v2

    const-string v3, "beaudience_requests"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->apply()V

    .line 55
    :goto_0
    return-void

    .line 48
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->edit()Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v2

    const-string v3, "beaudience_requests"

    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->apply()V

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collector -> Request cached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->edit()Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v2

    const-string v3, "beaudience_requests"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->apply()V

    .line 52
    new-instance v2, Lcom/cuebiq/cuebiqsdk/task/LogTask;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error persistRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4, v0}, Lcom/cuebiq/cuebiqsdk/task/LogTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public resetAppOpenCounter(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bea_analytics_app_open_counter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    return-void
.end method

.method public resetCoverageCounter(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bea_analytics_coverage_checker_counter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    return-void
.end method

.method public retrieveAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "beaudience_appkey"

    const-string v2, "aWildcard"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public retrieveBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 97
    .local v2, "preferences":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    invoke-direct {v1}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;-><init>()V

    .line 98
    .local v1, "config":Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    const-string v3, "beaudience_configuration"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "confString":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    sget-object v3, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->GSON:Lcom/google/gson/Gson;

    const-class v4, Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    instance-of v5, v3, Lcom/google/gson/Gson;

    if-nez v5, :cond_0

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "config":Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    :goto_0
    check-cast v1, Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    .line 104
    .restart local v1    # "config":Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    :goto_1
    return-object v1

    .line 100
    :cond_0
    check-cast v3, Lcom/google/gson/Gson;

    invoke-static {v3, v0, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "beaudience_configuration"

    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method public retrieveRequest(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 59
    new-instance v1, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;

    const-string v2, "beaudience_cache"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;-><init>(Landroid/content/SharedPreferences;)V

    .line 61
    .local v1, "preferences":Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;
    :try_start_0
    sget-object v2, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->GSON:Lcom/google/gson/Gson;

    const-string v3, "beaudience_requests"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    instance-of v5, v2, Lcom/google/gson/Gson;

    if-nez v5, :cond_0

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    .line 65
    :goto_1
    return-object v2

    .line 61
    :cond_0
    check-cast v2, Lcom/google/gson/Gson;

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Lcom/cuebiq/cuebiqsdk/task/LogTask;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error retrieveRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "beaudience_requests"

    const-string v5, "N/A"

    invoke-virtual {v1, v4, v5}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4, v0}, Lcom/cuebiq/cuebiqsdk/task/LogTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->edit()Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v2

    const-string v3, "beaudience_requests"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->apply()V

    .line 65
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public saveAppKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "beaudience_appkey"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    return-void
.end method

.method public saveBeAudienceConfiguration(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/config/Settings;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "beaudience_configuration"

    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    return-void
.end method

.method public saveCustomPublisherID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bea_custom_publisher_id"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    return-void
.end method

.method public setCoverageStatus(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coverageStatus"    # Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bea_coverage_status"

    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    return-void
.end method

.method public setCurrentAcquisitionMills(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "millis"    # J

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bea_current_acquisition_rate"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    return-void
.end method

.method public setIsGAIDDisabled(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isGoogleAdvDisabled"    # Z

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "beaudience_is_gai_disabled"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    return-void
.end method

.method public setLocationON(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationON"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bea_location_on"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    return-void
.end method

.method public setNextFlushingContent(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nextTry"    # I

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;->getCuebiqPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "q_next_flush_counter"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    return-void
.end method
