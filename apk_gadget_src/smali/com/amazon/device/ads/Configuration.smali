.class Lcom/amazon/device/ads/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/Configuration$ConfigurationListener;,
        Lcom/amazon/device/ads/Configuration$ConfigOption;
    }
.end annotation


# static fields
.field private static final AAX_MSDK_CONFIG_ENDPOINT:Ljava/lang/String; = "/msdk/getConfig"

.field private static final AAX_PROD_US_HOSTNAME:Ljava/lang/String; = "mads.amazon-adsystem.com"

.field protected static final CONFIG_APP_DEFINED_MARKETPLACE:Ljava/lang/String; = "config-appDefinedMarketplace"

.field protected static final CONFIG_LASTFETCHTIME:Ljava/lang/String; = "config-lastFetchTime"

.field protected static final CONFIG_TTL:Ljava/lang/String; = "config-ttl"

.field protected static final CONFIG_VERSION_NAME:Ljava/lang/String; = "configVersion"

.field protected static final CURRENT_CONFIG_VERSION:I = 0x3

.field private static final LOGTAG:Ljava/lang/String;

.field protected static final MAX_CONFIG_TTL:I = 0xa4cb800

.field protected static final MAX_NO_RETRY_TTL:I = 0x493e0

.field private static instance:Lcom/amazon/device/ads/Configuration;


# instance fields
.field private final advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

.field private appDefinedMarketplace:Ljava/lang/String;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private isAppDefinedMarketplaceSet:Z

.field private final isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isFirstParty:Z

.field private lastTestModeValue:Ljava/lang/Boolean;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/ads/Configuration$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final metrics:Lcom/amazon/device/ads/Metrics;

.field private final permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

.field private pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private final systemTime:Lcom/amazon/device/ads/SystemTime;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/amazon/device/ads/Configuration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/Configuration;->LOGTAG:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/amazon/device/ads/Configuration;

    invoke-direct {v0}, Lcom/amazon/device/ads/Configuration;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/Configuration;->instance:Lcom/amazon/device/ads/Configuration;

    return-void
.end method

.method protected constructor <init>()V
    .locals 11

    .prologue
    .line 151
    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v2, Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {v2}, Lcom/amazon/device/ads/PermissionChecker;-><init>()V

    new-instance v3, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-direct {v3}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v4

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v5

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/SystemTime;

    invoke-direct {v7}, Lcom/amazon/device/ads/SystemTime;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v8

    new-instance v9, Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-direct {v9}, Lcom/amazon/device/ads/AdvertisingIdentifier;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/amazon/device/ads/Configuration;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V

    .line 161
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V
    .locals 4
    .param p1, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p2, "permissionChecker"    # Lcom/amazon/device/ads/PermissionChecker;
    .param p3, "webRequestFactory"    # Lcom/amazon/device/ads/WebRequest$WebRequestFactory;
    .param p4, "debugProperties"    # Lcom/amazon/device/ads/DebugProperties;
    .param p5, "settings"    # Lcom/amazon/device/ads/Settings;
    .param p6, "infoStore"    # Lcom/amazon/device/ads/MobileAdsInfoStore;
    .param p7, "systemTime"    # Lcom/amazon/device/ads/SystemTime;
    .param p8, "metrics"    # Lcom/amazon/device/ads/Metrics;
    .param p9, "advertisingIdentifier"    # Lcom/amazon/device/ads/AdvertisingIdentifier;
    .param p10, "threadRunner"    # Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v3, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    .line 46
    iput-boolean v2, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    iput-object v3, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    .line 50
    iput-boolean v2, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    .line 51
    new-instance v0, Lcom/amazon/device/ads/PreferredMarketplaceRetriever$NullPreferredMarketplaceRetriever;

    invoke-direct {v0}, Lcom/amazon/device/ads/PreferredMarketplaceRetriever$NullPreferredMarketplaceRetriever;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    .line 174
    sget-object v0, Lcom/amazon/device/ads/Configuration;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 175
    iput-object p2, p0, Lcom/amazon/device/ads/Configuration;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    .line 176
    iput-object p3, p0, Lcom/amazon/device/ads/Configuration;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    .line 177
    iput-object p4, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 178
    iput-object p5, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    .line 179
    iput-object p6, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 180
    iput-object p7, p0, Lcom/amazon/device/ads/Configuration;->systemTime:Lcom/amazon/device/ads/SystemTime;

    .line 181
    iput-object p8, p0, Lcom/amazon/device/ads/Configuration;->metrics:Lcom/amazon/device/ads/Metrics;

    .line 182
    iput-object p9, p0, Lcom/amazon/device/ads/Configuration;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    .line 183
    iput-object p10, p0, Lcom/amazon/device/ads/Configuration;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 184
    return-void
