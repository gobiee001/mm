.class Lcom/amazon/device/ads/FileOutputHandler;
.super Lcom/amazon/device/ads/FileHandler;
.source "FileOutputHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private bufferedWriter:Ljava/io/BufferedWriter;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private outputStream:Ljava/io/OutputStream;

.field private writeMethod:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/amazon/device/ads/FileOutputHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/FileOutputHandler;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amazon/device/ads/FileHandler;-><init>()V

    .line 24
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/FileOutputHandler;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/FileOutputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 213
    return-void
.end method

.method private checkWritable()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazon/device/ads/FileOutputHandler;->bufferedWriter:Ljava/io/BufferedWriter;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not write to the file because no file has been opened yet. Please set the file, then call open() before attempting to write."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    return-void
.end method

.method private writeToFile(Ljava/lang/String;Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;)Z
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "writeMethod"    # Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileOutputHandler;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/amazon/device/ads/FileOutputHandler;->writeMethod:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    invoke-virtual {p2, v3}, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileOutputHandler;->close()V

    .line 182
    invoke-virtual {p0, p2}, Lcom/amazon/device/ads/FileOutputHandler;->open(Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    iget-object v3, p0, Lcom/amazon/device/ads/FileOutputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "Could not reopen the file for %s."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :goto_0
    return v1

    .line 191
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/device/ads/FileOutputHandler;->open(Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    iget-object v2, p0, Lcom/amazon/device/ads/FileOutputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Could not open the file for writing."

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/FileOutputHandler;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileOutputHandler;->close()V

    move v1, v2

    .line 207
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/amazon/device/ads/FileOutputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Failed to write data to the file."

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public appendToFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 172
    sget-object v0, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->APPEND:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/FileOutputHandler;->writeToFile(Ljava/lang/String;Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileOutputHandler;->flush()V

    .line 79
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileOutputHandler;->closeCloseables()V

    .line 80
    iput-object v0, p0, Lcom/amazon/device/ads/FileOutputHandler;->bufferedWriter:Ljava/io/BufferedWriter;

    .line 81
    iput-object v0, p0, Lcom/amazon/device/ads/FileOutputHandler;->outputStream:Ljava/io/OutputStream;

    .line 82
    return-void
.end method

.method public flush()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    iget-object v1, p0, Lcom/amazon/device/ads/FileOutputHandler;->outputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/FileOutputHandler;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amazon/device/ads/FileOutputHandler;->bufferedWriter:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_1

    .line 104
    :try_start_1
    iget-object v1, p0, Lcom/amazon/device/ads/FileOutputHandler;->bufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :cond_1
    :goto_1
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/amazon/device/ads/FileOutputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Could not flush the OutputStream. %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 108
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/amazon/device/ads/FileOutputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Could not flush the BufferedWriter. %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected getCloseableReaderWriter()Ljava/io/Closeable;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazon/device/ads/FileOutputHandler;->bufferedWriter:Ljava/io/BufferedWriter;

    return-object v0
.end method

.method protected getCloseableStream()Ljava/io/Closeable;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/device/ads/FileOutputHandler;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/FileOutputHandler;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;)Z
    .locals 5
    .param p1, "writeMethod"    # Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v3, p0, Lcom/amazon/device/ads/FileOutputHandler;->file:Ljava/io/File;

    if-nez v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/amazon/device/ads/FileOutputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "A file must be set before it can be opened."

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 69
    :goto_0
    return v2

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/amazon/device/ads/FileOutputHandler;->outputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_1

    .line 54
    iget-object v3, p0, Lcom/amazon/device/ads/FileOutputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "The file is already open."

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/amazon/device/ads/FileOutputHandler;->file:Ljava/io/File;

    sget-object v4, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->APPEND:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    invoke-virtual {v4, p1}, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .local v1, "fos":Ljava/io/FileOutputStream;
    iput-object p1, p0, Lcom/amazon/device/ads/FileOutputHandler;->writeMethod:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    .line 67
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/amazon/device/ads/FileOutputHandler;->outputStream:Ljava/io/OutputStream;

    .line 68
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/amazon/device/ads/FileOutputHandler;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/amazon/device/ads/FileOutputHandler;->bufferedWriter:Ljava/io/BufferedWriter;

    .line 69
    const/4 v2, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public overwriteFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v0, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->OVERWRITE:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/FileOutputHandler;->writeToFile(Ljava/lang/String;Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;)Z

    move-result v0

    return v0
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/amazon/device/ads/FileOutputHandler;->checkWritable()V

    .line 141
    iget-object v0, p0, Lcom/amazon/device/ads/FileOutputHandler;->bufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/amazon/device/ads/FileOutputHandler;->checkWritable()V

    .line 152
    iget-object v0, p0, Lcom/amazon/device/ads/FileOutputHandler;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 153
    return-void
.end method
