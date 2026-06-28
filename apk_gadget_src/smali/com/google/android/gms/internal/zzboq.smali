.class final Lcom/google/android/gms/internal/zzboq;
.super Lcom/google/android/gms/common/api/internal/zzdd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzdd",
        "<",
        "Lcom/google/android/gms/internal/zzbmo;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgod:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private synthetic zzgpd:Lcom/google/android/gms/drive/DriveContents;

.field private synthetic zzgpe:Lcom/google/android/gms/drive/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/zzr;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzboq;->zzgpe:Lcom/google/android/gms/drive/zzr;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzboq;->zzgpd:Lcom/google/android/gms/drive/DriveContents;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzboq;->zzgod:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzdd;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmo;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzgpe:Lcom/google/android/gms/drive/zzr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/ExecutionOptions;->zza(Lcom/google/android/gms/internal/zzbmo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzgpd:Lcom/google/android/gms/drive/DriveContents;

    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->zzaoc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzgod:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaol()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/zzbqi;

    new-instance v0, Lcom/google/android/gms/internal/zzbkz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzgpd:Lcom/google/android/gms/drive/DriveContents;

    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveContents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzboq;->zzgod:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaol()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzboq;->zzgpd:Lcom/google/android/gms/drive/DriveContents;

    invoke-interface {v3}, Lcom/google/android/gms/drive/DriveContents;->zzaob()Lcom/google/android/gms/drive/zzc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzboq;->zzgpd:Lcom/google/android/gms/drive/DriveContents;

    invoke-interface {v4}, Lcom/google/android/gms/drive/DriveContents;->zzaob()Lcom/google/android/gms/drive/zzc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/drive/zzc;->zzant()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzboq;->zzgpe:Lcom/google/android/gms/drive/zzr;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbkz;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IZLcom/google/android/gms/drive/zzr;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbtd;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzbtd;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v6, v0, v1}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzbkz;Lcom/google/android/gms/internal/zzbqk;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
