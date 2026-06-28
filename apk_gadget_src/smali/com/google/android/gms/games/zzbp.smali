.class final Lcom/google/android/gms/games/zzbp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/gms/tasks/Task",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzhnj:Lcom/google/android/gms/common/api/internal/zzci;

.field private synthetic zzhnk:Lcom/google/android/gms/games/RealTimeMultiplayerClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/RealTimeMultiplayerClient;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/zzbp;->zzhnk:Lcom/google/android/gms/games/RealTimeMultiplayerClient;

    iput-object p2, p0, Lcom/google/android/gms/games/zzbp;->zzhnj:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/zzbp;->zzhnk:Lcom/google/android/gms/games/RealTimeMultiplayerClient;

    iget-object v1, p0, Lcom/google/android/gms/games/zzbp;->zzhnj:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zzci;->zzajo()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzck;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
