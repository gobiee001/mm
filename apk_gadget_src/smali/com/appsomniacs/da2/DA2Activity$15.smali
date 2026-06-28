.class final Lcom/appsomniacs/da2/DA2Activity$15;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsomniacs/da2/DA2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2139
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->showRewardedAd()Z

    move-result v0

    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->access$1802(Z)Z

    .line 2140
    monitor-enter p0

    .line 2141
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2142
    monitor-exit p0

    .line 2143
    return-void

    .line 2142
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
