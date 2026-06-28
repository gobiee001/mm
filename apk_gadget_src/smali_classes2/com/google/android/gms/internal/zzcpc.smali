.class final Lcom/google/android/gms/internal/zzcpc;
.super Lcom/google/android/gms/internal/zzcps;


# instance fields
.field private synthetic zzjpb:Ljava/lang/String;

.field private synthetic zzjpm:J

.field private synthetic zzjpo:Lcom/google/android/gms/common/api/internal/zzci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcou;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/common/api/internal/zzci;)V
    .locals 2

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcpc;->zzjpb:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcpc;->zzjpm:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcpc;->zzjpo:Lcom/google/android/gms/common/api/internal/zzci;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcov;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcmt;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcpc;->zzjpb:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcpc;->zzjpm:J

    iget-object v7, p0, Lcom/google/android/gms/internal/zzcpc;->zzjpo:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v6, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    sget-object v0, Lcom/google/android/gms/nearby/connection/Strategy;->P2P_CLUSTER:Lcom/google/android/gms/nearby/connection/Strategy;

    invoke-direct {v6, v0}, Lcom/google/android/gms/nearby/connection/DiscoveryOptions;-><init>(Lcom/google/android/gms/nearby/connection/Strategy;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/zzcqm;

    new-instance v0, Lcom/google/android/gms/internal/zzcsm;

    new-instance v1, Lcom/google/android/gms/internal/zzcnu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcnu;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v9, Lcom/google/android/gms/internal/zzcnk;

    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/zzcnk;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcsm;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/DiscoveryOptions;Landroid/os/IBinder;)V

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcsm;)V

    return-void
.end method
