.class final Lcom/google/android/gms/games/zzak;
.super Lcom/google/android/gms/games/internal/api/zzac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/api/zzac",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzhln:Ljava/lang/String;

.field private synthetic zzhlq:J

.field private synthetic zzhlr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/LeaderboardsClient;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/games/zzak;->zzhln:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/games/zzak;->zzhlq:J

    iput-object p5, p0, Lcom/google/android/gms/games/zzak;->zzhlr:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/api/zzac;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 7
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
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/games/zzak;->zzhln:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/games/zzak;->zzhlq:J

    iget-object v6, p0, Lcom/google/android/gms/games/zzak;->zzhlr:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
