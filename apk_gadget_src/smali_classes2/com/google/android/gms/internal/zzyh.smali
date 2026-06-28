.class final Lcom/google/android/gms/internal/zzyh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzans:Ljava/util/concurrent/CountDownLatch;

.field private synthetic zzcjz:Lcom/google/android/gms/internal/zzyg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyg;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyh;->zzcjz:Lcom/google/android/gms/internal/zzyg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyh;->zzans:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyh;->zzcjz:Lcom/google/android/gms/internal/zzyg;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzyg;->zzcjn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyh;->zzcjz:Lcom/google/android/gms/internal/zzyg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyh;->zzcjz:Lcom/google/android/gms/internal/zzyg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzyg;->zza(Lcom/google/android/gms/internal/zzyg;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyh;->zzcjz:Lcom/google/android/gms/internal/zzyg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzyg;->zzcjx:Lcom/google/android/gms/internal/zzuo;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyh;->zzans:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/ads/internal/zzaq;->zza(Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzuo;Ljava/util/concurrent/CountDownLatch;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzyg;->zza(Lcom/google/android/gms/internal/zzyg;Z)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
