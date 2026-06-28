.class final Lcom/google/android/gms/games/internal/api/zzdg;
.super Lcom/google/android/gms/games/internal/api/zzdp;


# instance fields
.field private synthetic zzhtu:I

.field private synthetic zzhtv:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzcw;Lcom/google/android/gms/common/api/GoogleApiClient;I[I)V
    .locals 1

    iput p3, p0, Lcom/google/android/gms/games/internal/api/zzdg;->zzhtu:I

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/zzdg;->zzhtv:[I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/zzdp;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzcx;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget v0, p0, Lcom/google/android/gms/games/internal/api/zzdg;->zzhtu:I

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/zzdg;->zzhtv:[I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;I[I)V

    return-void
.end method
