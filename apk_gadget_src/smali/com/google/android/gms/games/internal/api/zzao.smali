.class final Lcom/google/android/gms/games/internal/api/zzao;
.super Lcom/google/android/gms/games/internal/api/zzav;


# instance fields
.field private synthetic zzhln:Ljava/lang/String;

.field private synthetic zzhlq:J

.field private synthetic zzhlr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzah;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzao;->zzhln:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/games/internal/api/zzao;->zzhlq:J

    iput-object p6, p0, Lcom/google/android/gms/games/internal/api/zzao;->zzhlr:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/api/zzav;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/zzao;->zzhln:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/games/internal/api/zzao;->zzhlq:J

    iget-object v6, p0, Lcom/google/android/gms/games/internal/api/zzao;->zzhlr:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
