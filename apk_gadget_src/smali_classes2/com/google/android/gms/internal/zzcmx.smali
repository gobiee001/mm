.class final Lcom/google/android/gms/internal/zzcmx;
.super Lcom/google/android/gms/internal/zzcnq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcnq",
        "<",
        "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzenv:Lcom/google/android/gms/common/api/Status;

.field private synthetic zzjoe:Lcom/google/android/gms/internal/zzcrf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcmv;Lcom/google/android/gms/internal/zzcrf;Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcmx;->zzjoe:Lcom/google/android/gms/internal/zzcrf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcmx;->zzenv:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcnq;-><init>(Lcom/google/android/gms/internal/zzcmu;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmx;->zzjoe:Lcom/google/android/gms/internal/zzcrf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcrf;->zzbbl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/nearby/connection/ConnectionResolution;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmx;->zzenv:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/nearby/connection/ConnectionResolution;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;->onConnectionResult(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/ConnectionResolution;)V

    return-void
.end method
