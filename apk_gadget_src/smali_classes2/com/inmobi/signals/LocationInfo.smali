.class public Lcom/inmobi/signals/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/signals/LocationInfo$a;,
        Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;
    }
.end annotation


# static fields
.field static a:Z

.field static d:Ljava/lang/Object;

.field static e:Lcom/inmobi/signals/LocationInfo$a;

.field private static final f:Ljava/lang/String;

.field private static g:Lcom/inmobi/signals/LocationInfo;

.field private static h:Ljava/lang/Object;

.field private static i:Z


# instance fields
.field b:Landroid/location/LocationManager;

.field c:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    const-class v0, Lcom/inmobi/signals/LocationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/LocationInfo;->f:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/signals/LocationInfo;->h:Ljava/lang/Object;

    .line 39
    sput-boolean v1, Lcom/inmobi/signals/LocationInfo;->a:Z

    .line 43
    sput-object v2, Lcom/inmobi/signals/LocationInfo;->d:Ljava/lang/Object;

    .line 44
    sput-object v2, Lcom/inmobi/signals/LocationInfo;->e:Lcom/inmobi/signals/LocationInfo$a;

    .line 45
    sput-boolean v1, Lcom/inmobi/signals/LocationInfo;->i:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/signals/LocationInfo;->c:Landroid/os/HandlerThread;

    .line 71
    iget-object v0, p0, Lcom/inmobi/signals/LocationInfo;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/inmobi/signals/LocationInfo;->b:Landroid/location/LocationManager;

    .line 74
    return-void
.end method

.method private static a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 308
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 311
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/core/d/g;

    const-string v2, "signals"

    const-string v3, "LocationFixFailed"

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/d/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    const/4 p1, 0x0

    .line 1356
    :goto_1
    return-object p1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in submitting telemetry event : ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1323
    :cond_0
    if-nez p0, :cond_1

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location info provided by Android Api client:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ts : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1325
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1327
    :cond_1
    if-nez p1, :cond_2

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location info provided by Google Api client:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ts : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1329
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object p1, p0

    .line 1330
    goto :goto_1

    .line 1333
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 1334
    const-wide/32 v2, 0x1d4c0

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    move v3, v0

    .line 1335
    :goto_2
    const-wide/32 v6, -0x1d4c0

    cmp-long v2, v4, v6

    if-gez v2, :cond_4

    move v2, v0

    .line 1336
    :goto_3
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    move v4, v0

    .line 1338
    :goto_4
    if-eqz v3, :cond_6

    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location info provided by Google Api client:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ts : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1340
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object p1, p0

    .line 1341
    goto/16 :goto_1

    :cond_3
    move v3, v1

    .line 1334
    goto :goto_2

    :cond_4
    move v2, v1

    .line 1335
    goto :goto_3

    :cond_5
    move v4, v1

    .line 1336
    goto :goto_4

    .line 1342
    :cond_6
    if-eqz v2, :cond_7

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location info provided by Android Api client:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ts : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1344
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1348
    :cond_7
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v5, v2

    .line 1349
    if-lez v5, :cond_9

    move v3, v0

    .line 1350
    :goto_5
    if-gez v5, :cond_a

    move v2, v0

    .line 1351
    :goto_6
    const/16 v6, 0xc8

    if-le v5, v6, :cond_b

    .line 1353
    :goto_7
    if-nez v2, :cond_8

    if-eqz v4, :cond_c

    if-eqz v3, :cond_8

    if-nez v0, :cond_c

    .line 1354
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location info provided by Google Api client:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ts : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1355
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object p1, p0

    .line 1356
    goto/16 :goto_1

    :cond_9
    move v3, v1

    .line 1349
    goto :goto_5

    :cond_a
    move v2, v1

    .line 1350
    goto :goto_6

    :cond_b
    move v0, v1

    .line 1351
    goto :goto_7

    .line 1358
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location info provided by Android Api client:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ts : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1359
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public static a()Lcom/inmobi/signals/LocationInfo;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/inmobi/signals/LocationInfo;->g:Lcom/inmobi/signals/LocationInfo;

    .line 57
    if-nez v0, :cond_1

    .line 58
    sget-object v1, Lcom/inmobi/signals/LocationInfo;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/inmobi/signals/LocationInfo;->g:Lcom/inmobi/signals/LocationInfo;

    .line 60
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/inmobi/signals/LocationInfo;

    invoke-direct {v0}, Lcom/inmobi/signals/LocationInfo;-><init>()V

    .line 62
    sput-object v0, Lcom/inmobi/signals/LocationInfo;->g:Lcom/inmobi/signals/LocationInfo;

    .line 64
    :cond_0
    monitor-exit v1

    .line 66
    :cond_1
    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/location/Location;Z)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 471
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v4

    .line 472
    if-nez v4, :cond_0

    move-object v0, v3

    .line 502
    :goto_0
    return-object v0

    .line 474
    :cond_0
    if-eqz p1, :cond_2

    .line 475
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    .line 476
    const-string v0, "u-ll-ts"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_1
    const-string v0, "u-latlong-accu"

    .line 1506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1508
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1509
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1511
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1513
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 478
    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v5, "sdk-collected"

    if-eqz p2, :cond_6

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_2
    sget-boolean v0, Lcom/inmobi/signals/LocationInfo;->a:Z

    if-eqz v0, :cond_3

    .line 483
    const-string v0, "loc-allowed"

    invoke-virtual {p0}, Lcom/inmobi/signals/LocationInfo;->f()Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/signals/LocationInfo;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 491
    const-string v0, "signals"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v4, v0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 493
    const-string v0, "loc-granularity"

    const-string v1, "coarse"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_4
    const-string v0, "signals"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v4, v0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 497
    const-string v0, "loc-granularity"

    const-string v1, "fine"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    move-object v0, v3

    .line 502
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 479
    goto :goto_1

    :cond_7
    move v1, v2

    .line 483
    goto :goto_2

    .line 500
    :cond_8
    const-string v0, "loc-granularity"

    const-string v1, "none"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 249
    sput-boolean p0, Lcom/inmobi/signals/LocationInfo;->a:Z

    .line 250
    return-void
