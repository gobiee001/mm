.class Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleFileWorkerThread"
.end annotation


# instance fields
.field private mCacheRootDirectory:Ljava/lang/String;

.field private mConnectionRetries:J

.field mDownloadHandler:Landroid/os/Handler;

.field private mFile:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private final mTempFilesDirectory:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/data/SSAFile;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Lcom/supersonicads/sdk/data/SSAFile;
    .param p2, "downloadHandler"    # Landroid/os/Handler;
    .param p3, "cacheRootDir"    # Ljava/lang/String;
    .param p4, "tempFilesDirectory"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->guessFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFileName:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->getConnectionRetries()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mConnectionRetries:J

    .line 190
    iput-object p3, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mCacheRootDirectory:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mDownloadHandler:Landroid/os/Handler;

    .line 192
    iput-object p4, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mTempFilesDirectory:Ljava/lang/String;

    .line 193
    return-void
.end method


# virtual methods
.method public getConnectionRetries()J
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getConnectionRetries()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method guessFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x3f9

    .line 202
    new-instance v11, Lcom/supersonicads/sdk/data/SSAFile;

    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    invoke-direct {v11, v1, v3}, Lcom/supersonicads/sdk/data/SSAFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .local v11, "ssaFile":Lcom/supersonicads/sdk/data/SSAFile;
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 205
    .local v9, "msg":Landroid/os/Message;
    iput-object v11, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mCacheRootDirectory:Ljava/lang/String;

    iget-object v3, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "folderName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 210
    iput v12, v9, Landroid/os/Message;->what:I

    .line 211
    const-string v1, "unable_to_create_folder"

    invoke-virtual {v11, v1}, Lcom/supersonicads/sdk/data/SSAFile;->setErrMsg(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;

    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mConnectionRetries:J

    iget-object v6, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mTempFilesDirectory:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 223
    .local v0, "fileWorkerThread":Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;
    invoke-virtual {v0}, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->call()Lcom/supersonicads/sdk/precache/DownloadManager$Result;

    move-result-object v10

    .line 224
    .local v10, "results":Lcom/supersonicads/sdk/precache/DownloadManager$Result;
    iget v7, v10, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->responseCode:I

    .line 228
    .local v7, "code":I
    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    .line 260
    :sswitch_0
    const/16 v1, 0x3f8

    iput v1, v9, Landroid/os/Message;->what:I

    .line 261
    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 231
    :sswitch_1
    const-string v8, "malformed url exception"

    .line 234
    :sswitch_2
    const-string v8, "http not found"

    .line 236
    :sswitch_3
    const-string v8, "http empty response"

    .line 238
    :sswitch_4
    const-string v8, "uri syntax exception"

    .line 240
    :sswitch_5
    const-string v8, "http error code"

    .line 242
    :sswitch_6
    const-string v8, "file not found exception"

    .line 244
    .local v8, "errMsg":Ljava/lang/String;
    iput v12, v9, Landroid/os/Message;->what:I

    .line 245
    invoke-virtual {v11, v8}, Lcom/supersonicads/sdk/data/SSAFile;->setErrMsg(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 250
    .end local v8    # "errMsg":Ljava/lang/String;
    :sswitch_7
    const-string v8, "socket timeout exception"

    .line 252
    :sswitch_8
    const-string v8, "io exception"

    .line 254
    .restart local v8    # "errMsg":Ljava/lang/String;
    iput v12, v9, Landroid/os/Message;->what:I

    .line 255
    invoke-virtual {v11, v8}, Lcom/supersonicads/sdk/data/SSAFile;->setErrMsg(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 228
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x194 -> :sswitch_2
        0x3ec -> :sswitch_1
        0x3ed -> :sswitch_2
        0x3ee -> :sswitch_3
        0x3f0 -> :sswitch_7
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_4
        0x3f3 -> :sswitch_5
        0x3fa -> :sswitch_6
    .end sparse-switch
.end method
