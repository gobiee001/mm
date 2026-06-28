.class public Lcom/amazon/insights/validate/FileManagerValidator;
.super Ljava/lang/Object;
.source "FileManagerValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public validate(Lcom/amazon/insights/core/InsightsContext;)V
    .locals 7
    .param p1, "insightsContext"    # Lcom/amazon/insights/core/InsightsContext;

    .prologue
    .line 17
    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/insights/core/system/System;->getFileManager()Lcom/amazon/insights/core/system/FileManager;

    move-result-object v2

    .line 22
    .local v2, "fileManager":Lcom/amazon/insights/core/system/FileManager;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, ""

    invoke-interface {v2, v5}, Lcom/amazon/insights/core/system/FileManager;->getDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v6, "validatorFile"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lcom/amazon/insights/core/system/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 27
    .local v3, "validatorFile":Ljava/io/File;
    if-nez v3, :cond_0

    .line 28
    new-instance v4, Lcom/amazon/insights/impl/InitializationException;

    const-string v5, "File was not created"

    invoke-direct {v4, v5}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 23
    .end local v3    # "validatorFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lcom/amazon/insights/impl/InitializationException;

    const-string v5, "Could not create file on disk"

    invoke-direct {v4, v5, v0}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 31
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "validatorFile":Ljava/io/File;
    :cond_0
    invoke-interface {v2, v3}, Lcom/amazon/insights/core/system/FileManager;->deleteFile(Ljava/io/File;)Z

    move-result v1

    .line 32
    .local v1, "fileDeleted":Z
    if-nez v1, :cond_1

    .line 33
    new-instance v4, Lcom/amazon/insights/impl/InitializationException;

    const-string v5, "Could not delete file from disk"

    invoke-direct {v4, v5}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 35
    :cond_1
    return-void
.end method
