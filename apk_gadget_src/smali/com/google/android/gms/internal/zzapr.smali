.class public final Lcom/google/android/gms/internal/zzapr;
.super Lcom/google/android/gms/internal/zzaqa;


# instance fields
.field private final zzdss:Lcom/google/android/gms/internal/zzaqo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaqc;Lcom/google/android/gms/internal/zzaqe;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaqa;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzaqo;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzaqo;-><init>(Lcom/google/android/gms/internal/zzaqc;Lcom/google/android/gms/internal/zzaqe;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapr;->zzdss:Lcom/google/android/gms/internal/zzaqo;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzapr;)Lcom/google/android/gms/internal/zzaqo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapr;->zzdss:Lcom/google/android/gms/internal/zzaqo;

    return-object v0
.end method


# virtual methods
.method final onServiceConnected()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzj;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapr;->zzdss:Lcom/google/android/gms/internal/zzaqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqo;->onServiceConnected()V

    return-void
.end method

.method public final setLocalDispatchPeriod(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    const-string v0, "setLocalDispatchPeriod (sec)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzapz;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->zzwv()Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaps;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzaps;-><init>(Lcom/google/android/gms/internal/zzapr;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzj;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapr;->zzdss:Lcom/google/android/gms/internal/zzaqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqo;->start()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaqf;)J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzj;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapr;->zzdss:Lcom/google/android/gms/internal/zzaqo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzaqo;->zza(Lcom/google/android/gms/internal/zzaqf;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapr;->zzdss:Lcom/google/android/gms/internal/zzaqo;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzaqo;->zzb(Lcom/google/android/gms/internal/zzaqf;)V

    :cond_0
    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzarj;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->zzwv()Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzapx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzapx;-><init>(Lcom/google/android/gms/internal/zzapr;Lcom/google/android/gms/internal/zzarj;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzj;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzarq;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzapz;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->zzwv()Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzapv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzapv;-><init>(Lcom/google/android/gms/internal/zzapr;Lcom/google/android/gms/internal/zzarq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzj;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->zzwv()Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzapu;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzapu;-><init>(Lcom/google/android/gms/internal/zzapr;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzj;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzvf()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapr;->zzdss:Lcom/google/android/gms/internal/zzaqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqa;->initialize()V

    return-void
.end method

.method public final zzwm()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->zzwv()Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzapw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzapw;-><init>(Lcom/google/android/gms/internal/zzapr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzj;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzwn()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzasc;->zzbk(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzasd;->zzbo(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzapr;->zza(Lcom/google/android/gms/internal/zzarj;)V

    goto :goto_0
.end method

.method public final zzwo()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->zzwv()Lcom/google/android/gms/analytics/zzj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzapy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzapy;-><init>(Lcom/google/android/gms/internal/zzapr;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/zzj;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "syncDispatchLocalHits interrupted"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzapz;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "syncDispatchLocalHits failed"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzapz;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "syncDispatchLocalHits timed out"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzapz;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zzwp()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzj;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapr;->zzdss:Lcom/google/android/gms/internal/zzaqo;

    invoke-static {}, Lcom/google/android/gms/analytics/zzj;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapz;->zzdu(Ljava/lang/String;)V

    return-void
.end method

.method final zzwq()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzj;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapr;->zzdss:Lcom/google/android/gms/internal/zzaqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqo;->zzwq()V

    return-void
.end method
