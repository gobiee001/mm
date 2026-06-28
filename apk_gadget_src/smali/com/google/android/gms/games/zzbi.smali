.class final Lcom/google/android/gms/games/zzbi;
.super Lcom/google/android/gms/games/internal/zzq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/zzq",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/zzh;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzhlf:Lcom/google/android/gms/common/api/internal/zzci;

.field private synthetic zzhni:Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/RealTimeMultiplayerClient;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/games/zzbi;->zzhlf:Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p4, p0, Lcom/google/android/gms/games/zzbi;->zzhni:Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/zzq;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/internal/GamesClientImpl;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/zzbi;->zzhlf:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v1, p0, Lcom/google/android/gms/games/zzbi;->zzhlf:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v2, p0, Lcom/google/android/gms/games/zzbi;->zzhlf:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v3, p0, Lcom/google/android/gms/games/zzbi;->zzhni:Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
