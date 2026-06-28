.class final Lcom/google/android/gms/ads/internal/zzai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzapt:Lcom/google/android/gms/internal/zzjj;

.field private synthetic zzapu:Lcom/google/android/gms/ads/internal/zzag;

.field private synthetic zzapv:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzag;Lcom/google/android/gms/internal/zzjj;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzai;->zzapu:Lcom/google/android/gms/ads/internal/zzag;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzai;->zzapt:Lcom/google/android/gms/internal/zzjj;

    iput p3, p0, Lcom/google/android/gms/ads/internal/zzai;->zzapv:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zzapu:Lcom/google/android/gms/ads/internal/zzag;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzag;->zza(Lcom/google/android/gms/ads/internal/zzag;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zzapu:Lcom/google/android/gms/ads/internal/zzag;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzai;->zzapt:Lcom/google/android/gms/internal/zzjj;

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzai;->zzapv:I

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/ads/internal/zzag;->zza(Lcom/google/android/gms/ads/internal/zzag;Lcom/google/android/gms/internal/zzjj;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
