.class public Lcom/newrelic/agent/android/AndroidAgentImpl;
.super Ljava/lang/Object;
.source "AndroidAgentImpl.java"

# interfaces
.implements Lcom/newrelic/agent/android/AgentImpl;
.implements Lcom/newrelic/agent/android/api/v1/ConnectionListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;
.implements Lcom/newrelic/agent/android/background/ApplicationStateListener;


# static fields
.field private static final LOCATION_ACCURACY_THRESHOLD:F = 500.0f

.field private static final cmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

.field private applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

.field private final context:Landroid/content/Context;

.field private deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

.field private final encoder:Lcom/newrelic/agent/android/util/Encoder;

.field private locationListener:Landroid/location/LocationListener;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private machineMeasurementConsumer:Lcom/newrelic/agent/android/sample/MachineMeasurementConsumer;

.field private savedState:Lcom/newrelic/agent/android/SavedState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 599
    new-instance v0, Lcom/newrelic/agent/android/AndroidAgentImpl$1;

    invoke-direct {v0}, Lcom/newrelic/agent/android/AndroidAgentImpl$1;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->cmp:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/AgentInitializationException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    .line 78
    new-instance v3, Lcom/newrelic/agent/android/util/AndroidEncoder;

    invoke-direct {v3}, Lcom/newrelic/agent/android/util/AndroidEncoder;-><init>()V

    iput-object v3, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->encoder:Lcom/newrelic/agent/android/util/Encoder;

    .line 91
    invoke-static {p1}, Lcom/newrelic/agent/android/AndroidAgentImpl;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    .line 94
    new-instance v3, Lcom/newrelic/agent/android/SavedState;

    iget-object v4, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/newrelic/agent/android/SavedState;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    .line 96
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    new-instance v3, Lcom/newrelic/agent/android/AgentInitializationException;

    const-string v4, "This version of the agent has been disabled"

    invoke-direct {v3, v4}, Lcom/newrelic/agent/android/AgentInitializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->initApplicationInformation()V

    .line 102
    invoke-virtual {p2}, Lcom/newrelic/agent/android/AgentConfiguration;->useLocationService()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getPackageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 103
    sget-object v3, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Location stats enabled"

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->addLocationListener()V

    .line 108
    :cond_1
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setTraceMachineInterface(Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;)V

    .line 110
    new-instance v3, Lcom/newrelic/agent/android/util/JsonCrashStore;

    invoke-direct {v3, p1}, Lcom/newrelic/agent/android/util/JsonCrashStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v3}, Lcom/newrelic/agent/android/AgentConfiguration;->setCrashStore(Lcom/newrelic/agent/android/crashes/CrashStore;)V

    .line 112
    new-instance v3, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;

    invoke-direct {v3, p1}, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v3}, Lcom/newrelic/agent/android/AgentConfiguration;->setAnalyticAttributeStore(Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;)V

    .line 114
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->addApplicationStateListener(Lcom/newrelic/agent/android/background/ApplicationStateListener;)V

    .line 116
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_3

    .line 120
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getUnityInstrumentationFlag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "YES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 121
    new-instance v2, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;

    invoke-direct {v2}, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;-><init>()V

    .line 122
    .local v2, "backgroundListener":Lcom/newrelic/agent/android/util/UiBackgroundListener;
    instance-of v3, v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v3, :cond_2

    .line 124
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Application;

    if-eqz v3, :cond_2

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 126
    .local v1, "application":Landroid/app/Application;
    move-object v0, v2

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    move-object v3, v0

    invoke-virtual {v1, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "application":Landroid/app/Application;
    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 138
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->setupSession()V

    .line 140
    .end local v2    # "backgroundListener":Lcom/newrelic/agent/android/util/UiBackgroundListener;
    :cond_3
    return-void

    .line 133
    :cond_4
    new-instance v2, Lcom/newrelic/agent/android/util/UiBackgroundListener;

    invoke-direct {v2}, Lcom/newrelic/agent/android/util/UiBackgroundListener;-><init>()V

    .restart local v2    # "backgroundListener":Lcom/newrelic/agent/android/util/UiBackgroundListener;
    goto :goto_0

    .line 128
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/newrelic/agent/android/AndroidAgentImpl;Landroid/location/Location;)Z
    .locals 1
    .param p0, "x0"    # Lcom/newrelic/agent/android/AndroidAgentImpl;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/AndroidAgentImpl;->isAccurate(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/newrelic/agent/android/AndroidAgentImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/newrelic/agent/android/AndroidAgentImpl;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->removeLocationListener()V

    return-void
