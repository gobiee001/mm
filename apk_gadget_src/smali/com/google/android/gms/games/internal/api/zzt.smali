.class final Lcom/google/android/gms/games/internal/api/zzt;
.super Lcom/google/android/gms/games/internal/api/zzw;


# instance fields
.field private synthetic zzhjl:Ljava/lang/String;

.field private synthetic zzhjm:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzq;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzt;->zzhjl:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/zzt;->zzhjm:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/zzw;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzr;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzt;->zzhjl:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/games/internal/api/zzt;->zzhjm:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzp(Ljava/lang/String;I)V

    return-void
.end method
