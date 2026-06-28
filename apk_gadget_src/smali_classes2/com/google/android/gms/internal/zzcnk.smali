.class final Lcom/google/android/gms/internal/zzcnk;
.super Lcom/google/android/gms/internal/zzcqk;


# instance fields
.field private final zzjoa:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcqk;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzci;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcnk;->zzjoa:Lcom/google/android/gms/common/api/internal/zzci;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcrj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnk;->zzjoa:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/internal/zzcnl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcnl;-><init>(Lcom/google/android/gms/internal/zzcnk;Lcom/google/android/gms/internal/zzcrj;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcrl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnk;->zzjoa:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/internal/zzcnm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcnm;-><init>(Lcom/google/android/gms/internal/zzcnk;Lcom/google/android/gms/internal/zzcrl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcrv;)V
    .locals 0

    return-void
.end method
