.class final Lcom/google/android/gms/internal/zzbpk;
.super Lcom/google/android/gms/internal/zzbpu;


# instance fields
.field private synthetic zzgpz:Z

.field private synthetic zzgqa:Lcom/google/android/gms/internal/zzbpj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpk;->zzgqa:Lcom/google/android/gms/internal/zzbpj;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbpk;->zzgpz:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbpu;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbpk;)V

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

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqi;

    new-instance v1, Lcom/google/android/gms/internal/zzbqe;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpk;->zzgqa:Lcom/google/android/gms/internal/zzbpj;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbpj;->zzgis:Lcom/google/android/gms/drive/DriveId;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzbpk;->zzgpz:Z

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzbqe;-><init>(Lcom/google/android/gms/drive/DriveId;Z)V

    new-instance v2, Lcom/google/android/gms/internal/zzbps;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbps;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbqk;)V

    return-void
.end method
