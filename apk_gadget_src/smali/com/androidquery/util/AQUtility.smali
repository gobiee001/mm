.class public Lcom/androidquery/util/AQUtility;
.super Ljava/lang/Object;
.source "AQUtility.java"


# static fields
.field public static TEST_IO_EXCEPTION:Z

.field private static cacheDir:Ljava/io/File;

.field private static debug:Z

.field private static eh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static handler:Landroid/os/Handler;

.field private static final map1:[C

.field private static final map2:[B

.field private static pcacheDir:Ljava/io/File;

.field private static storeExe:Ljava/util/concurrent/ScheduledExecutorService;

.field private static times:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static wait:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x40

    const/4 v1, 0x0

    .line 61
    sput-boolean v1, Lcom/androidquery/util/AQUtility;->debug:Z

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androidquery/util/AQUtility;->times:Ljava/util/Map;

    .line 392
    sput-boolean v1, Lcom/androidquery/util/AQUtility;->TEST_IO_EXCEPTION:Z

    .line 719
    new-array v0, v5, [C

    sput-object v0, Lcom/androidquery/util/AQUtility;->map1:[C

    .line 722
    const/16 v0, 0x41

    move v2, v1

    :goto_0
    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 723
    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-le v0, v3, :cond_1

    .line 724
    const/16 v0, 0x30

    :goto_2
    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    .line 725
    sget-object v0, Lcom/androidquery/util/AQUtility;->map1:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2b

    aput-char v4, v0, v2

    sget-object v0, Lcom/androidquery/util/AQUtility;->map1:[C

    add-int/lit8 v2, v3, 0x1

    const/16 v2, 0x2f

    aput-char v2, v0, v3

    .line 728
    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/androidquery/util/AQUtility;->map2:[B

    move v0, v1

    .line 730
    :goto_3
    sget-object v2, Lcom/androidquery/util/AQUtility;->map2:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    .line 731
    :goto_4
    if-lt v1, v5, :cond_4

    return-void

    .line 722
    :cond_0
    sget-object v4, Lcom/androidquery/util/AQUtility;->map1:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_0

    .line 723
    :cond_1
    sget-object v4, Lcom/androidquery/util/AQUtility;->map1:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_1

    .line 724
    :cond_2
    sget-object v4, Lcom/androidquery/util/AQUtility;->map1:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_2

    .line 730
    :cond_3
    sget-object v2, Lcom/androidquery/util/AQUtility;->map2:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 731
    :cond_4
    sget-object v0, Lcom/androidquery/util/AQUtility;->map2:[B

    sget-object v2, Lcom/androidquery/util/AQUtility;->map1:[C

    aget-char v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public static cleanCache(Ljava/io/File;JJ)V
    .locals 5

    .prologue
    .line 622
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 624
    if-nez v0, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 628
    invoke-static {v0, p1, p2}, Lcom/androidquery/util/AQUtility;->testCleanNeeded([Ljava/io/File;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 629
    invoke-static {v0, p3, p4}, Lcom/androidquery/util/AQUtility;->cleanCache([Ljava/io/File;J)V

    .line 632
    :cond_2
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getTempDir()Ljava/io/File;

    move-result-object v0

    .line 633
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/androidquery/util/AQUtility;->cleanCache([Ljava/io/File;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static cleanCache([Ljava/io/File;J)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 667
    const-wide/16 v2, 0x0

    move v1, v0

    .line 670
    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_0

    .line 689
    const-string v0, "deleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 690
    return-void

    .line 672
    :cond_0
    aget-object v4, p0, v0

    .line 674
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 676
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 678
    cmp-long v5, v2, p1

    if-ltz v5, :cond_1

    .line 681
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 682
    add-int/lit8 v1, v1, 0x1

    .line 670
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 469
    if-eqz p0, :cond_0

    .line 470
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 389
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/androidquery/util/Progress;)V

    .line 390
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/androidquery/util/Progress;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 396
    if-eqz p3, :cond_0

    .line 397
    invoke-virtual {p3}, Lcom/androidquery/util/Progress;->reset()V

    .line 398
    invoke-virtual {p3, p2}, Lcom/androidquery/util/Progress;->setBytes(I)V

    .line 401
    :cond_0
    const/16 v0, 0x1000

    new-array v2, v0, [B

    move v0, v1

    .line 405
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 420
    if-eqz p3, :cond_2

    .line 421
    invoke-virtual {p3}, Lcom/androidquery/util/Progress;->done()V

    .line 424
    :cond_2
    return-void

    .line 406
    :cond_3
    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    .line 410
    sget-boolean v4, Lcom/androidquery/util/AQUtility;->TEST_IO_EXCEPTION:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    if-le v0, v4, :cond_4

    .line 411
    const-string v0, "simulating internet error"

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 412
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 415
    :cond_4
    if-eqz p3, :cond_1

    .line 416
    invoke-virtual {p3, v3}, Lcom/androidquery/util/Progress;->increment(I)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 103
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 113
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 119
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, "AQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    return-void
.end method

.method public static debugNotify()V
    .locals 2

    .prologue
    .line 93
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    sget-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-object v0, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 95
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static encode64([BII)[C
    .locals 13

    .prologue
    const/16 v3, 0x3d

    const/4 v1, 0x0

    .line 736
    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v0, 0x3

    .line 737
    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 738
    new-array v7, v0, [C

    .line 740
    add-int v8, p1, p2

    move v5, v1

    .line 742
    :goto_0
    if-lt p1, v8, :cond_0

    .line 754
    return-object v7

    .line 743
    :cond_0
    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v9, v2, 0xff

    .line 744
    if-ge v0, v8, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    move v0, v2

    .line 745
    :goto_1
    if-ge v0, v8, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 746
    :goto_2
    ushr-int/lit8 v10, v9, 0x2

    .line 747
    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v11, v4, 0x4

    or-int/2addr v9, v11

    .line 748
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v11, v0, 0x6

    or-int/2addr v4, v11

    .line 749
    and-int/lit8 v11, v0, 0x3f

    .line 750
    add-int/lit8 v0, v5, 0x1

    sget-object v12, Lcom/androidquery/util/AQUtility;->map1:[C

    aget-char v10, v12, v10

    aput-char v10, v7, v5

    .line 751
    add-int/lit8 v5, v0, 0x1

    sget-object v10, Lcom/androidquery/util/AQUtility;->map1:[C

    aget-char v9, v10, v9

    aput-char v9, v7, v0

    .line 752
    if-ge v5, v6, :cond_3

    sget-object v0, Lcom/androidquery/util/AQUtility;->map1:[C

    aget-char v0, v0, v4

    :goto_3
    aput-char v0, v7, v5

    add-int/lit8 v4, v5, 0x1

    .line 753
    if-ge v4, v6, :cond_4

    sget-object v0, Lcom/androidquery/util/AQUtility;->map1:[C

    aget-char v0, v0, v11

    :goto_4
    aput-char v0, v7, v4

    add-int/lit8 v0, v4, 0x1

    move v5, v0

    move p1, v2

    goto :goto_0

    :cond_1
    move v4, v1

    .line 744
    goto :goto_1

    :cond_2
    move v2, v0

    move v0, v1

    .line 745
    goto :goto_2

    :cond_3
    move v0, v3

    .line 752
    goto :goto_3

    :cond_4
    move v0, v3

    .line 753
    goto :goto_4
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 519
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "aquery"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    .line 521
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 524
    :cond_0
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public static getCacheDir(Landroid/content/Context;I)Ljava/io/File;
    .locals 3

    .prologue
    .line 502
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 504
    sget-object v0, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    .line 512
    :goto_0
    return-object v0

    .line 506
    :cond_0
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 507
    new-instance v1, Ljava/io/File;

    const-string v2, "persistent"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    .line 508
    sget-object v0, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 510
    sget-object v0, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    goto :goto_0

    .line 512
    :cond_1
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 549
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 556
    :goto_0
    return-object v0

    .line 550
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->getCacheFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-static {p0, v0}, Lcom/androidquery/util/AQUtility;->makeCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCacheFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getMD5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    return-object v0
.end method

.method public static getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    .line 561
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 562
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 563
    :cond_0
    const/4 v0, 0x0

    .line 565
    :cond_1
    return-object v0
.end method

.method private static getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 481
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    .line 484
    :cond_0
    sget-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 275
    sget-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    .line 278
    :cond_0
    sget-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getMD5([B)[B
    .locals 1

    .prologue
    .line 375
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 376
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 377
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 383
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getMD5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->getMD5([B)[B

    move-result-object v0

    .line 364
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 366
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    return-object v0
.end method

.method public static getTempDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 642
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 643
    new-instance v0, Ljava/io/File;

    const-string v2, "aquery/temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 645
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 646
    :cond_0
    const/4 v0, 0x0

    .line 648
    :cond_1
    return-object v0
.end method

.method public static varargs invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    if-eqz p3, :cond_0

    .line 186
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 190
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static varargs invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 177
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 199
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 204
    :cond_1
    if-nez p3, :cond_2

    const/4 v1, 0x0

    :try_start_0
    new-array p3, v1, [Ljava/lang/Class;

    .line 205
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 206
    invoke-virtual {v1, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 213
    if-eqz p2, :cond_0

    .line 215
    if-nez p4, :cond_3

    .line 216
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 217
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 220
    invoke-virtual {v1, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 224
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static isUIThread()Z
    .locals 4

    .prologue
    .line 264
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 265
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 267
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 538
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 539
    return-object v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method

.method public static report(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 127
    if-nez p0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    :try_start_0
    const-string v0, "reporting"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    sget-object v0, Lcom/androidquery/util/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/androidquery/util/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static store(Ljava/io/File;[B)V
    .locals 1

    .prologue
    .line 585
    if-eqz p0, :cond_0

    .line 586
    :try_start_0
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->write(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static storeAsync(Ljava/io/File;[BJ)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 490
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 492
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-virtual {v1, v4, v2}, Lcom/androidquery/util/Common;->method(I[Ljava/lang/Object;)Lcom/androidquery/util/Common;

    move-result-object v1

    .line 493
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 495
    return-void
.end method

.method private static testCleanNeeded([Ljava/io/File;J)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 653
    const-wide/16 v2, 0x0

    .line 655
    array-length v4, p0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    .line 662
    :goto_1
    return v0

    .line 655
    :cond_0
    aget-object v5, p0, v1

    .line 656
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 657
    cmp-long v5, v2, p1

    if-lez v5, :cond_1

    .line 658
    const/4 v0, 0x1

    goto :goto_1

    .line 655
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toBytes(Ljava/io/InputStream;)[B
    .locals 2

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 430
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 433
    :try_start_0
    invoke-static {p0, v1}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 434
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 439
    :goto_0
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 442
    return-object v0

    .line 435
    :catch_0
    move-exception v1

    .line 436
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 109
    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public static write(Ljava/io/File;[B)V
    .locals 2

    .prologue
    .line 449
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 451
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 458
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 459
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 460
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 465
    :goto_1
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    const-string v1, "file create fail"

    invoke-static {v1, p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 454
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 461
    :catch_1
    move-exception v0

    .line 462
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
