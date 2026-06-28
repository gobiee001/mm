.class public final Lcom/google/android/gms/ads/internal/js/zzaa;
.super Lcom/google/android/gms/internal/zzall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzall",
        "<",
        "Lcom/google/android/gms/ads/internal/js/zzaj;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzcbp:Lcom/google/android/gms/ads/internal/js/zzae;

.field private zzcbq:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/js/zzae;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzall;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzaa;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzaa;->zzcbp:Lcom/google/android/gms/ads/internal/js/zzae;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/js/zzaa;)Lcom/google/android/gms/ads/internal/js/zzae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzaa;->zzcbp:Lcom/google/android/gms/ads/internal/js/zzae;

    return-object v0
.end method


# virtual methods
.method public final release()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzaa;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/js/zzaa;->zzcbq:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/js/zzaa;->zzcbq:Z

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/js/zzab;-><init>(Lcom/google/android/gms/ads/internal/js/zzaa;)V

    new-instance v2, Lcom/google/android/gms/internal/zzalj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzalj;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzall;->zza(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzac;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/js/zzac;-><init>(Lcom/google/android/gms/ads/internal/js/zzaa;)V

    new-instance v2, Lcom/google/android/gms/ads/internal/js/zzad;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/js/zzad;-><init>(Lcom/google/android/gms/ads/internal/js/zzaa;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzall;->zza(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
