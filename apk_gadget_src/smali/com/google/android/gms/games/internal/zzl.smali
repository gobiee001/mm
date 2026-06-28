.class final Lcom/google/android/gms/games/internal/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# instance fields
.field private synthetic zzgbg:Lcom/google/android/gms/common/api/PendingResult;

.field private synthetic zzgbh:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private synthetic zzhse:Lcom/google/android/gms/common/internal/zzbo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzl;->zzhse:Lcom/google/android/gms/common/internal/zzbo;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzl;->zzgbg:Lcom/google/android/gms/common/api/PendingResult;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/zzl;->zzgbh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzr(Lcom/google/android/gms/common/api/Status;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzl;->zzhse:Lcom/google/android/gms/common/internal/zzbo;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzl;->zzgbg:Lcom/google/android/gms/common/api/PendingResult;

    const-wide/16 v4, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Releasable;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzl;->zzgbh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Releasable;->release()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzl;->zzgbh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzg;->zzai(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzb;->zzy(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_1
.end method
