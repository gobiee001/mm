.class Lcom/amazon/device/ads/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;,
        Lcom/amazon/device/ads/WebViewFactory$WebViewDatabaseFactory;,
        Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;
    }
.end annotation


# static fields
.field private static instance:Lcom/amazon/device/ads/WebViewFactory;


# instance fields
.field private final buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

.field private final cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private isWebViewCheckedAndOk:Z

.field private final loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

.field private final webViewConstructor:Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;

.field private final webViewDatabaseFactory:Lcom/amazon/device/ads/WebViewFactory$WebViewDatabaseFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/amazon/device/ads/WebViewFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/WebViewFactory;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/WebViewFactory;->instance:Lcom/amazon/device/ads/WebViewFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 8

    .prologue
    .line 34
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    new-instance v2, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v2}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v3

    new-instance v4, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    invoke-direct {v4}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;-><init>()V

    new-instance v5, Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-direct {v5}, Lcom/amazon/device/ads/AndroidBuildInfo;-><init>()V

    new-instance v6, Lcom/amazon/device/ads/WebViewFactory$WebViewDatabaseFactory;

    invoke-direct {v6}, Lcom/amazon/device/ads/WebViewFactory$WebViewDatabaseFactory;-><init>()V

    new-instance v7, Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;

    invoke-direct {v7}, Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/WebViewFactory;-><init>(Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;Lcom/amazon/device/ads/AndroidBuildInfo;Lcom/amazon/device/ads/WebViewFactory$WebViewDatabaseFactory;Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;)V

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;Lcom/amazon/device/ads/AndroidBuildInfo;Lcom/amazon/device/ads/WebViewFactory$WebViewDatabaseFactory;Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;)V
    .locals 1
    .param p1, "infoStore"    # Lcom/amazon/device/ads/MobileAdsInfoStore;
    .param p2, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p3, "debugProperties"    # Lcom/amazon/device/ads/DebugProperties;
    .param p4, "cookieManager"    # Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;
    .param p5, "buildInfo"    # Lcom/amazon/device/ads/AndroidBuildInfo;
    .param p6, "webViewDatabaseFactory"    # Lcom/amazon/device/ads/WebViewFactory$WebViewDatabaseFactory;
    .param p7, "webViewConstructor"    # Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/WebViewFactory;->isWebViewCheckedAndOk:Z

    .line 50
    iput-object p1, p0, Lcom/amazon/device/ads/WebViewFactory;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 51
    iput-object p2, p0, Lcom/amazon/device/ads/WebViewFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 52
    iput-object p3, p0, Lcom/amazon/device/ads/WebViewFactory;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 53
    iput-object p4, p0, Lcom/amazon/device/ads/WebViewFactory;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    .line 54
    iput-object p5, p0, Lcom/amazon/device/ads/WebViewFactory;->buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    .line 55
    iput-object p6, p0, Lcom/amazon/device/ads/WebViewFactory;->webViewDatabaseFactory:Lcom/amazon/device/ads/WebViewFactory$WebViewDatabaseFactory;

    .line 56
    iput-object p7, p0, Lcom/amazon/device/ads/WebViewFactory;->webViewConstructor:Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;

    .line 57
    invoke-direct {p0}, Lcom/amazon/device/ads/WebViewFactory;->shouldDebugWebViews()V

    .line 58
    return-void
.end method

.method private static doesExceptionContainLockedDatabaseMessage(Ljava/lang/Exception;)Z
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 165
    const-string v0, "database is locked"

    .line 167
    .local v0, "lockedDatabaseMessage":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "database is locked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public static final getInstance()Lcom/amazon/device/ads/WebViewFactory;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/amazon/device/ads/WebViewFactory;->instance:Lcom/amazon/device/ads/WebViewFactory;

    return-object v0
.end method

