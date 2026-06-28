.class final Lcom/google/android/gms/internal/zzxy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaox:Lcom/google/android/gms/internal/zzafo;

.field private synthetic zzcjq:Lcom/google/android/gms/internal/zzxw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxw;Lcom/google/android/gms/internal/zzafo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxy;->zzcjq:Lcom/google/android/gms/internal/zzxw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzxy;->zzaox:Lcom/google/android/gms/internal/zzafo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxy;->zzcjq:Lcom/google/android/gms/internal/zzxw;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzxw;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxy;->zzcjq:Lcom/google/android/gms/internal/zzxw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxy;->zzaox:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzxw;->zzcjj:Lcom/google/android/gms/internal/zzyb;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzyb;->zzb(Lcom/google/android/gms/internal/zzafo;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
