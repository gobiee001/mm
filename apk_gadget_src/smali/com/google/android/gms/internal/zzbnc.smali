.class final Lcom/google/android/gms/internal/zzbnc;
.super Lcom/google/android/gms/internal/zzbmn;


# instance fields
.field private synthetic zzgoc:Lcom/google/android/gms/internal/zzbmy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmy;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnc;->zzgoc:Lcom/google/android/gms/internal/zzbmy;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    new-instance v1, Lcom/google/android/gms/internal/zzblb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnc;->zzgoc:Lcom/google/android/gms/internal/zzbmy;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbmy;->zza(Lcom/google/android/gms/internal/zzbmy;)Lcom/google/android/gms/drive/zzc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzblb;-><init>(IZ)V

    new-instance v2, Lcom/google/android/gms/internal/zzbsm;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbsm;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzblb;Lcom/google/android/gms/internal/zzbqk;)V

    return-void
.end method
