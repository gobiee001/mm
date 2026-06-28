.class final Lcom/google/android/gms/internal/zzcsd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private synthetic zzjqr:Lcom/google/android/gms/common/api/internal/zzcq;

.field private synthetic zzjqs:Lcom/google/android/gms/internal/zzcsc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcsc;Lcom/google/android/gms/common/api/internal/zzcq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcsd;->zzjqs:Lcom/google/android/gms/internal/zzcsc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcsd;->zzjqr:Lcom/google/android/gms/common/api/internal/zzcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcsd;->zzjqs:Lcom/google/android/gms/internal/zzcsc;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsd;->zzjqs:Lcom/google/android/gms/internal/zzcsc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcsc;->zza(Lcom/google/android/gms/internal/zzcsc;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcsd;->zzjqr:Lcom/google/android/gms/common/api/internal/zzcq;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zzcq;->zzajo()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