.end method

.method static b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 99
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "signals"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "signals"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 100
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 105
    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 34
    sput-boolean p0, Lcom/inmobi/signals/LocationInfo;->i:Z

    return p0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/inmobi/signals/LocationInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method private h()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 286
    .line 289
    :try_start_0
    sget-boolean v1, Lcom/inmobi/signals/LocationInfo;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/inmobi/signals/LocationInfo;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    sget-boolean v1, Lcom/inmobi/signals/LocationInfo;->i:Z

    if-eqz v1, :cond_1

    .line 291
    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->j()Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 294
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/inmobi/signals/LocationInfo;->b:Landroid/location/LocationManager;

    if-eqz v2, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->i()Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 303
    :cond_0
    :goto_1
    invoke-static {v1, v0}, Lcom/inmobi/signals/LocationInfo;->a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    .line 298
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 299
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SDK encountered unexpected error in getting a location fix; "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 298
    :catch_1
    move-exception v2

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private i()Landroid/location/Location;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 364
    const/4 v0, 0x0

    .line 365
    new-instance v3, Landroid/location/Criteria;

    invoke-direct {v3}, Landroid/location/Criteria;-><init>()V

    .line 366
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v4

    const-string v5, "signals"

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v4, v5, v6}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 368
    invoke-virtual {v3, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 373
    :cond_0
    :goto_0
    invoke-virtual {v3, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 375
    iget-object v4, p0, Lcom/inmobi/signals/LocationInfo;->b:Landroid/location/LocationManager;

    invoke-virtual {v4, v3, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3

    .line 376
    if-eqz v3, :cond_1

    .line 379
    :try_start_0
    iget-object v4, p0, Lcom/inmobi/signals/LocationInfo;->b:Landroid/location/LocationManager;

    invoke-virtual {v4, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 392
    :goto_1
    if-nez v0, :cond_1

    .line 394
    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->k()Landroid/location/Location;

    move-result-object v0

    .line 398
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Location info provided by Location manager:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 399
    return-object v0

    .line 369
    :cond_2
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v4

    const-string v5, "signals"

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v4, v5, v6}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/location/Criteria;->setAccuracy(I)V

    goto :goto_0

    .line 380
    :catch_0
    move-exception v3

    .line 383
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 384
    const-string v5, "type"

    const-string v6, "SecurityException"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v5, "message"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v3, "signals"

    const-string v5, "ExceptionCaught"

    invoke-static {v3, v5, v4}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 387
    :catch_1
    move-exception v3

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in submitting telemetry event : ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move v1, v2

    .line 398
    goto :goto_2
.end method

.method private static j()Landroid/location/Location;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 406
    :try_start_0
    const-string v0, "com.google.android.gms.location.LocationServices"

    .line 407
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 408
    const-string v2, "FusedLocationApi"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 409
    const-string v2, "com.google.android.gms.common.api.GoogleApiClient"

    .line 410
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 411
    const-string v3, "com.google.android.gms.location.FusedLocationProviderApi"

    .line 412
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 414
    const-string v4, "getLastLocation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 416
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/inmobi/signals/LocationInfo;->d:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4

    .line 434
    :goto_0
    return-object v0

    .line 432
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private k()Landroid/location/Location;
    .locals 7

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 440
    iget-object v1, p0, Lcom/inmobi/signals/LocationInfo;->b:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/inmobi/signals/LocationInfo;->b:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 443
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    move-object v1, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 444
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    iget-object v4, p0, Lcom/inmobi/signals/LocationInfo;->b:Landroid/location/LocationManager;

    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 447
    :try_start_0
    iget-object v4, p0, Lcom/inmobi/signals/LocationInfo;->b:Landroid/location/LocationManager;

    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 460
    :goto_1
    if-nez v0, :cond_1

    .line 443
    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 451
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 452
    const-string v5, "type"

    const-string v6, "SecurityException"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v5, "message"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v0, "signals"

    const-string v5, "ExceptionCaught"

    invoke-static {v0, v5, v4}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 458
    goto :goto_1

    .line 455
    :catch_1
    move-exception v0

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in submitting telemetry event : ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    .line 466
    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized c()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->h()Landroid/location/Location;

    move-result-object v0

    .line 209
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/inmobi/signals/LocationInfo;->a(Landroid/location/Location;Z)Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 210
    monitor-exit p0

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 215
    const-string v2, "loc-consent-status"

    .line 1220
    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1221
    invoke-virtual {p0}, Lcom/inmobi/signals/LocationInfo;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    sget-object v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->AUTHORISED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    .line 215
    :goto_0
    invoke-virtual {v0}, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-object v1

    .line 1224
    :cond_0
    sget-object v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->DENIED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    goto :goto_0

    .line 1227
    :cond_1
    sget-object v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->DENIED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    goto :goto_0
.end method

.method public final declared-synchronized e()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 234
    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->h()Landroid/location/Location;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    .line 237
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/inmobi/signals/LocationInfo;->a(Landroid/location/Location;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 242
    :goto_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 239
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/f;->c()Landroid/location/Location;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/inmobi/signals/LocationInfo;->a(Landroid/location/Location;Z)Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method final f()Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 254
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v2

    .line 255
    if-nez v2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 257
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_2

    .line 260
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 264
    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    move v2, v0

    goto :goto_1

    .line 267
    :cond_2
    iget-object v3, p0, Lcom/inmobi/signals/LocationInfo;->b:Landroid/location/LocationManager;

    if-eqz v3, :cond_0

    .line 271
    const-string v3, "signals"

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 273
    iget-object v2, p0, Lcom/inmobi/signals/LocationInfo;->b:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    move v3, v0

    .line 278
    :goto_2
    if-nez v3, :cond_3

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 279
    goto :goto_0

    .line 274
    :cond_4
    const-string v3, "signals"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 276
    iget-object v2, p0, Lcom/inmobi/signals/LocationInfo;->b:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    move v3, v2

    move v2, v0

    goto :goto_2

    :cond_5
    move v2, v0

    move v3, v0

    goto :goto_2
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "location changed. ts:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accu:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 137
    :cond_0
    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/inmobi/signals/LocationInfo;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 142
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method
