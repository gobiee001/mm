.class final Lcom/google/android/gms/games/internal/api/zzdb;
.super Lcom/google/android/gms/games/internal/api/zzdr;


# instance fields
.field private synthetic zzhop:Ljava/lang/String;

.field private synthetic zzhtr:[B

.field private synthetic zzhts:Ljava/lang/String;

.field private synthetic zzhtt:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzcw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzdb;->zzhop:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/zzdb;->zzhtr:[B

    iput-object p5, p0, Lcom/google/android/gms/games/internal/api/zzdb;->zzhts:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/internal/api/zzdb;->zzhtt:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/zzdr;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzcx;)V

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

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/zzdb;->zzhop:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/zzdb;->zzhtr:[B

    iget-object v4, p0, Lcom/google/android/gms/games/internal/api/zzdb;->zzhts:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/zzdb;->zzhtt:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    return-void
.end method
