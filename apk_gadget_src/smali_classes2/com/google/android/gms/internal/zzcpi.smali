.class final Lcom/google/android/gms/internal/zzcpi;
.super Lcom/google/android/gms/internal/zzcpq;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzjpb:Ljava/lang/String;

.field private synthetic zzjpc:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

.field private synthetic zzjpt:Lcom/google/android/gms/common/api/internal/zzci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcou;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcpi;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcpi;->zzjpb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcpi;->zzjpt:Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcpi;->zzjpc:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcpq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcov;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzcmt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcpi;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcpi;->zzjpb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcpi;->zzjpt:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcpi;->zzjpc:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcmt;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)V

    return-void
.end method
