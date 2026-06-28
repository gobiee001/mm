.class public Lcom/supersonicads/sdk/precache/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonicads/sdk/precache/DownloadManager$Result;,
        Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;,
        Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;,
        Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;,
        Lcom/supersonicads/sdk/precache/DownloadManager$DownloadHandler;
    }
.end annotation


# static fields
.field private static mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;


# instance fields
.field private mCacheRootDirectory:Ljava/lang/String;

.field private mDownloadHandler:Lcom/supersonicads/sdk/precache/DownloadManager$DownloadHandler;

.field private mMobileControllerThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "cacheRootDirectory"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/supersonicads/sdk/precache/DownloadManager;->getDownloadHandler()Lcom/supersonicads/sdk/precache/DownloadManager$DownloadHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/supersonicads/sdk/precache/DownloadManager$DownloadHandler;

    .line 92
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    const-string v1, "temp"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->deleteFolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    const-string v1, "temp"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    return-void
.end method

.method static getBytes(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 437
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 439
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x2000

    new-array v2, v3, [B

    .line 440
    .local v2, "data":[B
    :goto_0
    array-length v3, v2

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 441
    invoke-virtual {v0, v2, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 444
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/supersonicads/sdk/precache/DownloadManager;
    .locals 2
    .param p0, "cacheRootDirectory"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v1, Lcom/supersonicads/sdk/precache/DownloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/precache/DownloadManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    .line 100
    :cond_0
    sget-object v0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public downloadFile(Lcom/supersonicads/sdk/data/SSAFile;)V
    .locals 4
    .param p1, "file"    # Lcom/supersonicads/sdk/data/SSAFile;

    .prologue
    .line 158
    new-instance v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;

    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/supersonicads/sdk/precache/DownloadManager$DownloadHandler;

    iget-object v2, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/supersonicads/sdk/precache/DownloadManager;->getTempFilesDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;-><init>(Lcom/supersonicads/sdk/data/SSAFile;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v0, "worker":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 160
    return-void
.end method

.method public downloadMobileControllerFile(Lcom/supersonicads/sdk/data/SSAFile;)V
    .locals 4
    .param p1, "file"    # Lcom/supersonicads/sdk/data/SSAFile;

    .prologue
    .line 163
    new-instance v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;

    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/supersonicads/sdk/precache/DownloadManager$DownloadHandler;

    iget-object v2, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/supersonicads/sdk/precache/DownloadManager;->getTempFilesDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;-><init>(Lcom/supersonicads/sdk/data/SSAFile;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v0, "mobileControllerWorker":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    .line 165
    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 166
    return-void
.end method

.method getDownloadHandler()Lcom/supersonicads/sdk/precache/DownloadManager$DownloadHandler;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/supersonicads/sdk/precache/DownloadManager$DownloadHandler;

    invoke-direct {v0}, Lcom/supersonicads/sdk/precache/DownloadManager$DownloadHandler;-><init>()V

    return-object v0
.end method

.method getTempFilesDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMobileControllerThreadLive()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    sput-object v1, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    .line 153
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/supersonicads/sdk/precache/DownloadManager$DownloadHandler;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/precache/DownloadManager$DownloadHandler;->release()V

    .line 154
    iput-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/supersonicads/sdk/precache/DownloadManager$DownloadHandler;

    .line 155
    return-void
.end method

.method public setOnPreCacheCompletion(Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;)V
    .locals 1
    .param p1, "listener"    # Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/supersonicads/sdk/precache/DownloadManager$DownloadHandler;

    invoke-virtual {v0, p1}, Lcom/supersonicads/sdk/precache/DownloadManager$DownloadHandler;->setOnPreCacheCompletion(Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;)V

    .line 149
    return-void
.end method
