.class public Lcom/google/android/gms/games/PlayerStatsClient;
.super Lcom/google/android/gms/games/internal/api/zzp;


# static fields
.field private static final zzhmt:Lcom/google/android/gms/common/internal/zzbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzbo",
            "<",
            "Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;",
            "Lcom/google/android/gms/games/stats/PlayerStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/zzas;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzas;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/PlayerStatsClient;->zzhmt:Lcom/google/android/gms/common/internal/zzbo;

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
.method public loadPlayerStats(Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/stats/PlayerStats;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->Stats:Lcom/google/android/gms/games/stats/Stats;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/stats/Stats;->loadPlayerStats(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/PlayerStatsClient;->zzhmt:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzg;->zzb(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
