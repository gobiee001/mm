.class final Lcom/google/android/gms/games/internal/api/zzae;
.super Lcom/google/android/gms/games/internal/api/zzaf;


# instance fields
.field private synthetic zzhsu:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzad;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 1

    iput p3, p0, Lcom/google/android/gms/games/internal/api/zzae;->zzhsu:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/zzaf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzae;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget v0, p0, Lcom/google/android/gms/games/internal/api/zzae;->zzhsu:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;I)V

    return-void
.end method
