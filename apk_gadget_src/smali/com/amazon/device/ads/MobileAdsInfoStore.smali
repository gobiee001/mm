.class Lcom/amazon/device/ads/MobileAdsInfoStore;
.super Ljava/lang/Object;
.source "MobileAdsInfoStore.java"


# static fields
.field private static instance:Lcom/amazon/device/ads/MobileAdsInfoStore;


# instance fields
.field private appInfo:Lcom/amazon/device/ads/AppInfo;

.field protected applicationContext:Landroid/content/Context;

.field private contextReceived:Z

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

.field private filesDirectory:Ljava/io/File;

.field private isAppDisabled:Z

.field private isRegistered:Z

.field private noRetryTtlExpiresMillis:J

.field private noRetryTtlMillis:I

.field private registrationInfo:Lcom/amazon/device/ads/RegistrationInfo;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private sisRegistration:Lcom/amazon/device/ads/SISRegistration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v1

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;-><init>(Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/DebugProperties;)V

    sput-object v0, Lcom/amazon/device/ads/MobileAdsInfoStore;->instance:Lcom/amazon/device/ads/MobileAdsInfoStore;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/DebugProperties;)V
    .locals 1
    .param p1, "settings"    # Lcom/amazon/device/ads/Settings;
    .param p2, "debugProperties"    # Lcom/amazon/device/ads/DebugProperties;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->isAppDisabled:Z

    .line 36
    iput-object p1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->settings:Lcom/amazon/device/ads/Settings;

    .line 37
    iput-object p2, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 38
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DebugProperties;->readDebugProperties()V

    .line 40
    new-instance v0, Lcom/amazon/device/ads/RegistrationInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/RegistrationInfo;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->registrationInfo:Lcom/amazon/device/ads/RegistrationInfo;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/amazon/device/ads/MobileAdsInfoStore;->instance:Lcom/amazon/device/ads/MobileAdsInfoStore;

    return-object v0
.end method

.method static setMobileAdsInfoStore(Lcom/amazon/device/ads/MobileAdsInfoStore;)V
    .locals 0
    .param p0, "infoStore"    # Lcom/amazon/device/ads/MobileAdsInfoStore;

    .prologue
    .line 50
    sput-object p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->instance:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized contextReceived(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->contextReceived:Z

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->contextReceived:Z

    .line 71
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->setApplicationContextFromContext(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->setFilesDirectory(Landroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/Settings;->contextReceived(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->createAppInfo(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->createDeviceInfo(Landroid/content/Context;)Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

    .line 77
    invoke-virtual {p0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->createSISRegistration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createAppInfo(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    new-instance v0, Lcom/amazon/device/ads/AppInfo;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/AppInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->appInfo:Lcom/amazon/device/ads/AppInfo;

    .line 98
    return-void
.end method

.method protected createDeviceInfo(Landroid/content/Context;)Lcom/amazon/device/ads/DeviceInfo;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    new-instance v0, Lcom/amazon/device/ads/DeviceInfo;

    new-instance v1, Lcom/amazon/device/ads/BasicUserAgentManager;

    invoke-direct {v1}, Lcom/amazon/device/ads/BasicUserAgentManager;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/ads/DeviceInfo;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/UserAgentManager;)V

    return-object v0
.end method

.method protected createSISRegistration()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/amazon/device/ads/SISRegistration;

    invoke-direct {v0}, Lcom/amazon/device/ads/SISRegistration;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->sisRegistration:Lcom/amazon/device/ads/SISRegistration;

    .line 118
    return-void
.end method

.method public getAppInfo()Lcom/amazon/device/ads/AppInfo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->appInfo:Lcom/amazon/device/ads/AppInfo;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->filesDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getIsAppDisabled()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->isAppDisabled:Z

    return v0
.end method

.method public getNoRetryTtlRemainingMillis()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 131
    iget v5, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlMillis:I

    if-eqz v5, :cond_0

    iget-wide v6, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlExpiresMillis:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v4

    .line 134
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 135
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlExpiresMillis:J

    cmp-long v5, v0, v6

    if-ltz v5, :cond_2

    .line 137
    iput v4, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlMillis:I

    .line 138
    iput-wide v8, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlExpiresMillis:J

    goto :goto_0

    .line 142
    :cond_2
    iget-wide v4, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlExpiresMillis:J

    sub-long v2, v4, v0

    .line 143
    .local v2, "timeRemaining":J
    long-to-int v4, v2

    goto :goto_0
.end method

.method public getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->registrationInfo:Lcom/amazon/device/ads/RegistrationInfo;

    return-object v0
.end method

.method public getSISRegistration()Lcom/amazon/device/ads/SISRegistration;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->sisRegistration:Lcom/amazon/device/ads/SISRegistration;

    return-object v0
.end method

.method public isContextReceived()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->contextReceived:Z

    return v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->isRegistered:Z

    return v0
.end method

.method public register()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getSISRegistration()Lcom/amazon/device/ads/SISRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/SISRegistration;->registerApp()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->isRegistered:Z

    .line 113
    return-void
.end method

.method protected setApplicationContextFromContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->applicationContext:Landroid/content/Context;

    .line 199
    return-void
.end method

.method protected setFilesDirectory(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->filesDirectory:Ljava/io/File;

    .line 89
    return-void
.end method

.method public setIsAppDisabled(Z)V
    .locals 0
    .param p1, "isAppDisabled"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->isAppDisabled:Z

    .line 184
    return-void
.end method

.method public setNoRetryTtl(I)V
    .locals 6
    .param p1, "noRetryTtlSeconds"    # I

    .prologue
    .line 153
    iget-object v1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v2, "debug.noRetryTTLMax"

    const v3, 0x493e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 154
    .local v0, "maxNoRetryTtlSeconds":I
    if-ge v0, p1, :cond_0

    .line 155
    move p1, v0

    .line 157
    :cond_0
    if-nez p1, :cond_1

    .line 159
    const/4 v1, 0x0

    iput v1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlMillis:I

    .line 160
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlExpiresMillis:J

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_1
    mul-int/lit16 v1, p1, 0x3e8

    iput v1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlMillis:I

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlMillis:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlExpiresMillis:J

    goto :goto_0
.end method
