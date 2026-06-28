.class final Lcom/google/android/gms/games/zzbq;
.super Lcom/google/android/gms/games/internal/api/zzac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/api/zzac",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgpb:Lcom/google/android/gms/common/api/internal/zzci;

.field private synthetic zzhna:[B

.field private synthetic zzhnb:Ljava/lang/String;

.field private synthetic zzhnc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/RealTimeMultiplayerClient;Lcom/google/android/gms/common/api/internal/zzci;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/games/zzbq;->zzgpb:Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p3, p0, Lcom/google/android/gms/games/zzbq;->zzhna:[B

    iput-object p4, p0, Lcom/google/android/gms/games/zzbq;->zzhnb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/zzbq;->zzhnc:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/api/zzac;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/internal/GamesClientImpl;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/zzbq;->zzgpb:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v1, p0, Lcom/google/android/gms/games/zzbq;->zzhna:[B

    iget-object v2, p0, Lcom/google/android/gms/games/zzbq;->zzhnb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/zzbq;->zzhnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzci;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v0, 0x67e9

    invoke-static {v0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zzdg(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzy(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
