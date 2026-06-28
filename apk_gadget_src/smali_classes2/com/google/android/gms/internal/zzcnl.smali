.class final Lcom/google/android/gms/internal/zzcnl;
.super Lcom/google/android/gms/internal/zzcnq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcnq",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjom:Lcom/google/android/gms/internal/zzcrj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcnk;Lcom/google/android/gms/internal/zzcrj;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcnl;->zzjom:Lcom/google/android/gms/internal/zzcrj;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcnq;-><init>(Lcom/google/android/gms/internal/zzcmu;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnl;->zzjom:Lcom/google/android/gms/internal/zzcrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcrj;->zzbbp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcnl;->zzjom:Lcom/google/android/gms/internal/zzcrj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcrj;->getServiceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcnl;->zzjom:Lcom/google/android/gms/internal/zzcrj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcrj;->getEndpointName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;->onEndpointFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