.end method

.method public static final getInstance()Lcom/amazon/device/ads/Configuration;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/amazon/device/ads/Configuration;->instance:Lcom/amazon/device/ads/Configuration;

    return-object v0
.end method

.method private getPreferredMarketplace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/PreferredMarketplaceRetriever;->retrievePreferredMarketplace(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasAppDefinedMarketplaceChanged()Z
    .locals 6

    .prologue
    .line 327
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v3, "config-appDefinedMarketplace"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "storedAppDefinedMarketplace":Ljava/lang/String;
    const/4 v0, 0x0

    .line 330
    .local v0, "appDefinedMarketplaceChanged":Z
    iget-boolean v2, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    if-eqz v2, :cond_0

    .line 332
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    .line 334
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v3, "config-lastFetchTime"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/device/ads/Settings;->putLongWithNoFlush(Ljava/lang/String;J)V

    .line 337
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v3, "config-appDefinedMarketplace"

    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {v2}, Lcom/amazon/device/ads/Settings;->flush()V

    .line 341
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/RegistrationInfo;->requestNewSISDeviceIdentifier()V

    .line 342
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "New application-defined marketplace set. A new configuration will be retrieved."

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x1

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 345
    :cond_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v3, "config-appDefinedMarketplace"

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/Settings;->remove(Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/RegistrationInfo;->requestNewSISDeviceIdentifier()V

    .line 351
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Application-defined marketplace removed. A new configuration will be retrieved."

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 352
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private writeSettingFromConfigOption(Lcom/amazon/device/ads/Configuration$ConfigOption;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "configOption"    # Lcom/amazon/device/ads/Configuration$ConfigOption;
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDataType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getAllowEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The configuration value must not be empty or contain only white spaces."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getSettingsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 569
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDataType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 571
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 572
    .local v0, "value":Z
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getSettingsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/Settings;->putBooleanWithNoFlush(Ljava/lang/String;Z)V

    goto :goto_0

    .line 578
    .end local v0    # "value":Z
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Undefined configuration option type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected beginFetch()V
    .locals 4

    .prologue
    .line 410
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/Configuration$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/Configuration$1;-><init>(Lcom/amazon/device/ads/Configuration;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 417
    return-void
.end method

.method createAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 619
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v3, "configVersion"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->setShouldSetCurrentAdvertisingIdentifier(Z)Lcom/amazon/device/ads/AdvertisingIdentifier;

    .line 621
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    return-object v0
.end method

.method protected createWebRequest(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)Lcom/amazon/device/ads/WebRequest;
    .locals 9
    .param p1, "advertisingIdentifierInfo"    # Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 588
    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-virtual {v4}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createJSONGetWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v2

    .line 589
    .local v2, "request":Lcom/amazon/device/ads/WebRequest;
    sget-object v4, Lcom/amazon/device/ads/Configuration;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/WebRequest;->setExternalLogTag(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v2, v7}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 591
    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v5, "debug.aaxConfigHostname"

    const-string v6, "mads.amazon-adsystem.com"

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/WebRequest;->setHost(Ljava/lang/String;)V

    .line 592
    const-string v4, "/msdk/getConfig"

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/WebRequest;->setPath(Ljava/lang/String;)V

    .line 593
    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v4}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/WebRequest;->setMetricsCollector(Lcom/amazon/device/ads/MetricsCollector;)V

    .line 594
    sget-object v4, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/WebRequest;->setServiceCallLatencyMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 596
    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v5, "debug.aaxConfigUseSecure"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/WebRequest;->setUseSecure(Z)V

    .line 598
    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v4}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    .line 599
    .local v1, "registrationInfo":Lcom/amazon/device/ads/RegistrationInfo;
    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v4}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    .line 600
    .local v0, "deviceInfo":Lcom/amazon/device/ads/DeviceInfo;
    const-string v4, "appId"

    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 601
    const-string v5, "dinfo"

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getDInfoProperty()Lorg/json/JSONObject;

    move-result-object v4

    instance-of v6, v4, Lorg/json/JSONObject;

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v5, v4}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    const-string v4, "adId"

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getSISDeviceIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 603
    const-string v4, "sdkVer"

    invoke-static {}, Lcom/amazon/device/ads/Version;->getSDKVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 604
    const-string v4, "fp"

    iget-boolean v5, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    const-string v4, "mkt"

    iget-object v5, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v6, "config-appDefinedMarketplace"

    invoke-virtual {v5, v6, v8}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 606
    const-string v4, "pfm"

    invoke-direct {p0}, Lcom/amazon/device/ads/Configuration;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 607
    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v5, "testingEnabled"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 608
    .local v3, "testingEnabled":Z
    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/Configuration;->setLastTestModeValue(Z)V

    .line 609
    if-eqz v3, :cond_0

    .line 611
    const-string v4, "testMode"

    const-string v5, "true"

    invoke-virtual {v2, v4, v5}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 613
    :cond_0
    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v5, "debug.aaxConfigParams"

    invoke-virtual {v4, v5, v8}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/WebRequest;->setAdditionalQueryParamsString(Ljava/lang/String;)V

    .line 614
    return-object v2

    .line 601
    .end local v3    # "testingEnabled":Z
    :cond_1
    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected fetchConfigurationOnBackgroundThread()V
    .locals 19

    .prologue
    .line 468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v15, "In configuration fetcher background thread."

    invoke-virtual {v14, v15}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazon/device/ads/Configuration;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v15}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/amazon/device/ads/PermissionChecker;->hasInternetPermission(Landroid/content/Context;)Z

    move-result v9

    .line 471
    .local v9, "passesInternetPermissionCheck":Z
    if-nez v9, :cond_0

    .line 473
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v15, "Network task cannot commence because the INTERNET permission is missing from the app\'s manifest."

    invoke-virtual {v14, v15}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    .line 555
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/device/ads/Configuration;->createAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v2

    .line 479
    .local v2, "advertisingIdentifierInfo":Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo()Z

    move-result v14

    if-nez v14, :cond_1

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    goto :goto_0

    .line 485
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/Configuration;->createWebRequest(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)Lcom/amazon/device/ads/WebRequest;

    move-result-object v12

    .line 490
    .local v12, "webRequest":Lcom/amazon/device/ads/WebRequest;
    :try_start_0
    invoke-virtual {v12}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 498
    .local v13, "webResponse":Lcom/amazon/device/ads/WebRequest$WebResponse;
    invoke-virtual {v13}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v14

    invoke-virtual {v14}, Lcom/amazon/device/ads/ResponseReader;->readAsJSON()Lorg/json/JSONObject;

    move-result-object v7

    .line 510
    .local v7, "json":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/device/ads/Configuration;->getConfigOptions()[Lcom/amazon/device/ads/Configuration$ConfigOption;

    move-result-object v3

    .local v3, "arr$":[Lcom/amazon/device/ads/Configuration$ConfigOption;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v8, :cond_4

    aget-object v4, v3, v6

    .line 512
    .local v4, "configOption":Lcom/amazon/device/ads/Configuration$ConfigOption;
    invoke-virtual {v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 514
    invoke-virtual {v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getAllowEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    .line 516
    new-instance v14, Ljava/lang/Exception;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The configuration value for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " must be present and not null."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 534
    .end local v3    # "arr$":[Lcom/amazon/device/ads/Configuration$ConfigOption;
    .end local v4    # "configOption":Lcom/amazon/device/ads/Configuration$ConfigOption;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    :catch_0
    move-exception v5

    .line 536
    .local v5, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v15, "Unable to parse JSON response: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    goto :goto_0

    .line 492
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v13    # "webResponse":Lcom/amazon/device/ads/WebRequest$WebResponse;
    :catch_1
    move-exception v5

    .line 494
    .local v5, "e":Lcom/amazon/device/ads/WebRequest$WebRequestException;
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    goto :goto_0

    .line 520
    .end local v5    # "e":Lcom/amazon/device/ads/WebRequest$WebRequestException;
    .restart local v3    # "arr$":[Lcom/amazon/device/ads/Configuration$ConfigOption;
    .restart local v4    # "configOption":Lcom/amazon/device/ads/Configuration$ConfigOption;
    .restart local v6    # "i$":I
    .restart local v7    # "json":Lorg/json/JSONObject;
    .restart local v8    # "len$":I
    .restart local v13    # "webResponse":Lcom/amazon/device/ads/WebRequest$WebResponse;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getSettingsName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/amazon/device/ads/Settings;->removeWithNoFlush(Ljava/lang/String;)V

    .line 510
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 525
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/amazon/device/ads/Configuration;->writeSettingFromConfigOption(Lcom/amazon/device/ads/Configuration$ConfigOption;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 540
    .end local v3    # "arr$":[Lcom/amazon/device/ads/Configuration$ConfigOption;
    .end local v4    # "configOption":Lcom/amazon/device/ads/Configuration$ConfigOption;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    :catch_2
    move-exception v5

    .line 542
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v15, "Unexpected error during parsing: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    goto/16 :goto_0

    .line 528
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "arr$":[Lcom/amazon/device/ads/Configuration$ConfigOption;
    .restart local v6    # "i$":I
    .restart local v8    # "len$":I
    :cond_4
    :try_start_3
    const-string v14, "ttl"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 530
    new-instance v14, Ljava/lang/Exception;

    const-string v15, "The configuration value must be present and not null."

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 532
    :cond_5
    const-string v14, "ttl"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v14, v14

    invoke-static {v14, v15}, Lcom/amazon/device/ads/NumberUtils;->convertToMillisecondsFromSeconds(J)J
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v10

    .line 547
    .local v10, "ttl":J
    const-wide/32 v14, 0xa4cb800

    cmp-long v14, v10, v14

    if-lez v14, :cond_6

    const-wide/32 v10, 0xa4cb800

    .line 548
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v15, "config-ttl"

    invoke-virtual {v14, v15, v10, v11}, Lcom/amazon/device/ads/Settings;->putLongWithNoFlush(Ljava/lang/String;J)V

    .line 549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v15, "config-lastFetchTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/Configuration;->systemTime:Lcom/amazon/device/ads/SystemTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/amazon/device/ads/SystemTime;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v14 .. v17}, Lcom/amazon/device/ads/Settings;->putLongWithNoFlush(Ljava/lang/String;J)V

    .line 550
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v15, "configVersion"

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/amazon/device/ads/Settings;->putIntWithNoFlush(Ljava/lang/String;I)V

    .line 551
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {v14}, Lcom/amazon/device/ads/Settings;->flush()V

    .line 553
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v15, "Configuration fetched and saved."

    invoke-virtual {v14, v15}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/device/ads/Configuration;->onFetchSuccess()V

    goto/16 :goto_0
.end method

.method protected declared-synchronized getAndClearListeners()[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    .locals 2

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    .line 451
    .local v0, "toCall":[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "toCall":[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    check-cast v0, [Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    .line 452
    .restart local v0    # "toCall":[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return-object v0

    .line 450
    .end local v0    # "toCall":[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAppDefinedMarketplace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    return-object v0
.end method

.method public getBoolean(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z
    .locals 1
    .param p1, "configOption"    # Lcom/amazon/device/ads/Configuration$ConfigOption;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/Configuration;->getBooleanWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Z)Z

    move-result v0

    return v0
.end method

.method public getBooleanWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Z)Z
    .locals 3
    .param p1, "configOption"    # Lcom/amazon/device/ads/Configuration$ConfigOption;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDebugProperty()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DebugProperties;->containsDebugProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDebugProperty()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 277
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getSettingsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected getConfigOptions()[Lcom/amazon/device/ads/Configuration$ConfigOption;
    .locals 1

    .prologue
    .line 458
    sget-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->configOptions:[Lcom/amazon/device/ads/Configuration$ConfigOption;

    return-object v0
.end method

.method getPreferredMarketplaceRetriever()Lcom/amazon/device/ads/PreferredMarketplaceRetriever;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    return-object v0
.end method

.method public getString(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;
    .locals 4
    .param p1, "configOption"    # Lcom/amazon/device/ads/Configuration$ConfigOption;

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDebugProperty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getSettingsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_0
    return-object v0
.end method

.method public hasValue(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z
    .locals 1
    .param p1, "configOption"    # Lcom/amazon/device/ads/Configuration$ConfigOption;

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Configuration;->getString(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFetching()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isFirstParty()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    return v0
.end method

.method protected declared-synchronized onFetchFailure()V
    .locals 7

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/amazon/device/ads/Configuration;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v5}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v5

    sget-object v6, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_CONFIG_DOWNLOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 437
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/amazon/device/ads/Configuration;->setIsFetching(Z)V

    .line 438
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->getAndClearListeners()[Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    move-result-object v4

    .line 439
    .local v4, "toCall":[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    move-object v0, v4

    .local v0, "arr$":[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 441
    .local v3, "listener":Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    invoke-interface {v3}, Lcom/amazon/device/ads/Configuration$ConfigurationListener;->onConfigurationFailure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v3    # "listener":Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 436
    .end local v0    # "arr$":[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "toCall":[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method protected declared-synchronized onFetchSuccess()V
    .locals 6

    .prologue
    .line 424
    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/amazon/device/ads/Configuration;->setIsFetching(Z)V

    .line 425
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->getAndClearListeners()[Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    move-result-object v4

    .line 426
    .local v4, "toCall":[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    move-object v0, v4

    .local v0, "arr$":[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 428
    .local v3, "listener":Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    invoke-interface {v3}, Lcom/amazon/device/ads/Configuration$ConfigurationListener;->onConfigurationReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    .end local v3    # "listener":Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 424
    .end local v0    # "arr$":[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "toCall":[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    .prologue
    .line 375
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/Configuration;->queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;Z)V
    .locals 2
    .param p1, "listener"    # Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    .param p2, "allowFetch"    # Z

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 391
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->shouldFetch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    if-eqz p2, :cond_0

    .line 398
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Starting configuration fetching..."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 399
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Configuration;->setIsFetching(Z)V

    .line 400
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->beginFetch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 405
    :cond_2
    :try_start_2
    invoke-interface {p1}, Lcom/amazon/device/ads/Configuration$ConfigurationListener;->onConfigurationReady()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setAppDefinedMarketplace(Ljava/lang/String;)V
    .locals 1
    .param p1, "appDefinedMarketplace"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    .line 213
    return-void
.end method

.method protected setIsFetching(Z)V
    .locals 1
    .param p1, "isFetching"    # Z

    .prologue
    .line 364
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 365
    return-void
.end method

.method public setIsFirstParty(Z)V
    .locals 0
    .param p1, "isFirstParty"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    .line 222
    return-void
.end method

.method protected setLastTestModeValue(Z)V
    .locals 1
    .param p1, "testMode"    # Z

    .prologue
    .line 463
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    .line 464
    return-void
.end method

.method public setPreferredMarketplaceRetriever(Lcom/amazon/device/ads/PreferredMarketplaceRetriever;)V
    .locals 0
    .param p1, "pfmRetriever"    # Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    .line 630
    return-void
.end method

.method protected shouldFetch()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 287
    invoke-direct {p0}, Lcom/amazon/device/ads/Configuration;->hasAppDefinedMarketplaceChanged()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v6

    .line 292
    :cond_1
    iget-object v8, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v9, "configVersion"

    invoke-virtual {v8, v9, v7}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 297
    iget-object v8, p0, Lcom/amazon/device/ads/Configuration;->systemTime:Lcom/amazon/device/ads/SystemTime;

    invoke-virtual {v8}, Lcom/amazon/device/ads/SystemTime;->currentTimeMillis()J

    move-result-wide v0

    .line 298
    .local v0, "currentTime":J
    iget-object v8, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v9, "config-lastFetchTime"

    invoke-virtual {v8, v9, v12, v13}, Lcom/amazon/device/ads/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 299
    .local v2, "lastFetchTime":J
    iget-object v8, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v9, "config-ttl"

    const-wide/32 v10, 0xa4cb800

    invoke-virtual {v8, v9, v10, v11}, Lcom/amazon/device/ads/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 301
    .local v4, "ttl":J
    cmp-long v8, v2, v12

    if-nez v8, :cond_2

    .line 303
    iget-object v7, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v8, "No configuration found. A new configuration will be retrieved."

    invoke-virtual {v7, v8}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_2
    sub-long v8, v0, v2

    cmp-long v8, v8, v4

    if-lez v8, :cond_3

    .line 308
    iget-object v7, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v8, "The configuration has expired. A new configuration will be retrieved."

    invoke-virtual {v7, v8}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_3
    iget-object v8, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v9, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v10, "testingEnabled"

    invoke-virtual {v9, v10, v7}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eq v8, v9, :cond_4

    .line 314
    iget-object v7, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v8, "The testing mode has changed. A new configuration will be retrieved."

    invoke-virtual {v7, v8}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_4
    iget-object v8, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v9, "debug.shouldFetchConfig"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    move v6, v7

    .line 322
    goto :goto_0
.end method
