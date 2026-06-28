.class final Lcom/google/android/gms/internal/zzbnk;
.super Lcom/google/android/gms/internal/zzbnq;


# instance fields
.field private synthetic zzgok:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private synthetic zzgoo:Lcom/google/android/gms/internal/zzbni;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbni;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnk;->zzgoo:Lcom/google/android/gms/internal/zzbni;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbnk;->zzgok:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbnq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnk;->zzgok:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaol()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqi;

    new-instance v1, Lcom/google/android/gms/internal/zzbll;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnk;->zzgoo:Lcom/google/android/gms/internal/zzbni;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbpj;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnk;->zzgok:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaol()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzbll;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbnm;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbnm;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzbll;Lcom/google/android/gms/internal/zzbqk;)V

    return-void
.end method
