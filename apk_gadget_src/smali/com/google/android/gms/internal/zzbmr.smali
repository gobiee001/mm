.class final Lcom/google/android/gms/internal/zzbmr;
.super Lcom/google/android/gms/internal/zzbmn;


# instance fields
.field private synthetic zzgnq:Lcom/google/android/gms/internal/zzbkw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmo;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbkw;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmr;->zzgnq:Lcom/google/android/gms/internal/zzbkw;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    check-cast p1, Lcom/google/android/gms/internal/zzbmo;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmr;->zzgnq:Lcom/google/android/gms/internal/zzbkw;

    new-instance v2, Lcom/google/android/gms/internal/zzbsm;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbsm;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzbkw;Lcom/google/android/gms/internal/zzbqm;Ljava/lang/String;Lcom/google/android/gms/internal/zzbqk;)V

    return-void
.end method
