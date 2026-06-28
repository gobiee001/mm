.class public Lcom/mopub/mobileads/WebViewCacheService;
.super Ljava/lang/Object;
.source "WebViewCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;,
        Lcom/mopub/mobileads/WebViewCacheService$Config;
    }
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;

.field static final sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private static final sWebViewConfigs:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mopub/mobileads/WebViewCacheService$Config;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    .line 79
    new-instance v0, Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;-><init>(Lcom/mopub/mobileads/WebViewCacheService$1;)V

    sput-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static clearAll()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 155
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/mopub/mobileads/WebViewCacheService;->sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public static popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;
    .locals 1
    .param p0, "broadcastIdentifier"    # Ljava/lang/Long;

    .prologue
    .line 119
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/WebViewCacheService$Config;

    return-object v0
.end method

.method public static storeWebViewConfig(Ljava/lang/Long;Lcom/mopub/mobileads/Interstitial;Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;)V
    .locals 2
    .param p0, "broadcastIdentifier"    # Ljava/lang/Long;
    .param p1, "baseInterstitial"    # Lcom/mopub/mobileads/Interstitial;
    .param p2, "baseWebView"    # Lcom/mopub/mobileads/BaseWebView;
    .param p3, "viewabilityManager"    # Lcom/mopub/common/ExternalViewabilitySessionManager;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 102
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Lcom/mopub/mobileads/WebViewCacheService;->trimCache()V

    .line 107
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 108
    const-string v0, "Unable to cache web view. Please destroy some via MoPubInterstitial#destroy() and try again."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    new-instance v1, Lcom/mopub/mobileads/WebViewCacheService$Config;

    invoke-direct {v1, p2, p1, p3}, Lcom/mopub/mobileads/WebViewCacheService$Config;-><init>(Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/mobileads/Interstitial;Lcom/mopub/common/ExternalViewabilitySessionManager;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static declared-synchronized trimCache()V
    .locals 8
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 126
    const-class v3, Lcom/mopub/mobileads/WebViewCacheService;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/mopub/mobileads/WebViewCacheService$Config;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/mopub/mobileads/WebViewCacheService$Config;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/WebViewCacheService$Config;

    invoke-virtual {v2}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getWeakInterstitial()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/WebViewCacheService$Config;

    invoke-virtual {v2}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getViewabilityManager()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endDisplaySession()V

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/mopub/mobileads/WebViewCacheService$Config;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 138
    :cond_1
    :try_start_1
    sget-object v2, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 139
    sget-object v2, Lcom/mopub/mobileads/WebViewCacheService;->sHandler:Landroid/os/Handler;

    sget-object v4, Lcom/mopub/mobileads/WebViewCacheService;->sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    sget-object v2, Lcom/mopub/mobileads/WebViewCacheService;->sHandler:Landroid/os/Handler;

    sget-object v4, Lcom/mopub/mobileads/WebViewCacheService;->sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    const-wide/32 v6, 0xdbba0

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :cond_2
    monitor-exit v3

    return-void
.end method
