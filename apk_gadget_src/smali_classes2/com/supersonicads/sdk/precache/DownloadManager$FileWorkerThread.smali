.class Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileWorkerThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/supersonicads/sdk/precache/DownloadManager$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mConnectionRetries:J

.field private mDirectory:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileUrl:Ljava/lang/String;

.field private mTmpFilesDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "connectionRetries"    # J
    .param p6, "tmpFilesDirectory"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mFileUrl:Ljava/lang/String;

    .line 301
    iput-object p2, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mDirectory:Ljava/lang/String;

    .line 302
    iput-object p3, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    .line 303
    iput-wide p4, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    .line 304
    iput-object p6, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mTmpFilesDirectory:Ljava/lang/String;

    .line 305
    return-void
.end method


# virtual methods
.method public call()Lcom/supersonicads/sdk/precache/DownloadManager$Result;
    .locals 14

    .prologue
    const/16 v13, 0x3fa

    const/16 v12, 0x3f1

    .line 310
    const/4 v3, 0x0

    .line 312
    .local v3, "results":Lcom/supersonicads/sdk/precache/DownloadManager$Result;
    iget-wide v8, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 314
    const-wide/16 v8, 0x1

    iput-wide v8, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    .line 318
    :cond_0
    const/4 v6, 0x0

    .local v6, "tryIndex":I
    :goto_0
    int-to-long v8, v6

    iget-wide v10, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 320
    iget-object v7, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mFileUrl:Ljava/lang/String;

    invoke-virtual {p0, v7, v6}, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->downloadContent(Ljava/lang/String;I)Lcom/supersonicads/sdk/precache/DownloadManager$Result;

    move-result-object v3

    .line 321
    iget v2, v3, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->responseCode:I

    .line 323
    .local v2, "responseCode":I
    const/16 v7, 0x3f0

    if-eq v2, v7, :cond_3

    if-eq v2, v12, :cond_3

    .line 329
    .end local v2    # "responseCode":I
    :cond_1
    if-eqz v3, :cond_2

    iget-object v7, v3, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->body:[B

    if-eqz v7, :cond_2

    .line 330
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mDirectory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "origFileName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mTmpFilesDirectory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tmp_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "tmpFileName":Ljava/lang/String;
    :try_start_0
    iget-object v7, v3, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->body:[B

    invoke-static {v7, v4}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->saveFile([BLjava/lang/String;)I

    move-result v5

    .line 335
    .local v5, "totalBytesRead":I
    if-nez v5, :cond_4

    .line 336
    const/16 v7, 0x3ee

    iput v7, v3, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->responseCode:I

    .line 349
    .end local v1    # "origFileName":Ljava/lang/String;
    .end local v4    # "tmpFileName":Ljava/lang/String;
    .end local v5    # "totalBytesRead":I
    :cond_2
    :goto_1
    return-object v3

    .line 318
    .restart local v2    # "responseCode":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 337
    .end local v2    # "responseCode":I
    .restart local v1    # "origFileName":Ljava/lang/String;
    .restart local v4    # "tmpFileName":Ljava/lang/String;
    .restart local v5    # "totalBytesRead":I
    :cond_4
    invoke-static {v4, v1}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 338
    const/16 v7, 0x3fa

    iput v7, v3, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->responseCode:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 340
    .end local v5    # "totalBytesRead":I
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/io/FileNotFoundException;
    iput v13, v3, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_1

    .line 342
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 344
    const-string v7, "DownloadManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_5
    iput v12, v3, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->call()Lcom/supersonicads/sdk/precache/DownloadManager$Result;

    move-result-object v0

    return-object v0
.end method

.method downloadContent(Ljava/lang/String;I)Lcom/supersonicads/sdk/precache/DownloadManager$Result;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tryNumber"    # I

    .prologue
    const/16 v8, 0xc8

    .line 355
    new-instance v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;

    invoke-direct {v6}, Lcom/supersonicads/sdk/precache/DownloadManager$Result;-><init>()V

    .line 357
    .local v6, "results":Lcom/supersonicads/sdk/precache/DownloadManager$Result;
    const/4 v1, 0x0

    .line 359
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 361
    .local v5, "responseCode":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 362
    iput-object p1, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 363
    const/16 v7, 0x3ef

    iput v7, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->responseCode:I

    .line 428
    :goto_0
    return-object v6

    .line 366
    :cond_0
    const/4 v3, 0x0

    .line 369
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 373
    .local v4, "mUrl":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 375
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    invoke-static {v7}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 376
    const-string v7, "GET"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 378
    const/16 v7, 0x1388

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 379
    const/16 v7, 0x1388

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 381
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 382
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 383
    if-ge v5, v8, :cond_4

    const/16 v7, 0x18f

    if-le v5, v7, :cond_4

    .line 384
    const/16 v5, 0x3f3

    .line 390
    :goto_1
    if-eq v5, v8, :cond_1

    .line 391
    const-string v7, "DownloadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " RESPONSE CODE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ATTEMPT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_1
    if-eqz v3, :cond_2

    .line 414
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 421
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 424
    :cond_3
    iput-object p1, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 425
    iput v5, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_0

    .line 386
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 387
    invoke-static {v3}, Lcom/supersonicads/sdk/precache/DownloadManager;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v7

    iput-object v7, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->body:[B
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 397
    .end local v4    # "mUrl":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 398
    .local v2, "e":Ljava/net/MalformedURLException;
    const/16 v5, 0x3ec

    .line 413
    if-eqz v3, :cond_5

    .line 414
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 420
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 421
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 424
    :cond_6
    iput-object p1, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 425
    iput v5, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_0

    .line 416
    .restart local v4    # "mUrl":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 417
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 416
    .end local v4    # "mUrl":Ljava/net/URL;
    .local v2, "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v2

    .line 417
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 399
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 400
    .local v2, "e":Ljava/net/URISyntaxException;
    const/16 v5, 0x3f2

    .line 413
    if-eqz v3, :cond_7

    .line 414
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 420
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    .line 421
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 424
    :cond_8
    iput-object p1, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 425
    iput v5, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_0

    .line 416
    .restart local v2    # "e":Ljava/net/URISyntaxException;
    :catch_4
    move-exception v2

    .line 417
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 401
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 402
    .local v2, "e":Ljava/net/SocketTimeoutException;
    const/16 v5, 0x3f0

    .line 413
    if-eqz v3, :cond_9

    .line 414
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 420
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :cond_9
    :goto_5
    if-eqz v1, :cond_a

    .line 421
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 424
    :cond_a
    iput-object p1, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 425
    iput v5, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_0

    .line 416
    .restart local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_6
    move-exception v2

    .line 417
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 403
    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 404
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/16 v5, 0x3fa

    .line 413
    if-eqz v3, :cond_b

    .line 414
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 420
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_b
    :goto_6
    if-eqz v1, :cond_c

    .line 421
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 424
    :cond_c
    iput-object p1, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 425
    iput v5, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_0

    .line 416
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v2

    .line 417
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 405
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 406
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 407
    const-string v7, "DownloadManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 409
    :cond_d
    const/16 v5, 0x3f1

    .line 413
    if-eqz v3, :cond_e

    .line 414
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 420
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_e
    :goto_7
    if-eqz v1, :cond_f

    .line 421
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 424
    :cond_f
    iput-object p1, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 425
    iput v5, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_0

    .line 416
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v2

    .line 417
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 412
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 413
    if-eqz v3, :cond_10

    .line 414
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 420
    :cond_10
    :goto_8
    if-eqz v1, :cond_11

    .line 421
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 424
    :cond_11
    iput-object p1, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 425
    iput v5, v6, Lcom/supersonicads/sdk/precache/DownloadManager$Result;->responseCode:I

    throw v7

    .line 416
    :catch_b
    move-exception v2

    .line 417
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8
.end method
