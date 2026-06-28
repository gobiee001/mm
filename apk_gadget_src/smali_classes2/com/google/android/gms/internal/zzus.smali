.class final Lcom/google/android/gms/internal/zzus;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/zzuo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzcff:Lcom/google/android/gms/internal/zzul;

.field private synthetic zzcfg:Lcom/google/android/gms/internal/zzur;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/internal/zzul;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzus;->zzcfg:Lcom/google/android/gms/internal/zzur;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzus;->zzcff:Lcom/google/android/gms/internal/zzul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzmd()Lcom/google/android/gms/internal/zzuo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzus;->zzcfg:Lcom/google/android/gms/internal/zzur;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/internal/zzur;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzus;->zzcfg:Lcom/google/android/gms/internal/zzur;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzur;->zzb(Lcom/google/android/gms/internal/zzur;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzus;->zzcff:Lcom/google/android/gms/internal/zzul;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzus;->zzcfg:Lcom/google/android/gms/internal/zzur;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzur;->zzc(Lcom/google/android/gms/internal/zzur;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzus;->zzcfg:Lcom/google/android/gms/internal/zzur;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzur;->zzd(Lcom/google/android/gms/internal/zzur;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzul;->zza(JJ)Lcom/google/android/gms/internal/zzuo;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzus;->zzmd()Lcom/google/android/gms/internal/zzuo;

    move-result-object v0

    return-object v0
.end method
