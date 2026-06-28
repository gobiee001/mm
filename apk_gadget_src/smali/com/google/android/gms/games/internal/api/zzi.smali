.class final Lcom/google/android/gms/games/internal/api/zzi;
.super Lcom/google/android/gms/games/internal/api/zzm;


# instance fields
.field private synthetic val$id:Ljava/lang/String;

.field private synthetic zzhsr:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zza;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/zzi;->val$id:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/games/internal/api/zzi;->zzhsr:I

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/games/internal/api/zzm;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/zzi;->val$id:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/games/internal/api/zzi;->zzhsr:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;I)V

    return-void
.end method
