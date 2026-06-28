.class Lcom/amazon/device/ads/AndroidTargetUtils;
.super Ljava/lang/Object;
.source "AndroidTargetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanMR1TargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$GingerbreadTargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$FroyoTargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$EclairTargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;
    }
.end annotation


# static fields
.field public static final defaultAndroidClassAdapter:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

.field private static isWebViewCheckedAndOk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazon/device/ads/AndroidTargetUtils;->isWebViewCheckedAndOk:Z

    .line 44
    new-instance v0, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

    new-instance v1, Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-direct {v1}, Lcom/amazon/device/ads/AndroidBuildInfo;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;-><init>(Lcom/amazon/device/ads/AndroidBuildInfo;)V

    sput-object v0, Lcom/amazon/device/ads/AndroidTargetUtils;->defaultAndroidClassAdapter:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final disableHardwareAcceleration(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 211
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->disableHardwareAcceleration(Landroid/view/View;)V

    .line 212
    return-void
.end method

.method public static editorApply(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 230
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$GingerbreadTargetUtils;->editorApply(Landroid/content/SharedPreferences$Editor;)V

    .line 231
    return-void
.end method

.method public static enableHardwareAcceleration(Landroid/view/Window;)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    .line 399
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->enableHardwareAcceleration(Landroid/view/Window;)V

    .line 403
    :cond_0
    return-void
.end method

.method public static enableWebViewDebugging(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 391
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils;->enableWebViewDebugging(Z)V

    .line 395
    :cond_0
    return-void
.end method

.method public static varargs executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V
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
    .line 293
    .local p0, "task":Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;, "Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask<TT;**>;"
    .local p1, "params":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->executeAsyncTaskWithThreadPooling(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static getDefaultAndroidClassAdapter()Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/amazon/device/ads/AndroidTargetUtils;->defaultAndroidClassAdapter:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

    return-object v0
.end method

.method public static getNewBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "f"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$EclairTargetUtils;->getNewBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getOrientation(Landroid/view/Display;)I
    .locals 1
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    .line 275
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$FroyoTargetUtils;->getRotation(Landroid/view/Display;)I

    move-result v0

    .line 281
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public static getPackageCodePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$FroyoTargetUtils;->getPackageCodePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hideActionAndStatusBars(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 309
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->hideActionBar(Landroid/app/Activity;)V

    .line 313
    :cond_0
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;->hideStatusBar(Landroid/app/Activity;)V

    .line 317
    :cond_1
    return-void
.end method

.method public static isAndroidAPI(I)Z
    .locals 1
    .param p0, "api"    # I

    .prologue
    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z
    .locals 1
    .param p0, "androidBuildInfo"    # Lcom/amazon/device/ads/AndroidBuildInfo;
    .param p1, "api"    # I

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/amazon/device/ads/AndroidBuildInfo;->getSDKInt()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtLeastAndroidAPI(I)Z
    .locals 1
    .param p0, "api"    # I

    .prologue
    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z
    .locals 1
    .param p0, "androidBuildInfo"    # Lcom/amazon/device/ads/AndroidBuildInfo;
    .param p1, "api"    # I

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/amazon/device/ads/AndroidBuildInfo;->getSDKInt()I

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtOrBelowAndroidAPI(I)Z
    .locals 1
    .param p0, "api"    # I

    .prologue
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtOrBelowAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z
    .locals 1
    .param p0, "androidBuildInfo"    # Lcom/amazon/device/ads/AndroidBuildInfo;
    .param p1, "api"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/amazon/device/ads/AndroidBuildInfo;->getSDKInt()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBetweenAndroidAPIs(Lcom/amazon/device/ads/AndroidBuildInfo;II)Z
    .locals 1
    .param p0, "androidBuildInfo"    # Lcom/amazon/device/ads/AndroidBuildInfo;
    .param p1, "lowerApi"    # I
    .param p2, "upperApi"    # I

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtOrBelowAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isDatabaseLocked(Landroid/database/sqlite/SQLiteException;)Z
    .locals 1
    .param p0, "e"    # Landroid/database/sqlite/SQLiteException;

    .prologue
    .line 377
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isInstanceOfSQLiteDatabaseLockedException(Landroid/database/sqlite/SQLiteException;)Z

    move-result v0

    .line 382
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/amazon/device/ads/StringUtils;->doesExceptionContainLockedDatabaseMessage(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isInstanceOfSQLiteDatabaseLockedException(Landroid/database/sqlite/SQLiteException;)Z
    .locals 1
    .param p0, "e"    # Landroid/database/sqlite/SQLiteException;

    .prologue
    .line 201
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->isInstanceOfSQLiteDatabaseLockedException(Landroid/database/sqlite/SQLiteException;)Z

    move-result v0

    return v0
.end method

.method public static isWebViewOk(Landroid/content/Context;)Z
    .locals 7
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 334
    const/16 v5, 0x8

    invoke-static {v5}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtOrBelowAndroidAPI(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 337
    sget-boolean v5, Lcom/amazon/device/ads/AndroidTargetUtils;->isWebViewCheckedAndOk:Z

    if-nez v5, :cond_3

    .line 339
    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    .line 340
    .local v2, "wvDb":Landroid/webkit/WebViewDatabase;
    if-nez v2, :cond_1

    .line 365
    .end local v2    # "wvDb":Landroid/webkit/WebViewDatabase;
    :cond_0
    :goto_0
    return v3

    .line 345
    .restart local v2    # "wvDb":Landroid/webkit/WebViewDatabase;
    :cond_1
    const/4 v0, 0x0

    .line 348
    .local v0, "cdb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "webviewCache.db"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 357
    if-eqz v0, :cond_2

    .line 359
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 362
    :cond_2
    sput-boolean v4, Lcom/amazon/device/ads/AndroidTargetUtils;->isWebViewCheckedAndOk:Z

    .end local v0    # "cdb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "wvDb":Landroid/webkit/WebViewDatabase;
    :cond_3
    move v3, v4

    .line 365
    goto :goto_0

    .line 350
    .restart local v0    # "cdb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "wvDb":Landroid/webkit/WebViewDatabase;
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-static {v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isDatabaseLocked(Landroid/database/sqlite/SQLiteException;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 357
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 357
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    .line 359
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v3
.end method

.method public static removeJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->removeJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public static setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 257
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;->setBackgroundForLinerLayout(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setImageButtonAlpha(Landroid/widget/ImageButton;I)V
    .locals 1
    .param p0, "imageButton"    # Landroid/widget/ImageButton;
    .param p1, "alpha"    # I

    .prologue
    .line 240
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_0
.end method
