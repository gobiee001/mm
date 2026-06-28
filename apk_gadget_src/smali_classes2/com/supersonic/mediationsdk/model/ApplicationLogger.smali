.class public Lcom/supersonic/mediationsdk/model/ApplicationLogger;
.super Ljava/lang/Object;
.source "ApplicationLogger.java"


# instance fields
.field private mConsole:I

.field private mPublisher:I

.field private mServer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "serverLoggerLevel"    # I
    .param p2, "publisherLoggerLevel"    # I
    .param p3, "consoleLoggerLevel"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/supersonic/mediationsdk/model/ApplicationLogger;->mServer:I

    .line 19
    iput p2, p0, Lcom/supersonic/mediationsdk/model/ApplicationLogger;->mPublisher:I

    .line 20
    iput p3, p0, Lcom/supersonic/mediationsdk/model/ApplicationLogger;->mConsole:I

    .line 21
    return-void
.end method


# virtual methods
.method public getConsoleLoggerLevel()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/supersonic/mediationsdk/model/ApplicationLogger;->mConsole:I

    return v0
.end method

.method public getPublisherLoggerLevel()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/supersonic/mediationsdk/model/ApplicationLogger;->mPublisher:I

    return v0
.end method

.method public getServerLoggerLevel()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/supersonic/mediationsdk/model/ApplicationLogger;->mServer:I

    return v0
.end method
