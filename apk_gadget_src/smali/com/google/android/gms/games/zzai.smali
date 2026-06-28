.class final Lcom/google/android/gms/games/zzai;
.super Lcom/google/android/gms/games/internal/api/zzac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/api/zzac",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzhln:Ljava/lang/String;

.field private synthetic zzhlo:I

.field private synthetic zzhlp:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/LeaderboardsClient;Ljava/lang/String;II)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/games/zzai;->zzhln:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/games/zzai;->zzhlo:I

    iput p4, p0, Lcom/google/android/gms/games/zzai;->zzhlp:I

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/api/zzac;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/internal/GamesClientImpl;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/zzai;->zzhln:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/games/zzai;->zzhlo:I

    iget v2, p0, Lcom/google/android/gms/games/zzai;->zzhlp:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzj(Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