.end method

.method private addLocationListener()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 614
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 615
    .local v0, "locationManager":Landroid/location/LocationManager;
    if-nez v0, :cond_0

    .line 616
    sget-object v1, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Unable to retrieve reference to LocationManager. Disabling location listener."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 646
    :goto_0
    return-void

    .line 620
    :cond_0
    new-instance v1, Lcom/newrelic/agent/android/AndroidAgentImpl$2;

    invoke-direct {v1, p0}, Lcom/newrelic/agent/android/AndroidAgentImpl$2;-><init>(Lcom/newrelic/agent/android/AndroidAgentImpl;)V

    iput-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->locationListener:Landroid/location/LocationListener;

    .line 645
    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private static appContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 368
    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 371
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    return-object p0
.end method

.method private static deviceForm(Landroid/content/Context;)Lcom/newrelic/agent/android/api/v1/DeviceForm;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 344
    .local v0, "deviceSize":I
    packed-switch v0, :pswitch_data_0

    .line 358
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 359
    sget-object v1, Lcom/newrelic/agent/android/api/v1/DeviceForm;->XLARGE:Lcom/newrelic/agent/android/api/v1/DeviceForm;

    .line 361
    :goto_0
    return-object v1

    .line 346
    :pswitch_0
    sget-object v1, Lcom/newrelic/agent/android/api/v1/DeviceForm;->SMALL:Lcom/newrelic/agent/android/api/v1/DeviceForm;

    goto :goto_0

    .line 349
    :pswitch_1
    sget-object v1, Lcom/newrelic/agent/android/api/v1/DeviceForm;->NORMAL:Lcom/newrelic/agent/android/api/v1/DeviceForm;

    goto :goto_0

    .line 352
    :pswitch_2
    sget-object v1, Lcom/newrelic/agent/android/api/v1/DeviceForm;->LARGE:Lcom/newrelic/agent/android/api/v1/DeviceForm;

    goto :goto_0

    .line 361
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/api/v1/DeviceForm;->UNKNOWN:Lcom/newrelic/agent/android/api/v1/DeviceForm;

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 686
    iget-object v2, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/SavedState;->getConnectInformation()Lcom/newrelic/agent/android/harvest/ConnectInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "uuid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    new-instance v0, Lcom/newrelic/agent/android/util/PersistentUUID;

    iget-object v2, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/newrelic/agent/android/util/PersistentUUID;-><init>(Landroid/content/Context;)V

    .line 689
    .local v0, "persistentUUID":Lcom/newrelic/agent/android/util/PersistentUUID;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/util/PersistentUUID;->getPersistentUUID()Ljava/lang/String;

    move-result-object v1

    .line 690
    iget-object v2, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v2, v1}, Lcom/newrelic/agent/android/SavedState;->saveDeviceId(Ljava/lang/String;)V

    .line 692
    .end local v0    # "persistentUUID":Lcom/newrelic/agent/android/util/PersistentUUID;
    :cond_0
    return-object v1
.end method

.method private getUnhandledExceptionHandlerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 697
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 699
    :goto_0
    return-object v1

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unknown"

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 504
    :try_start_0
    new-instance v1, Lcom/newrelic/agent/android/AndroidAgentImpl;

    invoke-direct {v1, p0, p1}, Lcom/newrelic/agent/android/AndroidAgentImpl;-><init>(Landroid/content/Context;Lcom/newrelic/agent/android/AgentConfiguration;)V

    invoke-static {v1}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    .line 505
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->start()V
    :try_end_0
    .catch Lcom/newrelic/agent/android/AgentInitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Lcom/newrelic/agent/android/AgentInitializationException;
    sget-object v1, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize the agent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/newrelic/agent/android/AgentInitializationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAccurate(Landroid/location/Location;)Z
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v0, 0x0

    .line 674
    if-nez p1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pokeCanary()V
    .locals 0

    .prologue
    .line 726
    invoke-static {}, Lproguard/canary/NewRelicCanary;->canaryMethod()V

    .line 727
    return-void