.method private isDatabaseLocked(Landroid/database/sqlite/SQLiteException;)Z
    .locals 2
    .param p1, "e"    # Landroid/database/sqlite/SQLiteException;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amazon/device/ads/WebViewFactory;->buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {p1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isInstanceOfSQLiteDatabaseLockedException(Landroid/database/sqlite/SQLiteException;)Z

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/amazon/device/ads/WebViewFactory;->doesExceptionContainLockedDatabaseMessage(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_0
.end method

.method private shouldDebugWebViews()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/amazon/device/ads/WebViewFactory;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v1, "debug.webViews"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->enableWebViewDebugging(Z)V

    .line 205
    :cond_0
    return-void
.end method

.method private updateAdIdCookie()V
    .locals 5

    .prologue
    .line 80
    iget-object v1, p0, Lcom/amazon/device/ads/WebViewFactory;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    invoke-virtual {v1}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->isCookieSyncManagerCreated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/amazon/device/ads/WebViewFactory;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->getAdId()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "adId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 90
    const-string v0, ""

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/WebViewFactory;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    const-string v2, "http://amazon-adsystem.com"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ad-id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; Domain=.amazon-adsystem.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v0    # "adId":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/WebViewFactory;->webViewConstructor:Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;

    invoke-virtual {v1, p1}, Lcom/amazon/device/ads/WebViewFactory$WebViewConstructor;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    .line 68
    .local v0, "webView":Landroid/webkit/WebView;
    iget-object v1, p0, Lcom/amazon/device/ads/WebViewFactory;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/DeviceInfo;->setUserAgentString(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/WebViewFactory;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/amazon/device/ads/WebViewFactory;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    invoke-virtual {v1, p1}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->createCookieSyncManager(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0}, Lcom/amazon/device/ads/WebViewFactory;->updateAdIdCookie()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-object v0

    .line 67
    .end local v0    # "webView":Landroid/webkit/WebView;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isWebViewOk(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    iget-object v5, p0, Lcom/amazon/device/ads/WebViewFactory;->buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtOrBelowAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    iget-boolean v5, p0, Lcom/amazon/device/ads/WebViewFactory;->isWebViewCheckedAndOk:Z

    if-nez v5, :cond_3

    .line 112
    iget-object v5, p0, Lcom/amazon/device/ads/WebViewFactory;->webViewDatabaseFactory:Lcom/amazon/device/ads/WebViewFactory$WebViewDatabaseFactory;

    invoke-virtual {v5, p1}, Lcom/amazon/device/ads/WebViewFactory$WebViewDatabaseFactory;->getWebViewDatabase(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    .line 113
    .local v2, "wvDb":Landroid/webkit/WebViewDatabase;
    if-nez v2, :cond_1

    .line 138
    .end local v2    # "wvDb":Landroid/webkit/WebViewDatabase;
    :cond_0
    :goto_0
    return v3

    .line 118
    .restart local v2    # "wvDb":Landroid/webkit/WebViewDatabase;
    :cond_1
    const/4 v0, 0x0

    .line 121
    .local v0, "cdb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "webviewCache.db"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 130
    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 135
    :cond_2
    iput-boolean v4, p0, Lcom/amazon/device/ads/WebViewFactory;->isWebViewCheckedAndOk:Z

    .end local v0    # "cdb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "wvDb":Landroid/webkit/WebViewDatabase;
    :cond_3
    move v3, v4

    .line 138
    goto :goto_0

    .line 123
    .restart local v0    # "cdb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "wvDb":Landroid/webkit/WebViewDatabase;
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/WebViewFactory;->isDatabaseLocked(Landroid/database/sqlite/SQLiteException;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 130
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 130
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    .line 132
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v3
.end method

.method public setJavaScriptEnabledForWebView(ZLandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "webView"    # Landroid/webkit/WebView;
    .param p3, "logtag"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/amazon/device/ads/WebViewFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-virtual {v2, p3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v1

    .line 189
    .local v1, "logger":Lcom/amazon/device/ads/MobileAdsLogger;
    const-string v2, "Could not set JavaScriptEnabled because a NullPointerException was encountered."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    .line 190
    const/4 v2, 0x0

    goto :goto_0
.end method
