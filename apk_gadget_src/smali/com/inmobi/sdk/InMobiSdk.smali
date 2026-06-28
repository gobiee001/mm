.class public final Lcom/inmobi/sdk/InMobiSdk;
.super Ljava/lang/Object;
.source "InMobiSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;,
        Lcom/inmobi/sdk/InMobiSdk$AgeGroup;,
        Lcom/inmobi/sdk/InMobiSdk$Gender;,
        Lcom/inmobi/sdk/InMobiSdk$Education;,
        Lcom/inmobi/sdk/InMobiSdk$Ethnicity;,
        Lcom/inmobi/sdk/InMobiSdk$LogLevel;
    }
.end annotation


# static fields
.field private static final COMPONENT_SERVICE:Ljava/util/concurrent/ExecutorService;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/inmobi/sdk/InMobiSdk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk;->COMPONENT_SERVICE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 43
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->initComponents()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 43
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->deInitComponents()V

    return-void
.end method

.method private static deInitComponents()V
    .locals 3

    .prologue
    .line 429
    :try_start_0
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk;->COMPONENT_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/inmobi/sdk/InMobiSdk$5;

    invoke-direct {v1}, Lcom/inmobi/sdk/InMobiSdk$5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in stopping SDK components; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v2, "SDK encountered unexpected error while stopping internal components"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3045
    const-string v0, "7.0.2"

    .line 472
    return-object v0
.end method

