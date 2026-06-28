.class final Lcom/google/android/gms/internal/zzcpk;
.super Lcom/google/android/gms/internal/zzcps;


# instance fields
.field private synthetic zzjpb:Ljava/lang/String;

.field private synthetic zzjpe:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

.field private synthetic zzjpu:Lcom/google/android/gms/common/api/internal/zzci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcou;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcpk;->zzjpb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcpk;->zzjpu:Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcpk;->zzjpe:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcov;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzcmt;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpk;->zzjpb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcpk;->zzjpu:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcpk;->zzjpe:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcmt;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)V

    return-void
.end method
