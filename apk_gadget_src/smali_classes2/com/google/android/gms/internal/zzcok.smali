.class final Lcom/google/android/gms/internal/zzcok;
.super Lcom/google/android/gms/common/api/internal/zzcq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzcq",
        "<",
        "Lcom/google/android/gms/internal/zzcmt;",
        "Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzhlf:Lcom/google/android/gms/common/api/internal/zzci;

.field private synthetic zzjpb:Ljava/lang/String;

.field private synthetic zzjpd:Lcom/google/android/gms/internal/zzcnx;

.field private synthetic zzjpe:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/common/api/internal/zzci;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcok;->zzjpd:Lcom/google/android/gms/internal/zzcnx;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcok;->zzjpb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcok;->zzhlf:Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcok;->zzjpe:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzcq;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcmt;

    new-instance v0, Lcom/google/android/gms/internal/zzcos;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcok;->zzjpd:Lcom/google/android/gms/internal/zzcnx;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/zzcos;-><init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcok;->zzjpb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcok;->zzhlf:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcok;->zzjpe:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcmt;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)V

    return-void
.end method
