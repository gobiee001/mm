.class public Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;
.super Ljava/lang/Object;
.source "ERSCrashAppender.java"

# interfaces
.implements Lcom/amazon/insights/core/crash/CrashAppender;


# static fields
.field private static final EVENT_SCHEMA_VERSION:Ljava/lang/String; = "v1.2"

.field private static final ErrorEventName:Ljava/lang/String; = "_sdkError"

.field private static final MAX_ATTRIBUTE_LENGTH:I = 0x3e8

.field private static final MAX_STACK_TRACE_DEPTH:I = 0xa


# instance fields
.field private final context:Lcom/amazon/insights/core/InsightsContext;

.field private final ersClient:Lcom/amazon/insights/core/crash/ers/ERSClient;


# direct methods
.method public constructor <init>(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/core/crash/ers/ERSClient;)V
    .locals 0
    .param p1, "context"    # Lcom/amazon/insights/core/InsightsContext;
    .param p2, "ersClient"    # Lcom/amazon/insights/core/crash/ers/ERSClient;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;->context:Lcom/amazon/insights/core/InsightsContext;

    .line 30
    iput-object p2, p0, Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;->ersClient:Lcom/amazon/insights/core/crash/ers/ERSClient;

    .line 31
    return-void
.end method

.method private static clipStringForERS(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 70
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/amazon/insights/core/util/StringUtil;->clipString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createEvent(Lcom/amazon/insights/core/crash/CrashReporter;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/amazon/insights/event/DefaultEvent;
    .locals 10
    .param p1, "originatingReporter"    # Lcom/amazon/insights/core/crash/CrashReporter;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    iget-object v7, p0, Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "_sdkError"

    invoke-static {v7, v8, v9}, Lcom/amazon/insights/event/DefaultEvent;->newInstance(Lcom/amazon/insights/core/InsightsContext;Ljava/lang/Long;Ljava/lang/String;)Lcom/amazon/insights/event/DefaultEvent;

    move-result-object v0

    .line 47
    .local v0, "event":Lcom/amazon/insights/event/DefaultEvent;
    const-string v7, "ver"

    const-string v8, "v1.2"

    invoke-virtual {v0, v7, v8}, Lcom/amazon/insights/event/DefaultEvent;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v7, "message"

    invoke-static {p2}, Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;->clipStringForERS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/amazon/insights/event/DefaultEvent;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v7, "reporting_class"

    invoke-virtual {p1}, Lcom/amazon/insights/core/crash/CrashReporter;->getReportingClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;->clipStringForERS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/amazon/insights/event/DefaultEvent;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz p3, :cond_0

    .line 52
    invoke-static {p3}, Lcom/amazon/insights/core/crash/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v6

    .line 53
    .local v6, "throwables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 54
    .local v4, "rootCause":Ljava/lang/Throwable;
    const-string v7, "exception_type"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;->clipStringForERS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/amazon/insights/event/DefaultEvent;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 57
    .local v3, "maxThrowables":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 58
    .local v2, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/Throwable;>;"
    const/4 v1, 0x0

    .line 59
    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_0

    if-ge v1, v3, :cond_0

    .line 60
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    .line 61
    .local v5, "throwable":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stack_trace"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Lcom/amazon/insights/core/crash/ExceptionUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;->clipStringForERS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/amazon/insights/event/DefaultEvent;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    goto :goto_0

    .line 66
    .end local v1    # "i":I
    .end local v2    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/Throwable;>;"
    .end local v3    # "maxThrowables":I
    .end local v4    # "rootCause":Ljava/lang/Throwable;
    .end local v5    # "throwable":Ljava/lang/Throwable;
    .end local v6    # "throwables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_0
    return-object v0
.end method

.method public static newInstance(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/core/crash/ers/ERSClient;)Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;
    .locals 1
    .param p0, "context"    # Lcom/amazon/insights/core/InsightsContext;
    .param p1, "ersClient"    # Lcom/amazon/insights/core/crash/ers/ERSClient;

    .prologue
    .line 25
    new-instance v0, Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;

    invoke-direct {v0, p0, p1}, Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;-><init>(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/core/crash/ers/ERSClient;)V

    return-object v0
.end method


# virtual methods
.method public report(Lcom/amazon/insights/core/crash/CrashReporter;Ljava/lang/String;)V
    .locals 1
    .param p1, "originatingReporter"    # Lcom/amazon/insights/core/crash/CrashReporter;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;->report(Lcom/amazon/insights/core/crash/CrashReporter;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method

.method public report(Lcom/amazon/insights/core/crash/CrashReporter;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "originatingReporter"    # Lcom/amazon/insights/core/crash/CrashReporter;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/insights/event/DefaultEvent;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;->createEvent(Lcom/amazon/insights/core/crash/CrashReporter;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/amazon/insights/event/DefaultEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v1, p0, Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;->ersClient:Lcom/amazon/insights/core/crash/ers/ERSClient;

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/crash/ers/ERSClient;->submitEvents(Ljava/util/List;)Lcom/amazon/insights/InsightsHandler;

    .line 43
    return-void
.end method
