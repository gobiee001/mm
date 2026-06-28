.class final Lcom/google/android/gms/games/internal/api/zzan;
.super Lcom/google/android/gms/games/internal/api/zzat;


# instance fields
.field private synthetic zzhsx:I

.field private synthetic zzhsy:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

.field private synthetic zzhsz:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzah;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzan;->zzhsy:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/zzan;->zzhsx:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/zzan;->zzhsz:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/zzat;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzai;)V

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

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzan;->zzhsy:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iget v1, p0, Lcom/google/android/gms/games/internal/api/zzan;->zzhsx:I

    iget v2, p0, Lcom/google/android/gms/games/internal/api/zzan;->zzhsz:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V

    return-void
.end method