.end method

.method private removeLocationListener()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 650
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->locationListener:Landroid/location/LocationListener;

    if-nez v1, :cond_0

    .line 665
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 656
    .local v0, "locationManager":Landroid/location/LocationManager;
    if-nez v0, :cond_1

    .line 657
    sget-object v1, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Unable to retrieve reference to LocationManager. Can\'t unregister location listener."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_1
    monitor-enter v0

    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 663
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->locationListener:Landroid/location/LocationListener;

    .line 664
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stop(Z)V
    .locals 10
    .param p1, "finalSendData"    # Z

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->finalizeSession()V

    .line 448
    invoke-static {}, Lcom/newrelic/agent/android/sample/Sampler;->shutdown()V

    .line 449
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->haltTracing()V

    .line 453
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/newrelic/agent/android/analytics/EventManager;->getEventsRecorded()I

    move-result v3

    .line 454
    .local v3, "eventsRecorded":I
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/newrelic/agent/android/analytics/EventManager;->getEventsEjected()I

    move-result v0

    .line 455
    .local v0, "eventsEjected":I
    const-string v1, "Supportability/Events/Recorded"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->NONE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->name()Ljava/lang/String;

    move-result-object v2

    int-to-double v4, v0

    int-to-double v6, v0

    sget-object v8, Lcom/newrelic/agent/android/metric/MetricUnit;->OPERATIONS:Lcom/newrelic/agent/android/metric/MetricUnit;

    sget-object v9, Lcom/newrelic/agent/android/metric/MetricUnit;->OPERATIONS:Lcom/newrelic/agent/android/metric/MetricUnit;

    invoke-static/range {v1 .. v9}, Lcom/newrelic/agent/android/Measurements;->addCustomMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V

    .line 457
    if-eqz p1, :cond_1

    .line 458
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v1

    const-string v2, "Supportability/AgentHealth/HarvestOnMainThread"

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 461
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->harvestNow()V

    .line 464
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->shutdown()V

    .line 465
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->clearActivityHistory()V

    .line 466
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->shutdown()V

    .line 467
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->shutdown()V

    .line 468
    return-void
.end method


# virtual methods
.method public addTransactionData(Lcom/newrelic/agent/android/api/common/TransactionData;)V
    .locals 0
    .param p1, "transactionData"    # Lcom/newrelic/agent/android/api/common/TransactionData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 379
    return-void
.end method

.method public applicationBackgrounded(Lcom/newrelic/agent/android/background/ApplicationStateEvent;)V
    .locals 2
    .param p1, "e"    # Lcom/newrelic/agent/android/background/ApplicationStateEvent;

    .prologue
    .line 543
    sget-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AndroidAgentImpl: application backgrounded "

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->stop()V

    .line 545
    return-void
.end method

.method public applicationForegrounded(Lcom/newrelic/agent/android/background/ApplicationStateEvent;)V
    .locals 2
    .param p1, "e"    # Lcom/newrelic/agent/android/background/ApplicationStateEvent;

    .prologue
    .line 537
    sget-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AndroidAgentImpl: application foregrounded "

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->start()V

    .line 539
    return-void
.end method

