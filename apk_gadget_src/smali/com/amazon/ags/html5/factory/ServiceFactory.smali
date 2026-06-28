.class public final Lcom/amazon/ags/html5/factory/ServiceFactory;
.super Ljava/lang/Object;
.source "ServiceFactory.java"


# static fields
.field private static final ACHIEVEMENTS_CACHE_VERSION:I = 0x1

.field private static final LEADERBOARDS_CACHE_VERSION:I = 0x1

.field private static final MINIMUM_THREAD_POOL_SIZE:I = 0x5

.field private static final PLAYER_PROFILE_CACHE_VERSION:I = 0x1

.field private static final SETTINGS_CACHE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static debugLoggingEnabled:Z

.field private static instance:Lcom/amazon/ags/html5/factory/ServiceFactory;

.field private static showToastsFlag:Ljava/lang/String;


# instance fields
.field private achOfflineDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

.field private final applicationName:Ljava/lang/String;

.field private final eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

.field private final gcVariationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

.field private initializedContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

.field private javascriptRepository:Lcom/amazon/ags/html5/javascript/JavascriptRepository;

.field private final kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

.field private leaderboardOfflineDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

.field private final localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

.field private nativeCallHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/html5/javascript/CallHandlerBase;",
            ">;"
        }
    .end annotation
.end field

.field private final networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;

.field private offlineEventManager:Lcom/amazon/ags/storage/OfflineEventManager;

.field private overlayClient:Lcom/amazon/ags/client/OverlayClient;

.field private overlayManager:Lcom/amazon/ags/html5/overlay/OverlayManager;

.field private playerProfileOfflineDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

.field private replyMessenger:Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;

.field private serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

.field private final sessionClient:Lcom/amazon/ags/client/session/SessionClient;

.field private final settingsDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

.field private final threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final toastFactory:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;

.field private final toastLock:Ljava/lang/Object;

.field private final uiThreadHandler:Landroid/os/Handler;

