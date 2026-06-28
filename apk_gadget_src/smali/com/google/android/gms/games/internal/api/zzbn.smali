.class final Lcom/google/android/gms/games/internal/api/zzbn;
.super Lcom/google/android/gms/games/internal/api/zzbs;


# instance fields
.field private synthetic zzhsq:Z

.field private synthetic zzhte:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzbj;Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)V
    .locals 1

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/api/zzbn;->zzhsq:Z

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/zzbn;->zzhte:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/zzbs;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzbk;)V

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

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/zzbn;->zzhsq:Z

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/zzbn;->zzhte:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/common/api/internal/zzn;Z[Ljava/lang/String;)V

    return-void
.end method
