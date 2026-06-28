.class public final Lcom/google/android/gms/internal/zzfs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzga;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final zzapr:Lcom/google/android/gms/internal/zzakd;

.field private final zzavq:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/google/android/gms/internal/zzafo;",
            "Lcom/google/android/gms/internal/zzft;",
            ">;"
        }
    .end annotation
.end field

.field private final zzavr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzft;",
            ">;"
        }
    .end annotation
.end field

.field private final zzavs:Lcom/google/android/gms/ads/internal/js/zzn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfs;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzavq:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzavr:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfs;->mApplicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfs;->zzapr:Lcom/google/android/gms/internal/zzakd;

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbhm:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, p2, v0}, Lcom/google/android/gms/ads/internal/js/zzn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfs;->zzavs:Lcom/google/android/gms/ads/internal/js/zzn;

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/zzafo;)Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzavq:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzft;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzft;->zzga()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

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


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzft;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzft;->zzga()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzavr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzavq:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;)V
    .locals 1

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzfs;->zza(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;Landroid/view/View;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfz;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/zzfz;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/zzafo;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzfs;->zza(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzhd;Lcom/google/android/gms/internal/zzanh;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;Landroid/view/View;Lcom/google/android/gms/internal/zzanh;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfz;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/zzfz;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/zzafo;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/zzfs;->zza(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzhd;Lcom/google/android/gms/internal/zzanh;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzhd;Lcom/google/android/gms/internal/zzanh;)V
    .locals 7

    iget-object v6, p0, Lcom/google/android/gms/internal/zzfs;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzfs;->zzg(Lcom/google/android/gms/internal/zzafo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzavq:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzft;

    :goto_0
    if-eqz p4, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zzgb;

    invoke-direct {v1, v0, p4}, Lcom/google/android/gms/internal/zzgb;-><init>(Lcom/google/android/gms/internal/zzft;Lcom/google/android/gms/internal/zzanh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Lcom/google/android/gms/internal/zzgo;)V

    :goto_1
    monitor-exit v6

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzft;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs;->mApplicationContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfs;->zzapr:Lcom/google/android/gms/internal/zzakd;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzft;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzhd;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzft;->zza(Lcom/google/android/gms/internal/zzga;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs;->zzavq:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs;->zzavr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/zzgf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfs;->zzavs:Lcom/google/android/gms/ads/internal/js/zzn;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfs;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzgf;-><init>(Lcom/google/android/gms/internal/zzft;Lcom/google/android/gms/ads/internal/js/zzn;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Lcom/google/android/gms/internal/zzgo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final zzh(Lcom/google/android/gms/internal/zzafo;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzavq:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzft;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzft;->zzfy()V

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

.method public final zzi(Lcom/google/android/gms/internal/zzafo;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzavq:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzft;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzft;->stop()V

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

.method public final zzj(Lcom/google/android/gms/internal/zzafo;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzavq:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzft;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzft;->pause()V

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

.method public final zzk(Lcom/google/android/gms/internal/zzafo;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs;->zzavq:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzft;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzft;->resume()V

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
