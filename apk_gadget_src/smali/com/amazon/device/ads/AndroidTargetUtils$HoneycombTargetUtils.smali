.class Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;
.super Ljava/lang/Object;
.source "AndroidTargetUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AndroidTargetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoneycombTargetUtils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final disableHardwareAcceleration(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 489
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 490
    return-void
.end method

.method protected static enableHardwareAcceleration(Landroid/view/Window;)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    const/high16 v0, 0x1000000

    .line 522
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 524
    return-void
.end method

.method protected static final varargs executeAsyncTaskWithThreadPooling(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, "task":Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;, "Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask<TT;**>;"
    .local p1, "params":[Ljava/lang/Object;, "[TT;"
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 500
    return-void
.end method

.method protected static hideActionBar(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 509
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 513
    :cond_0
    return-void
.end method

.method public static isInstanceOfSQLiteDatabaseLockedException(Landroid/database/sqlite/SQLiteException;)Z
    .locals 1
    .param p0, "e"    # Landroid/database/sqlite/SQLiteException;

    .prologue
    .line 479
    instance-of v0, p0, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    return v0
.end method

.method protected static removeJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 517
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 518
    return-void
.end method
