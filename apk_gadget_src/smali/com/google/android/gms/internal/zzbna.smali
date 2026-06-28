.class final Lcom/google/android/gms/internal/zzbna;
.super Lcom/google/android/gms/internal/zzbmn;


# instance fields
.field private synthetic zzgoc:Lcom/google/android/gms/internal/zzbmy;

.field private synthetic zzgod:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private synthetic zzgoe:Lcom/google/android/gms/drive/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmy;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbna;->zzgoc:Lcom/google/android/gms/internal/zzbmy;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbna;->zzgod:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbna;->zzgoe:Lcom/google/android/gms/drive/zzr;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbna;->zzgod:Lcom/google/android/gms/drive/MetadataChangeSet;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbna;->zzgoc:Lcom/google/android/gms/internal/zzbmy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbmy;->zza(Lcom/google/android/gms/internal/zzbmy;)Lcom/google/android/gms/drive/zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/zzc;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbna;->zzgod:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaol()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbna;->zzgoc:Lcom/google/android/gms/internal/zzbmy;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbmy;->zza(Lcom/google/android/gms/internal/zzbmy;)Lcom/google/android/gms/drive/zzc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbna;->zzgoc:Lcom/google/android/gms/internal/zzbmy;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbmy;->zza(Lcom/google/android/gms/internal/zzbmy;)Lcom/google/android/gms/drive/zzc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/drive/zzc;->zzant()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbna;->zzgoe:Lcom/google/android/gms/drive/zzr;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbkz;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IZLcom/google/android/gms/drive/zzr;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbsm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbsm;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {v6, v0, v1}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzbkz;Lcom/google/android/gms/internal/zzbqk;)V

    return-void
.end method
