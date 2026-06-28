.class final Lcom/google/android/gms/games/internal/api/zzbe;
.super Lcom/google/android/gms/games/internal/api/zzbh;


# instance fields
.field private synthetic zzhsq:Z

.field private synthetic zzhta:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzaz;Lcom/google/android/gms/common/api/GoogleApiClient;IZ)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/games/internal/api/zzbe;->zzhta:I

    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/api/zzbe;->zzhsq:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/api/zzbh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/GamesClientImpl;

    const-string v2, "played_with"

    iget v3, p0, Lcom/google/android/gms/games/internal/api/zzbe;->zzhta:I

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/google/android/gms/games/internal/api/zzbe;->zzhsq:Z

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;IZZ)V

    return-void
.end method
