.class final Lcom/google/android/gms/internal/zzcww;
.super Lcom/google/android/gms/internal/zzcwu;


# instance fields
.field private synthetic zzkbj:Lcom/google/android/gms/internal/zzcwv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcww;->zzkbj:Lcom/google/android/gms/internal/zzcwv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzal(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcww;->zzkbj:Lcom/google/android/gms/internal/zzcwv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwv;->zza(Lcom/google/android/gms/internal/zzcwv;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "ClearTokenImpl success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcww;->zzkbj:Lcom/google/android/gms/internal/zzcwv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
