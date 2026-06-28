.class final Lcom/google/android/gms/internal/zzih;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzg;


# instance fields
.field private synthetic zzbaw:Lcom/google/android/gms/internal/zzid;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzid;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzih;->zzbaw:Lcom/google/android/gms/internal/zzid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbaw:Lcom/google/android/gms/internal/zzid;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzid;->zzc(Lcom/google/android/gms/internal/zzid;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbaw:Lcom/google/android/gms/internal/zzid;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzio;)Lcom/google/android/gms/internal/zzio;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbaw:Lcom/google/android/gms/internal/zzid;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzid;->zzd(Lcom/google/android/gms/internal/zzid;)Lcom/google/android/gms/internal/zzik;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbaw:Lcom/google/android/gms/internal/zzid;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzik;)Lcom/google/android/gms/internal/zzik;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbaw:Lcom/google/android/gms/internal/zzid;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzid;->zzc(Lcom/google/android/gms/internal/zzid;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
