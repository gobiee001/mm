.class public Lcom/google/android/gms/games/GamesMetadataClient;
.super Lcom/google/android/gms/games/internal/api/zzp;


# static fields
.field private static final zzhlc:Lcom/google/android/gms/common/internal/zzbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzbo",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            "Lcom/google/android/gms/games/Game;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhld:Lcom/google/android/gms/games/internal/zzo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/games/internal/zzo",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/GamesMetadataClient;->zzhlc:Lcom/google/android/gms/common/internal/zzbo;

    new-instance v0, Lcom/google/android/gms/games/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/GamesMetadataClient;->zzhld:Lcom/google/android/gms/games/internal/zzo;

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
.method public getCurrentGame()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/Game;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/zzu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/zzu;-><init>(Lcom/google/android/gms/games/GamesMetadataClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadGame()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/Game;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->GamesMetadata:Lcom/google/android/gms/games/GamesMetadata;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/GamesMetadata;->loadGame(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/GamesMetadataClient;->zzhlc:Lcom/google/android/gms/common/internal/zzbo;

    sget-object v2, Lcom/google/android/gms/games/GamesMetadataClient;->zzhld:Lcom/google/android/gms/games/internal/zzo;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/games/internal/zzg;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/games/internal/zzo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
