.class public final Lcom/google/android/gms/internal/zzaqg;
.super Lcom/google/android/gms/internal/zzaqa;


# instance fields
.field private final zzdtx:Lcom/google/android/gms/internal/zzaqi;

.field private zzdty:Lcom/google/android/gms/internal/zzarr;

.field private final zzdtz:Lcom/google/android/gms/internal/zzarf;

.field private final zzdua:Lcom/google/android/gms/internal/zzash;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzaqc;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaqa;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    new-instance v0, Lcom/google/android/gms/internal/zzash;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqc;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzash;-><init>(Lcom/google/android/gms/common/util/zzd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqg;->zzdua:Lcom/google/android/gms/internal/zzash;

    new-instance v0, Lcom/google/android/gms/internal/zzaqi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaqi;-><init>(Lcom/google/android/gms/internal/zzaqg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqg;->zzdtx:Lcom/google/android/gms/internal/zzaqi;

    new-instance v0, Lcom/google/android/gms/internal/zzaqh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaqh;-><init>(Lcom/google/android/gms/internal/zzaqg;Lcom/google/android/gms/internal/zzaqc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqg;->zzdtz:Lcom/google/android/gms/internal/zzarf;

    return-void
.end method

.method private final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzj;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg;->zzdty:Lcom/google/android/gms/internal/zzarr;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqg;->zzdty:Lcom/google/android/gms/internal/zzarr;

    const-string v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzapz;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->zzwx()Lcom/google/android/gms/internal/zzapr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapr;->zzwp()V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaqg;)Lcom/google/android/gms/internal/zzaqi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg;->zzdtx:Lcom/google/android/gms/internal/zzaqi;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaqg;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaqg;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaqg;Lcom/google/android/gms/internal/zzarr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaqg;->zza(Lcom/google/android/gms/internal/zzarr;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzarr;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzj;->zzve()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqg;->zzdty:Lcom/google/android/gms/internal/zzarr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqg;->zzxr()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->zzwx()Lcom/google/android/gms/internal/zzapr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapr;->onServiceConnected()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaqg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqg;->zzxs()V

    return-void
.end method

.method private final zzxr()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg;->zzdua:Lcom/google/android/gms/internal/zzash;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzash;->start()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqg;->zzdtz:Lcom/google/android/gms/internal/zzarf;

    sget-object v0, Lcom/google/android/gms/internal/zzarl;->zzdxg:Lcom/google/android/gms/internal/zzarm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarm;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzarf;->zzs(J)V

    return-void
.end method

.method private final zzxs()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzj;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqg;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzapz;->zzdu(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqg;->disconnect()V

    goto :goto_0
.end method


# virtual methods
.method public final connect()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/analytics/zzj;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqg;->zzdty:Lcom/google/android/gms/internal/zzarr;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqg;->zzdtx:Lcom/google/android/gms/internal/zzaqi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaqi;->zzxt()Lcom/google/android/gms/internal/zzarr;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaqg;->zzdty:Lcom/google/android/gms/internal/zzarr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqg;->zzxr()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final disconnect()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzj;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzamc()Lcom/google/android/gms/common/stats/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqg;->zzdtx:Lcom/google/android/gms/internal/zzaqi;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg;->zzdty:Lcom/google/android/gms/internal/zzarr;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqg;->zzdty:Lcom/google/android/gms/internal/zzarr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->zzwx()Lcom/google/android/gms/internal/zzapr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapr;->zzwp()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final isConnected()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzj;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg;->zzdty:Lcom/google/android/gms/internal/zzarr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzarq;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzj;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg;->zzdty:Lcom/google/android/gms/internal/zzarr;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarq;->zzzk()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzard;->zzyw()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarq;->zzjh()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarq;->zzzi()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzarr;->zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqg;->zzxr()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzard;->zzyx()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzapz;->zzdu(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method

.method protected final zzvf()V
    .locals 0

    return-void
.end method

.method public final zzxq()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/zzj;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqg;->zzdty:Lcom/google/android/gms/internal/zzarr;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/zzarr;->zzwm()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqg;->zzxr()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Failed to clear hits from AnalyticsService"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzapz;->zzdu(Ljava/lang/String;)V

    goto :goto_0
.end method
