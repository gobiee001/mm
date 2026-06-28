.class public Lcom/google/android/gms/games/LeaderboardsClient;
.super Lcom/google/android/gms/games/internal/api/zzp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;
    }
.end annotation


# static fields
.field private static final zzhlg:Lcom/google/android/gms/common/internal/zzbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzbo",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhlh:Lcom/google/android/gms/common/internal/zzbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzbo",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            "Lcom/google/android/gms/games/leaderboard/Leaderboard;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhli:Lcom/google/android/gms/games/internal/zzo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/games/internal/zzo",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhlj:Lcom/google/android/gms/common/internal/zzbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzbo",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhlk:Lcom/google/android/gms/games/internal/zzp;

.field private static final zzhll:Lcom/google/android/gms/common/internal/zzbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzbo",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
            "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhlm:Lcom/google/android/gms/common/internal/zzbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzbo",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/zzal;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzal;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlg:Lcom/google/android/gms/common/internal/zzbo;

    new-instance v0, Lcom/google/android/gms/games/zzam;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzam;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlh:Lcom/google/android/gms/common/internal/zzbo;

    new-instance v0, Lcom/google/android/gms/games/zzan;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzan;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/LeaderboardsClient;->zzhli:Lcom/google/android/gms/games/internal/zzo;

    new-instance v0, Lcom/google/android/gms/games/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzac;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlj:Lcom/google/android/gms/common/internal/zzbo;

    new-instance v0, Lcom/google/android/gms/games/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlk:Lcom/google/android/gms/games/internal/zzp;

    new-instance v0, Lcom/google/android/gms/games/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzae;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/LeaderboardsClient;->zzhll:Lcom/google/android/gms/common/internal/zzbo;

    new-instance v0, Lcom/google/android/gms/games/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlm:Lcom/google/android/gms/common/internal/zzbo;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/api/zzp;-><init>(Landroid/app/Activity;Lcom/google/android/gms/games/Games$GamesOptions;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/api/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/games/Games$GamesOptions;)V

    return-void
.end method


# virtual methods
.method public getAllLeaderboardsIntent()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/zzab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/zzab;-><init>(Lcom/google/android/gms/games/LeaderboardsClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getLeaderboardIntent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/zzag;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/zzag;-><init>(Lcom/google/android/gms/games/LeaderboardsClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getLeaderboardIntent(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/zzah;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/games/zzah;-><init>(Lcom/google/android/gms/games/LeaderboardsClient;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getLeaderboardIntent(Ljava/lang/String;II)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/zzai;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/games/zzai;-><init>(Lcom/google/android/gms/games/LeaderboardsClient;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadCurrentPlayerLeaderboardScore(Ljava/lang/String;II)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadCurrentPlayerLeaderboardScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlj:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzg;->zzb(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadLeaderboardMetadata(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboard;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadLeaderboardMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlh:Lcom/google/android/gms/common/internal/zzbo;

    sget-object v2, Lcom/google/android/gms/games/LeaderboardsClient;->zzhli:Lcom/google/android/gms/games/internal/zzo;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/games/internal/zzg;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/games/internal/zzo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadLeaderboardMetadata(Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadLeaderboardMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlg:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzg;->zzc(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadMoreScores(Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;",
            "II)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadMoreScores(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlm:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzg;->zzc(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadPlayerCenteredScores(Ljava/lang/String;III)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;III)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlm:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzg;->zzc(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadPlayerCenteredScores(Ljava/lang/String;IIIZ)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlm:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzg;->zzc(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadTopScores(Ljava/lang/String;III)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadTopScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;III)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlm:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzg;->zzc(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadTopScores(Ljava/lang/String;IIIZ)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadTopScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlm:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzg;->zzc(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public submitScore(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/zzaj;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/games/zzaj;-><init>(Lcom/google/android/gms/games/LeaderboardsClient;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public submitScore(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8

    new-instance v1, Lcom/google/android/gms/games/zzak;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/games/zzak;-><init>(Lcom/google/android/gms/games/LeaderboardsClient;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public submitScoreImmediate(Ljava/lang/String;J)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlk:Lcom/google/android/gms/games/internal/zzp;

    sget-object v2, Lcom/google/android/gms/games/LeaderboardsClient;->zzhll:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/games/internal/zzg;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/games/internal/zzp;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public submitScoreImmediate(Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/LeaderboardsClient;->zzhlk:Lcom/google/android/gms/games/internal/zzp;

    sget-object v2, Lcom/google/android/gms/games/LeaderboardsClient;->zzhll:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/games/internal/zzg;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/games/internal/zzp;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
