.class public Lcom/supersonicads/sdk/data/DemandSource;
.super Ljava/lang/Object;
.source "DemandSource.java"


# instance fields
.field private mExtraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitState:I

.field private mListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V
    .locals 1
    .param p1, "demandSourceName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/supersonicads/sdk/data/DemandSource;->mName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/supersonicads/sdk/data/DemandSource;->mExtraParams:Ljava/util/Map;

    .line 28
    iput-object p3, p0, Lcom/supersonicads/sdk/data/DemandSource;->mListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/supersonicads/sdk/data/DemandSource;->mInitState:I

    .line 30
    return-void
.end method


# virtual methods
.method public getDemandSourceInitState()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/supersonicads/sdk/data/DemandSource;->mInitState:I

    return v0
.end method

.method public getDemandSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/supersonicads/sdk/data/DemandSource;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/supersonicads/sdk/data/DemandSource;->mExtraParams:Ljava/util/Map;

    return-object v0
.end method

.method public getListener()Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/supersonicads/sdk/data/DemandSource;->mListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    return-object v0
.end method

.method public declared-synchronized setDemandSourceInitState(I)V
    .locals 1
    .param p1, "initState"    # I

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/supersonicads/sdk/data/DemandSource;->mInitState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
