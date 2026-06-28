.class final Lcom/google/android/gms/internal/zzcnr;
.super Lcom/google/android/gms/internal/zzcqp;


# instance fields
.field private final zzjoq:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
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
            "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcqp;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzci;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcnr;->zzjoq:Lcom/google/android/gms/common/api/internal/zzci;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcrn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnr;->zzjoq:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/internal/zzcns;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcns;-><init>(Lcom/google/android/gms/internal/zzcnr;Lcom/google/android/gms/internal/zzcrn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcrp;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnr;->zzjoq:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/internal/zzcnt;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcnt;-><init>(Lcom/google/android/gms/internal/zzcnr;Lcom/google/android/gms/internal/zzcrp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    return-void
.end method
