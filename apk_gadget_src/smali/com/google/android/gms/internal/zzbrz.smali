.class final Lcom/google/android/gms/internal/zzbrz;
.super Lcom/google/android/gms/internal/zzbky;


# instance fields
.field private final zzgbw:Lcom/google/android/gms/common/api/internal/zzn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgrk:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;",
            "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbky;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbrz;->zzgbw:Lcom/google/android/gms/common/api/internal/zzn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbrz;->zzgrk:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    return-void
.end method


# virtual methods
.method public final onError(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrz;->zzgbw:Lcom/google/android/gms/common/api/internal/zzn;

    new-instance v1, Lcom/google/android/gms/internal/zzbma;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/zzbma;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zzn;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbqv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzbqv;->zzgqq:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrz;->zzgbw:Lcom/google/android/gms/common/api/internal/zzn;

    new-instance v2, Lcom/google/android/gms/internal/zzbma;

    new-instance v3, Lcom/google/android/gms/internal/zzbmy;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzbqv;->zzgnz:Lcom/google/android/gms/drive/zzc;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzbmy;-><init>(Lcom/google/android/gms/drive/zzc;)V

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/zzbma;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/internal/zzn;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzfni:Lcom/google/android/gms/common/api/Status;

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbqz;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrz;->zzgrk:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrz;->zzgrk:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzbqz;->zzgqt:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbqz;->zzgqu:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;->onProgress(JJ)V

    :cond_0
    return-void
.end method
