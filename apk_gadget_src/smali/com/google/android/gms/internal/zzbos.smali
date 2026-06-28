.class final Lcom/google/android/gms/internal/zzbos;
.super Lcom/google/android/gms/internal/zzbpb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbpb",
        "<",
        "Lcom/google/android/gms/drive/DriveFile;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgpf:Lcom/google/android/gms/drive/DriveFolder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/DriveFolder;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbos;->zzgpf:Lcom/google/android/gms/drive/DriveFolder;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzbpb;-><init>(Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzbmo;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbmo;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Lcom/google/android/gms/drive/DriveFile;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzblj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbos;->zzgpf:Lcom/google/android/gms/drive/DriveFolder;

    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveFolder;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbos;->zzgpm:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaol()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzbos;->zzgpn:I

    iget v4, p0, Lcom/google/android/gms/internal/zzbos;->zzgmp:I

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbos;->zzgpk:Lcom/google/android/gms/drive/zzo;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzblj;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/zzo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbqi;

    new-instance v2, Lcom/google/android/gms/internal/zzbsx;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/zzbsx;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzblj;Lcom/google/android/gms/internal/zzbqk;)V

    return-void
.end method