.method public connected(Lcom/newrelic/agent/android/api/v1/ConnectionEvent;)V
    .locals 2
    .param p1, "e"    # Lcom/newrelic/agent/android/api/v1/ConnectionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 520
    sget-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AndroidAgentImpl: connected "

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 472
    sget-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PERMANENTLY DISABLING AGENT v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/SavedState;->saveDisabledVersion(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 477
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->stop(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    sget-object v0, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-static {v0}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    .line 482
    return-void

    .line 479
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-static {v1}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    throw v0

    .line 476
    :catchall_1
    move-exception v0

    .line 477
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/AndroidAgentImpl;->stop(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 479
    sget-object v1, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-static {v1}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    throw v0

    :catchall_2
    move-exception v0

    sget-object v1, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-static {v1}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    throw v0
.end method

.method public disconnected(Lcom/newrelic/agent/android/api/v1/ConnectionEvent;)V
    .locals 1
    .param p1, "e"    # Lcom/newrelic/agent/android/api/v1/ConnectionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/SavedState;->clear()V

    .line 532
    return-void
.end method

.method protected finalizeSession()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public getAndClearTransactionData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    return-object v0
.end method

.method public getCrossProcessId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/SavedState;->getCrossProcessId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getCurrentThreadId()J
    .locals 2

    .prologue
    .line 712
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 722
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;
    .locals 3

    .prologue
    .line 211
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .line 232
    :goto_0
    return-object v1

    .line 214
    :cond_0
    new-instance v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;-><init>()V

    .line 216
    .local v0, "info":Lcom/newrelic/agent/android/harvest/DeviceInformation;
    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsName(Ljava/lang/String;)V

    .line 217
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsVersion(Ljava/lang/String;)V

    .line 218
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsBuild(Ljava/lang/String;)V

    .line 219
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setModel(Ljava/lang/String;)V

    .line 220
    const-string v1, "AndroidAgent"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setAgentName(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setAgentVersion(Ljava/lang/String;)V

    .line 222
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setManufacturer(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setDeviceId(Ljava/lang/String;)V

    .line 224
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setArchitecture(Ljava/lang/String;)V

    .line 225
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setRunTime(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/newrelic/agent/android/AndroidAgentImpl;->deviceForm(Landroid/content/Context;)Lcom/newrelic/agent/android/api/v1/DeviceForm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/api/v1/DeviceForm;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setSize(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationPlatform()Lcom/newrelic/agent/android/ApplicationPlatform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setApplicationPlatform(Lcom/newrelic/agent/android/ApplicationPlatform;)V

    .line 228
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationPlatformVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setApplicationPlatformVersion(Ljava/lang/String;)V

    .line 230
    iput-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .line 232
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    goto :goto_0
.end method

.method public getEncoder()Lcom/newrelic/agent/android/util/Encoder;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->encoder:Lcom/newrelic/agent/android/util/Encoder;

    return-object v0
.end method

.method public getEnvironmentInformation()Lcom/newrelic/agent/android/harvest/EnvironmentInformation;
    .locals 12

    .prologue
    .line 237
    new-instance v2, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;

    invoke-direct {v2}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;-><init>()V

    .line 238
    .local v2, "envInfo":Lcom/newrelic/agent/android/harvest/EnvironmentInformation;
    iget-object v6, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 240
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v6, 0x2

    new-array v4, v6, [J

    .line 242
    .local v4, "free":[J
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 244
    .local v5, "rootStatFs":Landroid/os/StatFs;
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 246
    .local v3, "externalStatFs":Landroid/os/StatFs;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_2

    .line 247
    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v10

    mul-long/2addr v8, v10

    aput-wide v8, v4, v6

    .line 248
    const/4 v6, 0x1

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v10

    mul-long/2addr v8, v10

    aput-wide v8, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :goto_0
    const/4 v6, 0x0

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 258
    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v6

    .line 259
    :cond_0
    const/4 v6, 0x1

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 260
    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v6

    .line 262
    :cond_1
    invoke-virtual {v2, v4}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->setDiskAvailable([J)V

    .line 264
    .end local v3    # "externalStatFs":Landroid/os/StatFs;
    .end local v5    # "rootStatFs":Landroid/os/StatFs;
    :goto_1
    invoke-static {v0}, Lcom/newrelic/agent/android/sample/Sampler;->sampleMemory(Landroid/app/ActivityManager;)Lcom/newrelic/agent/android/tracing/Sample;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newrelic/agent/android/tracing/Sample;->getSampleValue()Lcom/newrelic/agent/android/tracing/SampleValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newrelic/agent/android/tracing/SampleValue;->asLong()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->setMemoryUsage(J)V

    .line 265
    iget-object v6, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v6}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->setOrientation(I)V

    .line 266
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->getNetworkCarrier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->setNetworkStatus(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->getNetworkWanType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->setNetworkWanType(Ljava/lang/String;)V

    .line 269
    return-object v2

    .line 250
    .restart local v3    # "externalStatFs":Landroid/os/StatFs;
    .restart local v5    # "rootStatFs":Landroid/os/StatFs;
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-long v8, v7

    aput-wide v8, v4, v6

    .line 251
    const/4 v6, 0x1

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-long v8, v7

    aput-wide v8, v4, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    .end local v3    # "externalStatFs":Landroid/os/StatFs;
    .end local v5    # "rootStatFs":Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    const/4 v6, 0x0

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 258
    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v6

    .line 259
    :cond_3
    const/4 v6, 0x1

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 260
    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v6

    .line 262
    :cond_4
    invoke-virtual {v2, v4}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->setDiskAvailable([J)V

    goto :goto_1

    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    const/4 v7, 0x0

    aget-wide v8, v4, v7

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    .line 258
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v7

    .line 259
    :cond_5
    const/4 v7, 0x1

    aget-wide v8, v4, v7

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_6

    .line 260
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v7

    .line 262
    :cond_6
    invoke-virtual {v2, v4}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->setDiskAvailable([J)V

    throw v6
.end method

.method public getNetworkCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/newrelic/agent/android/util/Connectivity;->carrierNameFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWanType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/newrelic/agent/android/util/Connectivity;->wanType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBodyLimit()I
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/SavedState;->getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getResponse_body_limit()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 420
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected getSavedState()Lcom/newrelic/agent/android/SavedState;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    return-object v0
.end method

.method public getSessionDurationMillis()J
    .locals 2

    .prologue
    .line 339
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getMillisSinceStart()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStackTraceLimit()I
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/SavedState;->getStackTraceLimit()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 410
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public initApplicationInformation()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/AgentInitializationException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v8, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    if-eqz v8, :cond_0

    .line 274
    sget-object v8, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v9, "attempted to reinitialize ApplicationInformation."

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v8, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 281
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 283
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 288
    iget-object v8, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/AgentConfiguration;->getCustomApplicationVersion()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "appVersion":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 290
    if-eqz v5, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 291
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 297
    :cond_1
    sget-object v8, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using application version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 301
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 302
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_4

    .line 303
    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 314
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .local v0, "appName":Ljava/lang/String;
    :goto_1
    sget-object v8, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using application name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 316
    iget-object v8, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/AgentConfiguration;->getCustomBuildIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "build":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 318
    if-eqz v5, :cond_5

    .line 320
    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    :cond_2
    :goto_2
    sget-object v8, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using build  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 328
    new-instance v8, Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    invoke-direct {v8, v0, v1, v7, v2}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    .line 329
    iget-object v8, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    iget v9, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->setVersionCode(I)V

    goto/16 :goto_0

    .line 284
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "appVersion":Ljava/lang/String;
    .end local v2    # "build":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 285
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Lcom/newrelic/agent/android/AgentInitializationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not determine package version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/newrelic/agent/android/AgentInitializationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 293
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "appVersion":Ljava/lang/String;
    :cond_3
    new-instance v8, Lcom/newrelic/agent/android/AgentInitializationException;

    const-string v9, "Your app doesn\'t appear to have a version defined. Ensure you have defined \'versionName\' in your manifest."

    invoke-direct {v8, v9}, Lcom/newrelic/agent/android/AgentInitializationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 305
    .restart local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    move-object v0, v7

    .restart local v0    # "appName":Ljava/lang/String;
    goto :goto_1

    .line 307
    .end local v0    # "appName":Ljava/lang/String;
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v3

    .line 308
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v8, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 309
    move-object v0, v7

    .line 313
    .restart local v0    # "appName":Ljava/lang/String;
    goto/16 :goto_1

    .line 310
    .end local v0    # "appName":Ljava/lang/String;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v3

    .line 311
    .local v3, "e":Ljava/lang/SecurityException;
    sget-object v8, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 312
    move-object v0, v7

    .restart local v0    # "appName":Ljava/lang/String;
    goto/16 :goto_1

    .line 322
    .end local v3    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "build":Ljava/lang/String;
    :cond_5
    const-string v2, ""

    .line 323
    sget-object v8, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v9, "Your app doesn\'t appear to have a version code defined. Ensure you have defined \'versionCode\' in your manifest."

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->setupSession()V

    .line 148
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-static {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialize(Lcom/newrelic/agent/android/AgentConfiguration;Lcom/newrelic/agent/android/AgentImpl;)V

    .line 150
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 151
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->initialize(Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 152
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/SavedState;->getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->setHarvestConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 153
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/SavedState;->getConnectInformation()Lcom/newrelic/agent/android/harvest/ConnectInformation;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->setHarvestConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V

    .line 155
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->initialize()V

    .line 156
    sget-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "New Relic Agent v{0}"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Application token: {0}"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/newrelic/agent/android/sample/MachineMeasurementConsumer;

    invoke-direct {v0}, Lcom/newrelic/agent/android/sample/MachineMeasurementConsumer;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->machineMeasurementConsumer:Lcom/newrelic/agent/android/sample/MachineMeasurementConsumer;

    .line 160
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->machineMeasurementConsumer:Lcom/newrelic/agent/android/sample/MachineMeasurementConsumer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->addMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 162
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supportability/AgentHealth/UncaughtExceptionHandler/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->getUnhandledExceptionHandlerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-static {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->initialize(Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 166
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/newrelic/agent/android/sample/Sampler;->init(Landroid/content/Context;)V

    .line 167
    return-void
.end method

.method public isDisabled()Z
    .locals 2

    .prologue
    .line 485
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/SavedState;->getDisabledVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUIThread()Z
    .locals 2

    .prologue
    .line 717
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeTransactionData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    .local p1, "transactionDataList":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/api/common/TransactionData;>;"
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 11
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 564
    if-nez p1, :cond_0

    .line 565
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Location must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 568
    :cond_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 569
    .local v1, "coder":Landroid/location/Geocoder;
    const/4 v7, 0x0

    .line 571
    .local v7, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 576
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 594
    :cond_1
    :goto_1
    return-void

    .line 572
    :catch_0
    move-exception v10

    .line 573
    .local v10, "e":Ljava/io/IOException;
    sget-object v2, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to geocode location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 581
    .end local v10    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 582
    .local v0, "address":Landroid/location/Address;
    if-eqz v0, :cond_1

    .line 587
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v9

    .line 588
    .local v9, "countryCode":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v8

    .line 590
    .local v8, "adminArea":Ljava/lang/String;
    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    .line 591
    invoke-virtual {p0, v9, v8}, Lcom/newrelic/agent/android/AndroidAgentImpl;->setLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-direct {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->removeLocationListener()V

    goto :goto_1
.end method

.method public setLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "adminRegion"    # Ljava/lang/String;

    .prologue
    .line 549
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 550
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Country code and administrative region are required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_1
    return-void
.end method

.method protected setSavedState(Lcom/newrelic/agent/android/SavedState;)V
    .locals 0
    .param p1, "savedState"    # Lcom/newrelic/agent/android/SavedState;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    .line 735
    return-void
.end method

.method protected setupSession()V
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->clearActivityHistory()V

    .line 172
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/AgentConfiguration;->provideSessionId()Ljava/lang/String;

    .line 173
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->initialize()V

    .line 428
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->start()V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->stop(Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->stop(Z)V

    .line 441
    return-void
.end method

.method public updateSavedConnectInformation()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 183
    iget-object v5, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/SavedState;->getConnectInformation()Lcom/newrelic/agent/android/harvest/ConnectInformation;

    move-result-object v3

    .line 184
    .local v3, "savedConnectInformation":Lcom/newrelic/agent/android/harvest/ConnectInformation;
    new-instance v1, Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v5

    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/newrelic/agent/android/harvest/ConnectInformation;-><init>(Lcom/newrelic/agent/android/harvest/ApplicationInformation;Lcom/newrelic/agent/android/harvest/DeviceInformation;)V

    .line 185
    .local v1, "newConnectInformation":Lcom/newrelic/agent/android/harvest/ConnectInformation;
    iget-object v5, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/SavedState;->getAppToken()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "savedAppToken":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 191
    :cond_0
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v5

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->isAppUpgrade(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v5

    const-string v6, "Mobile/App/Upgrade"

    invoke-virtual {v5, v6}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 194
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v5, "upgradeFrom"

    .line 195
    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addAttributeUnchecked(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;Z)Z

    .line 199
    .end local v0    # "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_1
    iget-object v4, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/SavedState;->clear()V

    .line 200
    iget-object v4, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v4, v1}, Lcom/newrelic/agent/android/SavedState;->saveConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V

    .line 201
    iget-object v4, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    iget-object v5, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/newrelic/agent/android/SavedState;->saveAppToken(Ljava/lang/String;)V

    .line 203
    const/4 v4, 0x1

    .line 205
    :cond_2
    return v4
.end method
