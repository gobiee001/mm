.class final Lcom/google/android/gms/internal/zzbpl;
.super Lcom/google/android/gms/internal/zzbmg;


# instance fields
.field private synthetic zzgqa:Lcom/google/android/gms/internal/zzbpj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpl;->zzgqa:Lcom/google/android/gms/internal/zzbpj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmo;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqi;

    new-instance v1, Lcom/google/android/gms/internal/zzbqr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpl;->zzgqa:Lcom/google/android/gms/internal/zzbpj;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbpj;->zzgis:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbqr;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbpr;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbpr;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzbqr;Lcom/google/android/gms/internal/zzbqk;)V

    return-void
.end method
