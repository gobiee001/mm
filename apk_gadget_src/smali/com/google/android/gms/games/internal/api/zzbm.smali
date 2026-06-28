.class final Lcom/google/android/gms/games/internal/api/zzbm;
.super Lcom/google/android/gms/games/internal/api/zzbs;


# instance fields
.field private synthetic zzhsq:Z

.field private synthetic zzhsu:I

.field private synthetic zzhtd:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzbj;Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzbm;->zzhtd:[I

    iput p4, p0, Lcom/google/android/gms/games/internal/api/zzbm;->zzhsu:I

    iput-boolean p5, p0, Lcom/google/android/gms/games/internal/api/zzbm;->zzhsq:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/zzbs;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzbk;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzbm;->zzhtd:[I

    iget v1, p0, Lcom/google/android/gms/games/internal/api/zzbm;->zzhsu:I

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/zzbm;->zzhsq:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;[IIZ)V

    return-void
.end method
