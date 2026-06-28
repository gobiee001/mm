.class public Lcom/newrelic/agent/android/AgentConfiguration;
.super Ljava/lang/Object;
.source "AgentConfiguration.java"


# static fields
.field private static final DEFAULT_COLLECTOR_HOST:Ljava/lang/String; = "mobile-collector.newrelic.com"

.field private static final DEFAULT_CRASH_COLLECTOR_HOST:Ljava/lang/String; = "mobile-crash.newrelic.com"


# instance fields
.field private analyticAttributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

.field private appName:Ljava/lang/String;

.field private applicationPlatform:Lcom/newrelic/agent/android/ApplicationPlatform;

.field private applicationPlatformVersion:Ljava/lang/String;

.field private applicationToken:Ljava/lang/String;

.field private collectorHost:Ljava/lang/String;

.field private crashCollectorHost:Ljava/lang/String;

.field private crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

.field private customApplicationVersion:Ljava/lang/String;

.field private customBuildId:Ljava/lang/String;

.field private enableAnalyticsEvents:Z

.field private reportCrashes:Z

.field private sessionID:Ljava/lang/String;

.field private useLocationService:Z

.field private useSsl:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "mobile-collector.newrelic.com"

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    .line 16
    const-string v0, "mobile-crash.newrelic.com"

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    .line 19
    iput-boolean v1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    .line 21
    iput-boolean v1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    .line 22
    iput-boolean v1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->enableAnalyticsEvents:Z

    .line 23
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AgentConfiguration;->provideSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customApplicationVersion:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customBuildId:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/newrelic/agent/android/ApplicationPlatform;->Native:Lcom/newrelic/agent/android/ApplicationPlatform;

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatform:Lcom/newrelic/agent/android/ApplicationPlatform;

    .line 30
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatformVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->analyticAttributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationPlatform()Lcom/newrelic/agent/android/ApplicationPlatform;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatform:Lcom/newrelic/agent/android/ApplicationPlatform;

    return-object v0
.end method

.method public getApplicationPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatformVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatformVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatformVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApplicationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectorHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashCollectorHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashStore()Lcom/newrelic/agent/android/crashes/CrashStore;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    return-object v0
.end method

.method public getCustomApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomBuildIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customBuildId:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableAnalyticsEvents()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->enableAnalyticsEvents:Z

    return v0
.end method

.method public getReportCrashes()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    return v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method protected provideSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public setAnalyticAttributeStore(Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;)V
    .locals 0
    .param p1, "analyticAttributeStore"    # Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->analyticAttributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    .line 102
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->appName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setApplicationPlatform(Lcom/newrelic/agent/android/ApplicationPlatform;)V
    .locals 0
    .param p1, "applicationPlatform"    # Lcom/newrelic/agent/android/ApplicationPlatform;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatform:Lcom/newrelic/agent/android/ApplicationPlatform;

    .line 142
    return-void
.end method

.method public setApplicationPlatformVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationPlatformVersion"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationPlatformVersion:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setApplicationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationToken"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationToken:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setCollectorHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "collectorHost"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setCrashCollectorHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "crashCollectorHost"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCrashStore(Lcom/newrelic/agent/android/crashes/CrashStore;)V
    .locals 0
    .param p1, "crashStore"    # Lcom/newrelic/agent/android/crashes/CrashStore;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    .line 94
    return-void
.end method

.method public setCustomApplicationVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "customApplicationVersion"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customApplicationVersion:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setCustomBuildIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "customBuildId"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customBuildId:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setEnableAnalyticsEvents(Z)V
    .locals 0
    .param p1, "enableAnalyticsEvents"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->enableAnalyticsEvents:Z

    .line 110
    return-void
.end method

.method public setReportCrashes(Z)V
    .locals 0
    .param p1, "reportCrashes"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    .line 86
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setUseLocationService(Z)V
    .locals 0
    .param p1, "useLocationService"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useLocationService:Z

    .line 78
    return-void
.end method

.method public setUseSsl(Z)V
    .locals 0
    .param p1, "useSsl"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    .line 70
    return-void
.end method

.method public useLocationService()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useLocationService:Z

    return v0
.end method

.method public useSsl()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    return v0
.end method
