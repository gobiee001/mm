.class final Lcom/google/android/gms/internal/zzcnw;
.super Lcom/google/android/gms/internal/zzcqv;


# instance fields
.field private final zzhem:Lcom/google/android/gms/common/api/internal/zzn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcqv;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcnw;->zzhem:Lcom/google/android/gms/common/api/internal/zzn;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcrr;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcrr;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcmt;->zzec(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcnw;->zzhem:Lcom/google/android/gms/common/api/internal/zzn;

    new-instance v2, Lcom/google/android/gms/internal/zzcnv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcrr;->getLocalEndpointName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/zzcnv;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/internal/zzn;->setResult(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcnw;->zzhem:Lcom/google/android/gms/common/api/internal/zzn;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/internal/zzn;->zzu(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method
