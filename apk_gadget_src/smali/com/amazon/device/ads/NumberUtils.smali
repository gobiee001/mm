.class Lcom/amazon/device/ads/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertToMillisecondsFromNanoseconds(J)J
    .locals 2
    .param p0, "nanoseconds"    # J

    .prologue
    .line 33
    const-wide/32 v0, 0xf4240

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static final convertToMillisecondsFromSeconds(J)J
    .locals 2
    .param p0, "seconds"    # J

    .prologue
    .line 37
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 21
    move v0, p1

    .line 24
    .local v0, "value":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 28
    :goto_0
    return v0

    .line 26
    :catch_0
    move-exception v1

    goto :goto_0
.end method
