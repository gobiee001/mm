.class public final Lcom/google/android/gms/ads/internal/js/zzae;
.super Lcom/google/android/gms/internal/zzall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzall",
        "<",
        "Lcom/google/android/gms/ads/internal/js/zzc;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzcba:Lcom/google/android/gms/internal/zzaiq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaiq",
            "<",
            "Lcom/google/android/gms/ads/internal/js/zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzcbs:Z

.field private zzcbt:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaiq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaiq",
            "<",
            "Lcom/google/android/gms/ads/internal/js/zzc;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzall;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzae;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcba:Lcom/google/android/gms/internal/zzaiq;

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcbs:Z

    iput v1, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcbt:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/js/zzae;)Lcom/google/android/gms/internal/zzaiq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcba:Lcom/google/android/gms/internal/zzaiq;

    return-object v0
.end method

.method private final zzls()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzae;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcbt:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkState(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcbs:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcbt:I

    if-nez v0, :cond_1

    const-string v0, "No reference is left (including root). Cleaning up engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzah;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/js/zzah;-><init>(Lcom/google/android/gms/ads/internal/js/zzae;)V

    new-instance v2, Lcom/google/android/gms/internal/zzalj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzalj;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzall;->zza(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "There are still references to the engine. Not destroying."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final zzlp()Lcom/google/android/gms/ads/internal/js/zzaa;
    .locals 4

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzaa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/js/zzaa;-><init>(Lcom/google/android/gms/ads/internal/js/zzae;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/js/zzae;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzaf;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/js/zzaf;-><init>(Lcom/google/android/gms/ads/internal/js/zzae;Lcom/google/android/gms/ads/internal/js/zzaa;)V

    new-instance v3, Lcom/google/android/gms/ads/internal/js/zzag;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/ads/internal/js/zzag;-><init>(Lcom/google/android/gms/ads/internal/js/zzae;Lcom/google/android/gms/ads/internal/js/zzaa;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/zzall;->zza(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    iget v0, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcbt:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkState(Z)V

    iget v0, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcbt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcbt:I

    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final zzlq()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzae;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcbt:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkState(Z)V

    const-string v0, "Releasing 1 reference for JS Engine"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcbt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcbt:I

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/js/zzae;->zzls()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzlr()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzae;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcbt:I

    if-ltz v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkState(Z)V

    const-string v0, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/js/zzae;->zzcbs:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/js/zzae;->zzls()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
