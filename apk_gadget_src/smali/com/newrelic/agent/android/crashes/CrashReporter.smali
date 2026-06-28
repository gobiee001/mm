.class public Lcom/newrelic/agent/android/crashes/CrashReporter;
.super Ljava/lang/Object;
.source "CrashReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;,
        Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;
    }
.end annotation


# static fields
.field private static final APP_TOKEN_HEADER:Ljava/lang/String; = "X-App-License-Key"

.field private static final APP_VERSION_HEADER:Ljava/lang/String; = "X-NewRelic-App-Version"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final CRASH_COLLECTOR_PATH:Ljava/lang/String; = "/mobile_crash"

.field private static final CRASH_COLLECTOR_TIMEOUT:I = 0x1388

.field private static final DEVICE_OS_NAME_HEADER:Ljava/lang/String; = "X-NewRelic-OS-Name"

.field private static agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

.field private static executor:Ljava/util/concurrent/ExecutorService;

.field protected static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected static instance:Lcom/newrelic/agent/android/crashes/CrashReporter;


# instance fields
.field private crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

.field protected isEnabled:Z

.field private final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private reportCrashes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-direct {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->isEnabled:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrashes:Z

    return-void
.end method

.method static synthetic access$000(Lcom/newrelic/agent/android/crashes/CrashReporter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/newrelic/agent/android/crashes/CrashReporter;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->hasReachableNetworkConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;
    .locals 1
    .param p0, "x0"    # Lcom/newrelic/agent/android/crashes/CrashReporter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-object v0
.end method

.method static synthetic access$200()Lcom/newrelic/agent/android/AgentConfiguration;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    return-object v0
.end method

.method static synthetic access$300(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/crashes/CrashStore;
    .locals 1
    .param p0, "x0"    # Lcom/newrelic/agent/android/crashes/CrashReporter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/newrelic/agent/android/crashes/CrashReporter;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/newrelic/agent/android/crashes/CrashReporter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iget-object v0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    invoke-interface {v0}, Lcom/newrelic/agent/android/crashes/CrashStore;->clear()V

    .line 116
    return-void
.end method

.method public static fetchAllCrashes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/harvest/crash/Crash;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iget-object v0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    invoke-interface {v0}, Lcom/newrelic/agent/android/crashes/CrashStore;->fetchAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAgentConfiguration()Lcom/newrelic/agent/android/AgentConfiguration;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    return-object v0
.end method

.method public static getInstanceHandler()Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->getHandler()Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getStoredCrashCount()I
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iget-object v0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    invoke-interface {v0}, Lcom/newrelic/agent/android/crashes/CrashStore;->count()I

    move-result v0

    return v0
.end method

.method private hasReachableNetworkConnection()Z
    .locals 4

    .prologue
    .line 349
    const/4 v2, 0x0

    .line 352
    .local v2, "isReachable":Z
    :try_start_0
    sget-object v3, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/AgentConfiguration;->getCrashCollectorHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 353
    .local v0, "addr":Ljava/net/InetAddress;
    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 357
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_0
    return v2

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static initialize(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 3
    .param p0, "_agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 64
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance v0, Lcom/newrelic/agent/android/util/NamedThreadFactory;

    const-string v1, "CrashUploader"

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->executor:Ljava/util/concurrent/ExecutorService;

    .line 68
    sput-object p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    .line 70
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    sget-object v1, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getReportCrashes()Z

    move-result v1

    iput-boolean v1, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->isEnabled:Z

    .line 71
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    sget-object v1, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getCrashStore()Lcom/newrelic/agent/android/crashes/CrashStore;

    move-result-object v1

    iput-object v1, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    .line 73
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/newrelic/agent/android/crashes/CrashReporter$1;

    invoke-direct {v1}, Lcom/newrelic/agent/android/crashes/CrashReporter$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 85
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iget-boolean v0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-direct {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->installCrashHandler()V

    goto :goto_0
.end method

.method private installCrashHandler()V
    .locals 4

    .prologue
    .line 120
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 122
    .local v0, "currentExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_1

    .line 123
    instance-of v1, v0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "New Relic crash handler already installed."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 128
    :cond_0
    iput-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 130
    iget-object v1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing New Relic crash handler and chaining "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 135
    :goto_1
    new-instance v1, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;

    invoke-direct {v1, p0}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;-><init>(Lcom/newrelic/agent/android/crashes/CrashReporter;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Installing New Relic crash handler."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private requestWasSuccessful(Ljava/net/HttpURLConnection;)Z
    .locals 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 341
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[crashsender] Server returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 339
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public static setReportCrashes(Z)V
    .locals 1
    .param p0, "reportCrashes"    # Z

    .prologue
    .line 103
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iput-boolean p0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrashes:Z

    .line 104
    return-void
.end method


# virtual methods
.method public getHandler()Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;-><init>(Lcom/newrelic/agent/android/crashes/CrashReporter;)V

    return-object v0
.end method

.method protected recordFailedUpload(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/AgentHealth/Crash/FailedUpload"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method protected reportCrash(Lcom/newrelic/agent/android/harvest/crash/Crash;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "crash"    # Lcom/newrelic/agent/android/harvest/crash/Crash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/agent/android/harvest/crash/Crash;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "crashSenderThread":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-boolean v2, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrashes:Z

    if-eqz v2, :cond_0

    .line 153
    new-instance v1, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;

    invoke-direct {v1, p0, p1}, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;-><init>(Lcom/newrelic/agent/android/crashes/CrashReporter;Lcom/newrelic/agent/android/harvest/crash/Crash;)V

    .line 154
    .local v1, "sender":Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;
    sget-object v2, Lcom/newrelic/agent/android/crashes/CrashReporter;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 156
    .end local v1    # "sender":Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;
    :cond_0
    return-object v0
.end method

.method protected reportSavedCrashes()V
    .locals 5

    .prologue
    .line 139
    iget-object v1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    invoke-interface {v1}, Lcom/newrelic/agent/android/crashes/CrashStore;->fetchAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/crash/Crash;

    .line 140
    .local v0, "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/crash/Crash;->isStale()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/crashes/CrashStore;->delete(Lcom/newrelic/agent/android/harvest/crash/Crash;)V

    .line 142
    iget-object v2, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crash ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/crash/Crash;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] has become stale, and has been removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    const-string v3, "Supportability/AgentHealth/Crash/Removed/Stale"

    invoke-virtual {v2, v3}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrash(Lcom/newrelic/agent/android/harvest/crash/Crash;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 148
    .end local v0    # "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    :cond_1
    return-void
.end method

.method protected reportSupportabilityMetrics()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method protected storeSupportabilityMetrics()V
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->getStatsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 255
    .local v0, "statsMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/newrelic/agent/android/metric/Metric;>;"
    return-void
.end method
