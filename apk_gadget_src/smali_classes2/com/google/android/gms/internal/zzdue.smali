.class abstract Lcom/google/android/gms/internal/zzdue;
.super Lcom/google/android/gms/internal/zzdub;


# direct methods
.method private constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdub;-><init>([B)V

    return-void
.end method

.method synthetic constructor <init>([BLcom/google/android/gms/internal/zzduc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdue;-><init>([B)V

    return-void
.end method

.method private static zza([IIIII)V
    .locals 2

    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdue;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p4

    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdue;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p2

    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdue;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p4

    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdue;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p2

    return-void
.end method

.method private static zza([I[B)V
    .locals 4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdue;->zza(Ljava/nio/ByteBuffer;)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    array-length v3, v0

    invoke-static {v0, v1, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic zzb([I[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzdue;->zza([I[B)V

    return-void
.end method

.method private static zzh([I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzdue;->zzlyk:[I

    sget-object v1, Lcom/google/android/gms/internal/zzdue;->zzlyk:[I

    array-length v1, v1

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic zzi([I)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdue;->zzh([I)V

    return-void
.end method


# virtual methods
.method final zzf([I)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xa

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/16 v4, 0xc

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzdue;->zza([IIIII)V

    const/4 v2, 0x5

    const/16 v3, 0x9

    const/16 v4, 0xd

    invoke-static {p1, v6, v2, v3, v4}, Lcom/google/android/gms/internal/zzdue;->zza([IIIII)V

    const/4 v2, 0x6

    const/16 v3, 0xe

    invoke-static {p1, v7, v2, v5, v3}, Lcom/google/android/gms/internal/zzdue;->zza([IIIII)V

    const/4 v2, 0x7

    const/16 v3, 0xb

    const/16 v4, 0xf

    invoke-static {p1, v8, v2, v3, v4}, Lcom/google/android/gms/internal/zzdue;->zza([IIIII)V

    const/4 v2, 0x5

    const/16 v3, 0xf

    invoke-static {p1, v1, v2, v5, v3}, Lcom/google/android/gms/internal/zzdue;->zza([IIIII)V

    const/4 v2, 0x6

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-static {p1, v6, v2, v3, v4}, Lcom/google/android/gms/internal/zzdue;->zza([IIIII)V

    const/4 v2, 0x7

    const/16 v3, 0x8

    const/16 v4, 0xd

    invoke-static {p1, v7, v2, v3, v4}, Lcom/google/android/gms/internal/zzdue;->zza([IIIII)V

    const/4 v2, 0x4

    const/16 v3, 0x9

    const/16 v4, 0xe

    invoke-static {p1, v8, v2, v3, v4}, Lcom/google/android/gms/internal/zzdue;->zza([IIIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
