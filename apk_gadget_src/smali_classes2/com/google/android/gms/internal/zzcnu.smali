.class final Lcom/google/android/gms/internal/zzcnu;
.super Lcom/google/android/gms/internal/zzcqs;


# instance fields
.field private final zzhem:Lcom/google/android/gms/common/api/internal/zzn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
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
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcqs;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcnu;->zzhem:Lcom/google/android/gms/common/api/internal/zzn;

    return-void
.end method


# virtual methods
.method public final zzed(I)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcmt;->zzec(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcnu;->zzhem:Lcom/google/android/gms/common/api/internal/zzn;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/internal/zzn;->setResult(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcnu;->zzhem:Lcom/google/android/gms/common/api/internal/zzn;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/internal/zzn;->zzu(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method