.method private static hasSdkVersionChanged(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 351
    invoke-static {p0}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2045
    const-string v1, "7.0.2"

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 161
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 162
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "The minimum supported Android API level is 14, SDK could not be initialized."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_0
    return-void

    .line 169
    :cond_0
    if-nez p0, :cond_1

    .line 170
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "Context supplied as null, SDK could not be initialized."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 308
    :goto_1
    invoke-static {}, Lcom/inmobi/commons/a/a;->c()V

    .line 309
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v6, "SDK could not be initialized; an unexpected error was encountered"

    invoke-static {v4, v5, v6}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Encountered unexpected error while initializing the SDK: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :goto_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "InMobi SDK initialized with account id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 320
    const-string v1, "initTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v1, "root"

    const-string v2, "SdkInitialized"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 326
    :goto_3
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->printGrantedPermissions()V

    goto :goto_0

    .line 175
    :cond_1
    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 176
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "Account id cannot be null or empty. Please provide a valid account id."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.inmobi.rendering.InMobiAdActivity"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v4, 0x10000

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_4

    .line 185
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "The activity com.inmobi.rendering.InMobiAdActivity not present in AndroidManifest. SDK could not be initialized."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_4
    const-string v0, "ads"

    const-string v1, "android.permission.INTERNET"

    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ads"

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 193
    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 194
    :cond_5
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "Please grant the mandatory permissions : INTERNET and ACCESS_NETWORK_STATE, SDK could not be initialized."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_6
    const-string v0, "ads"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ads"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 202
    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 203
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v4, "Please grant the location permissions (ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION, or both) for better ad targeting."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 213
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x20

    if-eq v0, v4, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x24

    if-eq v0, v4, :cond_8

    .line 214
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v5, "Invalid account id passed to init. Please provide a valid account id."

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_8
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    if-eqz v0, :cond_9

    .line 221
    :try_start_4
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v0, "root"

    const-string v4, "InitRequested"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 222
    :catch_1
    move-exception v0

    .line 223
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in submitting telemetry event : ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 307
    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 228
    :cond_9
    invoke-static {p0}, Lcom/inmobi/sdk/InMobiSdk;->hasSdkVersionChanged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 229
    invoke-static {p0}, Lcom/inmobi/sdk/a;->a(Landroid/content/Context;)Z

    move-result v0

    .line 230
    invoke-static {p0, v0}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;Z)V

    .line 1045
    const-string v0, "7.0.2"

    .line 1069
    const-string v4, "sdk_version_store"

    invoke-static {p0, v4}, Lcom/inmobi/commons/core/c/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v4

    const-string v5, "sdk_version"

    invoke-virtual {v4, v5, v0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/sdk/InMobiSdk;->resetMediaCache(Landroid/content/Context;)V

    .line 235
    :cond_a
    invoke-static {p0, v1}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/b;->b()V

    .line 245
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/c;->b()V

    .line 1073
    const-string v0, "sdk_version_store"

    invoke-static {p0, v0}, Lcom/inmobi/commons/core/c/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v4, "db_deletion_failed"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 248
    if-eqz v0, :cond_c

    .line 249
    invoke-static {p0}, Lcom/inmobi/sdk/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 250
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    invoke-static {v0}, Lcom/inmobi/sdk/InMobiSdk;->sendDbDeletionTelemetryEvent(Ljava/lang/String;)V

    goto :goto_4

    .line 255
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 256
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;Z)V

    .line 260
    :cond_c
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/f;->b()V

    .line 261
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->initComponents()V

    .line 262
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->d()V

    .line 263
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/inmobi/sdk/InMobiSdk$1;

    invoke-direct {v4}, Lcom/inmobi/sdk/InMobiSdk$1;-><init>()V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 276
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 278
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_d

    .line 279
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->a()Lcom/inmobi/commons/core/utilities/a;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_d

    .line 281
    new-instance v4, Lcom/inmobi/sdk/InMobiSdk$2;

    invoke-direct {v4}, Lcom/inmobi/sdk/InMobiSdk$2;-><init>()V

    invoke-virtual {v0, v4}, Lcom/inmobi/commons/core/utilities/a;->a(Lcom/inmobi/commons/core/utilities/a$b;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 303
    :cond_d
    :try_start_6
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v0, "root"

    const-string v4, "InitRequested"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v1

    .line 306
    goto/16 :goto_2

    .line 304
    :catch_3
    move-exception v0

    .line 305
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in submitting telemetry event : ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object v0, v1

    .line 313
    goto/16 :goto_2

    .line 322
    :catch_4
    move-exception v0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in submitting telemetry event : ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method private static initComponents()V
    .locals 3

    .prologue
    .line 379
    :try_start_0
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk;->COMPONENT_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/inmobi/sdk/InMobiSdk$4;

    invoke-direct {v1}, Lcom/inmobi/sdk/InMobiSdk$4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in starting SDK components: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v2, "SDK encountered unexpected error while starting internal components"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static printGrantedPermissions()V
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$3;

    invoke-direct {v0}, Lcom/inmobi/sdk/InMobiSdk$3;-><init>()V

    .line 374
    invoke-virtual {v0}, Lcom/inmobi/sdk/InMobiSdk$3;->start()V

    .line 375
    return-void
.end method

.method private static resetMediaCache(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 458
    invoke-static {p0}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 459
    invoke-static {v0}, Lcom/inmobi/commons/a/a;->a(Ljava/io/File;)V

    .line 460
    invoke-static {p0}, Lcom/inmobi/commons/a/a;->b(Landroid/content/Context;)V

    .line 461
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 464
    :cond_0
    return-void
.end method

.method private static sendDbDeletionTelemetryEvent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 336
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 340
    const-string v1, "filename"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v1, "description"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DB Deleted : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v1, "ads"

    const-string v2, "PersistentDataCleanFail"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in submitting telemetry event : ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static setAge(I)V
    .locals 0

    .prologue
    .line 500
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/b/f;->a(I)V

    .line 501
    return-void
.end method

.method public static setAgeGroup(Lcom/inmobi/sdk/InMobiSdk$AgeGroup;)V
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->a(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public static setAreaCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 518
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/b/f;->b(Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public static setEducation(Lcom/inmobi/sdk/InMobiSdk$Education;)V
    .locals 2

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$Education;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->i(Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public static setEthnicity(Lcom/inmobi/sdk/InMobiSdk$Ethnicity;)V
    .locals 2

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->h(Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public static setGender(Lcom/inmobi/sdk/InMobiSdk$Gender;)V
    .locals 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$Gender;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->g(Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public static setHouseHoldIncome(Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;)V
    .locals 2

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->k(Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public static setIncome(I)V
    .locals 0

    .prologue
    .line 594
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/b/f;->c(I)V

    .line 595
    return-void
.end method

.method public static setInterests(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 612
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/b/f;->l(Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public static setLanguage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 585
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/b/f;->j(Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public static setLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 630
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/b/f;->a(Landroid/location/Location;)V

    .line 631
    return-void
.end method

.method public static setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 538
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/b/f;->d(Ljava/lang/String;)V

    .line 539
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/b/f;->e(Ljava/lang/String;)V

    .line 540
    invoke-static {p2}, Lcom/inmobi/commons/core/utilities/b/f;->f(Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public static setLogLevel(Lcom/inmobi/sdk/InMobiSdk$LogLevel;)V
    .locals 2

    .prologue
    .line 481
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$6;->a:[I

    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 492
    :goto_0
    return-void

    .line 483
    :pswitch_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->NONE:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;)V

    goto :goto_0

    .line 486
    :pswitch_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;)V

    goto :goto_0

    .line 489
    :pswitch_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;)V

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setNationality(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 621
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/b/f;->m(Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 527
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/b/f;->c(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public static setYearOfBirth(I)V
    .locals 0

    .prologue
    .line 549
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/b/f;->b(I)V

    .line 550
    return-void
.end method
