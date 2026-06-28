.class final Lcom/google/android/gms/nearby/messages/internal/zzbo;
.super Lcom/google/android/gms/nearby/messages/internal/zzbv;


# instance fields
.field private synthetic zzhfb:Landroid/app/PendingIntent;

.field private synthetic zzjuq:Lcom/google/android/gms/nearby/messages/internal/zzbw;

.field private synthetic zzjur:Lcom/google/android/gms/nearby/messages/SubscribeOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzbi;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;Lcom/google/android/gms/nearby/messages/internal/zzbw;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzbo;->zzhfb:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzbo;->zzjuq:Lcom/google/android/gms/nearby/messages/internal/zzbw;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzbo;->zzjur:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzbv;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzah;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzbv;->zzbcf()Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzbo;->zzhfb:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzbo;->zzjuq:Lcom/google/android/gms/nearby/messages/internal/zzbw;

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/zzbo;->zzjur:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zza(Lcom/google/android/gms/common/api/internal/zzci;Landroid/app/PendingIntent;Lcom/google/android/gms/nearby/messages/internal/zzab;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V

    return-void
.end method
