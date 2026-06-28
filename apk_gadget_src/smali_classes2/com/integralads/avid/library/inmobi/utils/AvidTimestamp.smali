.class public Lcom/integralads/avid/library/inmobi/utils/AvidTimestamp;
.super Ljava/lang/Object;
.source "AvidTimestamp.java"


# static fields
.field private static NANOSEC_PER_MILLISEC:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    const-wide v0, 0x412e848000000000L    # 1000000.0

    sput-wide v0, Lcom/integralads/avid/library/inmobi/utils/AvidTimestamp;->NANOSEC_PER_MILLISEC:D

    return-void
.end method

.method public static getCurrentTime()D
    .locals 4

    .prologue
    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    sget-wide v2, Lcom/integralads/avid/library/inmobi/utils/AvidTimestamp;->NANOSEC_PER_MILLISEC:D

    div-double/2addr v0, v2

    return-wide v0
.end method
