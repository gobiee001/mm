.class final Lcom/google/android/gms/internal/zzbns;
.super Lcom/google/android/gms/internal/zzbnw;


# instance fields
.field private synthetic zzgor:Lcom/google/android/gms/internal/zzbnr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnr;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbns;->zzgor:Lcom/google/android/gms/internal/zzbnr;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbnw;-><init>(Lcom/google/android/gms/internal/zzbnr;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    new-instance v1, Lcom/google/android/gms/internal/zzbnu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbns;->zzgor:Lcom/google/android/gms/internal/zzbnr;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/google/android/gms/internal/zzbnu;-><init>(Lcom/google/android/gms/internal/zzbnr;Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/internal/zzbns;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbqi;->zzb(Lcom/google/android/gms/internal/zzbqk;)V

    return-void
.end method
