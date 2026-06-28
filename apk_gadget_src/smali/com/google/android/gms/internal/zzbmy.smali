.class public final Lcom/google/android/gms/internal/zzbmy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveContents;


# static fields
.field private static final zzgjj:Lcom/google/android/gms/common/internal/zzal;


# instance fields
.field private mClosed:Z

.field private final zzgnz:Lcom/google/android/gms/drive/zzc;

.field private zzgoa:Z

.field private zzgob:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/zzal;

    const-string v1, "DriveContentsImpl"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbmy;->zzgjj:Lcom/google/android/gms/common/internal/zzal;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/zzc;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmy;->mClosed:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgoa:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgob:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgnz:Lcom/google/android/gms/drive/zzc;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzr;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/zzr;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_5

    new-instance v0, Lcom/google/android/gms/drive/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzt;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzr;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmy;->zzgnz:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/zzc;->getMode()I

    move-result v1

    const/high16 v2, 0x10000000

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot commit contents opened with MODE_READ_ONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzaog()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/drive/ExecutionOptions;->zzcr(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmy;->zzgnz:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/zzc;->zzant()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DriveContents must be valid for conflict detection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/ExecutionOptions;->zzf(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbmy;->mClosed:Z

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DriveContents already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbmy;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only DriveContents obtained through DriveFile.open can be committed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p2, :cond_4

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbmy;->zzaoc()V

    new-instance v1, Lcom/google/android/gms/internal/zzbna;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbna;-><init>(Lcom/google/android/gms/internal/zzbmy;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzr;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;

    move-result-object v0

    return-object v0

    :cond_4
    sget-object p2, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgkc:Lcom/google/android/gms/drive/MetadataChangeSet;

    goto :goto_1

    :cond_5
    move-object v0, p3

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbmy;)Lcom/google/android/gms/drive/zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgnz:Lcom/google/android/gms/drive/zzc;

    return-object v0
.end method

.method static synthetic zzapd()Lcom/google/android/gms/common/internal/zzal;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbmy;->zzgjj:Lcom/google/android/gms/common/internal/zzal;

    return-object v0
.end method


# virtual methods
.method public final commit(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbmy;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzr;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final commit(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/ExecutionOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbmy;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzr;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/drive/zzr;->zzb(Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/drive/zzr;

    move-result-object v0

    goto :goto_0
.end method

.method public final discard(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmy;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DriveContents already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbmy;->zzaoc()V

    new-instance v0, Lcom/google/android/gms/internal/zzbnc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbnc;-><init>(Lcom/google/android/gms/internal/zzbmy;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbnc;

    new-instance v1, Lcom/google/android/gms/internal/zzbnb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbnb;-><init>(Lcom/google/android/gms/internal/zzbmy;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public final getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgnz:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmy;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Contents have been closed, cannot access the input stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgnz:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getMode()I

    move-result v0

    const/high16 v1, 0x10000000

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getInputStream() can only be used with contents opened with MODE_READ_ONLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgoa:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getInputStream() can only be called once per Contents instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgoa:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgnz:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgnz:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getMode()I

    move-result v0

    return v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmy;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Contents have been closed, cannot access the output stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgnz:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getMode()I

    move-result v0

    const/high16 v1, 0x20000000

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutputStream() can only be used with contents opened with MODE_WRITE_ONLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgob:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutputStream() can only be called once per Contents instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgob:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgnz:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmy;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Contents have been closed, cannot access the output stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgnz:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final reopenForWrite(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmy;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DriveContents already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgnz:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getMode()I

    move-result v0

    const/high16 v1, 0x10000000

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reopenForWrite can only be used with DriveContents opened with MODE_READ_ONLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbmy;->zzaoc()V

    new-instance v0, Lcom/google/android/gms/internal/zzbmz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbmz;-><init>(Lcom/google/android/gms/internal/zzbmy;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;

    move-result-object v0

    return-object v0
.end method

.method public final zzaob()Lcom/google/android/gms/drive/zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgnz:Lcom/google/android/gms/drive/zzc;

    return-object v0
.end method

.method public final zzaoc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzgnz:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzn;->zza(Landroid/os/ParcelFileDescriptor;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmy;->mClosed:Z

    return-void
.end method

.method public final zzaod()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmy;->mClosed:Z

    return v0
.end method
