.class Lcom/amazon/device/ads/FileInputHandler;
.super Lcom/amazon/device/ads/FileHandler;
.source "FileInputHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private bufferedReader:Ljava/io/BufferedReader;

.field private inputStream:Ljava/io/InputStream;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/amazon/device/ads/FileInputHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/FileInputHandler;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/amazon/device/ads/FileHandler;-><init>()V

    .line 21
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/FileInputHandler;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method

.method private checkReadable()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not read from the file because no file has been opened yet. Please set the file, then call open() before attempting to read."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileInputHandler;->closeCloseables()V

    .line 71
    iput-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    .line 72
    iput-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    .line 73
    return-void
.end method

.method protected getCloseableReaderWriter()Ljava/io/Closeable;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    return-object v0
.end method

.method protected getCloseableStream()Ljava/io/Closeable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v3, p0, Lcom/amazon/device/ads/FileInputHandler;->file:Ljava/io/File;

    if-nez v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "A file must be set before it can be opened."

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 62
    :goto_0
    return v2

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_1

    .line 48
    iget-object v3, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "The file is already open."

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/amazon/device/ads/FileInputHandler;->file:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v1, "fos":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    .line 61
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    .line 62
    const/4 v2, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "fos":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public readAllBytesFromFileAndClose()[B
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileInputHandler;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/FileInputHandler;->open()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Could not open the file for reading"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileInputHandler;->readBytes()[B

    move-result-object v0

    .line 134
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileInputHandler;->close()V

    goto :goto_0
.end method

.method public readBytes()[B
    .locals 10

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/amazon/device/ads/FileInputHandler;->checkReadable()V

    .line 104
    const/4 v4, 0x0

    .line 105
    .local v4, "totalBytesRead":I
    :try_start_0
    iget-object v5, p0, Lcom/amazon/device/ads/FileInputHandler;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    new-array v2, v5, [B

    .line 106
    .local v2, "data":[B
    :cond_0
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 108
    array-length v5, v2

    sub-int v1, v5, v4

    .line 109
    .local v1, "bytesRemaining":I
    iget-object v5, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v5, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 110
    .local v0, "bytesRead":I
    if-lez v0, :cond_0

    .line 111
    add-int/2addr v4, v0

    goto :goto_0

    .line 115
    .end local v0    # "bytesRead":I
    .end local v1    # "bytesRemaining":I
    .end local v2    # "data":[B
    :catch_0
    move-exception v3

    .line 117
    .local v3, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "Error reading bytes from input file: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    const/4 v2, 0x0

    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    return-object v2
.end method

.method public readLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/amazon/device/ads/FileInputHandler;->checkReadable()V

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Error reading line from file."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    goto :goto_0
.end method
