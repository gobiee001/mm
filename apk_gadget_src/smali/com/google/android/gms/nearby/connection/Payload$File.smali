.class public Lcom/google/android/gms/nearby/connection/Payload$File;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/connection/Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "File"
.end annotation


# instance fields
.field private final zziib:J

.field private final zzjnj:Ljava/io/File;

.field private final zzjnk:Landroid/os/ParcelFileDescriptor;


# direct methods
.method private constructor <init>(Ljava/io/File;Landroid/os/ParcelFileDescriptor;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/Payload$File;->zzjnj:Ljava/io/File;

    iput-object p2, p0, Lcom/google/android/gms/nearby/connection/Payload$File;->zzjnk:Landroid/os/ParcelFileDescriptor;

    iput-wide p3, p0, Lcom/google/android/gms/nearby/connection/Payload$File;->zziib:J

    return-void
.end method

.method public static zza(Ljava/io/File;J)Lcom/google/android/gms/nearby/connection/Payload$File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/nearby/connection/Payload$File;

    const-string v0, "Cannot create Payload.File from null java.io.File."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/high16 v2, 0x10000000

    invoke-static {p0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1, p2}, Lcom/google/android/gms/nearby/connection/Payload$File;-><init>(Ljava/io/File;Landroid/os/ParcelFileDescriptor;J)V

    return-object v1
.end method

.method public static zzb(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/Payload$File;
    .locals 6

    new-instance v1, Lcom/google/android/gms/nearby/connection/Payload$File;

    const/4 v2, 0x0

    const-string v0, "Cannot create Payload.File from null ParcelFileDescriptor."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/google/android/gms/nearby/connection/Payload$File;-><init>(Ljava/io/File;Landroid/os/ParcelFileDescriptor;J)V

    return-object v1
.end method


# virtual methods
.method public asJavaFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload$File;->zzjnj:Ljava/io/File;

    return-object v0
.end method

.method public asParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload$File;->zzjnk:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/connection/Payload$File;->zziib:J

    return-wide v0
.end method
