.class public Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;
.super Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
.source "SupersonicLoggerManager.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/logger/LogListener;


# static fields
.field private static mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;


# instance fields
.field private mLoggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/logger/SupersonicLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    .line 22
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->initSubLoggers()V

    .line 23
    return-void
.end method

.method private findLoggerByName(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
    .locals 4
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v2, 0x0

    .line 127
    .local v2, "result":Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;

    .line 128
    .local v1, "logger":Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->getLoggerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    move-object v2, v1

    .line 133
    .end local v1    # "logger":Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
    :cond_1
    return-object v2
.end method

.method public static declared-synchronized getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;
    .locals 3

    .prologue
    .line 46
    const-class v1, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    const-class v2, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLogger(I)Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;
    .locals 3
    .param p0, "debugLevel"    # I

    .prologue
    .line 62
    const-class v1, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    const-class v2, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    .line 68
    :goto_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :cond_0
    :try_start_1
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    iput p0, v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mDebugLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initSubLoggers()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/supersonic/mediationsdk/logger/ConsoleLogger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/supersonic/mediationsdk/logger/ConsoleLogger;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/supersonic/mediationsdk/logger/ServerLogger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/supersonic/mediationsdk/logger/ServerLogger;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method


# virtual methods
.method public addLogger(Lcom/supersonic/mediationsdk/logger/SupersonicLogger;)V
    .locals 1
    .param p1, "toAdd"    # Lcom/supersonic/mediationsdk/logger/SupersonicLogger;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    .locals 3
    .param p1, "tag"    # Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mDebugLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p3, v2, :cond_1

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;

    .line 89
    .local v1, "logger":Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->getDebugLevel()I

    move-result v2

    if-gt v2, p3, :cond_2

    .line 90
    invoke-virtual {v1, p1, p2, p3}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "logger":Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "tag"    # Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    monitor-enter p0

    if-nez p3, :cond_0

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;

    .line 108
    .local v1, "logger":Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
    const/4 v2, 0x3

    invoke-virtual {v1, p1, p2, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 106
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "logger":Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 111
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;

    .line 112
    .restart local v1    # "logger":Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
    invoke-virtual {v1, p1, p2, p3}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 115
    .end local v1    # "logger":Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onLog(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    .locals 1
    .param p1, "tag"    # Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLoggerDebugLevel(Ljava/lang/String;I)V
    .locals 5
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "debugLevel"    # I

    .prologue
    const/4 v4, 0x0

    .line 143
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->findLoggerByName(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicLogger;

    move-result-object v0

    .line 149
    .local v0, "logger":Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
    if-eqz v0, :cond_2

    .line 152
    if-ltz p2, :cond_1

    const/4 v1, 0x3

    if-gt p2, v1, :cond_1

    .line 154
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLoggerDebugLevel(loggerName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,debugLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 155
    invoke-virtual {v0, p2}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->setDebugLevel(I)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_2
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find logger:setLoggerDebugLevel(loggerName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,debugLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method
