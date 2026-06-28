.class final Lcom/google/android/gms/games/zzk;
.super Lcom/google/android/gms/games/Games$zzc;


# instance fields
.field private synthetic zzhko:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/games/zzk;->zzhko:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/games/Games$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/zzi;)V

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

    iget-object v0, p0, Lcom/google/android/gms/games/zzk;->zzhko:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzn;)V

    return-void
.end method
