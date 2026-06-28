.class final Lcom/google/android/gms/internal/zzaah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcmu:Lcom/google/android/gms/internal/zzzy;

.field private synthetic zzcmv:Lcom/google/android/gms/internal/zzalh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzy;Lcom/google/android/gms/internal/zzalh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaah;->zzcmu:Lcom/google/android/gms/internal/zzzy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaah;->zzcmv:Lcom/google/android/gms/internal/zzalh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzcmu:Lcom/google/android/gms/internal/zzzy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzy;->zza(Lcom/google/android/gms/internal/zzzy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzcmu:Lcom/google/android/gms/internal/zzzy;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzcmu:Lcom/google/android/gms/internal/zzzy;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaah;->zzcmu:Lcom/google/android/gms/internal/zzzy;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzzy;->zzb(Lcom/google/android/gms/internal/zzzy;)Lcom/google/android/gms/internal/zzaau;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaau;->zzaty:Lcom/google/android/gms/internal/zzakd;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaah;->zzcmv:Lcom/google/android/gms/internal/zzalh;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzzy;->zza(Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzalh;)Lcom/google/android/gms/internal/zzaif;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzzy;->zzcmq:Lcom/google/android/gms/internal/zzaif;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzcmu:Lcom/google/android/gms/internal/zzzy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzzy;->zzcmq:Lcom/google/android/gms/internal/zzaif;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzcmu:Lcom/google/android/gms/internal/zzzy;

    const/4 v2, 0x0

    const-string v3, "Could not start the ad request service."

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzzy;->zza(Lcom/google/android/gms/internal/zzzy;ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->zzdaw:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzcmu:Lcom/google/android/gms/internal/zzzy;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzzy;->zzc(Lcom/google/android/gms/internal/zzzy;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
