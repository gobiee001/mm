.class public Lcom/google/android/gms/nearby/connection/Payload;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/connection/Payload$Type;,
        Lcom/google/android/gms/nearby/connection/Payload$Stream;,
        Lcom/google/android/gms/nearby/connection/Payload$File;
    }
.end annotation


# instance fields
.field private final id:J

.field private final type:I
    .annotation build Lcom/google/android/gms/nearby/connection/Payload$Type;
    .end annotation
.end field

.field private final zzjng:[B

.field private final zzjnh:Lcom/google/android/gms/nearby/connection/Payload$File;

.field private final zzjni:Lcom/google/android/gms/nearby/connection/Payload$Stream;


# direct methods
.method private constructor <init>(JI[BLcom/google/android/gms/nearby/connection/Payload$File;Lcom/google/android/gms/nearby/connection/Payload$Stream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/nearby/connection/Payload;->id:J

    iput p3, p0, Lcom/google/android/gms/nearby/connection/Payload;->type:I

    iput-object p4, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzjng:[B

    iput-object p5, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzjnh:Lcom/google/android/gms/nearby/connection/Payload$File;

    iput-object p6, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzjni:Lcom/google/android/gms/nearby/connection/Payload$Stream;

    return-void
.end method

.method public static fromBytes([B)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 2

    const-string v0, "Cannot create a Payload from null bytes."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/nearby/connection/Payload;->zza([BJ)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v0

    return-object v0
.end method

.method public static fromFile(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/nearby/connection/Payload$File;->zzb(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/Payload$File;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/nearby/connection/Payload;->zza(Lcom/google/android/gms/nearby/connection/Payload$File;J)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v0

    return-object v0
.end method

.method public static fromFile(Ljava/io/File;)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/nearby/connection/Payload$File;->zza(Ljava/io/File;J)Lcom/google/android/gms/nearby/connection/Payload$File;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/nearby/connection/Payload;->zza(Lcom/google/android/gms/nearby/connection/Payload$File;J)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v0

    return-object v0
.end method

.method public static fromStream(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/nearby/connection/Payload$Stream;->zzc(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/Payload$Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/nearby/connection/Payload;->zza(Lcom/google/android/gms/nearby/connection/Payload$Stream;J)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v0

    return-object v0
.end method

.method public static fromStream(Ljava/io/InputStream;)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/nearby/connection/Payload$Stream;->zzf(Ljava/io/InputStream;)Lcom/google/android/gms/nearby/connection/Payload$Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/nearby/connection/Payload;->zza(Lcom/google/android/gms/nearby/connection/Payload$Stream;J)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/nearby/connection/Payload$File;J)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 9

    const/4 v5, 0x0

    new-instance v1, Lcom/google/android/gms/nearby/connection/Payload;

    const/4 v4, 0x2

    move-wide v2, p1

    move-object v6, p0

    move-object v7, v5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/nearby/connection/Payload;-><init>(JI[BLcom/google/android/gms/nearby/connection/Payload$File;Lcom/google/android/gms/nearby/connection/Payload$Stream;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/nearby/connection/Payload$Stream;J)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 9

    const/4 v5, 0x0

    new-instance v1, Lcom/google/android/gms/nearby/connection/Payload;

    const/4 v4, 0x3

    move-wide v2, p1

    move-object v6, v5

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/nearby/connection/Payload;-><init>(JI[BLcom/google/android/gms/nearby/connection/Payload$File;Lcom/google/android/gms/nearby/connection/Payload$Stream;)V

    return-object v1
.end method

.method public static zza([BJ)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 9

    const/4 v6, 0x0

    new-instance v1, Lcom/google/android/gms/nearby/connection/Payload;

    const/4 v4, 0x1

    move-wide v2, p1

    move-object v5, p0

    move-object v7, v6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/nearby/connection/Payload;-><init>(JI[BLcom/google/android/gms/nearby/connection/Payload$File;Lcom/google/android/gms/nearby/connection/Payload$Stream;)V

    return-object v1
.end method


# virtual methods
.method public asBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzjng:[B

    return-object v0
.end method

.method public asFile()Lcom/google/android/gms/nearby/connection/Payload$File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzjnh:Lcom/google/android/gms/nearby/connection/Payload$File;

    return-object v0
.end method

.method public asStream()Lcom/google/android/gms/nearby/connection/Payload$Stream;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzjni:Lcom/google/android/gms/nearby/connection/Payload$Stream;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->id:J

    return-wide v0
.end method

.method public getType()I
    .locals 1
    .annotation build Lcom/google/android/gms/nearby/connection/Payload$Type;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->type:I

    return v0
.end method
