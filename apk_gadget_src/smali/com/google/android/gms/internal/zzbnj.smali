.class final Lcom/google/android/gms/internal/zzbnj;
.super Lcom/google/android/gms/internal/zzbno;


# instance fields
.field private synthetic zzgok:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private synthetic zzgol:I

.field private synthetic zzgom:I

.field private synthetic zzgon:Lcom/google/android/gms/drive/zzo;

.field private synthetic zzgoo:Lcom/google/android/gms/internal/zzbni;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbni;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;IILcom/google/android/gms/drive/zzo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnj;->zzgoo:Lcom/google/android/gms/internal/zzbni;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbnj;->zzgok:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput p4, p0, Lcom/google/android/gms/internal/zzbnj;->zzgol:I

    iput p5, p0, Lcom/google/android/gms/internal/zzbnj;->zzgom:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbnj;->zzgon:Lcom/google/android/gms/drive/zzo;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbno;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzgok:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaol()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzblj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnj;->zzgoo:Lcom/google/android/gms/internal/zzbni;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpj;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnj;->zzgok:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaol()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzbnj;->zzgol:I

    iget v4, p0, Lcom/google/android/gms/internal/zzbnj;->zzgom:I

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbnj;->zzgon:Lcom/google/android/gms/drive/zzo;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzblj;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/zzo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbqi;

    new-instance v2, Lcom/google/android/gms/internal/zzbnl;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbnl;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzblj;Lcom/google/android/gms/internal/zzbqk;)V

    return-void
.end method
