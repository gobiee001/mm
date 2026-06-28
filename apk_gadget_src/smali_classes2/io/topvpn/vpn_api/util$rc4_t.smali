.class public Lio/topvpn/vpn_api/util$rc4_t;
.super Ljava/lang/Object;
.source "util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "rc4_t"
.end annotation


# instance fields
.field private S:[B

.field private T:[B

.field private keylen:I


# direct methods
.method public constructor <init>([B)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x100

    .line 1225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1221
    new-array v1, v5, [B

    iput-object v1, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    .line 1222
    new-array v1, v5, [B

    iput-object v1, p0, Lio/topvpn/vpn_api/util$rc4_t;->T:[B

    .line 1226
    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    array-length v1, p1

    if-le v1, v5, :cond_1

    .line 1227
    :cond_0
    const/16 v1, 0x203

    const-string v2, "key must be between 1 and 256 bytes"

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->access$900(ILjava/lang/String;)I

    .line 1228
    :cond_1
    array-length v1, p1

    iput v1, p0, Lio/topvpn/vpn_api/util$rc4_t;->keylen:I

    move v1, v0

    .line 1229
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1231
    iget-object v2, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v1

    .line 1232
    iget-object v2, p0, Lio/topvpn/vpn_api/util$rc4_t;->T:[B

    iget v3, p0, Lio/topvpn/vpn_api/util$rc4_t;->keylen:I

    rem-int v3, v1, v3

    aget-byte v3, p1, v3

    aput-byte v3, v2, v1

    .line 1229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1235
    :goto_1
    if-ge v0, v5, :cond_3

    .line 1237
    iget-object v2, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Lio/topvpn/vpn_api/util$rc4_t;->T:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1238
    iget-object v2, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v3, v2, v0

    iget-object v4, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1239
    iget-object v2, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v3, v2, v1

    iget-object v4, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 1240
    iget-object v2, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v3, v2, v0

    iget-object v4, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1242
    :cond_3
    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 1

    .prologue
    .line 1264
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/util$rc4_t;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 1262
    invoke-static {p1}, Lio/topvpn/vpn_api/util;->str2bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/util$rc4_t;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B)[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1245
    array-length v1, p1

    new-array v3, v1, [B

    move v1, v0

    move v2, v0

    .line 1247
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 1249
    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    .line 1250
    iget-object v4, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    .line 1251
    iget-object v4, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v5, v4, v2

    iget-object v6, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v6, v6, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 1252
    iget-object v4, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v5, v4, v1

    iget-object v6, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v6, v6, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 1253
    iget-object v4, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v5, v4, v2

    iget-object v6, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v6, v6, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 1254
    iget-object v4, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v4, v4, v2

    iget-object v5, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v5, v5, v1

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 1255
    iget-object v5, p0, Lio/topvpn/vpn_api/util$rc4_t;->S:[B

    aget-byte v4, v5, v4

    .line 1256
    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 1247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1258
    :cond_0
    return-object v3
.end method
