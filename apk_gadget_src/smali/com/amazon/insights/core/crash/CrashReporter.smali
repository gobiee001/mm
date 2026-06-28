.class public Lcom/amazon/insights/core/crash/CrashReporter;
.super Ljava/lang/Object;
.source "CrashReporter.java"


# instance fields
.field private appenders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/amazon/insights/core/crash/CrashAppender;",
            ">;"
        }
    .end annotation
.end field

.field private final cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/core/crash/CrashReporter;->appenders:Ljava/util/Map;

    .line 12
    iput-object p1, p0, Lcom/amazon/insights/core/crash/CrashReporter;->cls:Ljava/lang/Class;

    .line 13
    return-void
.end method


# virtual methods
.method public attachAppender(Lcom/amazon/insights/core/crash/CrashAppender;)V
    .locals 2
    .param p1, "appender"    # Lcom/amazon/insights/core/crash/CrashAppender;

    .prologue
    .line 22
    if-nez p1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/amazon/insights/core/crash/CrashReporter;->appenders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/amazon/insights/core/crash/CrashReporter;->appenders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public detachAppender(Lcom/amazon/insights/core/crash/CrashAppender;)V
    .locals 2
    .param p1, "appender"    # Lcom/amazon/insights/core/crash/CrashAppender;

    .prologue
    .line 32
    if-nez p1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/amazon/insights/core/crash/CrashReporter;->appenders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/amazon/insights/core/crash/CrashReporter;->appenders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAppenders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazon/insights/core/crash/CrashAppender;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazon/insights/core/crash/CrashReporter;->appenders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getReportingClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amazon/insights/core/crash/CrashReporter;->cls:Ljava/lang/Class;

    return-object v0
.end method

.method public report(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/amazon/insights/core/crash/CrashReporter;->getAppenders()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/core/crash/CrashAppender;

    .line 47
    .local v0, "appender":Lcom/amazon/insights/core/crash/CrashAppender;
    invoke-interface {v0, p0, p1}, Lcom/amazon/insights/core/crash/CrashAppender;->report(Lcom/amazon/insights/core/crash/CrashReporter;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    .end local v0    # "appender":Lcom/amazon/insights/core/crash/CrashAppender;
    :cond_0
    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/amazon/insights/core/crash/CrashReporter;->getAppenders()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/core/crash/CrashAppender;

    .line 53
    .local v0, "appender":Lcom/amazon/insights/core/crash/CrashAppender;
    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/insights/core/crash/CrashAppender;->report(Lcom/amazon/insights/core/crash/CrashReporter;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 55
    .end local v0    # "appender":Lcom/amazon/insights/core/crash/CrashAppender;
    :cond_0
    return-void
.end method
