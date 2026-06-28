.class public abstract Lcom/google/android/gms/internal/zzdug;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpp;


# instance fields
.field private final zzlym:Lcom/google/android/gms/internal/zzdub;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzdub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdug;->zzlym:Lcom/google/android/gms/internal/zzdub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzdub;Lcom/google/android/gms/internal/zzduh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdug;-><init>(Lcom/google/android/gms/internal/zzdub;)V

    return-void
.end method

.method public static zzak([B)Lcom/google/android/gms/internal/zzdug;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdui;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdub;->zzai([B)Lcom/google/android/gms/internal/zzdub;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzdui;-><init>(Lcom/google/android/gms/internal/zzdub;Lcom/google/android/gms/internal/zzduh;)V

    return-object v0
.end method

.method private static zzgf(I)I
    .locals 1

    add-int/lit8 v0, p0, 0x10

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x10

    shl-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static synthetic zzgg(I)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdug;->zzgf(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method abstract zza([BLjava/nio/ByteBuffer;)[B
.end method

.method public final zzd([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdug;->zzlym:Lcom/google/android/gms/internal/zzdub;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdub;->zzbqi()I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, p1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdug;->zzlym:Lcom/google/android/gms/internal/zzdub;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdub;->zzbqi()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x10

    if-ge v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given ByteBuffer output is too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdug;->zzlym:Lcom/google/android/gms/internal/zzdub;

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/internal/zzdub;->zza(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdug;->zzlym:Lcom/google/android/gms/internal/zzdub;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdub;->zzbqi()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdug;->zzlym:Lcom/google/android/gms/internal/zzdub;

    new-instance v3, Lcom/google/android/gms/internal/zzduf;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Lcom/google/android/gms/internal/zzduf;-><init>(Lcom/google/android/gms/internal/zzdub;[BI)V

    const/16 v1, 0x20

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzduf;->zzge(I)[B

    move-result-object v1

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzdug;->zza([BLjava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzdvh;->zzf([B[B)[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
