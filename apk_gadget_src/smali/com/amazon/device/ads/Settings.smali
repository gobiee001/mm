.class Lcom/amazon/device/ads/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/Settings$SettingsListener;,
        Lcom/amazon/device/ads/Settings$TransientValue;,
        Lcom/amazon/device/ads/Settings$Value;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final PREFS_NAME:Ljava/lang/String; = "AmazonMobileAds"

.field public static final SETTING_ENABLE_WEBVIEW_PAUSE_LOGIC:Ljava/lang/String; = "shouldPauseWebViewTimersInWebViewRelatedActivities"

.field protected static final SETTING_TESTING_ENABLED:Ljava/lang/String; = "testingEnabled"

.field protected static final SETTING_TLS_ENABLED:Ljava/lang/String; = "tlsEnabled"

.field private static instance:Lcom/amazon/device/ads/Settings;


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/Settings$Value;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/device/ads/Settings$SettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final settingsLoadedLatch:Ljava/util/concurrent/CountDownLatch;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private final writeToSharedPreferencesLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/amazon/device/ads/Settings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/Settings;->LOGTAG:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/amazon/device/ads/Settings;

    invoke-direct {v0}, Lcom/amazon/device/ads/Settings;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/Settings;->instance:Lcom/amazon/device/ads/Settings;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/Settings;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->writeToSharedPreferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 45
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->settingsLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/Settings;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/Settings;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->writeToSharedPreferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/Settings;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/Settings;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/Settings;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/Settings;
    .param p1, "x1"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/Settings;->commit(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private commit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 458
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Committing settings must be executed on a background thread."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 463
    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    invoke-static {p1}, Lcom/amazon/device/ads/AndroidTargetUtils;->editorApply(Landroid/content/SharedPreferences$Editor;)V

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/amazon/device/ads/Settings;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/amazon/device/ads/Settings;->instance:Lcom/amazon/device/ads/Settings;

    return-object v0
.end method

.method private putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/amazon/device/ads/Settings$Value;

    .prologue
    .line 141
    iget-object v0, p2, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Could not set null value for setting: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 148
    iget-boolean v0, p2, Lcom/amazon/device/ads/Settings$Value;->isTransientData:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->flush()V

    goto :goto_0
.end method

.method private putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/amazon/device/ads/Settings$Value;

    .prologue
    .line 155
    iget-object v0, p2, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Could not set null value for setting: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private writeCacheToSharedPreferences()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Settings;->writeCacheToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 205
    return-void
.end method


# virtual methods
.method beginFetch(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    new-instance v0, Lcom/amazon/device/ads/Settings$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/Settings$1;-><init>(Lcom/amazon/device/ads/Settings;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method cacheAdditionalEntries(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 188
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 190
    iget-object v4, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Lcom/amazon/device/ads/Settings$Value;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_1
    iget-object v4, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "Could not cache null value for SharedPreferences setting: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method contextReceived(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Settings;->beginFetch(Landroid/content/Context;)V

    goto :goto_0
.end method

.method fetchSharedPreferences(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 537
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Settings;->getSharedPreferencesFromContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 538
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Settings;->readSharedPreferencesIntoCache(Landroid/content/SharedPreferences;)V

    .line 542
    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 543
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Settings;->writeCacheToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 545
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/Settings;->settingsLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 547
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->notifySettingsListeners()V

    .line 548
    return-void
.end method

.method flush()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/amazon/device/ads/Settings;->writeCacheToSharedPreferences()V

    .line 260
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 398
    iget-object v1, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 399
    .local v0, "value":Lcom/amazon/device/ads/Settings$Value;
    if-nez v0, :cond_0

    .line 405
    .end local p2    # "defaultValue":Ljava/lang/Boolean;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/Boolean;
    :cond_0
    iget-object v1, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    move-object p2, v1

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 386
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 387
    .local v0, "value":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 393
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method getCache()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/Settings$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 308
    iget-object v1, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 309
    .local v0, "value":Lcom/amazon/device/ads/Settings$Value;
    if-nez v0, :cond_0

    .line 315
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    iget-object v1, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 347
    iget-object v1, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 348
    .local v0, "value":Lcom/amazon/device/ads/Settings$Value;
    if-nez v0, :cond_0

    .line 354
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    iget-object v1, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method getSharedPreferencesFromContext(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const-string v0, "AmazonMobileAds"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v1, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 270
    .local v0, "value":Lcom/amazon/device/ads/Settings$Value;
    if-nez v0, :cond_0

    .line 276
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    iget-object v1, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object p2, v1

    goto :goto_0
.end method

.method public getWrittenBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 432
    .end local p2    # "defaultValue":Z
    :cond_0
    return p2
.end method

.method public getWrittenInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 342
    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method public getWrittenLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    .line 381
    .end local p2    # "defaultValue":J
    :cond_0
    return-wide p2
.end method

.method public getWrittenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 303
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public isSettingsLoaded()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listenForSettings(Lcom/amazon/device/ads/Settings$SettingsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/amazon/device/ads/Settings$SettingsListener;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 99
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {p1}, Lcom/amazon/device/ads/Settings$SettingsListener;->settingsLoaded()V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 108
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method notifySettingsListeners()V
    .locals 3

    .prologue
    .line 478
    iget-object v2, p0, Lcom/amazon/device/ads/Settings;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 480
    iget-object v2, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/ads/Settings$SettingsListener;

    .line 482
    .local v1, "listener":Lcom/amazon/device/ads/Settings$SettingsListener;
    invoke-interface {v1}, Lcom/amazon/device/ads/Settings$SettingsListener;->settingsLoaded()V

    goto :goto_0

    .line 486
    .end local v1    # "listener":Lcom/amazon/device/ads/Settings$SettingsListener;
    :cond_0
    iget-object v2, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 487
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/ArrayList;

    .line 488
    iget-object v2, p0, Lcom/amazon/device/ads/Settings;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 489
    return-void
.end method

.method putBoolean(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 410
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 411
    return-void
.end method

.method putBooleanWithNoFlush(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 414
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 415
    return-void
.end method

.method putInt(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 320
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 321
    return-void
.end method

.method putIntWithNoFlush(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 324
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 325
    return-void
.end method

.method putLong(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 359
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 360
    return-void
.end method

.method putLongWithNoFlush(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 363
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 364
    return-void
.end method

.method putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 282
    return-void
.end method

.method putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 285
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 286
    return-void
.end method

.method putTransientBoolean(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 418
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 419
    return-void
.end method

.method putTransientInt(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 328
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 329
    return-void
.end method

.method putTransientLong(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 367
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    const-class v1, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 368
    return-void
.end method

.method putTransientString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 289
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 290
    return-void
.end method

.method readSharedPreferencesIntoCache(Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 170
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 171
    .local v0, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Settings;->cacheAdditionalEntries(Ljava/util/Map;)V

    .line 172
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v1, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 438
    .local v0, "value":Lcom/amazon/device/ads/Settings$Value;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/amazon/device/ads/Settings$Value;->isTransientData:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->flush()V

    .line 442
    :cond_0
    return-void
.end method

.method removeWithNoFlush(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    return-void
.end method

.method writeCacheToSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 212
    new-instance v0, Lcom/amazon/device/ads/Settings$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/Settings$2;-><init>(Lcom/amazon/device/ads/Settings;Landroid/content/SharedPreferences;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method