.field private webViewFactory:Lcom/amazon/ags/html5/util/WebViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/html5/factory/ServiceFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->instance:Lcom/amazon/ags/html5/factory/ServiceFactory;

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->debugLoggingEnabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/ags/html5/content/ContentManager;Lcom/amazon/ags/client/metrics/EventCollectorClient;Lcom/amazon/ags/storage/StringObfuscator;Lcom/amazon/ags/html5/content/GCVariationManager;Lcom/amazon/ags/html5/util/GlobalState;)V
    .locals 57
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "contentManager"    # Lcom/amazon/ags/html5/content/ContentManager;
    .param p4, "eventCollectorClient"    # Lcom/amazon/ags/client/metrics/EventCollectorClient;
    .param p5, "stringObfuscator"    # Lcom/amazon/ags/storage/StringObfuscator;
    .param p6, "variationManager"    # Lcom/amazon/ags/html5/content/GCVariationManager;
    .param p7, "globalState"    # Lcom/amazon/ags/html5/util/GlobalState;

    .prologue
    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    .line 158
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->toastLock:Ljava/lang/Object;

    .line 184
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/ags/html5/factory/ServiceFactory;->gcVariationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v52

    .line 187
    .local v52, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 189
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, v52

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 194
    :goto_0
    if-eqz v4, :cond_1

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_1
    check-cast v5, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->applicationName:Ljava/lang/String;

    .line 196
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/ags/html5/factory/ServiceFactory;->javascriptRepository:Lcom/amazon/ags/html5/javascript/JavascriptRepository;

    .line 197
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/ags/html5/content/ContentManager;->getInitializedContentVersion()Lcom/amazon/ags/html5/content/ContentVersion;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->initializedContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

    .line 198
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/ags/html5/factory/ServiceFactory;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    .line 199
    const-string v5, "toastsUndefined"

    sput-object v5, Lcom/amazon/ags/html5/factory/ServiceFactory;->showToastsFlag:Ljava/lang/String;

    .line 200
    new-instance v5, Lcom/amazon/ags/html5/util/LocalizationUtil;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/amazon/ags/html5/util/LocalizationUtil;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    .line 202
    new-instance v31, Lcom/amazon/ags/html5/util/NetworkUtil;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/amazon/ags/html5/util/NetworkUtil;-><init>(Landroid/content/Context;)V

    .line 203
    .local v31, "networkUtil":Lcom/amazon/ags/html5/util/NetworkUtil;
    new-instance v32, Lcom/amazon/ags/html5/util/BrowserUtil;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/amazon/ags/html5/util/BrowserUtil;-><init>(Landroid/content/Context;)V

    .line 204
    .local v32, "browserUtil":Lcom/amazon/ags/html5/util/BrowserUtil;
    new-instance v33, Lcom/amazon/ags/html5/util/EmailUtil;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/amazon/ags/html5/util/EmailUtil;-><init>(Landroid/content/Context;)V

    .line 205
    .local v33, "emailUtil":Lcom/amazon/ags/html5/util/EmailUtil;
    new-instance v21, Lcom/amazon/ags/html5/util/ImageManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/amazon/ags/html5/util/ImageManager;-><init>(Lcom/amazon/ags/html5/content/ContentManager;)V

    .line 209
    .local v21, "imageManager":Lcom/amazon/ags/html5/util/ImageManager;
    new-instance v5, Lcom/amazon/ags/storage/SQLiteOfflineDataCache;

    const-string v6, "AchievementsCache"

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6, v8}, Lcom/amazon/ags/storage/SQLiteOfflineDataCache;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->achOfflineDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    .line 210
    new-instance v5, Lcom/amazon/ags/storage/SQLiteOfflineDataCache;

    const-string v6, "LeaderboardsCache"

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6, v8}, Lcom/amazon/ags/storage/SQLiteOfflineDataCache;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->leaderboardOfflineDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    .line 211
    new-instance v5, Lcom/amazon/ags/storage/SQLiteOfflineDataCache;

    const-string v6, "PlayerProfileCache"

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6, v8}, Lcom/amazon/ags/storage/SQLiteOfflineDataCache;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->playerProfileOfflineDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    .line 212
    new-instance v5, Lcom/amazon/ags/storage/SQLiteOfflineDataCache;

    const-string v6, "SettingsCache"

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6, v8}, Lcom/amazon/ags/storage/SQLiteOfflineDataCache;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->settingsDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    .line 223
    new-instance v43, Lcom/amazon/ags/html5/util/ClientConfig;

    invoke-direct/range {v43 .. v43}, Lcom/amazon/ags/html5/util/ClientConfig;-><init>()V

    .line 224
    .local v43, "clientConfig":Lcom/amazon/ags/html5/util/ClientConfig;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->settingsDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    const-string v6, "clientConfig"

    invoke-interface {v5, v6}, Lcom/amazon/ags/storage/OfflineDataCache;->getCacheItem(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/amazon/ags/html5/util/ClientConfig;->load(Lorg/json/JSONObject;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->gcVariationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

    invoke-virtual {v5}, Lcom/amazon/ags/html5/content/GCVariationManager;->getCachedVariations()Ljava/util/Map;

    move-result-object v41

    .line 228
    .local v41, "cachedVariations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "THREAD_POOL_SIZE"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/amazon/ags/html5/util/ClientConfig;->get(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v7, v0

    .line 230
    .local v7, "threadPoolSize":I
    const/4 v5, 0x5

    if-ge v7, v5, :cond_0

    .line 231
    const/4 v7, 0x5

    .line 233
    :cond_0
    const-string v5, "THREAD_TIMEOUT"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/amazon/ags/html5/util/ClientConfig;->get(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v55, v0

    .line 234
    .local v55, "threadTimeout":I
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v6, 0x5

    move/from16 v0, v55

    int-to-long v8, v0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v11}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v12}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 236
    new-instance v11, Lcom/amazon/ags/auth/AuthManager;

    move-object/from16 v0, v43

    invoke-direct {v11, v0}, Lcom/amazon/ags/auth/AuthManager;-><init>(Lcom/amazon/ags/html5/util/ClientConfig;)V

    .line 237
    .local v11, "authManager":Lcom/amazon/ags/auth/AuthManager;
    new-instance v42, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct/range {v42 .. v42}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 238
    .local v42, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual/range {v42 .. v42}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v50

    .line 239
    .local v50, "mgr":Lorg/apache/http/conn/ClientConnectionManager;
    invoke-virtual/range {v42 .. v42}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v53

    .line 241
    .local v53, "params":Lorg/apache/http/params/HttpParams;
    new-instance v56, Lcom/amazon/ags/html5/comm/UserAgentIdentifier;

    invoke-static {}, Lcom/amazon/ags/VersionInfo;->getSDKVersion()Lcom/amazon/ags/VersionInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->initializedContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

    move-object/from16 v0, v56

    invoke-direct {v0, v5, v6}, Lcom/amazon/ags/html5/comm/UserAgentIdentifier;-><init>(Lcom/amazon/ags/VersionInfo;Lcom/amazon/ags/html5/content/ContentVersion;)V

    .line 242
    .local v56, "userAgentIdentifier":Lcom/amazon/ags/html5/comm/UserAgentIdentifier;
    const-string v5, "http.useragent"

    invoke-virtual/range {v56 .. v56}, Lcom/amazon/ags/html5/comm/UserAgentIdentifier;->getUserAgent()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 244
    const-string v5, "HTTP_MAX_TOTAL_CONNECTIONS"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/amazon/ags/html5/util/ClientConfig;->get(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v5, v0

    move-object/from16 v0, v53

    invoke-static {v0, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 245
    new-instance v5, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const-string v6, "HTTP_MAX_CONNECTIONS_PER_ROUTE"

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Lcom/amazon/ags/html5/util/ClientConfig;->get(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v6, v0

    invoke-direct {v5, v6}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    move-object/from16 v0, v53

    invoke-static {v0, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 246
    const-string v5, "HTTP_CONNECTION_POOL_TIMEOUT_MILLIS"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/amazon/ags/html5/util/ClientConfig;->get(Ljava/lang/String;)J

    move-result-wide v16

    move-object/from16 v0, v53

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 247
    const-string v5, "HTTP_CONNECTION_TIMEOUT_MILLIS"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/amazon/ags/html5/util/ClientConfig;->get(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v5, v0

    move-object/from16 v0, v53

    invoke-static {v0, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 248
    const-string v5, "HTTP_SOCKET_TIMEOUT_MILLIS"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/amazon/ags/html5/util/ClientConfig;->get(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v5, v0

    move-object/from16 v0, v53

    invoke-static {v0, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 249
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v5, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-interface/range {v50 .. v50}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-direct {v5, v0, v6}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    move-object/from16 v0, v53

    invoke-direct {v9, v5, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 250
    .local v9, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lcom/amazon/ags/client/KindleFireIPCProxy;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    .line 251
    new-instance v12, Lcom/amazon/ags/html5/util/DeviceInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    invoke-direct {v12, v5}, Lcom/amazon/ags/html5/util/DeviceInfo;-><init>(Lcom/amazon/ags/client/KindleFireProxy;)V

    .line 252
    .local v12, "deviceInfo":Lcom/amazon/ags/html5/util/DeviceInfo;
    new-instance v8, Lcom/amazon/ags/html5/comm/HttpNetworkClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v14}, Lcom/amazon/ags/html5/comm/HttpNetworkClient;-><init>(Lorg/apache/http/client/HttpClient;Lcom/amazon/ags/client/KindleFireProxy;Lcom/amazon/ags/auth/AuthManager;Lcom/amazon/ags/html5/util/DeviceInfo;Lcom/amazon/ags/client/metrics/EventCollectorClient;Lcom/amazon/ags/html5/util/LocalizationUtil;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;

    .line 254
    new-instance v5, Lcom/amazon/ags/html5/util/WebViewFactory;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->javascriptRepository:Lcom/amazon/ags/html5/javascript/JavascriptRepository;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6}, Lcom/amazon/ags/html5/util/WebViewFactory;-><init>(Landroid/content/Context;Lcom/amazon/ags/html5/javascript/JavascriptRepository;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->webViewFactory:Lcom/amazon/ags/html5/util/WebViewFactory;

    .line 260
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v54

    .line 262
    .local v54, "scheduledExecutorService":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v5, Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    move-object/from16 v0, v54

    invoke-direct {v5, v6, v0}, Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;-><init>(Landroid/os/Handler;Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->replyMessenger:Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;

    .line 265
    new-instance v5, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->webViewFactory:Lcom/amazon/ags/html5/util/WebViewFactory;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v8, v0, v10}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;-><init>(Landroid/os/Handler;Lcom/amazon/ags/html5/util/WebViewFactory;Lcom/amazon/ags/html5/javascript/JavascriptRepository;Lcom/amazon/ags/html5/util/LocalizationUtil;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->toastFactory:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;

    .line 266
    new-instance v13, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

    invoke-static {}, Lcom/amazon/ags/VersionInfo;->getGameCircleVersion()Lcom/amazon/ags/VersionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/ags/VersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/amazon/ags/VersionInfo;->getSDKVersion()Lcom/amazon/ags/VersionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/ags/VersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->initializedContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

    invoke-virtual {v5}, Lcom/amazon/ags/html5/content/ContentVersion;->getVersion()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->applicationName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/html5/util/LocalizationUtil;Lcom/amazon/ags/html5/util/DeviceInfo;)V

    .line 267
    .local v13, "overlaySessionInformation":Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;
    new-instance v14, Lcom/amazon/ags/html5/overlay/OverlayManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->toastFactory:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->gcVariationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

    move-object/from16 v20, v0

    move-object/from16 v15, p1

    move-object/from16 v19, v13

    invoke-direct/range {v14 .. v21}, Lcom/amazon/ags/html5/overlay/OverlayManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactory;Lcom/amazon/ags/client/KindleFireProxy;Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;Lcom/amazon/ags/html5/content/GCVariationManager;Lcom/amazon/ags/html5/util/ImageManager;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->overlayManager:Lcom/amazon/ags/html5/overlay/OverlayManager;

    .line 269
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->webViewFactory:Lcom/amazon/ags/html5/util/WebViewFactory;

    invoke-virtual {v5}, Lcom/amazon/ags/html5/util/WebViewFactory;->getBackgroundWebview()Landroid/webkit/WebView;

    move-result-object v27

    .line 271
    .local v27, "backgroundWebView":Landroid/webkit/WebView;
    move-object/from16 v0, p7

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/amazon/ags/html5/util/GlobalState;->addListener(Lcom/amazon/ags/html5/util/GlobalState$GlobalStateListener;)V

    .line 274
    invoke-static {}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getInstance()Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getEnabledFeatures()Ljava/util/EnumSet;

    move-result-object v44

    .line 275
    .local v44, "developerSpecifiedFeatures":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/amazon/ags/api/AmazonGamesFeature;>;"
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v47, "featureStrings":Ljava/lang/StringBuilder;
    invoke-virtual/range {v44 .. v44}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .local v48, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/amazon/ags/api/AmazonGamesFeature;

    .line 277
    .local v46, "feature":Lcom/amazon/ags/api/AmazonGamesFeature;
    invoke-virtual/range {v46 .. v46}, Lcom/amazon/ags/api/AmazonGamesFeature;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v5, ";"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 190
    .end local v7    # "threadPoolSize":I
    .end local v9    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v11    # "authManager":Lcom/amazon/ags/auth/AuthManager;
    .end local v12    # "deviceInfo":Lcom/amazon/ags/html5/util/DeviceInfo;
    .end local v13    # "overlaySessionInformation":Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;
    .end local v21    # "imageManager":Lcom/amazon/ags/html5/util/ImageManager;
    .end local v27    # "backgroundWebView":Landroid/webkit/WebView;
    .end local v31    # "networkUtil":Lcom/amazon/ags/html5/util/NetworkUtil;
    .end local v32    # "browserUtil":Lcom/amazon/ags/html5/util/BrowserUtil;
    .end local v33    # "emailUtil":Lcom/amazon/ags/html5/util/EmailUtil;
    .end local v41    # "cachedVariations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v42    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v43    # "clientConfig":Lcom/amazon/ags/html5/util/ClientConfig;
    .end local v44    # "developerSpecifiedFeatures":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/amazon/ags/api/AmazonGamesFeature;>;"
    .end local v46    # "feature":Lcom/amazon/ags/api/AmazonGamesFeature;
    .end local v47    # "featureStrings":Ljava/lang/StringBuilder;
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v50    # "mgr":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v53    # "params":Lorg/apache/http/params/HttpParams;
    .end local v54    # "scheduledExecutorService":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v55    # "threadTimeout":I
    .end local v56    # "userAgentIdentifier":Lcom/amazon/ags/html5/comm/UserAgentIdentifier;
    :catch_0
    move-exception v45

    .line 191
    .local v45, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/amazon/ags/html5/factory/ServiceFactory;->TAG:Ljava/lang/String;

    const-string v6, "Unable to retrieve application name"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 194
    .end local v45    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, ""

    goto/16 :goto_1

    .line 281
    .restart local v7    # "threadPoolSize":I
    .restart local v9    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v11    # "authManager":Lcom/amazon/ags/auth/AuthManager;
    .restart local v12    # "deviceInfo":Lcom/amazon/ags/html5/util/DeviceInfo;
    .restart local v13    # "overlaySessionInformation":Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;
    .restart local v21    # "imageManager":Lcom/amazon/ags/html5/util/ImageManager;
    .restart local v27    # "backgroundWebView":Landroid/webkit/WebView;
    .restart local v31    # "networkUtil":Lcom/amazon/ags/html5/util/NetworkUtil;
    .restart local v32    # "browserUtil":Lcom/amazon/ags/html5/util/BrowserUtil;
    .restart local v33    # "emailUtil":Lcom/amazon/ags/html5/util/EmailUtil;
    .restart local v41    # "cachedVariations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v42    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v43    # "clientConfig":Lcom/amazon/ags/html5/util/ClientConfig;
    .restart local v44    # "developerSpecifiedFeatures":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/amazon/ags/api/AmazonGamesFeature;>;"
    .restart local v47    # "featureStrings":Ljava/lang/StringBuilder;
    .restart local v48    # "i$":Ljava/util/Iterator;
    .restart local v50    # "mgr":Lorg/apache/http/conn/ClientConnectionManager;
    .restart local v53    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v54    # "scheduledExecutorService":Ljava/util/concurrent/ScheduledExecutorService;
    .restart local v55    # "threadTimeout":I
    .restart local v56    # "userAgentIdentifier":Lcom/amazon/ags/html5/comm/UserAgentIdentifier;
    :cond_2
    const-string v5, ";"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v49

    .line 282
    .local v49, "lastFeatureSeparatorIndex":I
    const/4 v5, -0x1

    move/from16 v0, v49

    if-le v0, v5, :cond_3

    .line 283
    move-object/from16 v0, v47

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 285
    :cond_3
    const-string v5, "devFeatures"

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v0, v5, v6}, Lcom/amazon/ags/html5/util/GlobalState;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v14, Lcom/amazon/ags/html5/comm/NetworkCallFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;

    move-object/from16 v19, v0

    move-object v15, v11

    move-object/from16 v17, p7

    invoke-direct/range {v14 .. v19}, Lcom/amazon/ags/html5/comm/NetworkCallFactory;-><init>(Lcom/amazon/ags/auth/AuthManager;Landroid/os/Handler;Lcom/amazon/ags/html5/util/GlobalState;Lcom/amazon/ags/html5/util/LocalizationUtil;Lcom/amazon/ags/html5/comm/NetworkClient;)V

    .line 292
    .local v14, "networkCallFactory":Lcom/amazon/ags/html5/comm/NetworkCallFactory;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->nativeCallHandlers:Ljava/util/List;

    .line 293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->nativeCallHandlers:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v5, "backgroundwebview"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

    move-result-object v25

    .line 296
    .local v25, "backgroundJavascriptInterface":Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;
    const-string v5, "hostinterface"

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    new-instance v22, Lcom/amazon/ags/html5/service/WebViewServiceHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->javascriptRepository:Lcom/amazon/ags/html5/javascript/JavascriptRepository;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->replyMessenger:Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v23, p1

    invoke-direct/range {v22 .. v28}, Lcom/amazon/ags/html5/service/WebViewServiceHelper;-><init>(Landroid/content/Context;Lcom/amazon/ags/html5/javascript/JavascriptRepository;Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;Landroid/webkit/WebView;Landroid/os/Handler;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/ags/html5/factory/ServiceFactory;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    .line 298
    new-instance v51, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;

    const-string v5, "offlineEvents"

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2, v5}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;-><init>(Landroid/content/Context;Lcom/amazon/ags/storage/StringObfuscator;Ljava/lang/String;)V

    .line 299
    .local v51, "offlineEventCache":Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;
    new-instance v5, Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    move-object/from16 v0, v51

    move-object/from16 v1, v31

    move-object/from16 v2, p7

    invoke-direct {v5, v0, v1, v6, v2}, Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager;-><init>(Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;Lcom/amazon/ags/html5/util/NetworkUtil;Lcom/amazon/ags/html5/service/ServiceHelper;Lcom/amazon/ags/html5/util/GlobalState;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->offlineEventManager:Lcom/amazon/ags/storage/OfflineEventManager;

    .line 301
    new-instance v40, Lcom/amazon/ags/html5/javascript/event/JavascriptEventsManager;

    invoke-direct/range {v40 .. v40}, Lcom/amazon/ags/html5/javascript/event/JavascriptEventsManager;-><init>()V

    .line 303
    .local v40, "javascriptEventsManager":Lcom/amazon/ags/html5/javascript/event/JavascriptEventsManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->nativeCallHandlers:Ljava/util/List;

    new-instance v28, Lcom/amazon/ags/html5/javascript/NativeCallHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->offlineEventManager:Lcom/amazon/ags/storage/OfflineEventManager;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->gcVariationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

    move-object/from16 v37, v0

    move-object/from16 v29, p1

    move-object/from16 v35, v21

    invoke-direct/range {v28 .. v37}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/amazon/ags/html5/util/NetworkUtil;Lcom/amazon/ags/html5/util/BrowserUtil;Lcom/amazon/ags/html5/util/EmailUtil;Lcom/amazon/ags/storage/OfflineEventManager;Lcom/amazon/ags/html5/util/ImageManager;Lcom/amazon/ags/html5/util/LocalizationUtil;Lcom/amazon/ags/html5/content/GCVariationManager;)V

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->nativeCallHandlers:Ljava/util/List;

    new-instance v6, Lcom/amazon/ags/html5/javascript/NativeToastCallHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->overlayManager:Lcom/amazon/ags/html5/overlay/OverlayManager;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v8, v10}, Lcom/amazon/ags/html5/javascript/NativeToastCallHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/amazon/ags/html5/overlay/OverlayManager;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->nativeCallHandlers:Ljava/util/List;

    new-instance v6, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->achOfflineDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->leaderboardOfflineDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->playerProfileOfflineDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v6, v8, v10, v15, v0}, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;-><init>(Landroid/os/Handler;Lcom/amazon/ags/storage/OfflineDataCache;Lcom/amazon/ags/storage/OfflineDataCache;Lcom/amazon/ags/storage/OfflineDataCache;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->nativeCallHandlers:Ljava/util/List;

    new-instance v6, Lcom/amazon/ags/html5/javascript/NativeAuthCallHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    invoke-direct {v6, v8, v11}, Lcom/amazon/ags/html5/javascript/NativeAuthCallHandler;-><init>(Landroid/os/Handler;Lcom/amazon/ags/auth/AuthManager;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->nativeCallHandlers:Ljava/util/List;

    new-instance v6, Lcom/amazon/ags/html5/javascript/NativeGlobalStateCallHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    move-object/from16 v0, p7

    invoke-direct {v6, v8, v0}, Lcom/amazon/ags/html5/javascript/NativeGlobalStateCallHandler;-><init>(Landroid/os/Handler;Lcom/amazon/ags/html5/util/GlobalState;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->nativeCallHandlers:Ljava/util/List;

    new-instance v6, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->settingsDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    invoke-direct {v6, v8, v10}, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;-><init>(Landroid/os/Handler;Lcom/amazon/ags/storage/OfflineDataCache;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->nativeCallHandlers:Ljava/util/List;

    new-instance v6, Lcom/amazon/ags/html5/javascript/BackgroundTaskHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    invoke-direct {v6, v8, v10}, Lcom/amazon/ags/html5/javascript/BackgroundTaskHandler;-><init>(Lcom/amazon/ags/html5/service/ServiceHelper;Landroid/os/Handler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->nativeCallHandlers:Ljava/util/List;

    new-instance v6, Lcom/amazon/ags/html5/javascript/ReportEventHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    move-object/from16 v0, p4

    invoke-direct {v6, v0, v8}, Lcom/amazon/ags/html5/javascript/ReportEventHandler;-><init>(Lcom/amazon/ags/client/metrics/EventCollectorClient;Landroid/os/Handler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->nativeCallHandlers:Ljava/util/List;

    new-instance v6, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v8, v10}, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/amazon/ags/client/KindleFireProxy;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->nativeCallHandlers:Ljava/util/List;

    new-instance v6, Lcom/amazon/ags/html5/javascript/event/NativeJavascriptEventsCallHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    move-object/from16 v0, v40

    invoke-direct {v6, v8, v0}, Lcom/amazon/ags/html5/javascript/event/NativeJavascriptEventsCallHandler;-><init>(Landroid/os/Handler;Lcom/amazon/ags/html5/javascript/event/JavascriptEventsManager;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->toastFactory:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    invoke-virtual {v5, v6}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;->setServiceHelper(Lcom/amazon/ags/html5/service/ServiceHelper;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->javascriptRepository:Lcom/amazon/ags/html5/javascript/JavascriptRepository;

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Lcom/amazon/ags/html5/javascript/JavascriptRepository;->loadBackgroundJavascript(Landroid/webkit/WebView;)V

    .line 320
    new-instance v5, Lcom/amazon/ags/client/OverlayClient;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    invoke-direct {v5, v6}, Lcom/amazon/ags/client/OverlayClient;-><init>(Lcom/amazon/ags/html5/service/ServiceHelper;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    .line 321
    new-instance v5, Lcom/amazon/ags/client/session/SessionClient;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    invoke-direct {v5, v6}, Lcom/amazon/ags/client/session/SessionClient;-><init>(Lcom/amazon/ags/html5/service/ServiceHelper;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->sessionClient:Lcom/amazon/ags/client/session/SessionClient;

    .line 323
    invoke-static {}, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->getInstance()Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->sessionClient:Lcom/amazon/ags/client/session/SessionClient;

    move-object/from16 v37, v0

    move-object/from16 v36, v31

    move-object/from16 v38, v9

    move-object/from16 v39, v11

    invoke-virtual/range {v34 .. v40}, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->setNetworkDependencies(Lcom/amazon/ags/html5/comm/NetworkClient;Lcom/amazon/ags/html5/util/NetworkUtil;Lcom/amazon/ags/client/session/SessionClient;Lorg/apache/http/client/HttpClient;Lcom/amazon/ags/auth/AuthManager;Lcom/amazon/ags/html5/javascript/event/JavascriptEventsManager;)V

    .line 327
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->setAuthManager(Lcom/amazon/ags/auth/AuthManager;)V

    .line 328
    move-object/from16 v0, p4

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->setGlobalState(Lcom/amazon/ags/html5/util/GlobalState;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->initializedContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->setContentVersion(Lcom/amazon/ags/html5/content/ContentVersion;)V

    .line 330
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->setDeviceInfo(Lcom/amazon/ags/html5/util/DeviceInfo;)V

    .line 331
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/ags/html5/factory/ServiceFactory;
    .locals 3

    .prologue
    .line 176
    const-class v1, Lcom/amazon/ags/html5/factory/ServiceFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->instance:Lcom/amazon/ags/html5/factory/ServiceFactory;

    if-nez v0, :cond_0

    .line 177
    sget-object v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->TAG:Ljava/lang/String;

    const-string v2, "ServiceFactory must be initialized before using"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v2, "ServiceFactory must be initialized before using"

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 180
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->instance:Lcom/amazon/ags/html5/factory/ServiceFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static getShowToastsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->showToastsFlag:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/ags/html5/content/ContentManager;Lcom/amazon/ags/client/metrics/EventCollectorClient;Lcom/amazon/ags/storage/StringObfuscator;Lcom/amazon/ags/html5/content/GCVariationManager;Lcom/amazon/ags/html5/util/GlobalState;)Lcom/amazon/ags/html5/factory/ServiceFactory;
    .locals 9
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "contentManager"    # Lcom/amazon/ags/html5/content/ContentManager;
    .param p3, "eventCollectorClient"    # Lcom/amazon/ags/client/metrics/EventCollectorClient;
    .param p4, "stringObfuscator"    # Lcom/amazon/ags/storage/StringObfuscator;
    .param p5, "variationManager"    # Lcom/amazon/ags/html5/content/GCVariationManager;
    .param p6, "globalState"    # Lcom/amazon/ags/html5/util/GlobalState;

    .prologue
    .line 167
    const-class v8, Lcom/amazon/ags/html5/factory/ServiceFactory;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->instance:Lcom/amazon/ags/html5/factory/ServiceFactory;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->TAG:Ljava/lang/String;

    const-string v1, "ServiceFactory already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    sget-object v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->instance:Lcom/amazon/ags/html5/factory/ServiceFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v0

    .line 170
    :cond_0
    :try_start_1
    new-instance v0, Lcom/amazon/ags/html5/factory/ServiceFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/ags/html5/factory/ServiceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/ags/html5/content/ContentManager;Lcom/amazon/ags/client/metrics/EventCollectorClient;Lcom/amazon/ags/storage/StringObfuscator;Lcom/amazon/ags/html5/content/GCVariationManager;Lcom/amazon/ags/html5/util/GlobalState;)V

    sput-object v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->instance:Lcom/amazon/ags/html5/factory/ServiceFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static isDebugLoggingEnabled()Z
    .locals 1

    .prologue
    .line 390
    sget-boolean v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->debugLoggingEnabled:Z

    return v0
.end method

.method private resolveToastLock()V
    .locals 2

    .prologue
    .line 434
    iget-object v1, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->toastLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->toastLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 436
    monitor-exit v1

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setDebugLoggingEnabled(Z)V
    .locals 0
    .param p0, "debugLoggingEnabled"    # Z

    .prologue
    .line 398
    sput-boolean p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->debugLoggingEnabled:Z

    .line 399
    return-void
.end method


# virtual methods
.method public disableToastCreation()V
    .locals 1

    .prologue
    .line 447
    const-string v0, "dontShowToasts"

    sput-object v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->showToastsFlag:Ljava/lang/String;

    .line 448
    invoke-direct {p0}, Lcom/amazon/ags/html5/factory/ServiceFactory;->resolveToastLock()V

    .line 449
    return-void
.end method

.method public enableToastCreation()V
    .locals 1

    .prologue
    .line 441
    const-string v0, "showToasts"

    sput-object v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->showToastsFlag:Ljava/lang/String;

    .line 442
    invoke-direct {p0}, Lcom/amazon/ags/html5/factory/ServiceFactory;->resolveToastLock()V

    .line 443
    return-void
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventCollectorClient()Lcom/amazon/ags/client/metrics/EventCollectorClient;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    return-object v0
.end method

.method public getInitializedContentVersion()Lcom/amazon/ags/html5/content/ContentVersion;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->initializedContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

    return-object v0
.end method

.method public getJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 370
    new-instance v0, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

    iget-object v2, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->replyMessenger:Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;

    iget-object v3, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->overlayManager:Lcom/amazon/ags/html5/overlay/OverlayManager;

    iget-object v4, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->nativeCallHandlers:Ljava/util/List;

    iget-object v5, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v7, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->toastLock:Ljava/lang/Object;

    move-object v1, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;-><init>(Ljava/lang/String;Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;Lcom/amazon/ags/html5/overlay/OverlayManager;Ljava/util/List;Ljava/util/concurrent/ExecutorService;Landroid/webkit/WebView;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getJavascriptRepository()Lcom/amazon/ags/html5/javascript/JavascriptRepository;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->javascriptRepository:Lcom/amazon/ags/html5/javascript/JavascriptRepository;

    return-object v0
.end method

.method public getKindleFireProxy()Lcom/amazon/ags/client/KindleFireProxy;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    return-object v0
.end method

.method public getLocalizationUtil()Lcom/amazon/ags/html5/util/LocalizationUtil;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    return-object v0
.end method

.method public getNetworkClient()Lcom/amazon/ags/html5/comm/NetworkClient;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;

    return-object v0
.end method

.method public getOverlayClient()Lcom/amazon/ags/client/OverlayClient;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    return-object v0
.end method

.method public getServiceHelper()Lcom/amazon/ags/html5/service/ServiceHelper;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    return-object v0
.end method

.method public getSessionClient()Lcom/amazon/ags/client/session/SessionClient;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->sessionClient:Lcom/amazon/ags/client/session/SessionClient;

    return-object v0
.end method

.method public getUiThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->uiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getWebViewFactory()Lcom/amazon/ags/html5/util/WebViewFactory;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->webViewFactory:Lcom/amazon/ags/html5/util/WebViewFactory;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->toastFactory:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;->dismissCurrentToast()V

    .line 405
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->offlineEventManager:Lcom/amazon/ags/storage/OfflineEventManager;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->offlineEventManager:Lcom/amazon/ags/storage/OfflineEventManager;

    invoke-interface {v0}, Lcom/amazon/ags/storage/OfflineEventManager;->onPause()V

    .line 408
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->offlineEventManager:Lcom/amazon/ags/storage/OfflineEventManager;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->offlineEventManager:Lcom/amazon/ags/storage/OfflineEventManager;

    invoke-interface {v0}, Lcom/amazon/ags/storage/OfflineEventManager;->onResume()V

    .line 414
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 417
    sput-object v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->instance:Lcom/amazon/ags/html5/factory/ServiceFactory;

    .line 418
    iput-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->achOfflineDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    .line 419
    iput-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->leaderboardOfflineDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    .line 420
    iput-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->playerProfileOfflineDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    .line 421
    iput-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->offlineEventManager:Lcom/amazon/ags/storage/OfflineEventManager;

    .line 422
    iput-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    .line 423
    iput-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    .line 424
    iput-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->overlayManager:Lcom/amazon/ags/html5/overlay/OverlayManager;

    .line 425
    iput-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->webViewFactory:Lcom/amazon/ags/html5/util/WebViewFactory;

    .line 426
    iput-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->nativeCallHandlers:Ljava/util/List;

    .line 427
    iput-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->replyMessenger:Lcom/amazon/ags/html5/service/AsynchronousReplyMessenger;

    .line 428
    iput-object v0, p0, Lcom/amazon/ags/html5/factory/ServiceFactory;->javascriptRepository:Lcom/amazon/ags/html5/javascript/JavascriptRepository;

    .line 429
    sput-object v0, Lcom/amazon/ags/html5/factory/ServiceFactory;->showToastsFlag:Ljava/lang/String;

    .line 430
    return-void
.end method
