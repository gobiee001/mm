.class public Lcom/newrelic/agent/android/SavedState;
.super Lcom/newrelic/agent/android/harvest/HarvestAdapter;
.source "SavedState.java"


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final NEW_RELIC_AGENT_DISABLED_VERSION_KEY:Ljava/lang/String;

.field private final PREFERENCE_FILE_PREFIX:Ljava/lang/String;

.field private final PREF_ACTIVITY_TRACE_MIN_UTILIZATION:Ljava/lang/String;

.field private final PREF_AGENT_NAME:Ljava/lang/String;

.field private final PREF_AGENT_VERSION:Ljava/lang/String;

.field private final PREF_APP_BUILD:Ljava/lang/String;

.field private final PREF_APP_NAME:Ljava/lang/String;

.field private final PREF_APP_TOKEN:Ljava/lang/String;

.field private final PREF_APP_VERSION:Ljava/lang/String;

.field private final PREF_COLLECT_NETWORK_ERRORS:Ljava/lang/String;

.field private final PREF_CROSS_PROCESS_ID:Ljava/lang/String;

.field private final PREF_DATA_TOKEN:Ljava/lang/String;

.field private final PREF_DEVICE_ARCHITECTURE:Ljava/lang/String;

.field private final PREF_DEVICE_ID:Ljava/lang/String;

.field private final PREF_DEVICE_MANUFACTURER:Ljava/lang/String;

.field private final PREF_DEVICE_MODEL:Ljava/lang/String;

.field private final PREF_DEVICE_RUN_TIME:Ljava/lang/String;

.field private final PREF_DEVICE_SIZE:Ljava/lang/String;

.field private final PREF_ERROR_LIMIT:Ljava/lang/String;

.field private final PREF_HARVEST_INTERVAL:Ljava/lang/String;

.field private final PREF_MAX_TRANSACTION_AGE:Ljava/lang/String;

.field private final PREF_MAX_TRANSACTION_COUNT:Ljava/lang/String;

.field private final PREF_OS_BUILD:Ljava/lang/String;

.field private final PREF_OS_NAME:Ljava/lang/String;

.field private final PREF_OS_VERSION:Ljava/lang/String;

.field private final PREF_PACKAGE_ID:Ljava/lang/String;

.field private final PREF_PLATFORM:Ljava/lang/String;

.field private final PREF_PLATFORM_VERSION:Ljava/lang/String;

.field private final PREF_RESPONSE_BODY_LIMIT:Ljava/lang/String;

.field private final PREF_SERVER_TIMESTAMP:Ljava/lang/String;

.field private final PREF_STACK_TRACE_LIMIT:Ljava/lang/String;

.field private final PREF_VERSION_CODE:Ljava/lang/String;

.field private activityTraceMinUtilization:Ljava/lang/Float;

.field private final configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

.field private final connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

