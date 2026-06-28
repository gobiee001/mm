.class public abstract Lcom/google/android/gms/internal/zzaan;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaal;
.implements Lcom/google/android/gms/internal/zzaif;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaal;",
        "Lcom/google/android/gms/internal/zzaif",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzcmw:Lcom/google/android/gms/internal/zzalh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzalh",
            "<",
            "Lcom/google/android/gms/internal/zzaat;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcmx:Lcom/google/android/gms/internal/zzaal;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzalh;Lcom/google/android/gms/internal/zzaal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzalh",
            "<",
            "Lcom/google/android/gms/internal/zzaat;",
            ">;",
            "Lcom/google/android/gms/internal/zzaal;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaan;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaan;->zzcmw:Lcom/google/android/gms/internal/zzalh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaan;->zzcmx:Lcom/google/android/gms/internal/zzaal;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaan;->zznk()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaax;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaan;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzcmx:Lcom/google/android/gms/internal/zzaal;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaal;->zza(Lcom/google/android/gms/internal/zzaax;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaan;->zznk()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final zza(Lcom/google/android/gms/internal/zzabb;Lcom/google/android/gms/internal/zzaat;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/zzaaw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaaw;-><init>(Lcom/google/android/gms/internal/zzaal;)V

    invoke-interface {p1, p2, v1}, Lcom/google/android/gms/internal/zzabb;->zza(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzabe;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzagf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzem()Lcom/google/android/gms/internal/zzaft;

    move-result-object v2

    const-string v3, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/zzaft;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaan;->zzcmx:Lcom/google/android/gms/internal/zzaal;

    new-instance v2, Lcom/google/android/gms/internal/zzaax;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzaal;->zza(Lcom/google/android/gms/internal/zzaax;)V

    goto :goto_0
.end method

.method public final synthetic zznd()Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaan;->zznl()Lcom/google/android/gms/internal/zzabb;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaan;->zzcmx:Lcom/google/android/gms/internal/zzaal;

    new-instance v1, Lcom/google/android/gms/internal/zzaax;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaal;->zza(Lcom/google/android/gms/internal/zzaax;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaan;->zznk()V

    :goto_0
    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaan;->zzcmw:Lcom/google/android/gms/internal/zzalh;

    new-instance v2, Lcom/google/android/gms/internal/zzaao;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzaao;-><init>(Lcom/google/android/gms/internal/zzaan;Lcom/google/android/gms/internal/zzabb;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaap;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaap;-><init>(Lcom/google/android/gms/internal/zzaan;)V

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzalh;->zza(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    goto :goto_0
.end method

.method public abstract zznk()V
.end method

.method public abstract zznl()Lcom/google/android/gms/internal/zzabb;
.end method
