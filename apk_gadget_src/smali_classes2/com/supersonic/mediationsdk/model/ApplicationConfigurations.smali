.class public Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;
.super Ljava/lang/Object;
.source "ApplicationConfigurations.java"


# instance fields
.field private mLogger:Lcom/supersonic/mediationsdk/model/ApplicationLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/supersonic/mediationsdk/model/ApplicationLogger;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/ApplicationLogger;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;->mLogger:Lcom/supersonic/mediationsdk/model/ApplicationLogger;

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/supersonic/mediationsdk/model/ApplicationLogger;)V
    .locals 0
    .param p1, "logger"    # Lcom/supersonic/mediationsdk/model/ApplicationLogger;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;->mLogger:Lcom/supersonic/mediationsdk/model/ApplicationLogger;

    .line 17
    return-void
.end method


# virtual methods
.method public getLoggerConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationLogger;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;->mLogger:Lcom/supersonic/mediationsdk/model/ApplicationLogger;

    return-object v0
.end method
