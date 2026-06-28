.class public Lcom/google/android/gms/games/PlayersClient;
.super Lcom/google/android/gms/games/internal/api/zzp;


# static fields
.field private static final zzhmu:Lcom/google/android/gms/common/internal/zzbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzbo",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            "Lcom/google/android/gms/games/PlayerBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhmv:Lcom/google/android/gms/games/internal/zzo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/games/internal/zzo",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhmw:Lcom/google/android/gms/common/internal/zzbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzbo",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            "Lcom/google/android/gms/games/Player;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/zzaw;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzaw;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/PlayersClient;->zzhmu:Lcom/google/android/gms/common/internal/zzbo;

    new-instance v0, Lcom/google/android/gms/games/zzax;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzax;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/PlayersClient;->zzhmv:Lcom/google/android/gms/games/internal/zzo;

    new-instance v0, Lcom/google/android/gms/games/zzay;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzay;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/PlayersClient;->zzhmw:Lcom/google/android/gms/common/internal/zzbo;

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
.method public getCompareProfileIntent(Lcom/google/android/gms/games/Player;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/Player;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/zzav;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/zzav;-><init>(Lcom/google/android/gms/games/PlayersClient;Lcom/google/android/gms/games/Player;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayer()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/Player;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/zzau;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/zzau;-><init>(Lcom/google/android/gms/games/PlayersClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayerId()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/zzat;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/zzat;-><init>(Lcom/google/android/gms/games/PlayersClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadMoreRecentlyPlayedWithPlayers(I)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/PlayerBuffer;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/Players;->loadMoreRecentlyPlayedWithPlayers(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/PlayersClient;->zzhmu:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzg;->zzc(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadPlayer(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/Player;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/games/PlayersClient;->loadPlayer(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadPlayer(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;
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
            "Lcom/google/android/gms/games/Player;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/games/Players;->loadPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/PlayersClient;->zzhmw:Lcom/google/android/gms/common/internal/zzbo;

    sget-object v2, Lcom/google/android/gms/games/PlayersClient;->zzhmv:Lcom/google/android/gms/games/internal/zzo;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/games/internal/zzg;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/games/internal/zzo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadRecentlyPlayedWithPlayers(IZ)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/PlayerBuffer;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/games/Players;->loadRecentlyPlayedWithPlayers(Lcom/google/android/gms/common/api/GoogleApiClient;IZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/PlayersClient;->zzhmu:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzg;->zzc(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
