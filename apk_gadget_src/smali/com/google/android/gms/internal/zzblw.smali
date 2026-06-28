.class final Lcom/google/android/gms/internal/zzblw;
.super Lcom/google/android/gms/internal/zzbmb;


# instance fields
.field private synthetic zzgnc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbls;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 1

    const/high16 v0, 0x20000000

    iput v0, p0, Lcom/google/android/gms/internal/zzblw;->zzgnc:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    new-instance v1, Lcom/google/android/gms/internal/zzble;

    iget v2, p0, Lcom/google/android/gms/internal/zzblw;->zzgnc:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzble;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/zzblz;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzblz;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzble;Lcom/google/android/gms/internal/zzbqk;)V

    return-void
.end method