.field private final editor:Landroid/content/SharedPreferences$Editor;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/SavedState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestAdapter;-><init>()V

    .line 20
    const-string v0, "com.newrelic.android.agent.v1_"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREFERENCE_FILE_PREFIX:Ljava/lang/String;

    .line 23
    const-string v0, "maxTransactionCount"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_MAX_TRANSACTION_COUNT:Ljava/lang/String;

    .line 24
    const-string v0, "maxTransactionAgeInSeconds"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_MAX_TRANSACTION_AGE:Ljava/lang/String;

    .line 25
    const-string v0, "harvestIntervalInSeconds"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_HARVEST_INTERVAL:Ljava/lang/String;

    .line 26
    const-string v0, "serverTimestamp"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_SERVER_TIMESTAMP:Ljava/lang/String;

    .line 27
    const-string v0, "crossProcessId"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_CROSS_PROCESS_ID:Ljava/lang/String;

    .line 28
    const-string v0, "dataToken"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_DATA_TOKEN:Ljava/lang/String;

    .line 29
    const-string v0, "appToken"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_APP_TOKEN:Ljava/lang/String;

    .line 30
    const-string v0, "stackTraceLimit"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_STACK_TRACE_LIMIT:Ljava/lang/String;

    .line 31
    const-string v0, "responseBodyLimit"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_RESPONSE_BODY_LIMIT:Ljava/lang/String;

    .line 32
    const-string v0, "collectNetworkErrors"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_COLLECT_NETWORK_ERRORS:Ljava/lang/String;

    .line 33
    const-string v0, "errorLimit"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_ERROR_LIMIT:Ljava/lang/String;

    .line 34
    const-string v0, "NewRelicAgentDisabledVersion"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->NEW_RELIC_AGENT_DISABLED_VERSION_KEY:Ljava/lang/String;

    .line 35
    const-string v0, "activityTraceMinUtilization"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_ACTIVITY_TRACE_MIN_UTILIZATION:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .line 41
    const-string v0, "appName"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_APP_NAME:Ljava/lang/String;

    .line 42
    const-string v0, "appVersion"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_APP_VERSION:Ljava/lang/String;

    .line 43
    const-string v0, "appBuild"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_APP_BUILD:Ljava/lang/String;

    .line 44
    const-string v0, "packageId"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_PACKAGE_ID:Ljava/lang/String;

    .line 45
    const-string v0, "versionCode"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_VERSION_CODE:Ljava/lang/String;

    .line 46
    const-string v0, "agentName"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_AGENT_NAME:Ljava/lang/String;

    .line 47
    const-string v0, "agentVersion"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_AGENT_VERSION:Ljava/lang/String;

    .line 48
    const-string v0, "deviceArchitecture"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_DEVICE_ARCHITECTURE:Ljava/lang/String;

    .line 49
    const-string v0, "deviceId"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_DEVICE_ID:Ljava/lang/String;

    .line 50
    const-string v0, "deviceModel"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_DEVICE_MODEL:Ljava/lang/String;

    .line 51
    const-string v0, "deviceManufacturer"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_DEVICE_MANUFACTURER:Ljava/lang/String;

    .line 52
    const-string v0, "deviceRunTime"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_DEVICE_RUN_TIME:Ljava/lang/String;

    .line 53
    const-string v0, "deviceSize"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_DEVICE_SIZE:Ljava/lang/String;

    .line 54
    const-string v0, "osName"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_OS_NAME:Ljava/lang/String;

    .line 55
    const-string v0, "osBuild"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_OS_BUILD:Ljava/lang/String;

    .line 56
    const-string v0, "osVersion"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_OS_VERSION:Ljava/lang/String;

    .line 57
    const-string v0, "platform"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_PLATFORM:Ljava/lang/String;

    .line 58
    const-string v0, "platformVersion"

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_PLATFORM_VERSION:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/newrelic/agent/android/harvest/ConnectInformation;

    new-instance v1, Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    invoke-direct {v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;-><init>()V

    new-instance v2, Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-direct {v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/newrelic/agent/android/harvest/ConnectInformation;-><init>(Lcom/newrelic/agent/android/harvest/ApplicationInformation;Lcom/newrelic/agent/android/harvest/DeviceInformation;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getPreferenceFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    .line 69
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->loadHarvestConfiguration()V

    .line 71
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->loadConnectInformation()V

    .line 72
    return-void
.end method

.method private getPreferenceFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.newrelic.android.agent.v1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private saveApplicationInformation(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)V
    .locals 2
    .param p1, "applicationInformation"    # Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    .prologue
    .line 154
    const-string v0, "appName"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "appVersion"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "appBuild"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getAppBuild()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "packageId"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "versionCode"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getVersionCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;I)V

    .line 159
    return-void
.end method

.method private saveDeviceInformation(Lcom/newrelic/agent/android/harvest/DeviceInformation;)V
    .locals 2
    .param p1, "deviceInformation"    # Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .prologue
    .line 162
    const-string v0, "agentName"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getAgentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "agentVersion"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getAgentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "deviceArchitecture"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "deviceId"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "deviceModel"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "deviceManufacturer"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "deviceRunTime"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getRunTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "deviceSize"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "osName"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "osBuild"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsBuild()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "osVersion"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "platform"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getApplicationPlatform()Lcom/newrelic/agent/android/ApplicationPlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/ApplicationPlatform;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "platformVersion"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getApplicationPlatformVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 520
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 521
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setDefaultValues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 525
    return-void

    .line 523
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getActivityTraceMinUtilization()F
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->activityTraceMinUtilization:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 413
    const-string v0, "activityTraceMinUtilization"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->activityTraceMinUtilization:Ljava/lang/Float;

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->activityTraceMinUtilization:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getAgentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    const-string v0, "agentName"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAgentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    const-string v0, "agentVersion"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    const-string v0, "appBuild"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    const-string v0, "appName"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "appToken"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    const-string v0, "appVersion"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    const-string v0, "platform"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    const-string v0, "platformVersion"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getConnectInformation()Lcom/newrelic/agent/android/harvest/ConnectInformation;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    return-object v0
.end method

.method public getCrossProcessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    const-string v0, "crossProcessId"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataToken()[I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 345
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 346
    .local v1, "dataToken":[I
    const-string v6, "dataToken"

    invoke-virtual {p0, v6}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "dataTokenString":Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v1, v5

    .line 366
    .end local v1    # "dataToken":[I
    :goto_0
    return-object v1

    .line 352
    .restart local v1    # "dataToken":[I
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 353
    .local v4, "tokener":Lorg/json/JSONTokener;
    if-nez v4, :cond_1

    move-object v1, v5

    .line 354
    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 358
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_2

    move-object v1, v5

    .line 359
    goto :goto_0

    .line 361
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v1, v5

    .line 362
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v1, v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v4    # "tokener":Lorg/json/JSONTokener;
    :catch_0
    move-exception v3

    .line 364
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    const-string v0, "deviceArchitecture"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    const-string v0, "deviceId"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    const-string v0, "deviceManufacturer"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    const-string v0, "deviceModel"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceRunTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    const-string v0, "deviceRunTime"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    const-string v0, "deviceSize"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    const-string v0, "NewRelicAgentDisabledVersion"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorLimit()I
    .locals 1

    .prologue
    .line 403
    const-string v0, "errorLimit"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 327
    iget-object v1, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    const/4 v1, 0x0

    .line 333
    :goto_0
    return-object v1

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 333
    .local v0, "f":F
    mul-float v1, v0, v3

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0
.end method

.method public getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    return-object v0
.end method

.method public getHarvestInterval()J
    .locals 2

    .prologue
    .line 383
    const-string v0, "harvestIntervalInSeconds"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHarvestIntervalInSeconds()J
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getHarvestInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxTransactionAge()J
    .locals 2

    .prologue
    .line 387
    const-string v0, "maxTransactionAgeInSeconds"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxTransactionAgeInSeconds()J
    .locals 2

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getMaxTransactionAge()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxTransactionCount()J
    .locals 2

    .prologue
    .line 391
    const-string v0, "maxTransactionCount"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOsBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    const-string v0, "osBuild"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    const-string v0, "osName"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    const-string v0, "osVersion"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    const-string v0, "packageId"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Lcom/newrelic/agent/android/ApplicationPlatform;
    .locals 2

    .prologue
    .line 500
    sget-object v0, Lcom/newrelic/agent/android/ApplicationPlatform;->Native:Lcom/newrelic/agent/android/ApplicationPlatform;

    .line 502
    .local v0, "applicationPlatform":Lcom/newrelic/agent/android/ApplicationPlatform;
    :try_start_0
    const-string v1, "platform"

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/ApplicationPlatform;->valueOf(Ljava/lang/String;)Lcom/newrelic/agent/android/ApplicationPlatform;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 505
    :goto_0
    return-object v0

    .line 503
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    const-string v0, "platformVersion"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBodyLimit()I
    .locals 1

    .prologue
    .line 399
    const-string v0, "responseBodyLimit"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getServerTimestamp()J
    .locals 2

    .prologue
    .line 379
    const-string v0, "serverTimestamp"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStackTraceLimit()I
    .locals 1

    .prologue
    .line 395
    const-string v0, "stackTraceLimit"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 308
    iget-object v1, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 436
    const-string v0, "versionCode"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isCollectingNetworkErrors()Z
    .locals 1

    .prologue
    .line 375
    const-string v0, "collectNetworkErrors"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadConnectInformation()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;-><init>()V

    .line 179
    .local v0, "applicationInformation":Lcom/newrelic/agent/android/harvest/ApplicationInformation;
    const-string v2, "appName"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->setAppName(Ljava/lang/String;)V

    .line 181
    :cond_0
    const-string v2, "appVersion"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->setAppVersion(Ljava/lang/String;)V

    .line 183
    :cond_1
    const-string v2, "appBuild"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getAppBuild()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->setAppBuild(Ljava/lang/String;)V

    .line 185
    :cond_2
    const-string v2, "packageId"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getPackageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->setPackageId(Ljava/lang/String;)V

    .line 187
    :cond_3
    const-string v2, "versionCode"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getVersionCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->setVersionCode(I)V

    .line 190
    :cond_4
    new-instance v1, Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-direct {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;-><init>()V

    .line 191
    .local v1, "deviceInformation":Lcom/newrelic/agent/android/harvest/DeviceInformation;
    const-string v2, "agentName"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 192
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getAgentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setAgentName(Ljava/lang/String;)V

    .line 193
    :cond_5
    const-string v2, "agentVersion"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 194
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getAgentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setAgentVersion(Ljava/lang/String;)V

    .line 195
    :cond_6
    const-string v2, "deviceArchitecture"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 196
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getDeviceArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setArchitecture(Ljava/lang/String;)V

    .line 197
    :cond_7
    const-string v2, "deviceId"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 198
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setDeviceId(Ljava/lang/String;)V

    .line 199
    :cond_8
    const-string v2, "deviceModel"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 200
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setModel(Ljava/lang/String;)V

    .line 201
    :cond_9
    const-string v2, "deviceManufacturer"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 202
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setManufacturer(Ljava/lang/String;)V

    .line 203
    :cond_a
    const-string v2, "deviceRunTime"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 204
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getDeviceRunTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setRunTime(Ljava/lang/String;)V

    .line 205
    :cond_b
    const-string v2, "deviceSize"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 206
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getDeviceSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setSize(Ljava/lang/String;)V

    .line 207
    :cond_c
    const-string v2, "osName"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 208
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getOsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsName(Ljava/lang/String;)V

    .line 209
    :cond_d
    const-string v2, "osBuild"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 210
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getOsBuild()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsBuild(Ljava/lang/String;)V

    .line 211
    :cond_e
    const-string v2, "osVersion"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 212
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsVersion(Ljava/lang/String;)V

    .line 213
    :cond_f
    const-string v2, "platform"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 214
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getPlatform()Lcom/newrelic/agent/android/ApplicationPlatform;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setApplicationPlatform(Lcom/newrelic/agent/android/ApplicationPlatform;)V

    .line 215
    :cond_10
    const-string v2, "platformVersion"

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 216
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getPlatformVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setApplicationPlatformVersion(Ljava/lang/String;)V

    .line 218
    :cond_11
    iget-object v2, p0, Lcom/newrelic/agent/android/SavedState;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-virtual {v2, v0}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->setApplicationInformation(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)V

    .line 219
    iget-object v2, p0, Lcom/newrelic/agent/android/SavedState;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-virtual {v2, v1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->setDeviceInformation(Lcom/newrelic/agent/android/harvest/DeviceInformation;)V

    .line 220
    return-void
.end method

.method public loadHarvestConfiguration()V
    .locals 4

    .prologue
    .line 104
    const-string v0, "dataToken"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getDataToken()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setData_token([I)V

    .line 106
    :cond_0
    const-string v0, "crossProcessId"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getCrossProcessId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setCross_process_id(Ljava/lang/String;)V

    .line 108
    :cond_1
    const-string v0, "serverTimestamp"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getServerTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setServer_timestamp(J)V

    .line 110
    :cond_2
    const-string v0, "harvestIntervalInSeconds"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getHarvestIntervalInSeconds()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setData_report_period(I)V

    .line 112
    :cond_3
    const-string v0, "maxTransactionAgeInSeconds"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getMaxTransactionAgeInSeconds()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setReport_max_transaction_age(I)V

    .line 114
    :cond_4
    const-string v0, "maxTransactionCount"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getMaxTransactionCount()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setReport_max_transaction_count(I)V

    .line 116
    :cond_5
    const-string v0, "stackTraceLimit"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getStackTraceLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setStack_trace_limit(I)V

    .line 118
    :cond_6
    const-string v0, "responseBodyLimit"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 119
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getResponseBodyLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setResponse_body_limit(I)V

    .line 120
    :cond_7
    const-string v0, "collectNetworkErrors"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 121
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->isCollectingNetworkErrors()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setCollect_network_errors(Z)V

    .line 122
    :cond_8
    const-string v0, "errorLimit"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 123
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getErrorLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setError_limit(I)V

    .line 124
    :cond_9
    const-string v0, "activityTraceMinUtilization"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 125
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getActivityTraceMinUtilization()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setActivity_trace_min_utilization(D)V

    .line 127
    :cond_a
    sget-object v0, Lcom/newrelic/agent/android/SavedState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onHarvestComplete()V
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->saveHarvestConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 242
    return-void
.end method

.method public onHarvestConnected()V
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->saveHarvestConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 237
    return-void
.end method

.method public onHarvestDisabled()V
    .locals 4

    .prologue
    .line 252
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getAgentVersion()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "agentVersion":Ljava/lang/String;
    sget-object v1, Lcom/newrelic/agent/android/SavedState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling agent version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->saveDisabledVersion(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public onHarvestDisconnected()V
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lcom/newrelic/agent/android/SavedState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Clearing harvest configuration."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->clear()V

    .line 248
    return-void
.end method

.method public save(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 298
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 301
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    return-void

    .line 303
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public save(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 281
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 285
    return-void

    .line 283
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public save(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 288
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 291
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 295
    return-void

    .line 293
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 265
    return-void

    .line 263
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public save(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 268
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 271
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 275
    return-void

    .line 273
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public saveActivityTraceMinUtilization(F)V
    .locals 1
    .param p1, "activityTraceMinUtilization"    # F

    .prologue
    .line 407
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->activityTraceMinUtilization:Ljava/lang/Float;

    .line 408
    const-string v0, "activityTraceMinUtilization"

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;F)V

    .line 409
    return-void
.end method

.method public saveAppToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "appToken"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v0, "appToken"

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public saveConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V
    .locals 1
    .param p1, "newConnectInformation"    # Lcom/newrelic/agent/android/harvest/ConnectInformation;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->saveApplicationInformation(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)V

    .line 135
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->saveDeviceInformation(Lcom/newrelic/agent/android/harvest/DeviceInformation;)V

    .line 137
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->loadConnectInformation()V

    goto :goto_0
.end method

.method public saveDeviceId(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v0, "deviceId"

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setDeviceId(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public saveDisabledVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 341
    const-string v0, "NewRelicAgentDisabledVersion"

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public saveHarvestConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .locals 4
    .param p1, "newConfiguration"    # Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v1, p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DataToken;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getData_token()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setData_token([I)V

    .line 82
    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/SavedState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DataToken;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "newDataToken":Ljava/lang/String;
    sget-object v1, Lcom/newrelic/agent/android/SavedState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!! saving data token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 86
    const-string v1, "dataToken"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "crossProcessId"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getCross_process_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "serverTimestamp"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getServer_timestamp()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;J)V

    .line 89
    const-string v1, "harvestIntervalInSeconds"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getData_report_period()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;J)V

    .line 90
    const-string v1, "maxTransactionAgeInSeconds"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReport_max_transaction_age()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;J)V

    .line 91
    const-string v1, "maxTransactionCount"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReport_max_transaction_count()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;J)V

    .line 92
    const-string v1, "stackTraceLimit"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getStack_trace_limit()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;I)V

    .line 93
    const-string v1, "responseBodyLimit"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getResponse_body_limit()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;I)V

    .line 94
    const-string v1, "collectNetworkErrors"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->isCollect_network_errors()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Z)V

    .line 95
    const-string v1, "errorLimit"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getError_limit()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;I)V

    .line 97
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getActivity_trace_min_utilization()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/SavedState;->saveActivityTraceMinUtilization(F)V

    .line 100
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->loadHarvestConfiguration()V

    goto/16 :goto_0
.end method
