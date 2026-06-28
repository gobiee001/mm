.class public Lcom/amazon/ags/client/whispersync/SimpleQuietPeriodListener;
.super Ljava/lang/Object;
.source "SimpleQuietPeriodListener.java"

# interfaces
.implements Lcom/amazon/ags/client/whispersync/QuietPeriodListener;


# instance fields
.field private final quietPeriodDuration:J

.field private quietPeriodEnd:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "quietPeriodDuration"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazon/ags/client/whispersync/SimpleQuietPeriodListener;->quietPeriodEnd:J

    .line 20
    iput-wide p1, p0, Lcom/amazon/ags/client/whispersync/SimpleQuietPeriodListener;->quietPeriodDuration:J

    .line 21
    return-void
.end method


# virtual methods
.method public blockUntilQuiet()V
    .locals 8

    .prologue
    .line 31
    :goto_0
    iget-wide v4, p0, Lcom/amazon/ags/client/whispersync/SimpleQuietPeriodListener;->quietPeriodEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v4, v6

    .local v2, "napTime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 33
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 38
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public breakSilence()V
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/ags/client/whispersync/SimpleQuietPeriodListener;->quietPeriodDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/ags/client/whispersync/SimpleQuietPeriodListener;->quietPeriodEnd:J

    .line 26
    return-void
.end method
