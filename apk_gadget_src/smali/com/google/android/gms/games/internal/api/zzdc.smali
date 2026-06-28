.class final Lcom/google/android/gms/games/internal/api/zzdc;
.super Lcom/google/android/gms/games/internal/api/zzdr;


# instance fields
.field private synthetic zzhop:Ljava/lang/String;

.field private synthetic zzhtr:[B

.field private synthetic zzhtt:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzcw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzdc;->zzhop:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/zzdc;->zzhtr:[B

    iput-object p5, p0, Lcom/google/android/gms/games/internal/api/zzdc;->zzhtt:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/zzdr;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzcx;)V

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

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzdc;->zzhop:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/zzdc;->zzhtr:[B

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/zzdc;->zzhtt:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    return-void
.end method
