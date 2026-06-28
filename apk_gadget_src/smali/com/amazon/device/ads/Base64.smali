.class Lcom/amazon/device/ads/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final ENCODE_CHARSET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 33
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Encoded String must not be null or white space"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/amazon/device/ads/Base64;->getDecodedLength(Ljava/lang/String;)I

    move-result v4

    .line 36
    .local v4, "decodedLength":I
    if-gtz v4, :cond_1

    .line 38
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Encoded String decodes to zero bytes"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 40
    :cond_1
    new-array v3, v4, [B

    .line 41
    .local v3, "decoded":[B
    const/4 v1, 0x0

    .line 42
    .local v1, "current":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 44
    if-lt v1, v4, :cond_3

    .line 98
    :cond_2
    return-object v3

    .line 50
    :cond_3
    rem-int/lit8 v6, v5, 0x4

    if-nez v6, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v5, 0x4

    if-lt v6, v7, :cond_2

    .line 54
    :cond_4
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 55
    .local v0, "code":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    .line 66
    rem-int/lit8 v6, v5, 0x4

    packed-switch v6, :pswitch_data_0

    .line 42
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    :pswitch_0
    shl-int/lit8 v6, v0, 0x2

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    goto :goto_1

    .line 74
    :pswitch_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "current":I
    .local v2, "current":I
    aget-byte v6, v3, v1

    shr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0x3

    int-to-byte v7, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    .line 76
    if-ge v2, v4, :cond_5

    .line 79
    shl-int/lit8 v6, v0, 0x4

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    move v1, v2

    .end local v2    # "current":I
    .restart local v1    # "current":I
    goto :goto_1

    .line 84
    :pswitch_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "current":I
    .restart local v2    # "current":I
    aget-byte v6, v3, v1

    shr-int/lit8 v7, v0, 0x2

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    .line 86
    if-ge v2, v4, :cond_5

    .line 89
    shl-int/lit8 v6, v0, 0x6

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    move v1, v2

    .end local v2    # "current":I
    .restart local v1    # "current":I
    goto :goto_1

    .line 94
    :pswitch_3
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "current":I
    .restart local v2    # "current":I
    aget-byte v6, v3, v1

    and-int/lit8 v7, v0, 0x3f

    int-to-byte v7, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    :cond_5
    move v1, v2

    .end local v2    # "current":I
    .restart local v1    # "current":I
    goto :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getDecodedLength(Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v3, "="

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 109
    .local v2, "index":I
    const/4 v1, 0x0

    .line 110
    .local v1, "end":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, v3, v2

    .line 119
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x3

    sub-int v0, v3, v1

    .line 120
    .local v0, "decodedLength":I
    return v0
.end method
